# Required Packages ####
require(ggplot2)
Sys.setenv("_R_USE_PIPEBIND_" = "true") # Invoking the pipe bind operator ####

# Unziping the file "2022LAI EXCEL_3"
unzip(dir(pattern = ".zip"))

# moving files from the unziped file into a folder called 2022_LAI_PROPER ####
dir.create("2022_LAI_PROPER")
# moving files iteratively
sapply(
	dir(
		path = "2022 LAI EXCEL_2/", 
		pattern = "_1.xlsx", 
		full.names = TRUE
	),
	FUN = file.copy,
	"2022_LAI_PROPER"
)



# Importing Yield data for each field/farm ####
dir(pattern = "LAI_Maize") |> 
	readxl::read_excel() |> 
	as.data.frame()-> Yield



# Importing LAI of each field ####
# Importing all workbooks from "2022_LAI_PROPER" directory
fields <- dir(path = "2022_LAI_PROPER/", full.names = TRUE) |>
	lapply(rio::import_list) |> 
	setNames(dir(path = "2022_LAI_PROPER/"))
	
# Extracting unique farm codes from the superlist "fields"
farmCodes <- lapply(
	fields,
	
	# Ananymous function to return farm codes from each list of the superlist "fields"
	\(list) {
		sapply(list, \(dataframe, variable = "") dataframe[ ,variable], variable = "CODE")
	} 
) |> 
	lapply(
		\(list) {
			a = do.call("c", list) |> . => .[!is.na(.)] |> unname(force = TRUE)
			return(a)
		}
	) |> . =>
	unique(do.call("c", .)) |> . =>
	.[. == grep("[A-Z]$", ., value = TRUE)]


# Function to extract farms by their codes
func_farm <- function(farmcode = "", list){
	
	lapply(
		list, 
		
		\(list) {
			sapply(
				list,
				
				\(data) {
					if(farmcode %in% data[ ,"CODE"]) {
						subset(data, CODE == farmcode) 
					} 
				}
			)
		}
	) |> . =>
		do.call("c", .) |> . =>
		# Applying the Filter function to extract only dataframes
		Filter(
			function(x) is.data.frame(x),
			.
		) -> b
	
	setNames(b, paste(names(b), b[[1]][ ,"CODE"], sep = "-"))
	
}

# Extracting each farm/fields data per week into separate lists within a superlist
farms <- lapply(farmCodes, func_farm, list = fields) |> . =>
	do.call("c", .)


# Extracting farmcodes into a vector ####
# farmCodes 1
meanLAI <- function(farmcodes = "", list_farms){
	
	list_farms[grep(farmcodes, names(list_farms), value = TRUE)] |> 
		lapply(
			\(data) data[ ,grep("LAI", names(data), value = TRUE)]
		) |> 
		lapply(
			\(data) apply(data, 1, mean, na.rm = TRUE)
		) |> . =>
		do.call("rbind", .)
	
}


# Extracting LAI for each farm/field ####
lapply(
	farmCodes,
	meanLAI,
	list_farms = farms
) |> . =>
	do.call(rbind, .) -> mean_LAI_farms 

# converting the above into a dataframe
mean_LAI_farms <- data.frame(
	farm = rownames(mean_LAI_farms),
	LAI = mean_LAI_farms[ ,1]
) |> . =>
	within(.,
			 {
		unique_code = strsplit(.[ ,"farm"], "-") |> 
			lapply(\(vec) vec[2]) |> . =>
			do.call("c", .)
		}
	)

# Overall mean LAI per farm
split(
	mean_LAI_farms,
	as.factor(mean_LAI_farms[ ,"unique_code"])
) |> 
	lapply(\(data) mean(data[ ,"LAI"], na.rm = TRUE)) |> . =>
	do.call("rbind", .) |> . =>
	data.frame(
		code = rownames(.),
		meanLAI = .[ ,1]
	) -> OverAllMeanLAI
	


# inner joining Yield and OverAllMeanLAI
dplyr::inner_join(
	Yield,
	OverAllMeanLAI,
	by = c("Name of Farmer" = "code")
) -> data_out
	
# Visualization for association between Yield and LAI
ggplot(data = data_out, aes(x = meanLAI, y = `Kg/ha`)) +
	geom_point(size = 3, col = "darkgreen") +
	geom_smooth(method = "lm", se = FALSE, col = "black") +
	annotate(
		"text", 
		x = 1.6, 
		y = 4500, 
		label = paste(
			"Corr", 
			round(cor(data_out$meanLAI, data_out$`Kg/ha`), 2), 
			sep = " = "
		),
		size = 6
	) +
	labs(x = "Mean LAI", y = "Kg/hector") +
	theme(axis.title = element_text(size = 18, face = "bold"),
			axis.text = element_text(size = 16))




# Cholorphyll
# farmCodes 1
meanCHLOR <- function(farmcodes = "", list_farms){
	
	list_farms[grep(farmcodes, names(list_farms), value = TRUE)] |> 
		lapply(
			\(data) data[ ,grep("CHLOR", names(data), value = TRUE)]
		) |> 
		lapply(
			\(data) apply(data, 1, mean, na.rm = TRUE)
		) |> . =>
		do.call("rbind", .)
	
}


lapply(
	farmCodes,
	meanCHLOR,
	list_farms = farms
) |> . =>
	do.call(rbind, .) -> mean_CHLOR_farms 

# converting to dataframe
mean_CHLOR_farms <- data.frame(
	farm = rownames(mean_CHLOR_farms),
	CHLOR = mean_CHLOR_farms[ ,1]
) |> . =>
	within(.,
			 {
			 	unique_code = strsplit(.[ ,"farm"], "-") |> 
			 		lapply(\(vec) vec[2]) |> . =>
			 		do.call("c", .)
			 }
	)

# Overall mean LAI per farm
split(
	mean_CHLOR_farms,
	as.factor(mean_CHLOR_farms[ ,"unique_code"])
) |> 
	lapply(\(data) mean(data[ ,"CHLOR"], na.rm = TRUE)) |> . =>
	do.call("rbind", .) |> . =>
	data.frame(
		code = rownames(.),
		meanCHLOR = .[ ,1]
	) -> OverAllMeanCHLOR



# inner joining Yield and OverAllMeanCHLOR
dplyr::inner_join(
	Yield,
	OverAllMeanCHLOR,
	by = c("Name of Farmer" = "code")
) -> data_out_CHLOR

# Visualization for association between Yield and chlorophyll ####
ggplot(data = data_out_CHLOR, aes(x = meanCHLOR, y = `Kg/ha`)) +
	geom_point(size = 3, col = "darkgreen") +
	geom_smooth(method = "lm", se = FALSE, col = "black") +
	annotate(
		"text", 
		x = 30, 
		y = 4000, 
		label = paste(
			"Corr", 
			round(cor(data_out_CHLOR$meanCHLOR, data_out_CHLOR$`Kg/ha`), 2), 
			sep = " = "
		),
		size = 6
	) +
	labs(x = "Mean Chlorophyll", y = "Kg/hector") +
	theme(axis.title = element_text(size = 18, face = "bold"),
			axis.text = element_text(size = 16))















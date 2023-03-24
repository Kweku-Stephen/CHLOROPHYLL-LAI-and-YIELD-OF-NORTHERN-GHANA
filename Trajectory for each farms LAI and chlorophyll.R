# Required packages ####
require(ggplot2)

# Invoking pipebind operator ####
Sys.setenv("_R_USE_PIPEBIND_" = "true")


# Trajectory of LAI for each field over a 9 week period ####
# Function to extract each farms LAI into a superlist
farmLAI_CHLOR <- function(farmcodes = "", list_farms){
	
	data <- list_farms[grep(farmcodes, names(farms), value = TRUE)] |> 
		lapply(
			\(data) data[ ,grep("LAI|CHLOR", names(data), value = TRUE)]
		) |> 
		lapply(
			\(data){
				sapply(data, \(vec) if(class(vec) == "character") as.numeric(vec) else vec)
			} 
		) |> . =>
		do.call("rbind", .) |> 
		as.data.frame()
	
	return(data)
	
}


# Iterating the function farmLAIDaata over each farm's/field's code to extract its LAI ####
lapply(
	farmCodes,
	farmLAI_CHLOR,
	list_farms = farms
) |> 
	setNames(farmCodes) |> 
	lapply(
		\(data) {
			
			week = as.numeric(strsplit(rownames(data), "_") |>
										lapply(\(vec) vec[[1]]) |> 
										unlist() |> 
										strsplit(" ") |> 
										lapply(\(vec) vec[2]) |> 
										unlist())
				
			ord_data = data[order(week), ]
			return(ord_data)
			
		}
	) -> farm_LAI_CHLOR

	# lapply(
	# 	\(data) t(data) |> as.data.frame()
	# ) |> 
	# lapply(
	# 	\(data){
	# 		
	# 		setNames(
	# 			data,
	# 			{
	# 				week = as.numeric(strsplit(colnames(data), "_") |> 
	# 											lapply(\(vec) vec[[1]]) |> 
	# 											unlist() |> 
	# 											strsplit(" ") |> 
	# 											lapply(\(vec) vec[2]) |> 
	# 											unlist())
	# 				
	# 				paste("week", week, sep = " ")
	# 			}
	# 			
	# 		)
	# 		
	# 	} 
	# ) |> . =>


# Filtering farm_LAI by length of weeks 
# ten weeks
tenWeeks = Filter(
	# Function
	\(data) nrow(data) == 10, 
	
	# input data/list
	farm_LAI_CHLOR
) 

# nine weeks
nineWeeks = Filter(
	# Function
	\(data) nrow(data) == 9,
	
	# input data/list
	farm_LAI_CHLOR
) 


# Plotting function for nine week farms/fields ####
plotting <- function(data_mat, num_weeks, var = ""){
	
	data = data_mat[ ,grep(var, names(data_mat), value = TRUE)]
	farmcode = strsplit(rownames(data)[1], "-")[[1]][2]
	labels = strsplit(rownames(data), "_") |> 
		lapply(\(vec) vec[1]) |> . =>
		do.call("c", .)
	
	a <- ggplot(data = data, aes(x = 1:num_weeks)) +
		geom_line(aes(y = `LAI 1`), col = "red", lwd = 1.5) +
		geom_line(aes(y = `LAI 2`), col = "darkblue", lwd = 1.5) +
		geom_line(aes(y = `LAI 3`), col = "darkgreen", lwd = 1.5) +
		geom_line(aes(y = `LAI 4`), col = "grey", lwd = 1.5) +
		scale_x_continuous(
			breaks = seq(1, num_weeks, by = 1), 
			labels = labels[1:num_weeks]
		) +
		labs(subtitle = farmcode, x = "Points", y = var) + # working on this line
		theme(plot.subtitle = element_text(size = 16, face = "bold", hjust = 0),
				axis.text = element_text(size = 14),
				axis.title = element_text(size = 15, face = "bold"))
	
	# return variable
	return(a)
	
}


# Generating plots for nine week fields/farms
lapply(
	# list
	nineWeeks,
	
	# Function to loop over list with
	plotting,
	
	# auxilliary arguments
	num_weeks = 9,
	var = "LAI"
) -> nineWeeks_plots



# Generating plots for 10 week farms/fields ####
# creating a cluster of 4 nodes 
cl <- parallel::makeCluster(
	
	# number of cores to be used
	spec = parallelly::availableCores() - 4,
	
	# connection type
	type = "PSOCK"
	
)

# Initializing data, functions and packages on all nodes of the cluster "cl" ####
# Initializing packages and user-defined function
parallel::clusterEvalQ(
	
	# cluster of 4 nodes
	cl,
	
	# Initializing the "plotting_10" function and the package "ggplot2" on all nodes of the cluster
	{
		plotting_10 <- function(indices, var = ""){
			
			# Data
			list <- tenWeeks[indices]
			
			a = lapply(
				list,
				\(data_mat, num_weeks){
					
					data = data_mat[ ,grep(var, names(data_mat), value = TRUE)]
					farmcode = strsplit(rownames(data)[1], "-")[[1]][2]
					labels = strsplit(rownames(data), "_") |> 
						lapply(\(vec) vec[1]) |> . =>
						do.call("c", .)
					
					b <- ggplot(data = data, aes(x = 1:num_weeks)) +
						geom_line(aes(y = data[ ,1]), col = "red", lwd = 1.5) +
						geom_line(aes(y = data[ ,2]), col = "darkblue", lwd = 1.5) +
						geom_line(aes(y = data[ ,3]), col = "darkgreen", lwd = 1.5) +
						geom_line(aes(y = data[ ,4]), col = "grey", lwd = 1.5) +
						scale_x_continuous(
							breaks = seq(1, num_weeks, by = 1), 
							labels = labels
						) +
						labs(subtitle = farmcode, x = "Points", y = var) +
						theme(plot.subtitle = element_text(size = 16, face = "bold", hjust = 0),
								axis.text = element_text(size = 14),
								axis.title = element_text(size = 15, face = "bold"))
					
					# Return variable
					return(b)
					
				}, 
				num_weeks = 10
			)
			# main return value
			return(a)
		}
		
		# loading ggplot2 package
		library(ggplot2)
	}
)

# Exporting data "tenWeeks" to all nodes
parallel::clusterExport(
	
	# cluster of 4 nodes
	cl,
	
	# dataset
	c("tenWeeks")

)

# parallel computations
# calling the plotting function on designatied subsets on the list "tenWeeks"
parallel::clusterApply(
	
	#cluster of 4 nodes
	cl,
	
	# index positions as argument to the function-call
	parallel::splitIndices(length(tenWeeks), length(cl)),
	
	# first argument to the function "plotting_10"
	plotting_10,
	
	#auxilliary arguments
	var = "LAI"

) -> tenWeeks_plots


# Stopping the cluster "cl"
parallel::stopCluster(cl)







# # Using Stringr for ordering columns on the third pipe ####
# lapply(
# 	farmCodes,
# 	farmLAIData,
# 	list_farms = farms
# ) |>
# 	setNames(farmCodes) |>
# 	lapply(
# 		\(data) {
# 			{
# 				weeks = as.numeric(strsplit(rownames(data), "_") |>
# 										 	lapply(\(vec) vec[[1]]) |>
# 										 	unlist() |>
# 										 	strsplit(" ") |>
# 										 	lapply(\(vec) vec[2]) |>
# 										 	unlist())
# 				
# 				data[order(weeks), ]
# 			}
# 		}
# 	) |> 
# 	lapply(
# 		\(data) t(data) |> as.data.frame()
# 	) |>
# 	lapply(
# 		\(data) {
# 			setNames(
# 				data,
# 				{
# 					weeks = as.numeric(strsplit(colnames(data), "_") |>
# 											 	lapply(\(vec) vec[[1]]) |>
# 											 	unlist() |>
# 											 	strsplit(" ") |>
# 											 	lapply(\(vec) vec[2]) |>
# 											 	unlist())
# 					#					paste("week", weeks, sep = " ")
# 				}
# 
# 			) |> . =>
# 				.[ ,order(colnames(.))]
# 		}
# 	) |>
# 	lapply(
# 		\(data) {
# 			ord = data[ ,stringr::str_sort(colnames(data), numeric = TRUE)] # sorting columns in increasing order by column names
# 			colnames(ord) <- paste("week", colnames(ord), sep = " ")
# 
# 			return(ord)
# 		}
# 	)















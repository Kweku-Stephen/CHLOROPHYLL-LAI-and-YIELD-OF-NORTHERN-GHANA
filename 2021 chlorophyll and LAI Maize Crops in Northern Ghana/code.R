
#Working Directory ####
setwd("F:/LAI_Chlorophyll_vis")

#Package Magrittr ####
require(magrittr)

#Data Import and row binding ####
data.frame(
	week = "week 1",
	rio::import_list(
		"Chlorophyll_LAI_data_ Week_1_Updated_Phenology.xlsx",
		rbind = TRUE
	) 
) |>
	rbind(
		data.frame(
			week = "week 2",
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_2.xlsx" ,
				rbind = TRUE
			)
		) 
	) |>
	rbind(
		data.frame(
			week = "week 3",
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_3.xlsx" ,
				rbind = TRUE
			)
		)
	) |>
	rbind(
		data.frame(
			week = "week 4",
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_4.xlsx" ,
				rbind = TRUE
			) %>%
				do.call(rbind, .)
		)
	) |> 
	rbind(
		data.frame(
			week = "week 5", 
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_5.xlsx" ,
				rbind = TRUE
			)
		)
	) |>
	rbind(
		data.frame(
			week = "week 6", 
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_6.xlsx" ,
				rbind = TRUE
			)
		)
	) |> 
	rbind(
		data.frame(
			week = "week 7",
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_7.xlsx" ,
				rbind = TRUE
			)
		)
	) |>
	rbind(
		data.frame(
			week = "week 8",
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_8.xlsx" ,
				rbind = TRUE
			)
		)
	) |> 
	rbind(
		data.frame(
			week = "week 9", 
			rio::import_list(
				"Chlorophyll_LAI_data_ Week_9.xlsx" ,
				rbind = TRUE
			)
		)
	) -> LAI



#Major Conversion of all ZIN farms to Gushegu Districts
LAI_1[
	(LAI_1[ ,"CODE"] %in% grep("ZIN|SAM|YAM", LAI_1[ ,"CODE"], value = TRUE)) & LAI_1[ ,"District"] == "Nanton", 
	"District"
] <- "Gushegu"



#Removing missing farms ####
LAI_1 = LAI[!is.na(LAI[ ,"CODE"]), ]

#DATA PARTITIONING INTO LAI AND CHLOROPHYL via gathering ####
LAI_data <- tidyr::gather(
	LAI_1[ ,c(1:8, 14, 17)], 
	"LAI", 
	"value",
	5:8
)


CHLORO_data <- tidyr::gather(
	LAI_1[ ,c(1:4, 9:14, 17)],
	"CHLOROPHYL",
	"value", 
	5:9
)


#District wise filtering for Gushegu####
Gushegu = LAI_1[LAI_1[ ,"District"] == "Gushegu", ] |> 
	dplyr::arrange(CODE)




#Visualizing points on FARMS ####
require(ggplot2)

#filtering for farm 7010SAM ####
lai_7010SAM <- dplyr::filter(LAI_1, CODE == "7010SAM") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7010SAM, aes(x = 1:9)) +
	geom_line(aes(y = lai_7010SAM[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7010SAM[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7010SAM[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7010SAM[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) + 
	labs(
		title = "FARM 7010SAM",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> a




#filtering for farm 7020YAM ####
lai_7020YAM <- dplyr::filter(LAI_1, CODE == "7020YAM") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7020YAM, aes(x = 1:9)) +
	geom_line(aes(y = lai_7020YAM[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7020YAM[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7020YAM[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7020YAM[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) + 
	labs(
		title = "FARM 7020YAM",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> b



#filtering for farm 7021YAM ####
lai_7021YAM <- dplyr::filter(LAI_1, CODE == "7021YAM") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7021YAM, aes(x = 1:9)) +
	geom_line(aes(y = lai_7021YAM[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7021YAM[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7021YAM[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7021YAM[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7021YAM",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> c



#filtering for farm 1061ZIN ####
lai_1061ZIN <- dplyr::filter(LAI_1, CODE == "1061ZIN") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_1061ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_1061ZIN[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_1061ZIN[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_1061ZIN[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_1061ZIN[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 1061ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> d



#filtering for farm 1067ZIN ####
lai_1067ZIN <- dplyr::filter(LAI_1, CODE == "1067ZIN") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_1067ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_1067ZIN[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_1067ZIN[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_1067ZIN[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_1067ZIN[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 1067ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> e




#filtering for farm 1056ZIN ####
lai_1056ZIN <- dplyr::filter(LAI_1, CODE == "1056ZIN") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_1056ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_1056ZIN[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_1056ZIN[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_1056ZIN[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_1056ZIN[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 1056ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> f



#filtering for farm 1029ZIN ####
lai_1029ZIN <- dplyr::filter(LAI_1, CODE == "1029ZIN") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_1029ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_1029ZIN[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_1029ZIN[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_1029ZIN[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_1029ZIN[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 1029ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> g



#filtering for farm 1055ZIN ####
lai_1055ZIN <- dplyr::filter(LAI_1, CODE == "1055ZIN") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_1055ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_1055ZIN[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_1055ZIN[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_1055ZIN[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_1055ZIN[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 1055ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> h






#filtering for farm 7014SAM ####
lai_7014SAM <- dplyr::filter(LAI_1, CODE == "7014SAM") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7014SAM, aes(x = 2:9)) +
	geom_line(aes(y = lai_7014SAM[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7014SAM[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7014SAM[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7014SAM[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7014SAM",
		x = "week",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> i



#Filtering for farm 7015SAM ####
lai_7015SAM <- dplyr::filter(LAI_1, CODE == "7015SAM") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7015SAM, aes(x = 2:9)) +
	geom_line(aes(y = lai_7015SAM[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7015SAM[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7015SAM[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7015SAM[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7015SAM",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> j




#Filtering for farm 7017SAM ####
lai_7017SAM <- dplyr::filter(LAI_1, CODE == "7017SAM") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7017SAM, aes(x = 2:9)) +
	geom_line(aes(y = lai_7017SAM[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7017SAM[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7017SAM[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7017SAM[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7017SAM",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> k



#Filtering for farm 7068ZIN ####
lai_7068ZIN <- dplyr::filter(LAI_1, CODE == "7068ZIN") |> 
	dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7068ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7068ZIN[ ,1],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7068ZIN[ ,2],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7068ZIN[ ,3],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7068ZIN[ ,4],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7068ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> l



#Filtering for farm 7069ZIN ####
lai_7069ZIN <- dplyr::filter(LAI_1, CODE == "7069ZIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7069ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7069ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7069ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7069ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7069ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7069ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> m



#Filtering for farm 7070ZIN ####
lai_7070ZIN <- dplyr::filter(LAI_1, CODE == "7070ZIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7070ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7070ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7070ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7070ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7070ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_point(aes(y = lai_7070ZIN[ ,5]),col = "brown", size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7070ZIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> o



#Filtering for farm 7071ZIN ####
lai_7071ZIN <- dplyr::filter(LAI_1, CODE == "7071ZIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7071ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7071ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7071ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7071ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7071ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7071ZIN",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1,9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> p


	
#Filtering for farm 7072ZIN ####
lai_7072ZIN <- dplyr::filter(LAI_1, CODE == "7072ZIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7072ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7072ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7072ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7072ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7072ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7072ZIN",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1,9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> q
	

	
#Filtering for farm 7073ZIN ####
lai_7073ZIN <- dplyr::filter(LAI_1, CODE == "7073ZIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7073ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7073ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7073ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7073ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7073ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7073ZIN",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1,9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> r
	

	
	
#Filtering for farm 7074ZIN ####
lai_7074ZIN <- dplyr::filter(LAI_1, CODE == "7074ZIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7074ZIN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7074ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7074ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7074ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7074ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7074ZIN",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1,9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> s


#Filtering for farm 7016SAM ####
lai_7016SAM <- dplyr::filter(LAI_1, CODE == "7016SAM") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7016SAM, aes(x = 2:9)) +
	geom_line(aes(y = lai_7016SAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7016SAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7016SAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7016SAM[ ,5],col = "Point 4"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown"
		)
	) +
	labs(
		title = "FARM 7016SAM",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1,9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> t

	
			
#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	a, b, c, d, e, f, g, h, i, j, k, l, m, o, p, q, r, s, t,
	nrow = 5, ncol = 4
)


Gushegu_LAI = LAI_1[
	LAI_1[ ,"District"] == "Gushegu", grep("week|CODE|LAI|District", names(LAI_1), value = TRUE) 
] |> 
	subset(
		!is.na(CODE)
	) |> 
	tidyr::gather(
		"LAI_points",
		"values",
		3:6
	) %>%
	aggregate(
		values ~ District+LAI_points + CODE,
		data = .,
		FUN = mean,
		na.rm = T
	) 


Gushegu_LAI %<>%
	within(
		{Point = rep(1:4, times= length(unique(Gushegu_LAI$CODE)))}
	)


ggplot(
	data = Gushegu_LAI,
	aes(
		x = Point,
		y = values
	)
) + 
	geom_line(
		# method = "loess",
		# se = FALSE,
		col = 'darkgreen'
	) +
	facet_wrap(~ CODE, nrow = 5) #+
# geom_smooth(
# 	method = "lm",
# 	se = FALSE,
# 	col = "black"
# )





gglai <- function(x = ""){
	
	aa <- dplyr::filter(LAI_1, CODE == x) |> 
		dplyr::select(grep("LAI", names(LAI_1), value = TRUE)) |> 
		#t() |> 
		as.data.frame()
	
	if (nrow(aa) != 9){
		ggplot(data = aa, aes(x = 2:9)) +
			geom_line(aes(y = aa[ ,1],col = "Point 1"), size = 1.4) + 
			geom_line(aes(y = aa[ ,2],col = "Point 2"), size = 1.4) + 
			geom_line(aes(y = aa[ ,3],col = "Point 3"), size = 1.4) + 
			geom_line(aes(y = aa[ ,4],col = "Point 3"), size = 1.4) + 
			scale_colour_manual(
				"Legend",
				values = c(
					"Point 1" = "red",
					"Point 2" = "darkgreen",
					"Point 3" = "darkblue",
					"Point 4" = "brown"
				)
			) +
			labs(
				title = x,
				x = "",
				y = "LAI"
			) + 
			theme(plot.title = element_text(size = 13, face = "bold"),
			      axis.title.y = element_text(size = 11, face = "bold"),
			      axis.text.x = element_blank()) -> aaa
		return(aaa)
		
	} else{
		ggplot(data = aa, aes(x = 1:9)) +
			geom_line(aes(y = aa[ ,1],col = "Point 1"), size = 1.4) + 
			geom_line(aes(y = aa[ ,2],col = "Point 2"), size = 1.4) + 
			geom_line(aes(y = aa[ ,3],col = "Point 3"), size = 1.4) + 
			geom_line(aes(y = aa[ ,4],col = "Point 3"), size = 1.4) + 
			scale_colour_manual(
				"Legend",
				values = c(
					"Point 1" = "red",
					"Point 2" = "darkgreen",
					"Point 3" = "darkblue",
					"Point 4" = "brown"
				)
			) +
			labs(
				title = x,
				x = "",
				y = "LAI"
			) + 
			theme(plot.title = element_text(size = 13, face = "bold"),
			      axis.title.y = element_text(size = 11, face = "bold"),
			      axis.text.x = element_blank()) -> aaa
		return(aaa)
		
	}
	
	
}







    "7010SAM" "7020YAM" "7021YAM" "1061ZIN" "1067ZIN" "1056ZIN" "7036FUU" "7035FUU" "4020FUU"
[10] "7034FUU" "7033FUU" "7022FUU" "3030TIN" "3014TIN" "3028TIN" "3075TAM" "3074TAM" "3080TAM"
[19] "5032TUG" "5036TUG" "5037TUG" "5034TUG" "5033TUG" "5011LAB" "5012LAB" "5014LAB" "5002LAB"
[28] "2053KPA" "2050KPA" "2048KPA" "5016ZOR" "5017ZOR" "5057PAG" "7058CHE" "7059che" "7061CHE"
[37] "7062CHE" "7036SAN" "2002ALH" "7015ALH" "7016ALH" "7018ALH" "7019ZOR" "1029ZIN" "7068ZIN"
[46] "7069ZIN" "7070ZIN" "7071ZIN" "7072ZIN" "7073ZIN" "7074ZIN" "1055ZIN" "7014SAM" "7015SAM"
[55] "7016SAM" "7017SAM" "7059CHE"


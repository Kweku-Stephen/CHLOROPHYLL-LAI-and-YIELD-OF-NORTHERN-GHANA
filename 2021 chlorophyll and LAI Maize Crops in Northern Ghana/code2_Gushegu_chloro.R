#Major Conversion of all ZIN farms to Gushegu Districts
LAI_1[
	(LAI_1[ ,"CODE"] %in% grep("ZIN|SAM|YAM", LAI_1[ ,"CODE"], value = TRUE)) & LAI_1[ ,"District"] == "Nanton", 
	"District"
] <- "Gushegu"

#District wise filtering for Salaga North####
Gushegu = LAI_1[LAI_1[ ,"District"] == "Gushegu", ] |> 
	dplyr::arrange(CODE)


#Visualizing points on FARMS ####
require(ggplot2)

#filtering for farm 7010SAM ####
chloro_7010SAM <- dplyr::filter(Gushegu, CODE == "7010SAM") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7010SAM, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_7010SAM[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7010SAM[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7010SAM[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7010SAM[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_7010SAM[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) + 
	labs(
		title = "FARM 7010SAM",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ac




#filtering for farm 7020YAM ####
chloro_7020YAM <- dplyr::filter(Gushegu, CODE == "7020YAM") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7020YAM, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_7020YAM[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7020YAM[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7020YAM[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7020YAM[ ,5]),col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7020YAM[ ,6]),col = "Point 5"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) + 
	labs(
		title = "FARM 7020YAM",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bc



#filtering for farm 7021YAM ####
chloro_7021YAM <- dplyr::filter(Gushegu, CODE == "7021YAM") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7021YAM, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_7021YAM[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7021YAM[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7021YAM[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7021YAM[ ,5]),col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7021YAM[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7021YAM",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> cc



#filtering for farm 1061ZIN ####
chloro_1061ZIN <- dplyr::filter(Gushegu, CODE == "1061ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_1061ZIN, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_1061ZIN[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1061ZIN[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1061ZIN[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1061ZIN[ ,5]),col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1061ZIN[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 1061ZIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> dc



#filtering for farm 1067ZIN ####
chloro_1067ZIN <- dplyr::filter(Gushegu, CODE == "1067ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_1067ZIN, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_1067ZIN[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1067ZIN[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1067ZIN[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1067ZIN[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1067ZIN[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 1067ZIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ec




#filtering for farm 1056ZIN ####
chloro_1056ZIN <- dplyr::filter(Gushegu, CODE == "1056ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_1056ZIN, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_1056ZIN[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1056ZIN[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1056ZIN[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1056ZIN[ ,5]),col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_1056ZIN[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 1056ZIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> fc



#filtering for farm 1029ZIN ####
chloro_1029ZIN <- dplyr::filter(Gushegu, CODE == "1029ZIN") |>
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |>
	#t() |>
	data.frame()

ggplot(data = chloro_1029ZIN, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_1029ZIN[ ,2]),col = "Point 1"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1029ZIN[ ,3]),col = "Point 2"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1029ZIN[ ,4]),col = "Point 3"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1029ZIN[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1029ZIN[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 1029ZIN",
		x = "",
		y = "CHLOR"
	) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> gc



#filtering for farm 1055ZIN ####
chloro_1055ZIN <- dplyr::filter(Gushegu, CODE == "1055ZIN") |>
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |>
	#t() |>
	data.frame()

ggplot(data = chloro_1055ZIN, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_1055ZIN[ ,2]),col = "Point 1"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1055ZIN[ ,3]),col = "Point 2"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1055ZIN[ ,4]),col = "Point 3"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1055ZIN[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_1055ZIN[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 1055ZIN",
		x = "",
		y = "CHLOR"
	) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> hc






#filtering for farm 7014SAM ####
chloro_7014SAM <- dplyr::filter(Gushegu, CODE == "7014SAM") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7014SAM, aes(x = 2:9)) +
	geom_line(aes(y = as.numeric(chloro_7014SAM[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7014SAM[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7014SAM[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7014SAM[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_7014SAM[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7014SAM",
		x = "week",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 18)) -> ic



#Filtering for farm 7015SAM ####
chloro_7015SAM <- dplyr::filter(Gushegu, CODE == "7015SAM") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7015SAM, aes(x = 2:9)) +
	geom_line(aes(y = as.numeric(chloro_7015SAM[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7015SAM[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7015SAM[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7015SAM[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_7015SAM[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7015SAM",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> jc



#Filtering for farm 7017SAM ####
chloro_7017SAM <- dplyr::filter(Gushegu, CODE == "7017SAM") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7017SAM, aes(x = 2:9)) +
	geom_line(aes(y = as.numeric(chloro_7017SAM[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7017SAM[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7017SAM[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7017SAM[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_7017SAM[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7017SAM",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> kc



#Filtering for farm 7068ZIN ####
chloro_7068ZIN <- dplyr::filter(Gushegu, CODE == "7068ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7068ZIN, aes(x = 1:9)) +
	geom_line(aes(y = as.numeric(chloro_7068ZIN[ ,2]),col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7068ZIN[ ,3]),col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7068ZIN[ ,4]),col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = as.numeric(chloro_7068ZIN[ ,5]),col = "Point 4"), size = 1.4) +
	geom_line(aes(y = as.numeric(chloro_7068ZIN[ ,6]),col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7068ZIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> lc



#Filtering for farm 7069ZIN ####
chloro_7069ZIN <- dplyr::filter(Gushegu, CODE == "7069ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7069ZIN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7069ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7069ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7069ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7069ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7069ZIN[ ,6],col = "Point 5"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7069ZIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> mc



#Filtering for farm 7070ZIN ####
chloro_7070ZIN <- dplyr::filter(Gushegu, CODE == "7070ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7070ZIN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7070ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7070ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7070ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7070ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7070ZIN[ ,6],col = "Point 5"), size = 1.4) + 
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7070ZIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> oc



#Filtering for farm 7071ZIN ####
chloro_7071ZIN <- dplyr::filter(Gushegu, CODE == "7071ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7071ZIN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7071ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7071ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7071ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7071ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7071ZIN[ ,6],col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7071ZIN",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> pc



#Filtering for farm 7072ZIN ####
chloro_7072ZIN <- dplyr::filter(Gushegu, CODE == "7072ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7072ZIN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7072ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7072ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7072ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7072ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7072ZIN[ ,6],col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7072ZIN",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) ->	qc



#Filtering for farm 7073ZIN ####
chloro_7073ZIN <- dplyr::filter(Gushegu, CODE == "7073ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7073ZIN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7073ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7073ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7073ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7073ZIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7073ZIN[ ,6],col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7073ZIN",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) ->	rc




#Filtering for farm 7074ZIN ####
chloro_7074ZIN <- dplyr::filter(Gushegu, CODE == "7074ZIN") |> 
	dplyr::select(grep("week|CHLOR", names(Gushegu), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7074ZIN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7074ZIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7074ZIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7074ZIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7074ZIN[ ,5],col = "Point 5"), size = 1.4) + 
	geom_line(aes(y = chloro_7074ZIN[ ,6],col = "Point 4"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7074ZIN",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> sc


#Filtering for farm 7016SAM ####
chloro_7016SAM <- dplyr::filter(LAI_1, CODE == "7016SAM") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7016SAM, aes(x = 2:9)) +
	geom_line(aes(y = chloro_7016SAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7016SAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7016SAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7016SAM[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7016SAM[ ,6],col = "Point 5"), size = 1.4) +
	scale_colour_manual(
		"Legend",
		values = c(
			"Point 1" = "red",
			"Point 2" = "darkgreen",
			"Point 3" = "darkblue",
			"Point 4" = "brown",
			"Point 5" = "yellow"
		)
	) +
	labs(
		title = "FARM 7016SAM",
		x = "week",
		y = "CHLORO"
	) + 
	scale_x_continuous(breaks = seq(1,9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11),
	      axis.title.x = element_text(size = 11)) -> tc




#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	ac, bc, cc, dc, ec, fc, gc, hc, ic, jc, kc, lc, mc, oc, pc, qc, rc, sc, tc,
	nrow = 5, ncol = 4
)



# Part 2: averaging all points as a function of day ####
# Gushegu_chloro = LAI_1[
# 	LAI_1[ ,"District"] == "Gushegu", grep("week|CODE|CHLOR", names(LAI_1), value = TRUE) 
# ] |> 
# 	subset(
# 		!is.na(CODE)
# 	) |> 
# 	tidyr::gather(
# 		"chloro_points",
# 		"values",
# 		3:7
# 	) |> 
# 	dplyr::group_by(
# 		CODE,
# 		chloro_points
# 	) |> 
# 	dplyr::summarise(
# 		values = mean(values, na.rm = T)
# 	) |> 
# 	ggplot(
# 		aes(x = rep(1:5, times= length(unique(gr$CODE))), 
# 		    y = values)
# 	) + 
# 	geom_smooth(method = "loess") +
# 	facet_wrap( ~ CODE) + 
# 	geom_smooth(method = "lm")




Gushegu_chloro = LAI_1[
	LAI_1[ ,"District"] == "Gushegu", grep("week|CODE|CHLOR|District", names(LAI_1), value = TRUE) 
] |> 
	subset(
		!is.na(CODE)
	) |> 
	tidyr::gather(
		"chloro_points",
		"values",
		3:7
	) %>%
	aggregate(
		values ~ District+chloro_points + CODE,
		data = .,
		FUN = mean,
		na.rm = T
	) 


Gushegu_chloro %<>%
	within(
		{week = rep(1:5, times= length(unique(Gushegu_chloro$CODE)))}
	)


ggplot(
	data = Gushegu_chloro,
	aes(
		x = week,
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






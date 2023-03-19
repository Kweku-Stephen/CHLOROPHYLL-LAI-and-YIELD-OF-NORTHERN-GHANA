#Salaga North
Mion = LAI_1[LAI_1[ ,"District"] == "Mion", ]

#Farms in Salaga North
unique(Mion[ ,"CODE"])


#LAI
#filtering for farm 2053KPA ####
chloro_2053KPA <- dplyr::filter(LAI_1, CODE == "2053KPA") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_2053KPA, aes(x = 1:9)) +
	geom_line(aes(y = chloro_2053KPA[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_2053KPA[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_2053KPA[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_2053KPA[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_2053KPA[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 2053KPA",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> amc




#filtering for farm 2050KPA ####
chloro_2050KPA  <- dplyr::filter(LAI_1, CODE == "2050KPA") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_2050KPA , aes(x = 1:9)) +
	geom_line(aes(y = chloro_2050KPA[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_2050KPA[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_2050KPA[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_2050KPA[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_2050KPA[ ,6], col = "Point 5"), size = 1.4) +
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
		title = "FARM 2050KPA",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bmc



#filtering for farm 2048KPA ####
chloro_2048KPA <- dplyr::filter(LAI_1, CODE == "2048KPA") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_2048KPA, aes(x = 1:9)) +
	geom_line(aes(y = chloro_2048KPA[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_2048KPA[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_2048KPA[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_2048KPA[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_2048KPA[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 2048KPA",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> cmc



#filtering for farm 7058CHE ####
chloro_7058CHE <- dplyr::filter(LAI_1, CODE == "7058CHE") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7058CHE, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7058CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7058CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7058CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7058CHE[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7058CHE[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7058CHE",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> dmc



#filtering for farm 7059CHE ####
chloro_7059CHE <- dplyr::filter(LAI_1, CODE == "7059CHE") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7059CHE, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7059CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7059CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7059CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7059CHE[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7059CHE[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7059CHE",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> emc




#filtering for farm 7061CHE ####
chloro_7061CHE <- dplyr::filter(LAI_1, CODE == "7061CHE") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7061CHE, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7061CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7061CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7061CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7061CHE[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7061CHE[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7061CHE",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> fmc



#filtering for farm 7062CHE ####
chloro_7062CHE <- dplyr::filter(LAI_1, CODE == "7062CHE") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7062CHE, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7062CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7062CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7062CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7062CHE[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7062CHE[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7062CHE",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> gmc



#filtering for farm 7036SAN ####
chloro_7036SAN <- dplyr::filter(LAI_1, CODE == "7036SAN") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7036SAN, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7036SAN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7036SAN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7036SAN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7036SAN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7036SAN[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7036SAN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> hmc






#filtering for farm 2002ALH ####
chloro_2002ALH <- dplyr::filter(LAI_1, CODE == "2002ALH") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_2002ALH, aes(x = 1:9)) +
	geom_line(aes(y = chloro_2002ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_2002ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_2002ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_2002ALH[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_2002ALH[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 2002ALH",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> imc



#Filtering for farm 7015ALH ####
chloro_7015ALH <- dplyr::filter(LAI_1, CODE == "7015ALH") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7015ALH, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7015ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7015ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7015ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7015ALH[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7015ALH[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7015ALH",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> jmc



#Filtering for farm 7016ALH ####
chloro_7016ALH <- dplyr::filter(LAI_1, CODE == "7016ALH") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7016ALH, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7016ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7016ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7016ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7016ALH[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7016ALH[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7016ALH",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> kmc



#Filtering for farm 7018ALH ####
chloro_7018ALH <- dplyr::filter(LAI_1, CODE == "7018ALH") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7018ALH, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7018ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7018ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7018ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7018ALH[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7018ALH[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7018ALH",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> lmc






#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	amc, bmc, cmc, dmc, emc, fmc, gmc, hmc, imc, jmc, kmc, lmc,
	nrow = 3, ncol = 4
)


#Averaging Points by Days
Mion_CHLORO = LAI_1[
	LAI_1[ ,"District"] == "Mion", grep("week|CODE|CHLOR|District", names(LAI_1), value = TRUE) 
] |> 
	subset(
		!is.na(CODE)
	) |> 
	tidyr::gather(
		"CHLOR_points",
		"values",
		3:7
	) %>%
	aggregate(
		values ~ District+CHLOR_points + CODE,
		data = .,
		FUN = mean,
		na.rm = T
	) 


Mion_CHLORO %<>%
	within(
		{week = rep(1:5, times= length(unique(Mion_CHLORO$CODE)))}
	)


ggplot(
	data = Mion_CHLORO,
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
	facet_wrap(~ CODE, nrow = 3) +
	labs(x = "point", y = "CHLOR")

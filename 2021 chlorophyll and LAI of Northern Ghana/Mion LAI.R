#Salaga North
Mion = LAI_1[LAI_1[ ,"District"] == "Mion", ]

#Farms in Salaga North
unique(Mion[ ,"CODE"])


#LAI
#filtering for farm 2053KPA ####
lai_2053KPA <- dplyr::filter(LAI_1, CODE == "2053KPA") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_2053KPA, aes(x = 1:9)) +
	geom_line(aes(y = lai_2053KPA[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_2053KPA[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_2053KPA[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_2053KPA[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 2053KPA",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> am




#filtering for farm 2050KPA ####
lai_2050KPA <- dplyr::filter(LAI_1, CODE == "2050KPA") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_2050KPA, aes(x = 1:9)) +
	geom_line(aes(y = lai_2050KPA[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_2050KPA[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_2050KPA[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_2050KPA[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 2050KPA",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bm



#filtering for farm 2048KPA ####
lai_2048KPA <- dplyr::filter(LAI_1, CODE == "2048KPA") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_2048KPA, aes(x = 1:9)) +
	geom_line(aes(y = lai_2048KPA[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_2048KPA[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_2048KPA[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_2048KPA[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 2048KPA",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> cm



#filtering for farm 7058CHE ####
lai_7058CHE <- dplyr::filter(LAI_1, CODE == "7058CHE") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7058CHE, aes(x = 1:9)) +
	geom_line(aes(y = lai_7058CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7058CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7058CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7058CHE[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7058CHE",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> dm



# #filtering for farm 7059che ####
# lai_7059che <- dplyr::filter(LAI_1, CODE == "7059che") |> 
# 	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
# 	#t() |> 
# 	data.frame()
# 
# ggplot(data = lai_7059che, aes(x = 1:9)) +
# 	geom_line(aes(y = lai_7059che[ ,2],col = "Point 1"), size = 1.4) + 
# 	geom_line(aes(y = lai_7059che[ ,3],col = "Point 2"), size = 1.4) + 
# 	geom_line(aes(y = lai_7059che[ ,4],col = "Point 3"), size = 1.4) + 
# 	geom_line(aes(y = lai_7059che[ ,5],col = "Point 4"), size = 1.4) + 
# 	scale_colour_manual(
# 		"Legend",
# 		values = c(
# 			"Point 1" = "red",
# 			"Point 2" = "darkgreen",
# 			"Point 3" = "darkblue",
# 			"Point 4" = "brown"
# 		)
# 	) +
# 	labs(
# 		title = "FARM 7059che",
# 		x = "",
# 		y = "LAI"
# 	) + 
# 	theme(plot.title = element_text(size = 13, face = "bold"),
# 	      axis.title.y = element_text(size = 11, face = "bold"),
# 	      axis.text.x = element_blank()) -> em




#filtering for farm 7061CHE ####
lai_7061CHE <- dplyr::filter(LAI_1, CODE == "7061CHE") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7061CHE, aes(x = 1:9)) +
	geom_line(aes(y = lai_7061CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7061CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7061CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7061CHE[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7061CHE",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> fm



#filtering for farm 7062CHE ####
lai_7062CHE <- dplyr::filter(LAI_1, CODE == "7062CHE") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7062CHE, aes(x = 1:9)) +
	geom_line(aes(y = lai_7062CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7062CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7062CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7062CHE[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7062CHE",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> gm



#filtering for farm 7036SAN ####
lai_7036SAN <- dplyr::filter(LAI_1, CODE == "7036SAN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7036SAN, aes(x = 1:9)) +
	geom_line(aes(y = lai_7036SAN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7036SAN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7036SAN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7036SAN[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7036SAN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> hm






#filtering for farm 2002ALH ####
lai_2002ALH <- dplyr::filter(LAI_1, CODE == "2002ALH") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_2002ALH, aes(x = 1:9)) +
	geom_line(aes(y = lai_2002ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_2002ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_2002ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_2002ALH[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 2002ALH",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> im



#Filtering for farm 7015ALH ####
lai_7015ALH <- dplyr::filter(LAI_1, CODE == "7015ALH") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7015ALH, aes(x = 1:9)) +
	geom_line(aes(y = lai_7015ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7015ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7015ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7015ALH[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7015ALH",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> jm



#Filtering for farm 7016ALH ####
lai_7016ALH <- dplyr::filter(LAI_1, CODE == "7016ALH") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7016ALH, aes(x = 1:9)) +
	geom_line(aes(y = lai_7016ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7016ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7016ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7016ALH[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7016ALH",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> km



#Filtering for farm 7018ALH ####
lai_7018ALH <- dplyr::filter(LAI_1, CODE == "7018ALH") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7018ALH, aes(x = 1:9)) +
	geom_line(aes(y = lai_7018ALH[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7018ALH[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7018ALH[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7018ALH[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7018ALH",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> lm



#Filtering for farm 7059CHE ####
lai_7059CHE <- dplyr::filter(LAI_1, CODE == "7059CHE") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7059CHE, aes(x = 1:9)) +
	geom_line(aes(y = lai_7059CHE[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7059CHE[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7059CHE[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7059CHE[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7059CHE",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> mm



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	am, bm, cm, dm, fm, gm, hm, im, jm, km, lm, mm,
	nrow = 3, ncol = 4
)


#Averaging Points by Days
Mion_LAI = LAI_1[
	LAI_1[ ,"District"] == "Mion", grep("week|CODE|LAI|District", names(LAI_1), value = TRUE) 
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


Mion_LAI %<>%
	within(
		{week = rep(1:4, times= length(unique(Mion_LAI$CODE)))}
	)


ggplot(
	data = Mion_LAI,
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
	labs(x = "point", y = "LAI")

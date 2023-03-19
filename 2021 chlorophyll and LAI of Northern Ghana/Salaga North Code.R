#Salaga North
Salaga_North = LAI_1[LAI_1[ ,"District"] == "Salaga N", ]

#Farms in Salaga North
unique(Salaga_North[ ,"CODE"])


#LAI
#filtering for farm 7036FUU ####
lai_7036FUU <- dplyr::filter(LAI_1, CODE == "7036FUU") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7036FUU, aes(x = 1:9)) +
	geom_line(aes(y = lai_7036FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7036FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7036FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7036FUU[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7036FUU",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> as




#filtering for farm 7035FUU ####
lai_7035FUU <- dplyr::filter(LAI_1, CODE == "7035FUU") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7035FUU, aes(x = 1:9)) +
	geom_line(aes(y = lai_7035FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7035FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7035FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7035FUU[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7035FUU",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bs



#filtering for farm 4020FUU ####
lai_4020FUU <- dplyr::filter(LAI_1, CODE == "4020FUU") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_4020FUU, aes(x = 1:9)) +
	geom_line(aes(y = lai_4020FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_4020FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_4020FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_4020FUU[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 4020FUU",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> cs



#filtering for farm 7033FUU ####
lai_7033FUU <- dplyr::filter(LAI_1, CODE == "7033FUU") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7033FUU, aes(x = 1:9)) +
	geom_line(aes(y = lai_7033FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7033FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7033FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7033FUU[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7033FUU",
		x = "",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> ds



#filtering for farm 7034FUU ####
lai_7034FUU <- dplyr::filter(LAI_1, CODE == "7034FUU") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7034FUU, aes(x = 1:9)) +
	geom_line(aes(y = lai_7034FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7034FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7034FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7034FUU[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7034FUU",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> es




#filtering for farm 7022FUU ####
lai_7022FUU <- dplyr::filter(LAI_1, CODE == "7022FUU") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_7022FUU, aes(x = 1:9)) +
	geom_line(aes(y = lai_7022FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7022FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7022FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7022FUU[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7022FUU",
		x = "",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> fs



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	as, bs, cs, ds, es, fs,
	nrow = 2, ncol = 3
)


#Averaging Points by Days
Salaga_North_LAI = LAI_1[
	LAI_1[ ,"District"] == "Salaga N", grep("week|CODE|LAI|District", names(LAI_1), value = TRUE) 
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


Salaga_North_LAI %<>%
	within(
		{week = rep(1:4, times= length(unique(Salaga_North_LAI$CODE)))}
	)


ggplot(
	data = Salaga_North_LAI,
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
	facet_wrap(~ CODE, nrow = 2) +
	labs(x = "point", y = "LAI")

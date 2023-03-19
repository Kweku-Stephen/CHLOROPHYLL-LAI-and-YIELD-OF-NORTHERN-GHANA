#Salaga North Chlorophyll

#filtering for farm 7036FUU ####
chloro_7036FUU <- dplyr::filter(LAI_1, CODE == "7036FUU") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7036FUU, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7036FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7036FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7036FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7036FUU[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7036FUU[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7036FUU",
		x = "",
		y = "CHLORO"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> asc




#filtering for farm 7035FUU ####
chloro_7035FUU <- dplyr::filter(LAI_1, CODE == "7035FUU") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7035FUU, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7035FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7035FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7035FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7035FUU[ ,5],col = "Point 4"), size = 1.4) +
	geom_line(aes(y = chloro_7035FUU[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7035FUU",
		x = "",
		y = "CHLORO"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bsc



#filtering for farm 4020FUU ####
chloro_4020FUU <- dplyr::filter(LAI_1, CODE == "4020FUU") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_4020FUU, aes(x = 1:9)) +
	geom_line(aes(y = chloro_4020FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_4020FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_4020FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_4020FUU[ ,5],col = "Point 4"), size = 1.4) +
	geom_line(aes(y = chloro_4020FUU[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 4020FUU",
		x = "",
		y = "CHLORO"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> csc



#filtering for farm 7033FUU ####
chloro_7033FUU <- dplyr::filter(LAI_1, CODE == "7033FUU") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7033FUU, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7033FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7033FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7033FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7033FUU[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7033FUU[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7033FUU",
		x = "",
		y = "CHLORO"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> dsc



#filtering for farm 7034FUU ####
chloro_7034FUU <- dplyr::filter(LAI_1, CODE == "7034FUU") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7034FUU, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7034FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7034FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7034FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7034FUU[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7034FUU[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7034FUU",
		x = "week",
		y = "CHLORO"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> esc




#filtering for farm 7022FUU ####
chloro_7022FUU <- dplyr::filter(LAI_1, CODE == "7022FUU") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_7022FUU, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7022FUU[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7022FUU[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7022FUU[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7022FUU[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7022FUU[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7022FUU",
		x = "",
		y = "CHLORO"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> fsc



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	asc, bsc, csc, dsc, esc, fsc,
	nrow = 2, ncol = 3
)


#Averaging Points by Days
Salaga_North_CHLOR = LAI_1[
	LAI_1[ ,"District"] == "Salaga N", grep("week|CODE|CHLOR|District", names(LAI_1), value = TRUE) 
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


Salaga_North_CHLOR %<>%
	within(
		{week = rep(1:5, times= length(unique(Salaga_North_CHLOR$CODE)))}
	)


ggplot(
	data = Salaga_North_CHLOR,
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
	labs(x = "point", y = "CHLOR")

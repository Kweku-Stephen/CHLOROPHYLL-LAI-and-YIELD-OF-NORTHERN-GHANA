#Salaga North
Nanton = LAI_1[LAI_1[ ,"District"] == "Nanton", ]

#Farms in Salaga North
unique(Nanton[ ,"CODE"])


#LAI
#filtering for farm 3030TIN ####
lai_3030TIN <- dplyr::filter(LAI_1, CODE == "3030TIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_3030TIN, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = lai_3030TIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_3030TIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_3030TIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_3030TIN[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 3030TIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> an




#filtering for farm 3014TIN ####
lai_3014TIN <- dplyr::filter(LAI_1, CODE == "3014TIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_3014TIN, aes(x = c(1:2,4:9))) +
	geom_line(aes(y = lai_3014TIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_3014TIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_3014TIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_3014TIN[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 3014TIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bn



#filtering for farm 3028TIN ####
lai_3028TIN <- dplyr::filter(LAI_1, CODE == "3028TIN") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_3028TIN, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = lai_3028TIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_3028TIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_3028TIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_3028TIN[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 3028TIN",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> cn



#filtering for farm 3075TAM ####
lai_3075TAM <- dplyr::filter(LAI_1, CODE == "3075TAM") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_3075TAM, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = lai_3075TAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_3075TAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_3075TAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_3075TAM[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 3075TAM",
		x = "",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = c(1:2, 4:9)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> dn



#filtering for farm 3074TAM ####
lai_3074TAM <- dplyr::filter(LAI_1, CODE == "3074TAM") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_3074TAM, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = lai_3074TAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_3074TAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_3074TAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_3074TAM[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 3074TAM",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = c(1:2, 4:9)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> en




#filtering for farm 3080TAM ####
lai_3080TAM <- dplyr::filter(LAI_1, CODE == "3080TAM") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_3080TAM, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = lai_3080TAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_3080TAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_3080TAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_3080TAM[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 3080TAM",
		x = "",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = c(1:2, 4:9)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> fn



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	an, bn, cn, dn, en, fn,
	nrow = 2, ncol = 3
)


#Averaging Points by Days
Nanton_LAI = LAI_1[
	LAI_1[ ,"District"] == "Nanton", grep("week|CODE|LAI|District", names(LAI_1), value = TRUE) 
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


Nanton_LAI %<>%
	within(
		{week = rep(1:4, times= length(unique(Nanton_LAI$CODE)))}
	)


ggplot(
	data = Nanton_LAI,
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

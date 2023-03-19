#Salaga North
Nanton = LAI_1[LAI_1[ ,"District"] == "Nanton", ]

#Farms in Salaga North
unique(Nanton[ ,"CODE"])


#LAI
#filtering for farm 3030TIN ####
chloro_3030TIN <- dplyr::filter(LAI_1, CODE == "3030TIN") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_3030TIN, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = chloro_3030TIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_3030TIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_3030TIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_3030TIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_3030TIN[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 3030TIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> anc




#filtering for farm 3014TIN ####
chloro_3014TIN <- dplyr::filter(LAI_1, CODE == "3014TIN") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_3014TIN, aes(x = c(1:2,4:9))) +
	geom_line(aes(y = chloro_3014TIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_3014TIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_3014TIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_3014TIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_3014TIN[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 3014TIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bnc



#filtering for farm 3028TIN ####
chloro_3028TIN <- dplyr::filter(LAI_1, CODE == "3028TIN") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_3028TIN, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = chloro_3028TIN[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_3028TIN[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_3028TIN[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_3028TIN[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_3028TIN[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 3028TIN",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> cnc



#filtering for farm 3075TAM ####
chloro_3075TAM <- dplyr::filter(LAI_1, CODE == "3075TAM") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_3075TAM, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = chloro_3075TAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_3075TAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_3075TAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_3075TAM[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_3075TAM[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 3075TAM",
		x = "",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = c(1:2, 4:9)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> dnc



#filtering for farm 3074TAM ####
chloro_3074TAM <- dplyr::filter(LAI_1, CODE == "3074TAM") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_3074TAM, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = chloro_3074TAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_3074TAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_3074TAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_3074TAM[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_3074TAM[ ,6],col = "Point 5"), size = 1.4) + 
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
		title = "FARM 3074TAM",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = c(1:2, 4:9)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> enc




#filtering for farm 3080TAM ####
chloro_3080TAM <- dplyr::filter(LAI_1, CODE == "3080TAM") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_3080TAM, aes(x = c(1:2, 4:9))) +
	geom_line(aes(y = chloro_3080TAM[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_3080TAM[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_3080TAM[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_3080TAM[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_3080TAM[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 3080TAM",
		x = "",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = c(1:2, 4:9)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> fnc



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	anc, bnc, cnc, dnc, enc, fnc,
	nrow = 2, ncol = 3
)


#Averaging Points by Days
Nanton_CHLOR = LAI_1[
	LAI_1[ ,"District"] == "Nanton", grep("week|CODE|CHLOR|District", names(LAI_1), value = TRUE) 
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


Nanton_CHLOR %<>%
	within(
		{week = rep(1:5, times= length(unique(Nanton_CHLOR$CODE)))}
	)


ggplot(
	data = Nanton_CHLOR,
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

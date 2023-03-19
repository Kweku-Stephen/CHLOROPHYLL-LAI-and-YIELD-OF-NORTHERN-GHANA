#Salaga North
Tamale = LAI_1[LAI_1[ ,"District"] == "Tamale", ]

#Farms in Salaga North
unique(Tamale[ ,"CODE"])


#LAI
#filtering for farm 5032TUG ####
lai_5032TUG <- dplyr::filter(LAI_1, CODE == "5032TUG") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_5032TUG, aes(x = 1:9)) +
	geom_line(aes(y = lai_5032TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5032TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5032TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5032TUG[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5032TUG",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> at




#filtering for farm 5036TUG ####
lai_5036TUG <- dplyr::filter(LAI_1, CODE == "5036TUG") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5036TUG, aes(x = 1:9)) +
	geom_line(aes(y = lai_5036TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5036TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5036TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5036TUG[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5036TUG",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> bt



#filtering for farm 5037TUG ####
lai_5037TUG <- dplyr::filter(LAI_1, CODE == "5037TUG") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5037TUG, aes(x = 1:9)) +
	geom_line(aes(y = lai_5037TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5037TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5037TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5037TUG[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5037TUG",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ct



#filtering for farm 5034TUG ####
lai_5034TUG <- dplyr::filter(LAI_1, CODE == "5034TUG") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5034TUG, aes(x = 1:9)) +
	geom_line(aes(y = lai_5034TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5034TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5034TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5034TUG[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5034TUG",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> dt



#filtering for farm 5033TUG ####
lai_5033TUG <- dplyr::filter(LAI_1, CODE == "5033TUG") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5033TUG, aes(x = 1:9)) +
	geom_line(aes(y = lai_5033TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5033TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5033TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5033TUG[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5033TUG",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> et




#filtering for farm 5011LAB ####
lai_5011LAB <- dplyr::filter(LAI_1, CODE == "5011LAB") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5011LAB, aes(x = 1:9)) +
	geom_line(aes(y = lai_5011LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5011LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5011LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5011LAB[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5011LAB",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ft



#filtering for farm 5012LAB ####
lai_5012LAB <- dplyr::filter(LAI_1, CODE == "5012LAB") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5012LAB, aes(x = 1:9)) +
	geom_line(aes(y = lai_5012LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5012LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5012LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5012LAB[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5012LAB",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> gt



#filtering for farm 5014LAB ####
lai_5014LAB <- dplyr::filter(LAI_1, CODE == "5014LAB") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5014LAB, aes(x = 1:9)) +
	geom_line(aes(y = lai_5014LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5014LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5014LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5014LAB[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5014LAB",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ht






#filtering for farm 5002LAB ####
lai_5002LAB <- dplyr::filter(LAI_1, CODE == "5002LAB") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = lai_5002LAB, aes(x = 1:9)) +
	geom_line(aes(y = lai_5002LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5002LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5002LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5002LAB[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5002LAB",
		x = "",
		y = "LAI"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> it



#Filtering for farm 5016ZOR ####
lai_5016ZOR <- dplyr::filter(LAI_1, CODE == "5016ZOR") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_5016ZOR, aes(x = 1:9)) +
	geom_line(aes(y = lai_5016ZOR[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5016ZOR[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5016ZOR[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5016ZOR[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5016ZOR",
		x = "",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> jt



#Filtering for farm 5017ZOR ####
lai_5017ZOR <- dplyr::filter(LAI_1, CODE == "5017ZOR") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_5017ZOR, aes(x = 1:9)) +
	geom_line(aes(y = lai_5017ZOR[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5017ZOR[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5017ZOR[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5017ZOR[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5017ZOR",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> kt



#Filtering for farm 5057PAG ####
lai_5057PAG <- dplyr::filter(LAI_1, CODE == "5057PAG") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_5057PAG, aes(x = 1:9)) +
	geom_line(aes(y = lai_5057PAG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_5057PAG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_5057PAG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_5057PAG[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 5057PAG",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> lt



#Filtering for farm 7019ZOR ####
lai_7019ZOR <- dplyr::filter(LAI_1, CODE == "7019ZOR") |> 
	dplyr::select(grep("week|LAI", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = lai_7019ZOR, aes(x = 1:9)) +
	geom_line(aes(y = lai_7019ZOR[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = lai_7019ZOR[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = lai_7019ZOR[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = lai_7019ZOR[ ,5],col = "Point 4"), size = 1.4) + 
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
		title = "FARM 7019ZOR",
		x = "week",
		y = "LAI"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> mt



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	at, bt, ct, dt, et, ft, gt, ht, it, jt, kt, lt, mt,
	nrow = 4, ncol = 4
)


#Averaging Points by Days
Tamale_LAI = LAI_1[
	LAI_1[ ,"District"] == "Tamale", grep("week|CODE|LAI|District", names(LAI_1), value = TRUE) 
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


Tamale_LAI %<>%
	within(
		{week = rep(1:4, times= length(unique(Tamale_LAI$CODE)))}
	)


ggplot(
	data = Tamale_LAI,
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

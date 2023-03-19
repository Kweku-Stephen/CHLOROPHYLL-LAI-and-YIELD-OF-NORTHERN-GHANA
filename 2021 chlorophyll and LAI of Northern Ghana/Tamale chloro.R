#Salaga North
Tamale = LAI_1[LAI_1[ ,"District"] == "Tamale", ]

#Farms in Salaga North
unique(Tamale[ ,"CODE"])


#LAI
#filtering for farm 5032TUG ####
chloro_5032TUG <- dplyr::filter(LAI_1, CODE == "5032TUG") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_5032TUG, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5032TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5032TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5032TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5032TUG[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5032TUG[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5032TUG",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> atc




#filtering for farm 5036TUG ####
chloro_5036TUG  <- dplyr::filter(LAI_1, CODE == "5036TUG") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5036TUG , aes(x = 1:9)) +
	geom_line(aes(y = chloro_5036TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5036TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5036TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5036TUG[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5036TUG[ ,6], col = "Point 5"), size = 1.4) +
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
		title = "FARM 5036TUG",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> btc



#filtering for farm 5037TUG ####
chloro_5037TUG <- dplyr::filter(LAI_1, CODE == "5037TUG") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5037TUG, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5037TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5037TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5037TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5037TUG[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5037TUG[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5037TUG",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ctc



#filtering for farm 5034TUG ####
chloro_5034TUG <- dplyr::filter(LAI_1, CODE == "5034TUG") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5034TUG, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5034TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5034TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5034TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5034TUG[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5034TUG[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5034TUG",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> dtc



#filtering for farm 5033TUG ####
chloro_5033TUG <- dplyr::filter(LAI_1, CODE == "5033TUG") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5033TUG, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5033TUG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5033TUG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5033TUG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5033TUG[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5033TUG[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5033TUG",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> etc




#filtering for farm 5011LAB ####
chloro_5011LAB <- dplyr::filter(LAI_1, CODE == "5011LAB") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5011LAB, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5011LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5011LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5011LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5011LAB[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5011LAB[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5011LAB",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> ftc



#filtering for farm 5012LAB ####
chloro_5012LAB <- dplyr::filter(LAI_1, CODE == "5012LAB") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5012LAB, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5012LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5012LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5012LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5012LAB[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5012LAB[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5012LAB",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> gtc



#filtering for farm 5014LAB ####
chloro_5014LAB <- dplyr::filter(LAI_1, CODE == "5014LAB") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5014LAB, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5014LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5014LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5014LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5014LAB[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5014LAB[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5014LAB",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> htc






#filtering for farm 5002LAB ####
chloro_5002LAB <- dplyr::filter(LAI_1, CODE == "5002LAB") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	data.frame()

ggplot(data = chloro_5002LAB, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5002LAB[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5002LAB[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5002LAB[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5002LAB[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5002LAB[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5002LAB",
		x = "",
		y = "CHLOR"
	) + 
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_blank()) -> itc



#Filtering for farm 5016ZOR ####
chloro_5016ZOR <- dplyr::filter(LAI_1, CODE == "5016ZOR") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_5016ZOR, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5016ZOR[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5016ZOR[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5016ZOR[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5016ZOR[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5016ZOR[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5016ZOR",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> jtc



#Filtering for farm 5017ZOR ####
chloro_5017ZOR <- dplyr::filter(LAI_1, CODE == "5017ZOR") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_5017ZOR, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5017ZOR[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5017ZOR[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5017ZOR[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5017ZOR[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5017ZOR[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5017ZOR",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> ktc



#Filtering for farm 5057PAG ####
chloro_5057PAG <- dplyr::filter(LAI_1, CODE == "5057PAG") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_5057PAG, aes(x = 1:9)) +
	geom_line(aes(y = chloro_5057PAG[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_5057PAG[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_5057PAG[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_5057PAG[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_5057PAG[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 5057PAG",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> ltc



#Filtering for farm 7019ZOR ####
chloro_7019ZOR <- dplyr::filter(LAI_1, CODE == "7019ZOR") |> 
	dplyr::select(grep("week|CHLOR", names(LAI_1), value = TRUE)) |> 
	#t() |> 
	as.data.frame()

ggplot(data = chloro_7019ZOR, aes(x = 1:9)) +
	geom_line(aes(y = chloro_7019ZOR[ ,2],col = "Point 1"), size = 1.4) + 
	geom_line(aes(y = chloro_7019ZOR[ ,3],col = "Point 2"), size = 1.4) + 
	geom_line(aes(y = chloro_7019ZOR[ ,4],col = "Point 3"), size = 1.4) + 
	geom_line(aes(y = chloro_7019ZOR[ ,5],col = "Point 4"), size = 1.4) + 
	geom_line(aes(y = chloro_7019ZOR[ ,6],col = "Point 5"), size = 1.4) +
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
		title = "FARM 7019ZOR",
		x = "week",
		y = "CHLOR"
	) + 
	scale_x_continuous(breaks = seq(1, 9, by = 2)) +
	theme(plot.title = element_text(size = 13, face = "bold"),
	      axis.title.y = element_text(size = 11, face = "bold"),
	      axis.text.x = element_text(size = 11)) -> mtc



#Grid Plotiing ####	
require(gridExtra)
grid.arrange(
	atc, btc, ctc, dtc, etc, ftc, gtc, htc, itc, jtc, ktc, ltc, mtc,
	nrow = 4, ncol = 4
)


#Averaging Points by Days
Tamale_CHLORO = LAI_1[
	LAI_1[ ,"District"] == "Tamale", grep("week|CODE|CHLOR|District", names(LAI_1), value = TRUE) 
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


Tamale_CHLORO %<>%
	within(
		{week = rep(1:5, times= length(unique(Tamale_CHLORO$CODE)))}
	)


ggplot(
	data = Tamale_CHLORO,
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

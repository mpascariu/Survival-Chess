# --------------------------------------------------- #
# Author: Marius D. PASCARIU
# License: GNU General Public License v3.0
# Last update: Fri Jan 01 19:04:19 2021
# --------------------------------------------------- #
remove(list = ls())
library(tidyverse)

# remotes::install_github("hrbrmstr/pigeon")
library(pigeon)



db <- "ChessData/Chess.com/"


pgn <- read_pgn(path = paste0(db, "Garry_Kasparov_master_games.pgn")) %>% 
  mutate(EventDate = as.Date(EventDate, format = "%Y.%m.%d"))

pgn
pgn[1,]$Moves

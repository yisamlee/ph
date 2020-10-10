# connection --------------------------------------------------------------
source("~/Phoon Huat/sql/env.R")


# load packages -----------------------------------------------------------

library(readxl)
library(tidyverse)
library(lubridate)
library(reshape)
library(reshape2)
library(tidyr)
library(stringr)
library(openxlsx)



# common tables -----------------------------------------------------------

sales_cost <- tbl(sql,"sales_cost") %>% 
  dplyr::union_all(tbl(sql,"sales_cost_lm")) %>%
  dplyr::union_all(tbl(sql,"sales_cost_current")) %>%
  select(-DESCRIPTION)

sales <- tbl(sql,"sales") %>% 
  dplyr::union_all(tbl(sql,"sales_lm")) %>% 
  dplyr::union_all(tbl(sql,"sales_current")) %>%
  select(-DESCRIPTION)
  
  
  

# main --------------------------------------------------------------------




# upload ------------------------------------------------------------------




# log ---------------------------------------------------------------------



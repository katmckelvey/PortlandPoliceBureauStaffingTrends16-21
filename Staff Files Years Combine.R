install.packages("tidyverse")
install.packages("fs")
library(tidyverse)
library(fs)
library(readxl)

#2016
ppb2016 <- "/Users/katstevens/Google Drive (1)/Projects/PPB Staff/PPB Employment 2016.xlsx"

ppb16 <- ppb2016 %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,
         path = ppb2016,
         .id = "MonthofYear")

head(ppb16)
summary(ppb16)
table(ppb16$MonthofYear)

#2017
ppb2017 <- "/Users/katstevens/Google Drive (1)/Projects/PPB Staff/PPB Employment 2017.xlsx"

ppb17<- ppb2017 %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,
         path = ppb2017,
         .id = "MonthofYear")
head(ppb17)
summary(ppb17)
table(ppb17$MonthofYear)

#2018
ppb2018 <- "/Users/katstevens/Google Drive (1)/Projects/PPB Staff/PPB Employment 2018.xlsx"

ppb18 <- ppb2018 %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,
         path = ppb2018,
         .id = "MonthofYear")
head(ppb18)
summary(ppb18)
table(ppb18$MonthofYear)


#2019
ppb2019 <- "/Users/katstevens/Google Drive (1)/Projects/PPB Staff/PPB Employment 2019.xlsx"

ppb19 <- ppb2019 %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,
         path = ppb2019,
         .id = "MonthofYear")
head(ppb19)
summary(ppb19)
table(ppb19$MonthofYear)

#2020-2021
ppb202021 <- "/Users/katstevens/Google Drive (1)/Projects/PPB Staff/PPB Employment 2020.xlsx"

ppb2021 <- ppb202021 %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,
         path = ppb202021,
         .id = "MonthofYear")
head(ppb2021)
summary(ppb2021)
table(ppb2021$MonthofYear)

ppbstaff16to21<-rbind(ppb16, ppb17, ppb18, ppb19, ppb2021)
head(ppbstaff16to21)
summary(ppbstaff16to21)
table(ppbstaff16to21$MonthofYear)


write.csv(ppbstaff16to21, "/Users/katstevens/Google Drive (1)/Projects/PPB Staff/PPB Emploment Numbers.csv")



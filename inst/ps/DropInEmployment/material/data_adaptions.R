#### Data adaptions ####

# Set your working directory 
setwd("C:/your/directory/")


# 1) File miansufieconometrica_countylevel.dta:

library(haven)
library(dplyr)

countylevel = read_dta("miansufieconometrica_countylevel.dta")

countylevel = countylevel%>%
  rename(
    # Rename variables.
    hnw = netwp_h,
    households = total,
    lf_0709 = Clf_0709,
    emp_2007 = Cemp2_2007,
    wage_2007 = Cwage_2007,
    emp_0709 = Cemp2_0709,
    wage_0709 = Cwage_0709,
    emp_food_0709 = CFemp2_0709,
    const_2007 = C_const,
    empshare1 = C2D06share1,
    empshare2 = C2D06share2,
    empshare3 = C2D06share3,
    empshare4 = C2D06share4,
    empshare5 = C2D06share5,
    empshare6 = C2D06share6,
    empshare7 = C2D06share7,
    empshare8 = C2D06share8,
    empshare9 = C2D06share9,
    empshare10 = C2D06share10,
    empshare11 = C2D06share11,
    empshare12 = C2D06share12,
    empshare13 = C2D06share13,
    empshare14 = C2D06share14,
    empshare15 = C2D06share15,
    empshare16 = C2D06share16,
    empshare17 = C2D06share17,
    empshare18 = C2D06share18,
    empshare19 = C2D06share19,
    empshare20 = C2D06share20,
    empshare21 = C2D06share21,
    empshare22 = C2D06share22,
    empshare23 = C2D06share23,
    emp_other_rwt = CCemp2_0709_0,
    emp_other_rwt_2007 = CCemp2_2007_0,
    emp_other_rwt_2009 = CCemp2_2009_0,
    emp_other_rwt_1_4 = CCemp2_1_4_0709_0,
    emp_other_rwt_5_9 = CCemp2_5_9_0709_0,
    emp_other_rwt_10_19 = CCemp2_10_19_0709_0,
    emp_other_rwt_20_49 = CCemp2_20_49_0709_0,
    emp_other_rwt_50_99= CCemp2_50_99_0709_0,
    emp_other_rwt_100plus = CCemp2_100plus_0709_0,
    tremp_rwt = CCemp2_0709_1,
    tremp_rwt_2007 = CCemp2_2007_1,
    tremp_rwt_2009 = CCemp2_2009_1,
    tremp_rwt_1_4 = CCemp2_1_4_0709_1,
    tremp_rwt_5_9 = CCemp2_5_9_0709_1,
    tremp_rwt_10_19 = CCemp2_10_19_0709_1,
    tremp_rwt_20_49 = CCemp2_20_49_0709_1,
    tremp_rwt_50_99 = CCemp2_50_99_0709_1,
    tremp_rwt_100plus = CCemp2_100plus_0709_1,
    ntremp_rwt = CCemp2_0709_2,
    ntremp_rwt_2007 = CCemp2_2007_2,
    ntremp_rwt_2009 = CCemp2_2009_2,
    ntremp_rwt_1_4 = CCemp2_1_4_0709_2,
    ntremp_rwt_5_9 = CCemp2_5_9_0709_2,
    ntremp_rwt_10_19 = CCemp2_10_19_0709_2,
    ntremp_rwt_20_49 = CCemp2_20_49_0709_2,
    ntremp_rwt_50_99 = CCemp2_50_99_0709_2,
    ntremp_rwt_100plus = CCemp2_100plus_0709_2,
    emp_const_rwt = CCemp2_0709_3,
    emp_const_rwt_2007 = CCemp2_2007_3,
    emp_const_rwt_2009 = CCemp2_2009_3,
    emp_const_rwt_1_4 = CCemp2_1_4_0709_3,
    emp_const_rwt_5_9 = CCemp2_5_9_0709_3,
    emp_const_rwt_10_19 = CCemp2_10_19_0709_3,
    emp_const_rwt_20_49 = CCemp2_20_49_0709_3,
    emp_const_rwt_50_99 = CCemp2_50_99_0709_3,
    emp_const_rwt_100plus = CCemp2_100plus_0709_3,
    ntremp_geog = CH2emp2_0709_1,
    ntremp_geog_2007 = CH2emp2_2007_1,
    ntremp_geog_2009 = CH2emp2_2009_1,
    emp_2_geog = CH2emp2_0709_2,
    emp_2_geog_2007 = CH2emp2_2007_2,
    emp_2_geog_2009 = CH2emp2_2009_2,
    emp_3_geog = CH2emp2_0709_3,
    emp_3_geog_2007 = CH2emp2_2007_3,
    emp_3_geog_2009 = CH2emp2_2009_3,
    tremp_geog = CH2emp2_0709_4,
    tremp_geog_2007 = CH2emp2_2007_4,
    tremp_geog_2009 = CH2emp2_2009_4,
    deposits = Cdeposits,
    localshare = Clocalshare,
    defshock = Cdefshock,
    netincome = Cnetincome,
    chargeoff = Cchargeoff,
    movest0709 = Cmovest0709,
    wagehr_Wmean2007 = Cwagehr_Wmean2007,
    wagehr_Wmean0709 = Cwagehr_Wmean0709,
    wagehr_median2007 = Cwagehr_median2007,
    wagehr_median0709 = Cwagehr_median0709,
    wagehr_p102007 = Cwagehr_p102007,
    wagehr_p100709 = Cwagehr_p100709,
    wagehr_p252007 = Cwagehr_p252007,
    wagehr_p250709 = Cwagehr_p250709,
    wagehr_p752007 = Cwagehr_p752007,
    wagehr_p750709 = Cwagehr_p750709,
    wagehr_p902007 = Cwagehr_p902007,
    wagehr_p900709 = Cwagehr_p900709
  )%>%
  mutate(
    # Change data format of labeled variables into factors.
    countyname = as_factor(countyname),
    statename = as_factor(statename),
    # Create the new variable pop0709.
    pop0709 = log(pop2009)- log(pop2007)
  )%>%
  # Reorder variables.
  relocate(fips, countyname, statename)%>%
  relocate(lf_0709, .after = wage_0709)%>%
  relocate(nontradable_strict, .before = ntremp_rwt)%>%
  relocate(white, .after = homevalmed)

# Store the result in countylevel.Rds.
saveRDS(countylevel, file = "countylevel.Rds")


# 2) File miansufieconometrica_countyindustrylevel.dta:

countyindustrylevel = read_dta("miansufieconometrica_countyindustrylevel.dta")

countyindustrylevel = countyindustrylevel%>%
  # Rename variables.
  rename(
    hnw = netwp_h,
    households = total,
    CIemp_2007 = CIemp2_2007,
    CIemp_2009 = CIemp2_2009,
    Iemp_2007 = Iemp2_2007,
    CIemp_0709 = CIemp2_0709,
    Ihcat = Ihcat2
  )%>%
  mutate(
    # Change data format of labeled variables into factors.
    countyname = as_factor(countyname),
    statename = as_factor(statename),
    industry = as_factor(industry),
    indcat = as_factor(indcat),
    # Remove slashes.
    naics = substr(naics,1,nchar(naics)-2),
    # Create the new variables ntr_rwt, tr_rwt, ntr_geog, tr_geog.
    ntr_rwt = ifelse(indcat == "non-tradable", 1, 0),
    tr_rwt = ifelse (indcat == "tradable", 1, 0),
    ntr_geog = ifelse(Ihcat == 1, 1 ,0),
    tr_geog = ifelse(Ihcat == 4, 1 ,0)
  )%>%
  # Reorder variables.
  relocate(fips, countyname, statename, hnw, elasticity, households, naics,
           industry, CIemp_2007, CIemp_2009, CIemp_0709, Iemp_2007, nontradable_strict,
           indcat, Iherf, Ihcat, export_worker, ntr_rwt, tr_rwt, ntr_geog, tr_geog)

# Store the result in countyindustrylevel.Rds.
saveRDS(countyindustrylevel, file = "countyindustrylevel.Rds")


# 3) Files emppop.dta and Qnfib.dta:

# 3.1) Modify emppop.dta.

library(zoo)
library(stataXml)

emppop = read_dta("emppop.dta")

emppop = emppop%>%
  # Twelvefold the rows of the data set.
  slice(rep(1:n(), each = 12))%>%
  # Add column month.
  group_by(year)%>%
  mutate(
    month = 1:12, 
    # Add column emppop.
    emppop = case_when(
      month == 1 ~ jan,
      month == 2 ~ feb,
      month == 3 ~ mar,
      month == 4 ~ apr,
      month == 5 ~ may,
      month == 6 ~ jun,
      month == 7 ~ jul,
      month == 8 ~ aug,
      month == 9 ~ sep,
      month == 10 ~ oct,
      month == 11 ~ nov,
      month == 12 ~ dec
    )
  )%>%
  # Keep columns year, month, emppop.
  select(year, month, emppop)

# Rename column "month" to "m".
names(emppop)[2] ="m"

# Add column month.
emppop$month <- as.yearmon(paste(emppop$year, emppop$m), "%Y %m")

# Add column quarter.
emppop$quarter = as.yearqtr(emppop$month, "%m %Y")

emppop = emppop %>%
  # Keep the last month of quarter.
  group_by(year, quarter)%>%
  filter (m == max(m))%>%
  ungroup()%>%
  # Keep columns emppop, quarter.
  select(quarter, emppop)

# 3.2) Modify Qnfib.dta.

Qnfib = read_dta("Qnfib.dta")

# Change format of column quarter.
Qnfib$quarter = fromStataTime(Qnfib$quarter, '%tq')
Qnfib$quarter = as.yearqtr(Qnfib$quarter,"%Y-%m-%d")

# Add column govtax.
Qnfib = Qnfib%>%
  mutate(govtax = taxes + gov)

# 3.3) Merge data sets empopp and Qnfib and store the result in variable bc. 

bc = merge(Qnfib, emppop, by = "quarter", all.y  = TRUE)

saveRDS(bc, file = "bc.Rds")


# 4) File nfibcs.dta:

nfibcs = read_dta("nfibcs.dta")

# Rename variable netwp_h.
nfibcs = nfibcs%>%
  rename(hnw = netwp_h)

# Store the result in nfibcs.Rds.
saveRDS(nfibcs, file = "nfibcs.Rds")

cd "/Users/jackpaine/Box Sync/Africa Kingdoms paper/Dataset for IO submission"

*************************************
***TABLE 2. MAIN CIVIL WAR RESULTS***
*************************************
use epr2014.dta, clear
logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, replace label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon
logit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon
logit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon
logit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_cw, append label nocon tex(frag)
*Averages stated in text
quietly logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, at(slpcs=(0 1) pcs_group=(0 1)) atmeans vsquish post
quietly logit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, at(slpcs=(0 1) pcs_group=(0 1)) atmeans vsquish post


********************************
***TABLE 3. MAIN COUP RESULTS***
********************************
use epr2014.dta, clear
logit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, replace label nocon
logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon
logit group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon
logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon
logit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon
logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon
logit group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon
logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using main_coup, append label nocon tex(frag)
*Averages stated in text
quietly logit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, at(pcs_group=(0 1) slpcs=0) atmeans vsquish post
quietly logit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, at(pcs_group=(0 1) slpcs=0) atmeans vsquish post


***************************************************************************
***TABLE 4. ETHNIC PARTIES DURING DECOLONIZATION: COUNTRY-LEVEL EVIDENCE***
***************************************************************************
use io_countrydata.dta, clear
reg ethnicshare pcs_country, cluster(ccode)
outreg2 using ethnicparty_country, replace label nocon
reg ethnicshare pcs_country agtrans1000 ln_slaveexport_area herbst_ordinal madpop1950 madgdp1950 col_br, cluster(ccode)
outreg2 using ethnicparty_country, append label tex(frag) nocon
*Averages stated in text
summarize ethnicshare if pcs_country==1
summarize ethnicshare if pcs_country==0


********************************************************************************
***TABLE 5. ETHNIC PARTIES DURING DECOLONIZATION: ETHNIC GROUP-LEVEL EVIDENCE***
********************************************************************************
use io_ethnicdata.dta, clear
*Panel A
logit ethnicparty pcs_group slpcs, cluster(gwgroupid)
outreg2 using ethnicparty_full, replace label nocon
logit ethnicparty pcs_group slpcs tsi agtrans ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using ethnicparty_full, append label nocon
logit ethnicparty pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using ethnicparty_full, append label nocon
logit ethnicparty pcs_group slpcs tsi agtrans ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using ethnicparty_full, append label nocon tex(frag)
*Panel B
logit ethnicparty pcs_group slpcs if groupsize>=.1, cluster(gwgroupid)
outreg2 using ethnicparty_large, replace label nocon
logit ethnicparty pcs_group slpcs tsi agtrans ecodivfao ln_slaveexport_area histwar if groupsize>=.1, cluster(gwgroupid)
outreg2 using ethnicparty_large, append label nocon
logit ethnicparty pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop if groupsize>=.1, cluster(gwgroupid)
outreg2 using ethnicparty_large, append label nocon
logit ethnicparty pcs_group slpcs tsi agtrans ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop if groupsize>=.1, cluster(gwgroupid)
outreg2 using ethnicparty_large, append label nocon tex(frag)
*Averages stated in text
quietly logit ethnicparty pcs_group slpcs, cluster(gwgroupid)
margins, at(pcs_group=(0 1) slpcs=(0 1)) atmeans vsquish post
quietly logit ethnicparty pcs_group slpcs if groupsize>=.1, cluster(gwgroupid)
margins, at(pcs_group=(0 1) slpcs=(0 1)) atmeans vsquish post


***************************************
***TABLE 6. ETHNOPOLITICAL INCLUSION***
***************************************
use epr2014.dta, clear
logit poli_inclusion pcs_group slpcs if sample==1, cluster(gwgroupid)
outreg2 using inclusion, replace label nocon
logit poli_inclusion pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar if sample==1, cluster(gwgroupid)
outreg2 using inclusion, append label nocon
logit poli_inclusion pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop if sample==1, cluster(gwgroupid)
outreg2 using inclusion, append label nocon
logit poli_inclusion pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop if sample==1, cluster(gwgroupid)
outreg2 using inclusion, append label nocon tex(frag)
*Averages stated in text
logit poli_inclusion pcs_group slpcs if sample==1, cluster(gwgroupid)
margins, at(slpcs=(0 1) pcs_group=(0 1)) atmeans vsquish post


*****************************************************************************************
***TABLE B.1. PRE-COLONIAL STATEHOOD, "MARTIAL RACE" RECRUITMENT, AND SPLIT DOMINATION***
*****************************************************************************************
use io_countrydata.dta, clear
logit unmatched pcs_country, cluster(ccode)
outreg2 using splitdom1, replace label nocon keep(pcs_country)
use io_ethnicdata.dta, clear
logit mildom pcs_group if countryname!="Liberia", cluster(gwgroupid)
outreg2 using splitdom1, append label nocon keep(pcs_group)
logit mildom pcs_group i.ccode if countryname!="Liberia", cluster(gwgroupid)
outreg2 using splitdom1, append label nocon keep(pcs_group)
use colonialpolice_pcs.dta, clear
reg police pcs_group, robust
outreg2 using splitdom1, append label nocon keep(pcs_group)
reg police pcs_group i.countrycode, robust
outreg2 using splitdom1, append label nocon tex(frag) keep(pcs_group)


***************************************************
***TABLE C.2. SUMMARY STATISTICS FOR MAIN SAMPLE***
***************************************************
use epr2014.dta, clear
sutex fl_war_epr group_rebel_do group_s_coup group_t_coup poli_inclusion pcs_group slpcs sl ///
ecodivfao histwar ln_slaveexport_area tsi agtrans1000 ln_gdppc ln_pop polity2 herbst ///
groupsize dist_capital_centroid group_oil if sample==1, label


***********************************************************************
***TABLE C.3. SUMMARY STATISTICS FOR ETHNICALLY EXCLUDED GROUP-YEARS***
***********************************************************************
use epr2014.dta, clear
sutex fl_war_epr group_rebel_do group_s_coup group_t_coup pcs_group slpcs sl ///
ecodivfao histwar ln_slaveexport_area tsi agtrans1000 ln_gdppc ln_pop polity2 herbst ///
groupsize dist_capital_centroid group_oil if sample==1 & poli_inclusion==0, label


***********************************************************************
***TABLE C.4. SUMMARY STATISTICS FOR ETHNICALLY INCLUDED GROUP-YEARS***
***********************************************************************
use epr2014.dta, clear
sutex fl_war_epr group_rebel_do group_s_coup group_t_coup pcs_group slpcs sl ///
ecodivfao histwar ln_slaveexport_area tsi agtrans1000 ln_gdppc ln_pop polity2 herbst ///
groupsize dist_capital_centroid group_oil if sample==1 & poli_inclusion==1, label


*****************************************************
***TABLE C.5. SUMMARY STATISTICS FOR CROSS-SECTION***
*****************************************************
use io_ethnicdata.dta, clear
sutex fl_war_epr_total fl_war_epr_binary group_rebel_total group_rebel_binary group_s_coup_total group_s_coup_binary ///
group_t_coup_total group_t_coup_binary pcs_group slpcs sl ///
ecodivfao histwar ln_slaveexport_area tsi agtrans1000 ln_gdppc ln_pop polity2 herbst ///
groupsize dist_capital_centroid group_oil, label
*Not sure why sutex doesn't output N. The following verifies that N=169 for each variable
summarize fl_war_epr_total 
summarize fl_war_epr_binary 
summarize group_s_coup_total 
summarize group_s_coup_binary 
summarize pcs_group 
summarize slpcs
summarize sl
summarize ecodivfao 
summarize histwar 
summarize ln_slaveexport_area 
summarize tsi 
summarize agtrans1000 
summarize ln_gdppc 
summarize ln_pop 
summarize polity2 
summarize herbst
summarize groupsize 
summarize dist_capital_centroid 
summarize group_oil


*****************************************************************
***TABLE D.1. SUMMARY OF JACKKNIFE SAMPLE SENSITIVITY ANALYSIS***
*****************************************************************
use epr2014.dta, clear
sort ccode year
gen country_number=.
replace country_number=1 if countryname=="Guinea-Bissau"
replace country_number=2 if countryname=="Gambia"
replace country_number=3 if countryname=="Mali"
replace country_number=4 if countryname=="Senegal"
replace country_number=5 if countryname=="Benin"
replace country_number=6 if countryname=="Mauritania"
replace country_number=7 if countryname=="Niger"
replace country_number=8 if countryname=="Cote d'Ivoire"
replace country_number=9 if countryname=="Guinea"
replace country_number=10 if countryname=="Liberia"
replace country_number=11 if countryname=="Sierra Leone"
replace country_number=12 if countryname=="Ghana"
replace country_number=13 if countryname=="Togo"
replace country_number=14 if countryname=="Cameroon"
replace country_number=15 if countryname=="Nigeria"
replace country_number=16 if countryname=="Gabon"
replace country_number=17 if countryname=="Central African Republic"
replace country_number=18 if countryname=="Chad"
replace country_number=19 if countryname=="Congo"
replace country_number=20 if countryname=="Congo, DRC"
replace country_number=21 if countryname=="Uganda"
replace country_number=22 if countryname=="Kenya"
replace country_number=23 if countryname=="Burundi"
replace country_number=24 if countryname=="Rwanda"
replace country_number=25 if countryname=="Djibouti"
replace country_number=26 if countryname=="Ethiopia"
replace country_number=27 if countryname=="Eritrea"
replace country_number=28 if countryname=="Angola"
replace country_number=29 if countryname=="Mozambique"
replace country_number=30 if countryname=="Zambia"
replace country_number=31 if countryname=="Zimbabwe"
replace country_number=32 if countryname=="Malawi"
replace country_number=33 if countryname=="South Africa"
replace country_number=34 if countryname=="Namibia"
replace country_number=35 if countryname=="Botswana"
replace country_number=36 if countryname=="Madagascar"
replace country_number=37 if countryname=="Sudan"
gen number=_n
gen pcs_cw=.
gen pcs_coup=.
gen slpcs_cw=.
gen slpcs_coup=.
gen pcs_roessler_cw=.
gen slpcs_roessler_cw=.
gen pcs_coupattempt=.
gen slpcs_coupattempt=.
gen ccode_reg=.
foreach i of numlist 1/37 {
	logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 ///
	if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_cw=`t' if number==`i'
	local t = A[4,2]
	replace slpcs_cw=`t' if number==`i'
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'
    }
foreach i of numlist 1/37 {
	logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence ///
	war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_cw=`t' if number==`i'+37
	local t = A[4,2]
	replace slpcs_cw=`t' if number==`i'+37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+37
    }
foreach i of numlist 1/37 {
	logit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ///
	ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_cw=`t' if number==`i'+2*37
	local t = A[4,2]
	replace slpcs_cw=`t' if number==`i'+2*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+2*37
    }
foreach i of numlist 1/37 {
	logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize ///
	dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 ///
	war_spline2 war_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_cw=`t' if number==`i'+3*37
	local t = A[4,2]
	replace slpcs_cw=`t' if number==`i'+3*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+3*37
    }
foreach i of numlist 1/37 {
	logit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 ///
	if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_roessler_cw=`t' if number==`i'
	local t = A[4,2]
	replace slpcs_roessler_cw=`t' if number==`i'
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'
    }
foreach i of numlist 1/37 {
	logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar ///
	L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_roessler_cw=`t' if number==`i'+37
	local t = A[4,2]
	replace slpcs_roessler_cw=`t' if number==`i'+37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+37
    }
foreach i of numlist 1/37 {
	logit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ///
	ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_roessler_cw=`t' if number==`i'+2*37
	local t = A[4,2]
	replace slpcs_roessler_cw=`t' if number==`i'+2*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+2*37
    }
foreach i of numlist 1/37 {
	logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize ///
	dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop ///
	L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_roessler_cw=`t' if number==`i'+3*37
	local t = A[4,2]
	replace slpcs_roessler_cw=`t' if number==`i'+3*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+3*37
    }
foreach i of numlist 1/37 {
	logit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 ///
	if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coup=`t' if number==`i'
	local t = A[4,2]
	replace slpcs_coup=`t' if number==`i'
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'
    }
foreach i of numlist 1/37 {
	logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears ///
	coup_spline1 coup_spline2 coup_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coup=`t' if number==`i'+37
	local t = A[4,2]
	replace slpcs_coup=`t' if number==`i'+37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+37
    }
foreach i of numlist 1/37 {
	logit group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop ///
	coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coup=`t' if number==`i'+2*37
	local t = A[4,2]
	replace slpcs_coup=`t' if number==`i'+2*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+2*37
    }	
foreach i of numlist 1/37 {
	logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize ///
	dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 ///
	coup_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coup=`t' if number==`i'+3*37
	local t = A[4,2]
	replace slpcs_coup=`t' if number==`i'+3*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+3*37
    }
foreach i of numlist 1/37 {
	logit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 ///
	if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coupattempt=`t' if number==`i'
	local t = A[4,2]
	replace slpcs_coupattempt=`t' if number==`i'
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'
    }
foreach i of numlist 1/37 {
	logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears ///
	coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coupattempt=`t' if number==`i'+37
	local t = A[4,2]
	replace slpcs_coupattempt=`t' if number==`i'+37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+37
    }
foreach i of numlist 1/37 {
	logit group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop ///
	coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coupattempt=`t' if number==`i'+2*37
	local t = A[4,2]
	replace slpcs_coupattempt=`t' if number==`i'+2*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+2*37
    }	
foreach i of numlist 1/37 {
	logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize ///
	dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 ///
	coupattempt_spline3 if sample==1 & country_number!=`i', cluster(gwgroupid)
	mat A=r(table)
	local t = A[4,1]
	replace pcs_coupattempt=`t' if number==`i'+3*37
	local t = A[4,2]
	replace slpcs_coupattempt=`t' if number==`i'+3*37
	summarize ccode if country_number==`i'
	replace ccode_reg=r(max) if number==`i'+3*37
    }
do country_reg	
*H1 with ethnic civil war	
summarize slpcs_cw if slpcs_cw<.01
summarize slpcs_cw if slpcs_cw<.05
summarize slpcs_cw if slpcs_cw<.1
summarize slpcs_cw
*H1 with civil war participation
summarize slpcs_roessler_cw if slpcs_roessler_cw<.01
summarize slpcs_roessler_cw if slpcs_roessler_cw<.05
summarize slpcs_roessler_cw if slpcs_roessler_cw<.1
summarize slpcs_roessler_cw
*H2 with successful coup
summarize pcs_coup if pcs_coup<.01
summarize pcs_coup if pcs_coup<.05
summarize pcs_coup if pcs_coup<.1
summarize pcs_coup
*H2 with coup attempt
summarize pcs_coupattempt if pcs_coupattempt<.01
summarize pcs_coupattempt if pcs_coupattempt<.05
summarize pcs_coupattempt if pcs_coupattempt<.1
summarize pcs_coupattempt
list country_reg number pcs_coup if pcs_coup>.1  & pcs_coup!=.
list country_reg number pcs_coupattempt if pcs_coupattempt>.1  & pcs_coupattempt!=.
drop pcs_cw slpcs_cw pcs_coup slpcs_coup number country_number ccode_reg


*********************************************************************************
***TABLE D.2. ASSESSING BIAS FROM UNOBSERVABLES USING SELECTION ON OBSERVABLES***
*********************************************************************************
use epr2014.dta, clear
reg fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BR1 = B[1,2]
reg fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF1_1 = B[1,2]
gen SOO1_1 = BF1_1/(BR1-BF1_1)
replace SOO1_1 = round(SOO1_1,.1)
reg fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF1_2 = B[1,2]
gen SOO1_2 = BF1_2/(BR1-BF1_2)
replace SOO1_2 = round(SOO1_2,.1)
reg fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF1_3 = B[1,2]
gen SOO1_3 = BF1_3/(BR1-BF1_3)
replace SOO1_3 = round(SOO1_3,.1)
reg group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BR2 = B[1,2]
reg group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF2_1 = B[1,2]
gen SOO2_1 = BF2_1/(BR2-BF2_1)
replace SOO2_1 = round(SOO2_1,.1)
reg group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF2_2 = B[1,2]
gen SOO2_2 = BF2_2/(BR2-BF2_2)
replace SOO2_2 = round(SOO2_2,.1)
reg group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF2_3 = B[1,2]
gen SOO2_3 = BF2_3/(BR2-BF2_3)
replace SOO2_3 = round(SOO2_3,.1)
reg group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BR3 = B[1,1]
reg group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF3_1 = B[1,1]
gen SOO3_1 = BF3_1/(BR3-BF3_1)
replace SOO3_1 = round(SOO3_1,.1)
reg group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF3_2 = B[1,1]
gen SOO3_2 = BF3_2/(BR3-BF3_2)
replace SOO3_2 = round(SOO3_2,.1)
reg group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF3_3 = B[1,1]
gen SOO3_3 = BF3_3/(BR3-BF3_3)
replace SOO3_3 = round(SOO3_3,.1)
reg group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BR4 = B[1,1]
reg group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF4_1 = B[1,1]
gen SOO4_1 = BF4_1/(BR4-BF4_1)
replace SOO4_1 = round(SOO4_1,.1)
reg group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF4_2 = B[1,1]
gen SOO4_2 = BF4_2/(BR4-BF4_2)
replace SOO4_2 = round(SOO4_2,.1)
reg group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
matrix B = e(b)
gen BF4_3 = B[1,1]
gen SOO4_3 = BF4_3/(BR4-BF4_3)
replace SOO4_3 = round(SOO4_3,.1)
list SOO1_1 SOO1_2 SOO1_3 if groupname=="Temne" & year==1961
list SOO2_1 SOO2_2 SOO2_3 if groupname=="Temne" & year==1961 
list SOO3_1 SOO3_2 SOO3_3 if groupname=="Temne" & year==1961
list SOO4_1 SOO4_2 SOO4_3 if groupname=="Temne" & year==1961


************************************************
***TABLE D.3. ALTERNATIVE DEPENDENT VARIABLES***
************************************************
use epr2014.dta, clear
*Panel A. DV: Ethnic civil war onset (ACD w/ 25 b.d.s)
logit onset_do_flag_revised pcs_group slpcs L_country_war_acd2epr acd2epr_peaceyears acd2epr_spline1 acd2epr_spline2 acd2epr_spline3 if sample==1, cluster(gwgroupid)
outreg2 using acd, replace label nocon
logit onset_do_flag_revised pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_country_war_acd2epr acd2epr_peaceyears acd2epr_spline1 acd2epr_spline2 acd2epr_spline3 if sample==1, cluster(gwgroupid)
outreg2 using acd, append label nocon
logit onset_do_flag_revised pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_country_war_acd2epr acd2epr_peaceyears acd2epr_spline1 acd2epr_spline2 acd2epr_spline3 if sample==1, cluster(gwgroupid)
outreg2 using acd, append label nocon
logit onset_do_flag_revised pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_country_war_acd2epr acd2epr_peaceyears acd2epr_spline1 acd2epr_spline2 acd2epr_spline3 if sample==1, cluster(gwgroupid)
outreg2 using acd, append label nocon tex(frag)
*Panel B. Irregular ethnic ruling group change
logit groupchange pcs_group slpcs groupchange_peaceyears groupchange_spline1 groupchange_spline2 groupchange_spline3 if sample==1 & year<=2005, cluster(gwgroupid)
outreg2 using groupchange, replace label nocon
logit groupchange pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupchange_peaceyears groupchange_spline1 groupchange_spline2 groupchange_spline3 if sample==1 & year<=2005, cluster(gwgroupid)
outreg2 using groupchange, append label nocon
logit groupchange pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop groupchange_peaceyears groupchange_spline1 groupchange_spline2 groupchange_spline3 if sample==1 & year<=2005, cluster(gwgroupid)
outreg2 using groupchange, append label nocon
logit groupchange pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop groupchange_peaceyears groupchange_spline1 groupchange_spline2 groupchange_spline3 if sample==1 & year<=2005, cluster(gwgroupid)
outreg2 using groupchange, append label nocon tex(frag)


*******************************************************************************
***TABLE D.4. ALTERNATIVE PCS MEASURE #1: RECODE GROUPS WITH MULTIPLE STATES***
*******************************************************************************
use epr2014.dta, clear
*Panel A. Civil war
logit fl_war_epr pcs_group1 slpcs1 L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, replace label nocon
logit fl_war_epr pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon
logit fl_war_epr pcs_group1 slpcs1 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon
logit fl_war_epr pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon
logit group_rebel_do pcs_group1 slpcs1 L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon
logit group_rebel_do pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon
logit group_rebel_do pcs_group1 slpcs1 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon
logit group_rebel_do pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_cw, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup pcs_group1 slpcs1 coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, replace label nocon
logit group_s_coup pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon
logit group_s_coup pcs_group1 slpcs1 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon
logit group_s_coup pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon
logit group_t_coup pcs_group1 slpcs1 coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon
logit group_t_coup pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon
logit group_t_coup pcs_group1 slpcs1 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon
logit group_t_coup pcs_group1 slpcs1 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs2_coup, append label nocon tex(frag)


*************************************************************************************************
***TABLE D.5. ALTERNATIVE PCS MEASURE #2: RECODE GROUPS WITH EARLY MAJOR COLONIAL INTERFERENCE***
*************************************************************************************************
use epr2014.dta, clear
*Panel A. Civil war
logit fl_war_epr pcs_group2 slpcs2 L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, replace label nocon
logit fl_war_epr pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon
logit fl_war_epr pcs_group2 slpcs2 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon
logit fl_war_epr pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon
logit group_rebel_do pcs_group2 slpcs2 L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon
logit group_rebel_do pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon
logit group_rebel_do pcs_group2 slpcs2 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon
logit group_rebel_do pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_cw, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup pcs_group2 slpcs2 coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, replace label nocon
logit group_s_coup pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon
logit group_s_coup pcs_group2 slpcs2 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon
logit group_s_coup pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon
logit group_t_coup pcs_group2 slpcs2 coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon
logit group_t_coup pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon
logit group_t_coup pcs_group2 slpcs2 groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon
logit group_t_coup pcs_group2 slpcs2 tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using altpcs3_coup, append label nocon tex(frag)


***************************************************************
***TABLE D.6. CROSS-SECTIONAL DATA (COUNT OUTCOME VARIABLES)***
***************************************************************
use io_ethnicdata.dta, clear
*Panel A. Civil war
reg fl_war_epr_total pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_war_total, replace label nocon
reg fl_war_epr_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon
reg fl_war_epr_total pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon
reg fl_war_epr_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon
reg group_rebel_total pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon
reg group_rebel_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon
reg group_rebel_total pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon
reg group_rebel_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_total, append label nocon tex(frag)
*Panel B. Coups
reg group_s_coup_total pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_coup_total, replace label nocon
reg group_s_coup_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon
reg group_s_coup_total pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon
reg group_s_coup_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon
reg group_t_coup_total pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon
reg group_t_coup_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon
reg group_t_coup_total pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon
reg group_t_coup_total pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_total, append label nocon tex(frag)


****************************************************************
***TABLE D.7. CROSS-SECTIONAL DATA (BINARY OUTCOME VARIABLES)***
****************************************************************
use io_ethnicdata.dta, clear
*Panel A. Civil war
logit fl_war_epr_binary pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_war_binary, replace label nocon
logit fl_war_epr_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon
logit fl_war_epr_binary pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon
logit fl_war_epr_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon
logit group_rebel_binary pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon
logit group_rebel_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon
logit group_rebel_binary pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon
logit group_rebel_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_war_binary, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup_binary pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_coup_binary, replace label nocon
logit group_s_coup_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon
logit group_s_coup_binary pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon
logit group_s_coup_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon
logit group_t_coup_binary pcs_group slpcs, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon
logit group_t_coup_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon
logit group_t_coup_binary pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon
logit group_t_coup_binary pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop, cluster(gwgroupid)
outreg2 using cs_coup_binary, append label nocon tex(frag)


**********************************
***TABLE D.8. RARE EVENTS LOGIT***
**********************************
use epr2014.dta, clear
*Panel A. Civil war
relogit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, replace label nocon
relogit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon
relogit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon
relogit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon
relogit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon
relogit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon
relogit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon
relogit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_cw, append label nocon tex(frag)
*Panel B. Coups
relogit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, replace label nocon
relogit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon
relogit group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon
relogit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon
relogit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon
relogit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon
relogit group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon
relogit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using relogit_coup, append label nocon tex(frag)


********************
***TABLE D.9. OLS***
********************
use epr2014.dta, clear
*Panel A. Civil war
reg fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, replace label nocon
reg fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon
reg fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon
reg fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon
reg group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon
reg group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon
reg group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon
reg group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_cw, append label nocon tex(frag)
*Panel B. Coups
reg group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, replace label nocon
reg group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon
reg group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon
reg group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon
reg group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon
reg group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon
reg group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon
reg group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using ols_coup, append label nocon tex(frag)


************************************
***TABLE D.10. YEAR FIXED EFFECTS***
************************************
use epr2014.dta, clear
*Panel A. Civil war
use epr2014.dta, clear
logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, replace label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon
logit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon
logit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon
logit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_cw, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, replace label nocon
logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon
logit group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon
logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon
logit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon
logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon
logit group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon
logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 i.year if sample==1, cluster(gwgroupid)
outreg2 using yearfe_coup, append label nocon tex(frag)


**************************************************
***TABLE D.11 TWO-WAY CLUSTERED STANDARD ERRORS***
**************************************************
use epr2014.dta, clear
*Panel A. Civil war
cgmlogit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, replace label nocon
cgmlogit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon
cgmlogit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon
cgmlogit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon
cgmlogit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon
cgmlogit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon
cgmlogit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon
cgmlogit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_cw, append label nocon tex(frag)
*Panel B. Coups
cgmlogit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, replace label nocon
cgmlogit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon
cgmlogit group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon
cgmlogit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon
cgmlogit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon
cgmlogit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon
cgmlogit group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon
cgmlogit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid ccode)
outreg2 using multi_coup, append label nocon tex(frag)


******************************************************************************************
**********TABLE D.12. LIST OF PARTITIONED ETHNIC GROUPS WITH AN ETHNIC CIVIL WAR**********
******************************************************************************************
use epr2014.dta, clear
sort year
outsheet groupname countryname year pcs_group slpcs using partition.txt if fl_war_epr==1 & sample==1 & tekid!=., comma replace
list groupname countryname year pcs_group slpcs if fl_war_epr==1 & sample==1 & tekid!=.


******************************************************************************
**********TABLE D.13. PARTITIONED ETHNIC GROUPS: REGRESSION ANALYSIS**********
******************************************************************************
use epr2014.dta, clear
logit fl_war_epr pcs_country##coldwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & tekid!=., cluster(gwgroupid)
outreg2 using partitioned, replace label nocon
logit fl_war_epr pcs_country##coldwar i.tekid L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using partitioned, append label nocon
logit group_rebel_do pcs_country##coldwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & tekid!=., cluster(gwgroupid)
outreg2 using partitioned, append label nocon
logit group_rebel_do pcs_country##coldwar i.tekid L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using partitioned, append label nocon tex(frag)
*During Cold War marginal effect estimates
logit fl_war_epr pcs_country##coldwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & tekid!=., cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=1 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned1, replace label nocon
logit fl_war_epr pcs_country##coldwar i.tekid L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=1 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned1, append label nocon
logit group_rebel_do pcs_country##coldwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & tekid!=., cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=1 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned1, append label nocon
logit group_rebel_do pcs_country##coldwar i.tekid L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=1 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned1, append label nocon tex(frag)
*After Cold War marginal effect estimates
logit fl_war_epr pcs_country##coldwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & tekid!=., cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=0 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned0, replace label nocon
logit fl_war_epr pcs_country##coldwar i.tekid L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=0 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned0, append label nocon
logit group_rebel_do pcs_country##coldwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & tekid!=., cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=0 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned0, append label nocon
logit group_rebel_do pcs_country##coldwar i.tekid L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_country) at(coldwar=0 pcs_country=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using partitioned0, append label nocon tex(frag)


**************************************
***TABLE D.14 BRITISH COLONIAL RULE***
**************************************
use epr2014.dta, clear
*Panel A. Civil war
*Within the former British empire, there have been no civil wars in non-PCS countries
logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, replace label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon
logit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon
logit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon
logit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & col_br==0, cluster(gwgroupid)
outreg2 using brit_cw, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup pcs_group##slpcs##col_br coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, replace label nocon
logit group_s_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon
logit group_s_coup pcs_group##slpcs##col_br groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon
logit group_s_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon
logit group_t_coup pcs_group##slpcs##col_br coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon
logit group_t_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon
logit group_t_coup pcs_group##slpcs##col_br groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon
logit group_t_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using brit_coup, append label nocon tex(frag)
*Marginal effect estimates for British colonies
logit group_s_coup pcs_group##slpcs##col_br coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, replace label nocon
logit group_s_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon
logit group_s_coup pcs_group##slpcs##col_br groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon
logit group_s_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##col_br coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##col_br groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup1, append label nocon tex(frag)
*Marginal effect estimates for non-British colonies
logit group_s_coup pcs_group##slpcs##col_br coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, replace label nocon
logit group_s_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon
logit group_s_coup pcs_group##slpcs##col_br groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon
logit group_s_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##col_br coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##col_br groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##col_br tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(col_br=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using brit_coup0, append label nocon tex(frag)


**************************
***TABLE D.15. COLD WAR***
**************************
use epr2014.dta, clear
*Panel A. Civil war
logit fl_war_epr pcs_group##slpcs##coldwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, replace label nocon
logit fl_war_epr pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon
logit fl_war_epr pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon
logit fl_war_epr pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_cw, append label nocon tex(frag)
*Marginal effect estimates during Cold War
logit fl_war_epr pcs_group##slpcs##coldwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, replace label nocon
logit fl_war_epr pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon
logit fl_war_epr pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon
logit fl_war_epr pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw1, append label nocon tex(frag)
*Marginal effect estimates after Cold War
logit fl_war_epr pcs_group##slpcs##coldwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, replace label nocon
logit fl_war_epr pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon
logit fl_war_epr pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon
logit fl_war_epr pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon
logit group_rebel_do pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(slpcs) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_cw0, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup pcs_group##slpcs##coldwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, replace label nocon
logit group_s_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon
logit group_s_coup pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon
logit group_s_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
outreg2 using coldwar_coup, append label nocon tex(frag)
*Marginal effect estimates during Cold War
logit group_s_coup pcs_group##slpcs##coldwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, replace label nocon
logit group_s_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon
logit group_s_coup pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon
logit group_s_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=1 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup1, append label nocon tex(frag)
*Marginal effect estimates after Cold War
logit group_s_coup pcs_group##slpcs##coldwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, replace label nocon
logit group_s_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon
logit group_s_coup pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon
logit group_s_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon
logit group_t_coup pcs_group##slpcs##coldwar tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1, cluster(gwgroupid)
margins, dydx(pcs_group) at(coldwar=0 pcs_group=0 slpcs=0) asbalanced emptycells(reweight) atmeans noestimcheck post
outreg2 using coldwar_coup0, append label nocon tex(frag)


****************************************************
***TABLE D.16 CONDITIONAL ETHNIC VIOLENCE RESULTS***
****************************************************
use epr2014.dta, clear
*Panel A. Civil wars
logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, replace label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon
logit fl_war_epr pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon
logit fl_war_epr pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon
logit group_rebel_do pcs_group slpcs L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon
logit group_rebel_do pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon
logit group_rebel_do pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop L_roessler_war roessler_peaceyears roessler_spline1 roessler_spline2 roessler_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
outreg2 using exclude_cw, append label nocon tex(frag)
*Panel B. Coups
logit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, replace label nocon
logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon
logit group_s_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon
logit group_s_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon
logit group_t_coup pcs_group slpcs coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon
logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon
logit group_t_coup pcs_group slpcs groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon
logit group_t_coup pcs_group slpcs tsi agtrans1000 ecodivfao ln_slaveexport_area histwar groupsize dist_capital_centroid herbst group_oil polity2 ln_gdppc ln_pop coupattempt_peaceyears coupattempt_spline1 coupattempt_spline2 coupattempt_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
outreg2 using include_coup, append label nocon tex(frag)
*Averages stated in text
logit fl_war_epr pcs_group slpcs L_war_incidence war_peaceyears war_spline1 war_spline2 war_spline3 if sample==1 & poli_inclusion==0, cluster(gwgroupid)
margins, at(pcs_group=(0 1) slpcs=(0 1)) atmeans vsquish post
logit group_s_coup pcs_group slpcs coup_peaceyears coup_spline1 coup_spline2 coup_spline3 if sample==1 & poli_inclusion==1, cluster(gwgroupid)
margins, at(pcs_group=(0 1) slpcs=0) atmeans vsquish post

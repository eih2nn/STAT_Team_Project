############################################################################
#                     TEAM PROJECT DATA PREPARATION                        #
############################################################################

#Users may need to install the Hmisc library before invoking it.
setwd("~/Desktop/DSI/STAT 6021/TEAM/PROJECT/Data")

library(Hmisc) #TO USE contents()

flatfile10 <- "NISPUF10.DAT"
flatfile11 <- "NISPUF11.DAT"
flatfile12 <- "NISPUF12.DAT"
flatfile13 <- "NISPUF13.DAT"
flatfile14 <- "NISPUF14.DAT"

############################################################################
#                           CREATE FORMATS                                 #
############################################################################

AGEGRPlevels=c(1,2,3)
AGEGRPlabels=c("19 - 23 MONTHS", "24 - 29 MONTHS", "30 - 35 MONTHS")

LANGUAGElevels=c(1,2,3)
LANGUAGElabels=c("ENGLISH", "SPANISH", "OTHER")

YNDKRFlevels=c(1,2,77,99)
YNDKRFlabels=c("YES", "NO", "DON'T KNOW", "REFUSED")

SHOTCOUNlevels=c(77,88,99)
SHOTCOUNlabels=c("DON'T KNOW", "1+ BUT UNKNOWN NUMBER", "REFUSED")

SCUTDlevels=c(1,2,77,88,99)
SCUTDlabels=c("UTD / SC", "NOT UTD / SC", "DON'T KNOW", "UNKNOWN", "REFUSED")

HHNUMlevels=c(0,1,50,77,99)
HHNUMlabels=c("NONE", "AT LEAST ONE", "ALL", "DON'T KNOW", "REFUSED")

YNlevels=c(1,2)
YNlabels=c("YES", "NO")

SHOTCARDlevels=c(1,2)
SHOTCARDlabels=c("SHOTCARD", "NO SHOTCARD")

Ylevels=c(1)
Ylabels=c("YES")

CHILDNMlevels=c(1,2,3,77,99)
CHILDNMlabels=c("ONE", "TWO OR THREE", "FOUR OR MORE", "DON'T KNOW", "REFUSED")

CWIClevels=c(1,2,3,77,99)
CWIClabels=c("YES", "NO", "NEVER HEARD OF WIC", "DON'T KNOW", "REFUSED")

EDUC1_levels=c(1,2,3,4,77,99)
EDUC1_labels=c("< 12 YEARS", "12 YEARS", "> 12 YEARS, NON-COLLEGE GRAD", "COLLEGE GRAD", "DON'T KNOW", "REFUSED")

HISPlevels=c(1,2,3,4,5)
HISPlabels=c("HISPANIC", "NON-HISPANIC", "OTHER", "DON'T KNOW", "REFUSED")

MAGEGRPlevels=c(1,2,3,77,99)
MAGEGRPlabels=c("<= 19 YEARS", "20 - 29 YEARS", ">= 30 YEARS", "DON'T KNOW", "REFUSED")

MOBILlevels=c(1,2,77,99)
MOBILlabels=c("MOVED FROM DIFFERENT STATE", "DID NOT MOVE FROM DIFFERENT STATE", "DON'T KNOW", "REFUSED")

SEXlevels=c(1,2,77,99)
SEXlabels=c("MALE", "FEMALE", "DON'T KNOW", "REFUSED")

INCPOVlevels=c(1,2,3,4)
INCPOVlabels=c("ABOVE POVERTY, > $75K", "ABOVE POVERTY, <= $75K", "BELOW POVERTY", "UNKNOWN")

DISPlevels=c(1,10,11,2,3,4,5,6,7,8,9)
DISPlabels=c("COMPLETE PROVIDER INFO, NO PROBLEMS", "INCOMPLETE PROVIDER RESP, HH NOT EXACT", "INCOMPLETE PROVIDER RESP, HH WITHOUT SHOT CARD", "COMPLETE PROVIDER INFO, NO SHOT CARD", "COMPLETE PROVIDER INFO, POOR HISTORY",
"COMPLETE PROVIDER INFO, POOR HIST/OTHER", "INCOMPLETE PROVIDER RESP, BUT 4:3:1:3:3 INDICATED", "INCOMPLETE PROVIDER RESP, INFO MATCHES", "INCOMPLETE PROVIDER RESP, HISTORY UNKNOWN", "INCOMPLETE PROVIDER RESP, 4:3:1:3:3 WITH HH",
"INCOMPLETE PROVIDER RESP, MATCHES HH")

HASPDA2Flevels=c(1,2)
HASPDA2Flabels=c("CHILD HAS ADEQUATE PROVIDER DATA OR ZERO VACCINATIONS", "CHILD DOES NOT HAVE ADEQUATE PROVIDER DATA")

PROVIDlevels=c(1,2,3,4,5,6,7)
PROVIDlabels=c("ALL PUBLIC FACILITIES", "ALL HOSPITAL FACILITIES", "ALL PRIVATE FACILITIES", "ALL MILITARY/OTHER FACILITIES", "MIXED", "TYPE OF PROVIDER UNKNOWN", "ALL WIC CLINIC PROVIDERS")

REGISTRYlevels=c(1,2,3,4)
REGISTRYlabels=c("ALL PROVIDERS", "SOME BUT POSSIBLY OR DEFINITELY NOT ALL PROVIDERS", "NO PROVIDERS", "UNKNOWN/DON'T KNOW")

TYPElevels=c("","01","02","03","04","05","07","08","1L","1M","1N","20","21","22","30","31","32","33","43","44","60","70","71","72","73","74","BC","D3","DH","DK","FL","FM","FN","FO","H2","HA","HB","HG","HI","HM","HS","MA","MB","MM","MP","NC","OT","RB","RG",
"RM","RO","TY","UN","VA","VM","VO","YF")
TYPElabels=c("MISSING", "DT", "DTP", "DTP-UNKNOWN", "DTAP", "DTP-HIB", "DTAP-HIB", "DTAP-HEPB-IPV", "H1N1 FLU-UNKNOWN", "H1N1 FLU SPRAY", "H1N1 FLU INJECTED", "OPV", "IPV", "POLIO-UNKNOWN", "MMR", "MEASLES ONLY", "MEASLES-MUMPS", "MEASLES-RUBELLA",
"HEPB-HIB", "HIB ONLY-UNKNOWN", "HEPB ONLY", "PCV CONJUGATE-UNKNOWN", "PCV POLYSACCHARIDE", "PCV-UNKNOWN", "PCV CONJUGATE-7", "PCV CONJUGATE-13", "BCG (TUBERCULOSIS)", "DTAP-IPV-HIB", "DTP-HEPB", "DON'T KNOW", "SEASONAL FLU-UNKNOWN", "SEASONAL FLU SPRAY",
"SEASONAL FLU INJECTED", "FOUR-IN-ONE", "HIB (SANOFI OR GLAXOSMITHKLINE)", "HEPA", "HEPB-UNKNOWN", "HIB (GLAXOSMITHKLINE)", "HIB-UNKNOWN", "HIB (MERCK)", "HIB (SANOFI)", "MALARIA", "MUMPS-RUBELLA", "MCV-UNKNOWN", "MUMPS", "NEVER CODABLE", "OTHER",
"RUBELLA", "ROTARIX (GSK)", "ROTATEQ (MERCK)", "ROTAVIRUS-UNKNOWN", "TYPHOID", "UNCODABLE", "VARICELLA-UNKNOWN", "MMR-VARICELLA", "VARICELLA-ONLY", "YELLOW FEVER")

HEPBRTlevels=c(1,2)
HEPBRTlabels=c("AT LEAST ONE PROVIDER CHECKED GIVEN AT BIRTH", "NO PROVIDERS CHECKED GIVEN AT BIRTH")

HEPFLGlevels=c(1,2)
HEPFLGlabels=c("HEPB BIRTH SHOT DATE IMPUTED FROM SHOTCARD", "HEPB BIRTH SHOT DATE IMPUTED FROM DISTRIBUTION OF BIRTH DOSE DATES")

UTDlevels=c(0,1)
UTDlabels=c("NOT UTD", "UTD")

CENREGlevels=c(1,2,3,4)
CENREGlabels=c("NORTHEAST", "MIDWEST", "SOUTH", "WEST")

STATElevels=c(1,10,11,12,13,14,15,16,17,18,19,2,20,21,22,23,24,25,26,27,28,29,3,30,31,32,33,34,35,36,37,38,39,4,40,41,42,43,44,45,46,47,48,49,5,50,51,52,53,54,55,56,6,7,78,8,9)
STATElabels=c("ALABAMA", "DELAWARE", "DISTRICT OF COLUMBIA", "FLORIDA", "GEORGIA", "", "HAWAII", "IDAHO", "ILLINOIS", "INDIANA", "IOWA", "ALASKA", "KANSAS", "KENTUCKY", "LOUISIANA", "MAINE", "MARYLAND", "MASSACHUSETTS", "MICHIGAN", "MINNESOTA",
"MISSISSIPPI", "MISSOURI", "", "MONTANA", "NEBRASKA", "NEVADA", "NEW HAMPSHIRE", "NEW JERSEY", "NEW MEXICO", "NEW YORK", "NORTH CAROLINA", "NORTH DAKOTA", "OHIO", "ARIZONA", "OKLAHOMA", "OREGON", "PENNSYLVANIA", "", "RHODE ISLAND", "SOUTH CAROLINA",
"SOUTH DAKOTA", "TENNESSEE", "TEXAS", "UTAH", "ARKANSAS", "VERMONT", "VIRGINIA", "", "WASHINGTON", "WEST VIRGINIA", "WISCONSIN", "WYOMING", "CALIFORNIA", "", "U.S.  VIRGIN ISLANDS", "COLORADO", "CONNECTICUT")

FLUUTDlevels=c(1,2,3)
FLUUTDlabels=c("VACCINATED", "NOT VACCINATED", "NOT ELIGIBLE")

RACE_PUFlevels=c(1,2,3)
RACE_PUFlabels=c("WHITE ONLY", "BLACK ONLY", "OTHER + MULTIPLE RACE")

AGECPOXRlevels=c(1,2,3,4)
AGECPOXRlabels=c("0 TO 6 MONTHS OLD", "7 TO 12 MONTHS OLD", "13 TO 18 MONTHS OLD", "19+ MONTHS OLD")

C1Rlevels=c(1,2,3,4,5,6,7,8)
C1Rlabels=c("1", "2", "3", "4", "5", "6", "7", "8+")

C5Rlevels=c(1,2,3,4,77,99)
C5Rlabels=c("MOTHER (STEP, FOSTER, ADOPTIVE) OR FEMALE GUARDIAN", "FATHER (STEP, FOSTER, ADOPTIVE) OR MALE GUARDIAN", "GRANDPARENT", "OTHER FAMILY MEMBER/FRIEND", "DON'T KNOW", "REFUSED")

INCQ298Alevels=c(10,11,12,13,14,3,4,5,6,7,77,8,9,99)
INCQ298Alabels=c("$35001 - $40000", "$40001 - $50000", "$50001 - $60000", "$60001 - $75000", "$75001+", "$0 - $7500", "$7501 - $10000", "$10001 - $17500", "$17501 - $20000", "$20001 - $25000", "DON'T KNOW", "$25001 - $30000", "$30001 - $35000", "REFUSED")

RACEETHKlevels=c(1,2,3,4)
RACEETHKlabels=c("HISPANIC", "NON-HISPANIC WHITE ONLY", "NON-HISPANIC BLACK ONLY", "NON-HISPANIC OTHER + MULTIPLE RACE")

D6Rlevels=c(0,1,2,3)
D6Rlabels=c("0", "1", "2", "3+")

FRSTBRNlevels=c(1,2,77,99)
FRSTBRNlabels=c("NO", "YES", "DON'T KNOW", "REFUSED")

CHARIDlevels=c( )
CHARIDlabels=c("MISSING")

BFFORM08Flevels=c(888)
BFFORM08Flabels=c("NEVER FED FORMULA")

RENTOWNlevels=c(1,2,3,77,99)
RENTOWNlabels=c("OWNED OR BEING BOUGHT", "RENTED", "OTHER ARRANGMENT", "DON'T KNOW", "REFUSED")

NUM_PHONlevels=c(1,2,3,4,77,99)
NUM_PHONlabels=c("ONE", "TWO", "THREE OR MORE", "NONE", "DON'T KNOW", "REFUSED")

INS_STATlevels=c(1,2,3)
INS_STATlabels=c("YES", "NO", "NOT ASCERTAINED")

MAR_PUF2_levels=c(1,2)
MAR_PUF2_labels=c("MARRIED", "NEVER MARRIED/WIDOWED/DIVORCED/SEPARATED/DECEASED")

ESTIAP10Flevels=c(1,10,102,11,12,13,14,16,17,18,19,2,20,22,25,27,28,29,30,31,34,35,36,38,4,40,41,44,46,47,49,5,50,51,52,53,54,55,56,57,58,59,6,60,61,62,63,64,65,66,68,69,7,72,73,74,75,76,8,95,97)
ESTIAP10Flabels=c("CT", "NY-REST OF STATE", "WA-WESTERN WA", "NY-CITY OF NEW YORK", "DC", "DE", "MD", "PA-REST OF STATE", "PA-PHILADELPHIA COUNTY", "VA", "WV", "MA", "AL", "FL", "GA", "KY", "MS", "NC", "SC", "TN", "IL-REST OF STATE", "IL-CITY OF CHICAGO",
"IN", "MI", "ME", "MN", "OH", "WI", "AR", "LA", "NM", "NH", "OK", "TX-REST OF STATE", "TX-DALLAS COUNTY", "TX-EL PASO COUNTY", "TX-CITY OF HOUSTON", "TX-BEXAR COUNTY", "IA", "KS", "MO", "NE", "RI", "CO", "MT", "ND", "SD", "UT", "WY", "AZ",
"CA-REST OF STATE", "CA-LOS ANGELES COUNTY", "VT", "HI", "NV", "AK", "ID", "OR", "NJ", "US VIRGIN ISLANDS", "WA-EASTERN WA")

UTDPCVBlevels=c(1,2,3)
UTDPCVBlabels=c("4+ PCV7 PLUS 1+ PCV13", "4+ PCV7, NO FOLLOWING PCV13, WITH TYPE OF ALL VACCINES (IF ANY) FOLLOWING THE 4 PCV7 KNOWN", "ALL OTHERS WITH ADEQUATE PROVIDER DATA")

############################################################################
#                           LIST.NAMEWIDTHS                                #
############################################################################

LIST.NAMEWIDTH <-
c("SEQNUMC",6,
"SEQNUMHH",5,
"PDAT",1,
"PROVWT",20,
"PROVWTVI",20,
"RDDWT",19,
"RDDWTVI",19,
"YEAR",4,
"AGECPOXR",1,
"SC_431",2,
"SC_4313",2,
"SC_43133",2,
"SC_DTP",2,
"SC_HEPB",2,
"SC_HIB",2,
"SC_MCV",2,
"SC_POL",2,
"SC_VRC",2,
"HH_DTP",2,
"HH_HEPB",2,
"HH_HIB",2,
"HH_MCV",2,
"HH_POL",2,
"HH_VRC",2,
"HH_FLU",2,
"HH_H1N",2,
"HAD_CPOX",2,
"SHOTCARD",1,
"AGEGRP",1,
"BF_ENDR06",8,
"BF_EXCLR06",8,
"BF_FORMR08",8,
"BFENDFL06",1,
"BFFORMFL06",1,
"C1R",1,
"C5R",2,
"CBF_01",2,
"CEN_REG",1,
"CHILDNM",1,
"CWIC_01",2,
"CWIC_02",2,
"EDUC1",1,
"FRSTBRN",1,
"I_HISP_K",1,
"INCPORAR",16,
"INCPOV1",1,
"INCQ298A",2,
"INTRP",1,
"LANGUAGE",1,
"M_AGEGRP",1,
"MARITAL2",1,
"MOBIL_I",1,
"NUM_PHONE",2,
"NUM_CELLS_HH",2,
"NUM_CELLS_PARENTS",2,
"RACE_K",1,
"RACEETHK",1,
"RENT_OWN",2,
"SEX",1,
"ESTIAP10",3,
"STATE",2,
"D6R",1,
"D7",1,
"DISPCODE",2,
"N_PRVR",1,
"PROV_FAC",1,
"REGISTRY",1,
"VFC_ORDER",1,
"HEP_BRTH",1,
"HEP_FLAG",1,
"P_NUHEPX",1,
"P_NUHIBX",1,
"P_NUHPHB",1,
"P_NUMDAH",1,
"P_NUMDHI",1,
"P_NUMDIH",1,
"P_NUMDTA",1,
"P_NUMDTP",1,
"P_NUMFLU",1,
"P_NUMFLUL",1,
"P_NUMFLUM",1,
"P_NUMFLUN",1,
"P_NUMH1N",1,
"P_NUM1L",1,
"P_NUM1M",1,
"P_NUM1N",1,
"P_NUMHEA",1,
"P_NUMHEN",1,
"P_NUMHEP",1,
"P_NUMHIB",1,
"P_NUMHIN",1,
"P_NUMHION",1,
"P_NUMHM",1,
"P_NUMHG",1,
"P_NUMHS",1,
"P_NUMIPV",1,
"P_NUMMCN",1,
"P_NUMMMR",1,
"P_NUMMMRX",1,
"P_NUMMMX",1,
"P_NUMMP",1,
"P_NUMMPR",1,
"P_NUMMRV",1,
"P_NUMMS",1,
"P_NUMMSM",1,
"P_NUMMSR",1,
"P_NUMOLN",1,
"P_NUMOPV",1,
"P_NUMPCV",1,
"P_NUMPCP",1,
"P_NUMPCC",1,
"P_NUMPCC7",1,
"P_NUMPCC13",1,
"P_NUMPCCN",1,
"P_NUMPCN",1,
"P_NUMPOL",1,
"P_NUMRB",1,
"P_NUMRG",1,
"P_NUMRM",1,
"P_NUMRO",1,
"P_NUMROT",1,
"P_NUMTPN",1,
"P_NUMVRC",1,
"P_NUMVRN",1,
"P_NUMVRX",1,
"P_U12VRC",1,
"P_UTD331",1,
"P_UTD431",1,
"P_UTDFL1",1,
"P_UTDFL2",1,
"P_UTDFL3",1,
"P_UTDH1N_1",1,
"P_UTDH1N_2",1,
"P_UTDHEP",1,
"P_UTDHEPA2",1,
"P_UTDHIB",1,
"P_UTDHIB_ROUT_S",1,
"P_UTDHIB_SHORT_S",1,
"P_UTDMCV",1,
"P_UTDMMX",1,
"P_UTDPC3",1,
"P_UTDPCV",1,
"P_UTDPCVB13",1,
"P_UTDPOL",1,
"P_UTDROT_S",1,
"P_UTDTP3",1,
"P_UTDTP4",1,
"PU431331",1,
"P_UTD431H31_ROUT_S",1,
"PU431_31",1,
"PU4313313",1,
"P_UTD431H313_ROUT_S",1,
"PU4313314",1,
"P_UTD431H314_ROUT_S",1,
"PU431_314",1,
"PUT43133",1,
"P_UTD431H3_ROUT_S",1,
"PUTD4313",1,
"P_UTD431H_ROUT_S",1,
"DDTP1",4,
"DDTP2",4,
"DDTP3",4,
"DDTP4",4,
"DDTP5",4,
"DDTP6",3,
"DDTP7",1,
"DDTP8",1,
"DDTP9",1,
"DFLU1",4,
"DFLU2",4,
"DFLU3",4,
"DFLU4",4,
"DFLU5",4,
"DFLU6",4,
"DFLU7",1,
"DFLU8",1,
"DFLU9",1,
"DH1N1",4,
"DH1N2",4,
"DH1N3",4,
"DH1N4",3,
"DH1N5",1,
"DH1N6",1,
"DH1N7",1,
"DH1N8",1,
"DH1N9",1,
"DHEPA1",4,
"DHEPA2",4,
"DHEPA3",4,
"DHEPA4",3,
"DHEPA5",1,
"DHEPA6",1,
"DHEPA7",1,
"DHEPA8",1,
"DHEPA9",1,
"DHEPB1",4,
"DHEPB2",4,
"DHEPB3",4,
"DHEPB4",4,
"DHEPB5",4,
"DHEPB6",3,
"DHEPB7",1,
"DHEPB8",1,
"DHEPB9",1,
"DHIB1",4,
"DHIB2",4,
"DHIB3",4,
"DHIB4",4,
"DHIB5",4,
"DHIB6",3,
"DHIB7",1,
"DHIB8",1,
"DHIB9",1,
"DMMR1",4,
"DMMR2",4,
"DMMR3",3,
"DMMR4",1,
"DMMR5",1,
"DMMR6",1,
"DMMR7",1,
"DMMR8",1,
"DMMR9",1,
"DMP1",3,
"DMP2",1,
"DMP3",1,
"DMP4",1,
"DMP5",1,
"DMP6",1,
"DMP7",1,
"DMP8",1,
"DMP9",1,
"DMPRB1",3,
"DMPRB2",1,
"DMPRB3",1,
"DMPRB4",1,
"DMPRB5",1,
"DMPRB6",1,
"DMPRB7",1,
"DMPRB8",1,
"DMPRB9",1,
"DPCV1",4,
"DPCV2",4,
"DPCV3",4,
"DPCV4",4,
"DPCV5",4,
"DPCV6",4,
"DPCV7",1,
"DPCV8",1,
"DPCV9",1,
"DPOLIO1",3,
"DPOLIO2",4,
"DPOLIO3",4,
"DPOLIO4",4,
"DPOLIO5",4,
"DPOLIO6",3,
"DPOLIO7",1,
"DPOLIO8",1,
"DPOLIO9",1,
"DRB1",3,
"DRB2",1,
"DRB3",1,
"DRB4",1,
"DRB5",1,
"DRB6",1,
"DRB7",1,
"DRB8",1,
"DRB9",1,
"DROT1",4,
"DROT2",3,
"DROT3",4,
"DROT4",3,
"DROT5",1,
"DROT6",1,
"DROT7",1,
"DROT8",1,
"DROT9",1,
"DVRC1",4,
"DVRC2",4,
"DVRC3",1,
"DVRC4",1,
"DVRC5",1,
"DVRC6",1,
"DVRC7",1,
"DVRC8",1,
"DVRC9",1,
"DTP1_AGE",2,
"DTP2_AGE",2,
"DTP3_AGE",2,
"DTP4_AGE",2,
"DTP5_AGE",2,
"DTP6_AGE",2,
"DTP7_AGE",1,
"DTP8_AGE",1,
"DTP9_AGE",1,
"FLU1_AGE",2,
"FLU2_AGE",2,
"FLU3_AGE",2,
"FLU4_AGE",2,
"FLU5_AGE",2,
"FLU6_AGE",2,
"FLU7_AGE",1,
"FLU8_AGE",1,
"FLU9_AGE",1,
"H1N1_AGE",2,
"H1N2_AGE",2,
"H1N3_AGE",2,
"H1N4_AGE",2,
"H1N5_AGE",1,
"H1N6_AGE",1,
"H1N7_AGE",1,
"H1N8_AGE",1,
"H1N9_AGE",1,
"HEA1_AGE",2,
"HEA2_AGE",2,
"HEA3_AGE",2,
"HEA4_AGE",2,
"HEA5_AGE",1,
"HEA6_AGE",1,
"HEA7_AGE",1,
"HEA8_AGE",1,
"HEA9_AGE",1,
"HEP1_AGE",2,
"HEP2_AGE",2,
"HEP3_AGE",2,
"HEP4_AGE",2,
"HEP5_AGE",2,
"HEP6_AGE",2,
"HEP7_AGE",1,
"HEP8_AGE",1,
"HEP9_AGE",1,
"HIB1_AGE",2,
"HIB2_AGE",2,
"HIB3_AGE",2,
"HIB4_AGE",2,
"HIB5_AGE",2,
"HIB6_AGE",2,
"HIB7_AGE",1,
"HIB8_AGE",1,
"HIB9_AGE",1,
"MMR1_AGE",2,
"MMR2_AGE",2,
"MMR3_AGE",2,
"MMR4_AGE",1,
"MMR5_AGE",1,
"MMR6_AGE",1,
"MMR7_AGE",1,
"MMR8_AGE",1,
"MMR9_AGE",1,
"MP1_AGE",2,
"MP2_AGE",1,
"MP3_AGE",1,
"MP4_AGE",1,
"MP5_AGE",1,
"MP6_AGE",1,
"MP7_AGE",1,
"MP8_AGE",1,
"MP9_AGE",1,
"MPR1_AGE",2,
"MPR2_AGE",1,
"MPR3_AGE",1,
"MPR4_AGE",1,
"MPR5_AGE",1,
"MPR6_AGE",1,
"MPR7_AGE",1,
"MPR8_AGE",1,
"MPR9_AGE",1,
"PCV1_AGE",2,
"PCV2_AGE",2,
"PCV3_AGE",2,
"PCV4_AGE",2,
"PCV5_AGE",2,
"PCV6_AGE",2,
"PCV7_AGE",1,
"PCV8_AGE",1,
"PCV9_AGE",1,
"POL1_AGE",2,
"POL2_AGE",2,
"POL3_AGE",2,
"POL4_AGE",2,
"POL5_AGE",2,
"POL6_AGE",2,
"POL7_AGE",1,
"POL8_AGE",1,
"POL9_AGE",1,
"RB1_AGE",2,
"RB2_AGE",1,
"RB3_AGE",1,
"RB4_AGE",1,
"RB5_AGE",1,
"RB6_AGE",1,
"RB7_AGE",1,
"RB8_AGE",1,
"RB9_AGE",1,
"ROT1_AGE",2,
"ROT2_AGE",2,
"ROT3_AGE",2,
"ROT4_AGE",2,
"ROT5_AGE",1,
"ROT6_AGE",1,
"ROT7_AGE",1,
"ROT8_AGE",1,
"ROT9_AGE",1,
"VRC1_AGE",2,
"VRC2_AGE",2,
"VRC3_AGE",1,
"VRC4_AGE",1,
"VRC5_AGE",1,
"VRC6_AGE",1,
"VRC7_AGE",1,
"VRC8_AGE",1,
"VRC9_AGE",1,
"XDTPTY1",2,
"XDTPTY2",2,
"XDTPTY3",2,
"XDTPTY4",2,
"XDTPTY5",2,
"XDTPTY6",2,
"XDTPTY7",1,
"XDTPTY8",1,
"XDTPTY9",1,
"XFLUTY1",2,
"XFLUTY2",2,
"XFLUTY3",2,
"XFLUTY4",2,
"XFLUTY5",2,
"XFLUTY6",2,
"XFLUTY7",1,
"XFLUTY8",1,
"XFLUTY9",1,
"XH1NTY1",2,
"XH1NTY2",2,
"XH1NTY3",2,
"XH1NTY4",2,
"XH1NTY5",1,
"XH1NTY6",1,
"XH1NTY7",1,
"XH1NTY8",1,
"XH1NTY9",1,
"XHEPTY1",2,
"XHEPTY2",2,
"XHEPTY3",2,
"XHEPTY4",2,
"XHEPTY5",2,
"XHEPTY6",2,
"XHEPTY7",1,
"XHEPTY8",1,
"XHEPTY9",1,
"XHIBTY1",2,
"XHIBTY2",2,
"XHIBTY3",2,
"XHIBTY4",2,
"XHIBTY5",2,
"XHIBTY6",2,
"XHIBTY7",1,
"XHIBTY8",1,
"XHIBTY9",1,
"XMMRTY1",2,
"XMMRTY2",2,
"XMMRTY3",2,
"XMMRTY4",1,
"XMMRTY5",1,
"XMMRTY6",1,
"XMMRTY7",1,
"XMMRTY8",1,
"XMMRTY9",1,
"XPCVTY1",2,
"XPCVTY2",2,
"XPCVTY3",2,
"XPCVTY4",2,
"XPCVTY5",2,
"XPCVTY6",2,
"XPCVTY7",1,
"XPCVTY8",1,
"XPCVTY9",1,
"XPOLTY1",2,
"XPOLTY2",2,
"XPOLTY3",2,
"XPOLTY4",2,
"XPOLTY5",2,
"XPOLTY6",2,
"XPOLTY7",1,
"XPOLTY8",1,
"XPOLTY9",1,
"XROTTY1",2,
"XROTTY2",2,
"XROTTY3",2,
"XROTTY4",2,
"XROTTY5",1,
"XROTTY6",1,
"XROTTY7",1,
"XROTTY8",1,
"XROTTY9",1,
"XVRCTY1",2,
"XVRCTY2",2,
"XVRCTY3",1,
"XVRCTY4",1,
"XVRCTY5",1,
"XVRCTY6",1,
"XVRCTY7",1,
"XVRCTY8",1,
"XVRCTY9",1,
"INS_1",2,
"INS_2",2,
"INS_3",2,
"INS_3A",2,
"INS_4_5",2,
"INS_6",2,
"INS_11",2,
"VFC_I",1
)

LIST.NAMEWIDTH11 <-
  c("SEQNUMC",6,
    "SEQNUMHH",5,
    "PDAT",1,
    "TEL_SAMPFRAME",1,
    "PROVWT_LL",20,
    "PROVWTVI_LL",20,
    "RDDWT_LL",19,
    "RDDWTVI_LL",19,
    "PROVWT_D",20,
    "RDDWT_D",19,
    "STRATUM_D",4,
    "YEAR",4,
    "AGECPOXR",1,
    "SC_431",2,
    "SC_4313",2,
    "SC_43133",2,
    "SC_DTP",2,
    "SC_HEPB",2,
    "SC_HIB",2,
    "SC_MCV",2,
    "SC_POL",2,
    "SC_VRC",2,
    "HH_DTP",2,
    "HH_HEPB",2,
    "HH_HIB",2,
    "HH_MCV",2,
    "HH_POL",2,
    "HH_VRC",2,
    "HAD_CPOX",2,
    "SHOTCARD",1,
    "AGEGRP",1,
    "BF_ENDR06",8,
    "BF_EXCLR06",8,
    "BF_FORMR08",8,
    "BFENDFL06",1,
    "BFFORMFL06",1,
    "C1R",1,
    "C5R",2,
    "CBF_01",2,
    "CEN_REG",1,
    "CHILDNM",1,
    "CWIC_01",2,
    "CWIC_02",2,
    "EDUC1",1,
    "FRSTBRN",1,
    "I_HISP_K",1,
    "INCPORAR",16,
    "INCPOV1",1,
    "INCQ298A",2,
    "INTRP",1,
    "LANGUAGE",1,
    "M_AGEGRP",1,
    "MARITAL2",1,
    "MOBIL_I",1,
    "NUM_PHONE",2,
    "NUM_CELLS_HH",2,
    "NUM_CELLS_PARENTS",2,
    "RACE_K",1,
    "RACEETHK",1,
    "RENT_OWN",2,
    "SEX",1,
    "ESTIAP11",3,
    "STATE",2,
    "D6R",1,
    "D7",1,
    "DISPCODE",2,
    "N_PRVR",1,
    "PROV_FAC",1,
    "REGISTRY",1,
    "VFC_ORDER",1,
    "HEP_BRTH",1,
    "HEP_FLAG",1,
    "P_NUHEPX",1,
    "P_NUHIBX",1,
    "P_NUHPHB",1,
    "P_NUMDAH",1,
    "P_NUMDHI",1,
    "P_NUMDIH",1,
    "P_NUMDTA",1,
    "P_NUMDTP",1,
    "P_NUMFLU",1,
    "P_NUMFLUL",1,
    "P_NUMFLUM",1,
    "P_NUMFLUN",1,
    "P_NUMH1N",1,
    "P_NUM1L",1,
    "P_NUM1M",1,
    "P_NUM1N",1,
    "P_NUMHEA",1,
    "P_NUMHEN",1,
    "P_NUMHEP",1,
    "P_NUMHIB",1,
    "P_NUMHIN",1,
    "P_NUMHION",1,
    "P_NUMHM",1,
    "P_NUMHG",1,
    "P_NUMHS",1,
    "P_NUMIPV",1,
    "P_NUMMCN",1,
    "P_NUMMMR",1,
    "P_NUMMMRX",1,
    "P_NUMMMX",1,
    "P_NUMMP",1,
    "P_NUMMPR",1,
    "P_NUMMRV",1,
    "P_NUMMS",1,
    "P_NUMMSM",1,
    "P_NUMMSR",1,
    "P_NUMOLN",1,
    "P_NUMOPV",1,
    "P_NUMPCV",1,
    "P_NUMPCP",1,
    "P_NUMPCC",1,
    "P_NUMPCC7",1,
    "P_NUMPCC13",1,
    "P_NUMPCCN",1,
    "P_NUMPCN",1,
    "P_NUMPOL",1,
    "P_NUMRB",1,
    "P_NUMRG",1,
    "P_NUMRM",1,
    "P_NUMRO",1,
    "P_NUMROT",1,
    "P_NUMTPN",1,
    "P_NUMVRC",1,
    "P_NUMVRN",1,
    "P_NUMVRX",1,
    "P_U12VRC",1,
    "P_UTD331",1,
    "P_UTD431",1,
    "P_UTDFL1",1,
    "P_UTDFL2",1,
    "P_UTDFL3",1,
    "P_UTDH1N_1",1,
    "P_UTDH1N_2",1,
    "P_UTDHEP",1,
    "P_UTDHEPA1",1,
    "P_UTDHEPA2",1,
    "P_UTDHIB",1,
    "P_UTDHIB_ROUT_S",1,
    "P_UTDHIB_SHORT_S",1,
    "P_UTDMCV",1,
    "P_UTDMMX",1,
    "P_UTDPC3",1,
    "P_UTDPCV",1,
    "P_UTDPCVB13",1,
    "P_UTDPOL",1,
    "P_UTDROT_S",1,
    "P_UTDTP3",1,
    "P_UTDTP4",1,
    "PU431331",1,
    "P_UTD431H31_ROUT_S",1,
    "PU431_31",1,
    "PU4313313",1,
    "P_UTD431H313_ROUT_S",1,
    "PU4313314",1,
    "P_UTD431H314_ROUT_S",1,
    "PU431_314",1,
    "PUT43133",1,
    "P_UTD431H3_ROUT_S",1,
    "PUTD4313",1,
    "P_UTD431H_ROUT_S",1,
    "U1D_HEP",1,
    "U2D_HEP",1,
    "U3D_HEP",1,
    "DDTP1",4,
    "DDTP2",4,
    "DDTP3",4,
    "DDTP4",4,
    "DDTP5",4,
    "DDTP6",3,
    "DDTP7",1,
    "DDTP8",1,
    "DDTP9",1,
    "DFLU1",4,
    "DFLU2",4,
    "DFLU3",4,
    "DFLU4",4,
    "DFLU5",4,
    "DFLU6",4,
    "DFLU7",4,
    "DFLU8",4,
    "DFLU9",1,
    "DH1N1",4,
    "DH1N2",4,
    "DH1N3",4,
    "DH1N4",4,
    "DH1N5",3,
    "DH1N6",1,
    "DH1N7",1,
    "DH1N8",1,
    "DH1N9",1,
    "DHEPA1",4,
    "DHEPA2",4,
    "DHEPA3",4,
    "DHEPA4",3,
    "DHEPA5",1,
    "DHEPA6",1,
    "DHEPA7",1,
    "DHEPA8",1,
    "DHEPA9",1,
    "DHEPB1",4,
    "DHEPB2",4,
    "DHEPB3",4,
    "DHEPB4",4,
    "DHEPB5",4,
    "DHEPB6",3,
    "DHEPB7",1,
    "DHEPB8",1,
    "DHEPB9",1,
    "DHIB1",4,
    "DHIB2",4,
    "DHIB3",4,
    "DHIB4",4,
    "DHIB5",4,
    "DHIB6",4,
    "DHIB7",3,
    "DHIB8",1,
    "DHIB9",1,
    "DMMR1",4,
    "DMMR2",4,
    "DMMR3",4,
    "DMMR4",1,
    "DMMR5",1,
    "DMMR6",1,
    "DMMR7",1,
    "DMMR8",1,
    "DMMR9",1,
    "DMP1",3,
    "DMP2",1,
    "DMP3",1,
    "DMP4",1,
    "DMP5",1,
    "DMP6",1,
    "DMP7",1,
    "DMP8",1,
    "DMP9",1,
    "DMPRB1",1,
    "DMPRB2",1,
    "DMPRB3",1,
    "DMPRB4",1,
    "DMPRB5",1,
    "DMPRB6",1,
    "DMPRB7",1,
    "DMPRB8",1,
    "DMPRB9",1,
    "DPCV1",4,
    "DPCV2",4,
    "DPCV3",4,
    "DPCV4",4,
    "DPCV5",4,
    "DPCV6",4,
    "DPCV7",3,
    "DPCV8",1,
    "DPCV9",1,
    "DPOLIO1",4,
    "DPOLIO2",4,
    "DPOLIO3",4,
    "DPOLIO4",4,
    "DPOLIO5",4,
    "DPOLIO6",3,
    "DPOLIO7",1,
    "DPOLIO8",1,
    "DPOLIO9",1,
    "DRB1",3,
    "DRB2",1,
    "DRB3",1,
    "DRB4",1,
    "DRB5",1,
    "DRB6",1,
    "DRB7",1,
    "DRB8",1,
    "DRB9",1,
    "DROT1",4,
    "DROT2",3,
    "DROT3",3,
    "DROT4",4,
    "DROT5",3,
    "DROT6",1,
    "DROT7",1,
    "DROT8",1,
    "DROT9",1,
    "DVRC1",4,
    "DVRC2",4,
    "DVRC3",4,
    "DVRC4",1,
    "DVRC5",1,
    "DVRC6",1,
    "DVRC7",1,
    "DVRC8",1,
    "DVRC9",1,
    "DTP1_AGE",2,
    "DTP2_AGE",2,
    "DTP3_AGE",2,
    "DTP4_AGE",2,
    "DTP5_AGE",2,
    "DTP6_AGE",2,
    "DTP7_AGE",1,
    "DTP8_AGE",1,
    "DTP9_AGE",1,
    "FLU1_AGE",2,
    "FLU2_AGE",2,
    "FLU3_AGE",2,
    "FLU4_AGE",2,
    "FLU5_AGE",2,
    "FLU6_AGE",2,
    "FLU7_AGE",2,
    "FLU8_AGE",2,
    "FLU9_AGE",1,
    "H1N1_AGE",2,
    "H1N2_AGE",2,
    "H1N3_AGE",2,
    "H1N4_AGE",2,
    "H1N5_AGE",2,
    "H1N6_AGE",1,
    "H1N7_AGE",1,
    "H1N8_AGE",1,
    "H1N9_AGE",1,
    "HEA1_AGE",2,
    "HEA2_AGE",2,
    "HEA3_AGE",2,
    "HEA4_AGE",2,
    "HEA5_AGE",1,
    "HEA6_AGE",1,
    "HEA7_AGE",1,
    "HEA8_AGE",1,
    "HEA9_AGE",1,
    "HEP1_AGE",2,
    "HEP2_AGE",2,
    "HEP3_AGE",2,
    "HEP4_AGE",2,
    "HEP5_AGE",2,
    "HEP6_AGE",2,
    "HEP7_AGE",1,
    "HEP8_AGE",1,
    "HEP9_AGE",1,
    "HIB1_AGE",2,
    "HIB2_AGE",2,
    "HIB3_AGE",2,
    "HIB4_AGE",2,
    "HIB5_AGE",2,
    "HIB6_AGE",2,
    "HIB7_AGE",2,
    "HIB8_AGE",1,
    "HIB9_AGE",1,
    "MMR1_AGE",2,
    "MMR2_AGE",2,
    "MMR3_AGE",2,
    "MMR4_AGE",1,
    "MMR5_AGE",1,
    "MMR6_AGE",1,
    "MMR7_AGE",1,
    "MMR8_AGE",1,
    "MMR9_AGE",1,
    "MP1_AGE",2,
    "MP2_AGE",1,
    "MP3_AGE",1,
    "MP4_AGE",1,
    "MP5_AGE",1,
    "MP6_AGE",1,
    "MP7_AGE",1,
    "MP8_AGE",1,
    "MP9_AGE",1,
    "MPR1_AGE",1,
    "MPR2_AGE",1,
    "MPR3_AGE",1,
    "MPR4_AGE",1,
    "MPR5_AGE",1,
    "MPR6_AGE",1,
    "MPR7_AGE",1,
    "MPR8_AGE",1,
    "MPR9_AGE",1,
    "PCV1_AGE",2,
    "PCV2_AGE",2,
    "PCV3_AGE",2,
    "PCV4_AGE",2,
    "PCV5_AGE",2,
    "PCV6_AGE",2,
    "PCV7_AGE",2,
    "PCV8_AGE",1,
    "PCV9_AGE",1,
    "POL1_AGE",2,
    "POL2_AGE",2,
    "POL3_AGE",2,
    "POL4_AGE",2,
    "POL5_AGE",2,
    "POL6_AGE",2,
    "POL7_AGE",1,
    "POL8_AGE",1,
    "POL9_AGE",1,
    "RB1_AGE",2,
    "RB2_AGE",1,
    "RB3_AGE",1,
    "RB4_AGE",1,
    "RB5_AGE",1,
    "RB6_AGE",1,
    "RB7_AGE",1,
    "RB8_AGE",1,
    "RB9_AGE",1,
    "ROT1_AGE",2,
    "ROT2_AGE",2,
    "ROT3_AGE",2,
    "ROT4_AGE",2,
    "ROT5_AGE",2,
    "ROT6_AGE",1,
    "ROT7_AGE",1,
    "ROT8_AGE",1,
    "ROT9_AGE",1,
    "VRC1_AGE",2,
    "VRC2_AGE",2,
    "VRC3_AGE",2,
    "VRC4_AGE",1,
    "VRC5_AGE",1,
    "VRC6_AGE",1,
    "VRC7_AGE",1,
    "VRC8_AGE",1,
    "VRC9_AGE",1,
    "XDTPTY1",2,
    "XDTPTY2",2,
    "XDTPTY3",2,
    "XDTPTY4",2,
    "XDTPTY5",2,
    "XDTPTY6",2,
    "XDTPTY7",1,
    "XDTPTY8",1,
    "XDTPTY9",1,
    "XFLUTY1",2,
    "XFLUTY2",2,
    "XFLUTY3",2,
    "XFLUTY4",2,
    "XFLUTY5",2,
    "XFLUTY6",2,
    "XFLUTY7",2,
    "XFLUTY8",2,
    "XFLUTY9",1,
    "XH1NTY1",2,
    "XH1NTY2",2,
    "XH1NTY3",2,
    "XH1NTY4",2,
    "XH1NTY5",2,
    "XH1NTY6",1,
    "XH1NTY7",1,
    "XH1NTY8",1,
    "XH1NTY9",1,
    "XHEPTY1",2,
    "XHEPTY2",2,
    "XHEPTY3",2,
    "XHEPTY4",2,
    "XHEPTY5",2,
    "XHEPTY6",2,
    "XHEPTY7",1,
    "XHEPTY8",1,
    "XHEPTY9",1,
    "XHIBTY1",2,
    "XHIBTY2",2,
    "XHIBTY3",2,
    "XHIBTY4",2,
    "XHIBTY5",2,
    "XHIBTY6",2,
    "XHIBTY7",2,
    "XHIBTY8",1,
    "XHIBTY9",1,
    "XMMRTY1",2,
    "XMMRTY2",2,
    "XMMRTY3",2,
    "XMMRTY4",1,
    "XMMRTY5",1,
    "XMMRTY6",1,
    "XMMRTY7",1,
    "XMMRTY8",1,
    "XMMRTY9",1,
    "XPCVTY1",2,
    "XPCVTY2",2,
    "XPCVTY3",2,
    "XPCVTY4",2,
    "XPCVTY5",2,
    "XPCVTY6",2,
    "XPCVTY7",2,
    "XPCVTY8",1,
    "XPCVTY9",1,
    "XPOLTY1",2,
    "XPOLTY2",2,
    "XPOLTY3",2,
    "XPOLTY4",2,
    "XPOLTY5",2,
    "XPOLTY6",2,
    "XPOLTY7",1,
    "XPOLTY8",1,
    "XPOLTY9",1,
    "XROTTY1",2,
    "XROTTY2",2,
    "XROTTY3",2,
    "XROTTY4",2,
    "XROTTY5",2,
    "XROTTY6",1,
    "XROTTY7",1,
    "XROTTY8",1,
    "XROTTY9",1,
    "XVRCTY1",2,
    "XVRCTY2",2,
    "XVRCTY3",2,
    "XVRCTY4",1,
    "XVRCTY5",1,
    "XVRCTY6",1,
    "XVRCTY7",1,
    "XVRCTY8",1,
    "XVRCTY9",1,
    "INS_1",2,
    "INS_2",2,
    "INS_3",2,
    "INS_3A",2,
    "INS_4_5",2,
    "INS_6",2,
    "INS_11",2,
    "VFC_I",1
  )

LIST.NAMEWIDTH12 <-
  c("SEQNUMC",6,
    "SEQNUMHH",5,
    "PDAT",1,
    "PROVWT_D",19,
    "PROVWTVI_D",19,
    "RDDWT_D",19,
    "RDDWTVI_D",19,
    "STRATUM",4,
    "YEAR",4,
    "AGECPOXR",1,
    "HAD_CPOX",2,
    "SHOTCARD",1,
    "AGEGRP",1,
    "BF_ENDR06",8,
    "BF_EXCLR06",8,
    "BF_FORMR08",8,
    "BFENDFL06",1,
    "BFFORMFL06",1,
    "C1R",1,
    "C5R",2,
    "CBF_01",2,
    "CEN_REG",1,
    "CHILDNM",1,
    "CWIC_01",2,
    "CWIC_02",2,
    "EDUC1",1,
    "FRSTBRN",1,
    "I_HISP_K",1,
    "INCPORAR",16,
    "INCPOV1",1,
    "INCQ298A",2,
    "INTRP",2,
    "LANGUAGE",1,
    "M_AGEGRP",1,
    "MARITAL2",1,
    "MOBIL_I",1,
    "NUM_PHONE",2,
    "NUM_CELLS_HH",2,
    "NUM_CELLS_PARENTS",2,
    "RACE_K",1,
    "RACEETHK",1,
    "RENT_OWN",2,
    "SEX",1,
    "ESTIAP12",2,
    "EST_GRANT",2,
    "STATE",2,
    "D6R",1,
    "D7",1,
    "N_PRVR",1,
    "PROV_FAC",1,
    "REGISTRY",1,
    "VFC_ORDER",1,
    "HEP_BRTH",1,
    "HEP_FLAG",1,
    "P_NUHEPX",1,
    "P_NUHIBX",1,
    "P_NUHPHB",1,
    "P_NUMDAH",1,
    "P_NUMDHI",1,
    "P_NUMDIH",1,
    "P_NUMDTA",1,
    "P_NUMDTP",1,
    "P_NUMFLU",1,
    "P_NUMFLUL",1,
    "P_NUMFLUM",1,
    "P_NUMFLUN",1,
    "P_NUMH1N",1,
    "P_NUM1L",1,
    "P_NUM1M",1,
    "P_NUM1N",1,
    "P_NUMHEA",1,
    "P_NUMHEN",1,
    "P_NUMHEP",1,
    "P_NUMHIB",1,
    "P_NUMHIN",1,
    "P_NUMHION",1,
    "P_NUMHM",1,
    "P_NUMHG",1,
    "P_NUMHS",1,
    "P_NUMIPV",1,
    "P_NUMMCN",1,
    "P_NUMMMR",1,
    "P_NUMMMRX",1,
    "P_NUMMMX",1,
    "P_NUMMP",1,
    "P_NUMMPR",1,
    "P_NUMMRV",1,
    "P_NUMMS",1,
    "P_NUMMSM",1,
    "P_NUMMSR",1,
    "P_NUMOLN",1,
    "P_NUMOPV",1,
    "P_NUMPCV",1,
    "P_NUMPCP",1,
    "P_NUMPCC",1,
    "P_NUMPCC7",1,
    "P_NUMPCC13",1,
    "P_NUMPCCN",1,
    "P_NUMPCN",1,
    "P_NUMPOL",1,
    "P_NUMRB",1,
    "P_NUMRG",1,
    "P_NUMRM",1,
    "P_NUMRO",1,
    "P_NUMROT",1,
    "P_NUMTPN",1,
    "P_NUMVRC",1,
    "P_NUMVRN",1,
    "P_NUMVRX",1,
    "P_U12VRC",1,
    "P_UTD331",1,
    "P_UTD431",1,
    "P_UTDFL1",1,
    "P_UTDFL2",1,
    "P_UTDFL3",1,
    "P_UTDH1N_1",1,
    "P_UTDH1N_2",1,
    "P_UTDHEP",1,
    "P_UTDHEPA1",1,
    "P_UTDHEPA2",1,
    "P_UTDHIB",1,
    "P_UTDHIB_ROUT_S",1,
    "P_UTDHIB_SHORT_S",1,
    "P_UTDMCV",1,
    "P_UTDMMX",1,
    "P_UTDPC3",1,
    "P_UTDPCV",1,
    "P_UTDPCVB13",1,
    "P_UTDPOL",1,
    "P_UTDROT_S",1,
    "P_UTDTP3",1,
    "P_UTDTP4",1,
    "PU431331",1,
    "P_UTD431H31_ROUT_S",1,
    "PU431_31",1,
    "PU4313313",1,
    "P_UTD431H313_ROUT_S",1,
    "PU4313314",1,
    "P_UTD431H314_ROUT_S",1,
    "PU431_314",1,
    "PUT43133",1,
    "P_UTD431H3_ROUT_S",1,
    "PUTD4313",1,
    "P_UTD431H_ROUT_S",1,
    "U1D_HEP",1,
    "U2D_HEP",1,
    "U3D_HEP",1,
    "DDTP1",4,
    "DDTP2",4,
    "DDTP3",4,
    "DDTP4",4,
    "DDTP5",4,
    "DDTP6",3,
    "DDTP7",4,
    "DDTP8",1,
    "DDTP9",1,
    "DFLU1",4,
    "DFLU2",4,
    "DFLU3",4,
    "DFLU4",4,
    "DFLU5",4,
    "DFLU6",4,
    "DFLU7",4,
    "DFLU8",1,
    "DFLU9",1,
    "DH1N1",4,
    "DH1N2",4,
    "DH1N3",3,
    "DH1N4",1,
    "DH1N5",1,
    "DH1N6",1,
    "DH1N7",1,
    "DH1N8",1,
    "DH1N9",1,
    "DHEPA1",4,
    "DHEPA2",4,
    "DHEPA3",4,
    "DHEPA4",3,
    "DHEPA5",1,
    "DHEPA6",1,
    "DHEPA7",1,
    "DHEPA8",1,
    "DHEPA9",1,
    "DHEPB1",4,
    "DHEPB2",4,
    "DHEPB3",4,
    "DHEPB4",4,
    "DHEPB5",4,
    "DHEPB6",3,
    "DHEPB7",1,
    "DHEPB8",1,
    "DHEPB9",1,
    "DHIB1",4,
    "DHIB2",4,
    "DHIB3",4,
    "DHIB4",4,
    "DHIB5",4,
    "DHIB6",3,
    "DHIB7",3,
    "DHIB8",1,
    "DHIB9",1,
    "DMMR1",4,
    "DMMR2",4,
    "DMMR3",3,
    "DMMR4",1,
    "DMMR5",1,
    "DMMR6",1,
    "DMMR7",1,
    "DMMR8",1,
    "DMMR9",1,
    "DMP1",3,
    "DMP2",1,
    "DMP3",1,
    "DMP4",1,
    "DMP5",1,
    "DMP6",1,
    "DMP7",1,
    "DMP8",1,
    "DMP9",1,
    "DMPRB1",1,
    "DMPRB2",1,
    "DMPRB3",1,
    "DMPRB4",1,
    "DMPRB5",1,
    "DMPRB6",1,
    "DMPRB7",1,
    "DMPRB8",1,
    "DMPRB9",1,
    "DPCV1",4,
    "DPCV2",4,
    "DPCV3",4,
    "DPCV4",4,
    "DPCV5",4,
    "DPCV6",4,
    "DPCV7",3,
    "DPCV8",1,
    "DPCV9",1,
    "DPOLIO1",4,
    "DPOLIO2",4,
    "DPOLIO3",4,
    "DPOLIO4",4,
    "DPOLIO5",4,
    "DPOLIO6",4,
    "DPOLIO7",3,
    "DPOLIO8",1,
    "DPOLIO9",1,
    "DRB1",1,
    "DRB2",1,
    "DRB3",1,
    "DRB4",1,
    "DRB5",1,
    "DRB6",1,
    "DRB7",1,
    "DRB8",1,
    "DRB9",1,
    "DROT1",3,
    "DROT2",3,
    "DROT3",3,
    "DROT4",3,
    "DROT5",1,
    "DROT6",1,
    "DROT7",1,
    "DROT8",1,
    "DROT9",1,
    "DVRC1",4,
    "DVRC2",4,
    "DVRC3",3,
    "DVRC4",1,
    "DVRC5",1,
    "DVRC6",1,
    "DVRC7",1,
    "DVRC8",1,
    "DVRC9",1,
    "DTP1_AGE",2,
    "DTP2_AGE",2,
    "DTP3_AGE",2,
    "DTP4_AGE",2,
    "DTP5_AGE",2,
    "DTP6_AGE",2,
    "DTP7_AGE",2,
    "DTP8_AGE",1,
    "DTP9_AGE",1,
    "FLU1_AGE",2,
    "FLU2_AGE",2,
    "FLU3_AGE",2,
    "FLU4_AGE",2,
    "FLU5_AGE",2,
    "FLU6_AGE",2,
    "FLU7_AGE",2,
    "FLU8_AGE",1,
    "FLU9_AGE",1,
    "H1N1_AGE",2,
    "H1N2_AGE",2,
    "H1N3_AGE",2,
    "H1N4_AGE",1,
    "H1N5_AGE",1,
    "H1N6_AGE",1,
    "H1N7_AGE",1,
    "H1N8_AGE",1,
    "H1N9_AGE",1,
    "HEA1_AGE",2,
    "HEA2_AGE",2,
    "HEA3_AGE",2,
    "HEA4_AGE",2,
    "HEA5_AGE",1,
    "HEA6_AGE",1,
    "HEA7_AGE",1,
    "HEA8_AGE",1,
    "HEA9_AGE",1,
    "HEP1_AGE",2,
    "HEP2_AGE",2,
    "HEP3_AGE",2,
    "HEP4_AGE",2,
    "HEP5_AGE",2,
    "HEP6_AGE",2,
    "HEP7_AGE",1,
    "HEP8_AGE",1,
    "HEP9_AGE",1,
    "HIB1_AGE",2,
    "HIB2_AGE",2,
    "HIB3_AGE",2,
    "HIB4_AGE",2,
    "HIB5_AGE",2,
    "HIB6_AGE",2,
    "HIB7_AGE",2,
    "HIB8_AGE",1,
    "HIB9_AGE",1,
    "MMR1_AGE",2,
    "MMR2_AGE",2,
    "MMR3_AGE",2,
    "MMR4_AGE",1,
    "MMR5_AGE",1,
    "MMR6_AGE",1,
    "MMR7_AGE",1,
    "MMR8_AGE",1,
    "MMR9_AGE",1,
    "MP1_AGE",1,
    "MP2_AGE",1,
    "MP3_AGE",1,
    "MP4_AGE",1,
    "MP5_AGE",1,
    "MP6_AGE",1,
    "MP7_AGE",1,
    "MP8_AGE",1,
    "MP9_AGE",1,
    "MPR1_AGE",1,
    "MPR2_AGE",1,
    "MPR3_AGE",1,
    "MPR4_AGE",1,
    "MPR5_AGE",1,
    "MPR6_AGE",1,
    "MPR7_AGE",1,
    "MPR8_AGE",1,
    "MPR9_AGE",1,
    "PCV1_AGE",2,
    "PCV2_AGE",2,
    "PCV3_AGE",2,
    "PCV4_AGE",2,
    "PCV5_AGE",2,
    "PCV6_AGE",2,
    "PCV7_AGE",2,
    "PCV8_AGE",1,
    "PCV9_AGE",1,
    "POL1_AGE",2,
    "POL2_AGE",2,
    "POL3_AGE",2,
    "POL4_AGE",2,
    "POL5_AGE",2,
    "POL6_AGE",2,
    "POL7_AGE",2,
    "POL8_AGE",1,
    "POL9_AGE",1,
    "RB1_AGE",1,
    "RB2_AGE",1,
    "RB3_AGE",1,
    "RB4_AGE",1,
    "RB5_AGE",1,
    "RB6_AGE",1,
    "RB7_AGE",1,
    "RB8_AGE",1,
    "RB9_AGE",1,
    "ROT1_AGE",2,
    "ROT2_AGE",2,
    "ROT3_AGE",2,
    "ROT4_AGE",2,
    "ROT5_AGE",1,
    "ROT6_AGE",1,
    "ROT7_AGE",1,
    "ROT8_AGE",1,
    "ROT9_AGE",1,
    "VRC1_AGE",2,
    "VRC2_AGE",2,
    "VRC3_AGE",2,
    "VRC4_AGE",1,
    "VRC5_AGE",1,
    "VRC6_AGE",1,
    "VRC7_AGE",1,
    "VRC8_AGE",1,
    "VRC9_AGE",1,
    "XDTPTY1",2,
    "XDTPTY2",2,
    "XDTPTY3",2,
    "XDTPTY4",2,
    "XDTPTY5",2,
    "XDTPTY6",2,
    "XDTPTY7",2,
    "XDTPTY8",1,
    "XDTPTY9",1,
    "XFLUTY1",2,
    "XFLUTY2",2,
    "XFLUTY3",2,
    "XFLUTY4",2,
    "XFLUTY5",2,
    "XFLUTY6",2,
    "XFLUTY7",2,
    "XFLUTY8",1,
    "XFLUTY9",1,
    "XH1NTY1",2,
    "XH1NTY2",2,
    "XH1NTY3",2,
    "XH1NTY4",1,
    "XH1NTY5",1,
    "XH1NTY6",1,
    "XH1NTY7",1,
    "XH1NTY8",1,
    "XH1NTY9",1,
    "XHEPTY1",2,
    "XHEPTY2",2,
    "XHEPTY3",2,
    "XHEPTY4",2,
    "XHEPTY5",2,
    "XHEPTY6",2,
    "XHEPTY7",1,
    "XHEPTY8",1,
    "XHEPTY9",1,
    "XHIBTY1",2,
    "XHIBTY2",2,
    "XHIBTY3",2,
    "XHIBTY4",2,
    "XHIBTY5",2,
    "XHIBTY6",2,
    "XHIBTY7",2,
    "XHIBTY8",1,
    "XHIBTY9",1,
    "XMMRTY1",2,
    "XMMRTY2",2,
    "XMMRTY3",2,
    "XMMRTY4",1,
    "XMMRTY5",1,
    "XMMRTY6",1,
    "XMMRTY7",1,
    "XMMRTY8",1,
    "XMMRTY9",1,
    "XPCVTY1",2,
    "XPCVTY2",2,
    "XPCVTY3",2,
    "XPCVTY4",2,
    "XPCVTY5",2,
    "XPCVTY6",2,
    "XPCVTY7",2,
    "XPCVTY8",1,
    "XPCVTY9",1,
    "XPOLTY1",2,
    "XPOLTY2",2,
    "XPOLTY3",2,
    "XPOLTY4",2,
    "XPOLTY5",2,
    "XPOLTY6",2,
    "XPOLTY7",2,
    "XPOLTY8",1,
    "XPOLTY9",1,
    "XROTTY1",2,
    "XROTTY2",2,
    "XROTTY3",2,
    "XROTTY4",2,
    "XROTTY5",1,
    "XROTTY6",1,
    "XROTTY7",1,
    "XROTTY8",1,
    "XROTTY9",1,
    "XVRCTY1",2,
    "XVRCTY2",2,
    "XVRCTY3",2,
    "XVRCTY4",1,
    "XVRCTY5",1,
    "XVRCTY6",1,
    "XVRCTY7",1,
    "XVRCTY8",1,
    "XVRCTY9",1,
    "INS_1",2,
    "INS_2",2,
    "INS_3",2,
    "INS_3A",2,
    "INS_4_5",2,
    "INS_6",2,
    "INS_11",2
  )

LIST.NAMEWIDTH13 <-
  c("SEQNUMC",6,
    "SEQNUMHH",5,
    "PDAT",1,
    "PROVWT_D",20,
    "PROVWTVIGU_D",20,
    "RDDWT_D",19,
    "RDDWTVIGU_D",19,
    "STRATUM",4,
    "YEAR",4,
    "AGECPOXR",1,
    "HAD_CPOX",2,
    "SHOTCARD",1,
    "AGEGRP",1,
    "BF_ENDR06",8,
    "BF_EXCLR06",8,
    "BF_FORMR08",8,
    "BFENDFL06",1,
    "BFFORMFL06",1,
    "C1R",1,
    "C5R",2,
    "CBF_01",2,
    "CEN_REG",1,
    "CHILDNM",1,
    "CWIC_01",2,
    "CWIC_02",2,
    "EDUC1",1,
    "FRSTBRN",1,
    "I_HISP_K",1,
    "INCPORAR",16,
    "INCPOV1",1,
    "INCQ298A",2,
    "INTRP",1,
    "LANGUAGE",1,
    "M_AGEGRP",1,
    "MARITAL2",1,
    "MOBIL_I",1,
    "NUM_PHONE",2,
    "NUM_CELLS_HH",2,
    "NUM_CELLS_PARENTS",2,
    "RACE_K",1,
    "RACEETHK",1,
    "RENT_OWN",2,
    "SEX",1,
    "ESTIAP13",3,
    "EST_GRANT",2,
    "STATE",2,
    "D6R",1,
    "D7",1,
    "N_PRVR",1,
    "PROV_FAC",1,
    "REGISTRY",1,
    "VFC_ORDER",1,
    "HEP_BRTH",1,
    "HEP_FLAG",1,
    "P_NUHEPX",1,
    "P_NUHIBX",1,
    "P_NUHPHB",1,
    "P_NUMDAH",1,
    "P_NUMDHI",1,
    "P_NUMDIH",1,
    "P_NUMDTA",1,
    "P_NUMDTP",1,
    "P_NUMFLU",1,
    "P_NUMFLUL",1,
    "P_NUMFLUM",1,
    "P_NUMFLUN",1,
    "P_NUMHEA",1,
    "P_NUMHEN",1,
    "P_NUMHEP",1,
    "P_NUMHIB",1,
    "P_NUMHIN",1,
    "P_NUMHION",1,
    "P_NUMHM",1,
    "P_NUMHG",1,
    "P_NUMHS",1,
    "P_NUMIPV",1,
    "P_NUMMCN",1,
    "P_NUMMMR",1,
    "P_NUMMMRX",1,
    "P_NUMMMX",1,
    "P_NUMMP",1,
    "P_NUMMPR",1,
    "P_NUMMRV",1,
    "P_NUMMS",1,
    "P_NUMMSM",1,
    "P_NUMMSR",1,
    "P_NUMOLN",1,
    "P_NUMOPV",1,
    "P_NUMPCV",1,
    "P_NUMPCP",1,
    "P_NUMPCC",1,
    "P_NUMPCC7",1,
    "P_NUMPCC13",1,
    "P_NUMPCCN",1,
    "P_NUMPCN",1,
    "P_NUMPOL",1,
    "P_NUMRB",1,
    "P_NUMRG",1,
    "P_NUMRM",1,
    "P_NUMRO",1,
    "P_NUMROT",1,
    "P_NUMTPN",1,
    "P_NUMVRC",1,
    "P_NUMVRN",1,
    "P_NUMVRX",1,
    "P_U12VRC",1,
    "P_UTD331",1,
    "P_UTD431",1,
    "P_UTDFL1",1,
    "P_UTDFL2",1,
    "P_UTDFL3",1,
    "P_UTDHEP",1,
    "P_UTDHEPA1",1,
    "P_UTDHEPA2",1,
    "P_UTDHIB",1,
    "P_UTDHIB_ROUT_S",1,
    "P_UTDHIB_SHORT_S",1,
    "P_UTDMCV",1,
    "P_UTDMMX",1,
    "P_UTDPC3",1,
    "P_UTDPCV",1,
    "P_UTDPCVB13",1,
    "P_UTDPOL",1,
    "P_UTDROT_S",1,
    "P_UTDTP3",1,
    "P_UTDTP4",1,
    "PU431331",1,
    "P_UTD431H31_ROUT_S",1,
    "PU431_31",1,
    "PU4313313",1,
    "P_UTD431H313_ROUT_S",1,
    "PU4313314",1,
    "P_UTD431H314_ROUT_S",1,
    "PU431_314",1,
    "PUT43133",1,
    "P_UTD431H3_ROUT_S",1,
    "PUTD4313",1,
    "P_UTD431H_ROUT_S",1,
    "U1D_HEP",1,
    "U2D_HEP",1,
    "U3D_HEP",1,
    "DDTP1",4,
    "DDTP2",4,
    "DDTP3",4,
    "DDTP4",4,
    "DDTP5",4,
    "DDTP6",3,
    "DDTP7",3,
    "DDTP8",4,
    "DDTP9",1,
    "DFLU1",4,
    "DFLU2",4,
    "DFLU3",4,
    "DFLU4",4,
    "DFLU5",4,
    "DFLU6",1,
    "DFLU7",1,
    "DFLU8",1,
    "DFLU9",1,
    "DHEPA1",4,
    "DHEPA2",4,
    "DHEPA3",4,
    "DHEPA4",3,
    "DHEPA5",1,
    "DHEPA6",1,
    "DHEPA7",1,
    "DHEPA8",1,
    "DHEPA9",1,
    "DHEPB1",4,
    "DHEPB2",4,
    "DHEPB3",4,
    "DHEPB4",4,
    "DHEPB5",4,
    "DHEPB6",3,
    "DHEPB7",1,
    "DHEPB8",1,
    "DHEPB9",1,
    "DHIB1",4,
    "DHIB2",4,
    "DHIB3",4,
    "DHIB4",4,
    "DHIB5",4,
    "DHIB6",3,
    "DHIB7",3,
    "DHIB8",4,
    "DHIB9",1,
    "DMMR1",4,
    "DMMR2",4,
    "DMMR3",3,
    "DMMR4",1,
    "DMMR5",1,
    "DMMR6",1,
    "DMMR7",1,
    "DMMR8",1,
    "DMMR9",1,
    "DMP1",1,
    "DMP2",1,
    "DMP3",1,
    "DMP4",1,
    "DMP5",1,
    "DMP6",1,
    "DMP7",1,
    "DMP8",1,
    "DMP9",1,
    "DMPRB1",1,
    "DMPRB2",1,
    "DMPRB3",1,
    "DMPRB4",1,
    "DMPRB5",1,
    "DMPRB6",1,
    "DMPRB7",1,
    "DMPRB8",1,
    "DMPRB9",1,
    "DPCV1",4,
    "DPCV2",4,
    "DPCV3",4,
    "DPCV4",4,
    "DPCV5",4,
    "DPCV6",3,
    "DPCV7",3,
    "DPCV8",3,
    "DPCV9",1,
    "DPOLIO1",4,
    "DPOLIO2",4,
    "DPOLIO3",4,
    "DPOLIO4",4,
    "DPOLIO5",3,
    "DPOLIO6",3,
    "DPOLIO7",3,
    "DPOLIO8",1,
    "DPOLIO9",1,
    "DRB1",1,
    "DRB2",1,
    "DRB3",1,
    "DRB4",1,
    "DRB5",1,
    "DRB6",1,
    "DRB7",1,
    "DRB8",1,
    "DRB9",1,
    "DROT1",3,
    "DROT2",3,
    "DROT3",3,
    "DROT4",3,
    "DROT5",3,
    "DROT6",3,
    "DROT7",1,
    "DROT8",1,
    "DROT9",1,
    "DVRC1",4,
    "DVRC2",4,
    "DVRC3",1,
    "DVRC4",1,
    "DVRC5",1,
    "DVRC6",1,
    "DVRC7",1,
    "DVRC8",1,
    "DVRC9",1,
    "DTP1_AGE",2,
    "DTP2_AGE",2,
    "DTP3_AGE",2,
    "DTP4_AGE",2,
    "DTP5_AGE",2,
    "DTP6_AGE",2,
    "DTP7_AGE",2,
    "DTP8_AGE",2,
    "DTP9_AGE",1,
    "FLU1_AGE",2,
    "FLU2_AGE",2,
    "FLU3_AGE",2,
    "FLU4_AGE",2,
    "FLU5_AGE",2,
    "FLU6_AGE",1,
    "FLU7_AGE",1,
    "FLU8_AGE",1,
    "FLU9_AGE",1,
    "HEA1_AGE",2,
    "HEA2_AGE",2,
    "HEA3_AGE",2,
    "HEA4_AGE",2,
    "HEA5_AGE",1,
    "HEA6_AGE",1,
    "HEA7_AGE",1,
    "HEA8_AGE",1,
    "HEA9_AGE",1,
    "HEP1_AGE",2,
    "HEP2_AGE",2,
    "HEP3_AGE",2,
    "HEP4_AGE",2,
    "HEP5_AGE",2,
    "HEP6_AGE",2,
    "HEP7_AGE",1,
    "HEP8_AGE",1,
    "HEP9_AGE",1,
    "HIB1_AGE",2,
    "HIB2_AGE",2,
    "HIB3_AGE",2,
    "HIB4_AGE",2,
    "HIB5_AGE",2,
    "HIB6_AGE",2,
    "HIB7_AGE",2,
    "HIB8_AGE",2,
    "HIB9_AGE",1,
    "MMR1_AGE",2,
    "MMR2_AGE",2,
    "MMR3_AGE",2,
    "MMR4_AGE",1,
    "MMR5_AGE",1,
    "MMR6_AGE",1,
    "MMR7_AGE",1,
    "MMR8_AGE",1,
    "MMR9_AGE",1,
    "MP1_AGE",1,
    "MP2_AGE",1,
    "MP3_AGE",1,
    "MP4_AGE",1,
    "MP5_AGE",1,
    "MP6_AGE",1,
    "MP7_AGE",1,
    "MP8_AGE",1,
    "MP9_AGE",1,
    "MPR1_AGE",1,
    "MPR2_AGE",1,
    "MPR3_AGE",1,
    "MPR4_AGE",1,
    "MPR5_AGE",1,
    "MPR6_AGE",1,
    "MPR7_AGE",1,
    "MPR8_AGE",1,
    "MPR9_AGE",1,
    "PCV1_AGE",2,
    "PCV2_AGE",2,
    "PCV3_AGE",2,
    "PCV4_AGE",2,
    "PCV5_AGE",2,
    "PCV6_AGE",2,
    "PCV7_AGE",2,
    "PCV8_AGE",2,
    "PCV9_AGE",1,
    "POL1_AGE",2,
    "POL2_AGE",2,
    "POL3_AGE",2,
    "POL4_AGE",2,
    "POL5_AGE",2,
    "POL6_AGE",2,
    "POL7_AGE",2,
    "POL8_AGE",1,
    "POL9_AGE",1,
    "RB1_AGE",1,
    "RB2_AGE",1,
    "RB3_AGE",1,
    "RB4_AGE",1,
    "RB5_AGE",1,
    "RB6_AGE",1,
    "RB7_AGE",1,
    "RB8_AGE",1,
    "RB9_AGE",1,
    "ROT1_AGE",2,
    "ROT2_AGE",2,
    "ROT3_AGE",2,
    "ROT4_AGE",2,
    "ROT5_AGE",2,
    "ROT6_AGE",2,
    "ROT7_AGE",1,
    "ROT8_AGE",1,
    "ROT9_AGE",1,
    "VRC1_AGE",2,
    "VRC2_AGE",2,
    "VRC3_AGE",1,
    "VRC4_AGE",1,
    "VRC5_AGE",1,
    "VRC6_AGE",1,
    "VRC7_AGE",1,
    "VRC8_AGE",1,
    "VRC9_AGE",1,
    "XDTPTY1",2,
    "XDTPTY2",2,
    "XDTPTY3",2,
    "XDTPTY4",2,
    "XDTPTY5",2,
    "XDTPTY6",2,
    "XDTPTY7",2,
    "XDTPTY8",2,
    "XDTPTY9",1,
    "XFLUTY1",2,
    "XFLUTY2",2,
    "XFLUTY3",2,
    "XFLUTY4",2,
    "XFLUTY5",2,
    "XFLUTY6",1,
    "XFLUTY7",1,
    "XFLUTY8",1,
    "XFLUTY9",1,
    "XHEPTY1",2,
    "XHEPTY2",2,
    "XHEPTY3",2,
    "XHEPTY4",2,
    "XHEPTY5",2,
    "XHEPTY6",2,
    "XHEPTY7",1,
    "XHEPTY8",1,
    "XHEPTY9",1,
    "XHIBTY1",2,
    "XHIBTY2",2,
    "XHIBTY3",2,
    "XHIBTY4",2,
    "XHIBTY5",2,
    "XHIBTY6",2,
    "XHIBTY7",2,
    "XHIBTY8",2,
    "XHIBTY9",1,
    "XMMRTY1",2,
    "XMMRTY2",2,
    "XMMRTY3",2,
    "XMMRTY4",1,
    "XMMRTY5",1,
    "XMMRTY6",1,
    "XMMRTY7",1,
    "XMMRTY8",1,
    "XMMRTY9",1,
    "XPCVTY1",2,
    "XPCVTY2",2,
    "XPCVTY3",2,
    "XPCVTY4",2,
    "XPCVTY5",2,
    "XPCVTY6",2,
    "XPCVTY7",2,
    "XPCVTY8",2,
    "XPCVTY9",1,
    "XPOLTY1",2,
    "XPOLTY2",2,
    "XPOLTY3",2,
    "XPOLTY4",2,
    "XPOLTY5",2,
    "XPOLTY6",2,
    "XPOLTY7",2,
    "XPOLTY8",1,
    "XPOLTY9",1,
    "XROTTY1",2,
    "XROTTY2",2,
    "XROTTY3",2,
    "XROTTY4",2,
    "XROTTY5",2,
    "XROTTY6",2,
    "XROTTY7",1,
    "XROTTY8",1,
    "XROTTY9",1,
    "XVRCTY1",2,
    "XVRCTY2",2,
    "XVRCTY3",1,
    "XVRCTY4",1,
    "XVRCTY5",1,
    "XVRCTY6",1,
    "XVRCTY7",1,
    "XVRCTY8",1,
    "XVRCTY9",1,
    "INS_1",2,
    "INS_2",2,
    "INS_3",2,
    "INS_3A",2,
    "INS_4_5",2,
    "INS_6",2,
    "INS_11",2
  )

LIST.NAMEWIDTH14 <-
  c("SEQNUMC",6,
    "SEQNUMHH",5,
    "PDAT",1,
    "PROVWT_D",19,
    "PROVWT_D_TERR",19,
    "RDDWT_D",19,
    "RDDWT_D_TERR",19,
    "STRATUM",4,
    "YEAR",4,
    "AGECPOXR",1,
    "HAD_CPOX",2,
    "SHOTCARD",1,
    "AGEGRP",1,
    "BF_ENDR06",8,
    "BF_EXCLR06",8,
    "BF_FORMR08",8,
    "BFENDFL06",1,
    "BFFORMFL06",1,
    "C1R",1,
    "C5R",2,
    "CBF_01",2,
    "CEN_REG",1,
    "CHILDNM",1,
    "CWIC_01",2,
    "CWIC_02",2,
    "EDUC1",1,
    "FRSTBRN",1,
    "I_HISP_K",1,
    "INCPORAR",16,
    "INCPOV1",1,
    "INCQ298A",2,
    "INTRP",1,
    "LANGUAGE",1,
    "M_AGEGRP",1,
    "MARITAL2",1,
    "MOBIL_I",1,
    "NUM_PHONE",2,
    "NUM_CELLS_HH",2,
    "NUM_CELLS_PARENTS",2,
    "RACE_K",1,
    "RACEETHK",1,
    "RENT_OWN",2,
    "SEX",1,
    "ESTIAP14",3,
    "EST_GRANT",2,
    "STATE",2,
    "D6R",1,
    "D7",1,
    "N_PRVR",1,
    "PROV_FAC",1,
    "REGISTRY",1,
    "VFC_ORDER",1,
    "HEP_BRTH",1,
    "HEP_FLAG",1,
    "P_NUHEPX",1,
    "P_NUHIBX",1,
    "P_NUHPHB",1,
    "P_NUMDAH",1,
    "P_NUMDHI",1,
    "P_NUMDIH",1,
    "P_NUMDTA",1,
    "P_NUMDTP",1,
    "P_NUMFLU",1,
    "P_NUMFLUL",1,
    "P_NUMFLUM",1,
    "P_NUMFLUN",1,
    "P_NUMHEA",1,
    "P_NUMHEN",1,
    "P_NUMHEP",1,
    "P_NUMHG",1,
    "P_NUMHHY",1,
    "P_NUMHIB",1,
    "P_NUMHIN",1,
    "P_NUMHION",1,
    "P_NUMHM",1,
    "P_NUMHS",1,
    "P_NUMIPV",1,
    "P_NUMMCN",1,
    "P_NUMMMR",1,
    "P_NUMMMRX",1,
    "P_NUMMMX",1,
    "P_NUMMP",1,
    "P_NUMMPR",1,
    "P_NUMMRV",1,
    "P_NUMMS",1,
    "P_NUMMSM",1,
    "P_NUMMSR",1,
    "P_NUMOLN",1,
    "P_NUMOPV",1,
    "P_NUMPCV",1,
    "P_NUMPCP",1,
    "P_NUMPCC",1,
    "P_NUMPCC7",1,
    "P_NUMPCC13",1,
    "P_NUMPCCN",1,
    "P_NUMPCN",1,
    "P_NUMPOL",1,
    "P_NUMRB",1,
    "P_NUMRG",1,
    "P_NUMRM",1,
    "P_NUMRO",1,
    "P_NUMROT",1,
    "P_NUMTPN",1,
    "P_NUMVRC",1,
    "P_NUMVRN",1,
    "P_NUMVRX",1,
    "P_U12VRC",1,
    "P_UTD331",1,
    "P_UTD431",1,
    "P_UTDHEP",1,
    "P_UTDHEPA1",1,
    "P_UTDHEPA2",1,
    "P_UTDHIB",1,
    "P_UTDHIB_ROUT_S",1,
    "P_UTDHIB_SHORT_S",1,
    "P_UTDMCV",1,
    "P_UTDMMX",1,
    "P_UTDPC3",1,
    "P_UTDPCV",1,
    "P_UTDPCVB13",1,
    "P_UTDPOL",1,
    "P_UTDROT_S",1,
    "P_UTDTP3",1,
    "P_UTDTP4",1,
    "PU431331",1,
    "P_UTD431H31_ROUT_S",1,
    "PU431_31",1,
    "PU4313313",1,
    "P_UTD431H313_ROUT_S",1,
    "PU4313314",1,
    "P_UTD431H314_ROUT_S",1,
    "PU431_314",1,
    "PUT43133",1,
    "P_UTD431H3_ROUT_S",1,
    "PUTD4313",1,
    "P_UTD431H_ROUT_S",1,
    "U1D_HEP",1,
    "U2D_HEP",1,
    "U3D_HEP",1,
    "DDTP1",4,
    "DDTP2",4,
    "DDTP3",4,
    "DDTP4",4,
    "DDTP5",4,
    "DDTP6",4,
    "DDTP7",1,
    "DDTP8",1,
    "DDTP9",1,
    "DFLU1",4,
    "DFLU2",4,
    "DFLU3",4,
    "DFLU4",4,
    "DFLU5",4,
    "DFLU6",4,
    "DFLU7",1,
    "DFLU8",1,
    "DFLU9",1,
    "DHEPA1",4,
    "DHEPA2",4,
    "DHEPA3",4,
    "DHEPA4",4,
    "DHEPA5",1,
    "DHEPA6",1,
    "DHEPA7",1,
    "DHEPA8",1,
    "DHEPA9",1,
    "DHEPB1",4,
    "DHEPB2",4,
    "DHEPB3",4,
    "DHEPB4",4,
    "DHEPB5",4,
    "DHEPB6",3,
    "DHEPB7",3,
    "DHEPB8",1,
    "DHEPB9",1,
    "DHIB1",4,
    "DHIB2",4,
    "DHIB3",4,
    "DHIB4",4,
    "DHIB5",4,
    "DHIB6",3,
    "DHIB7",3,
    "DHIB8",1,
    "DHIB9",1,
    "DMMR1",4,
    "DMMR2",4,
    "DMMR3",3,
    "DMMR4",3,
    "DMMR5",1,
    "DMMR6",1,
    "DMMR7",1,
    "DMMR8",1,
    "DMMR9",1,
    "DMP1",1,
    "DMP2",1,
    "DMP3",1,
    "DMP4",1,
    "DMP5",1,
    "DMP6",1,
    "DMP7",1,
    "DMP8",1,
    "DMP9",1,
    "DMPRB1",3,
    "DMPRB2",1,
    "DMPRB3",1,
    "DMPRB4",1,
    "DMPRB5",1,
    "DMPRB6",1,
    "DMPRB7",1,
    "DMPRB8",1,
    "DMPRB9",1,
    "DPCV1",4,
    "DPCV2",4,
    "DPCV3",4,
    "DPCV4",4,
    "DPCV5",4,
    "DPCV6",3,
    "DPCV7",3,
    "DPCV8",1,
    "DPCV9",1,
    "DPOLIO1",4,
    "DPOLIO2",4,
    "DPOLIO3",4,
    "DPOLIO4",4,
    "DPOLIO5",3,
    "DPOLIO6",3,
    "DPOLIO7",1,
    "DPOLIO8",1,
    "DPOLIO9",1,
    "DRB1",3,
    "DRB2",1,
    "DRB3",1,
    "DRB4",1,
    "DRB5",1,
    "DRB6",1,
    "DRB7",1,
    "DRB8",1,
    "DRB9",1,
    "DROT1",3,
    "DROT2",3,
    "DROT3",4,
    "DROT4",3,
    "DROT5",3,
    "DROT6",1,
    "DROT7",1,
    "DROT8",1,
    "DROT9",1,
    "DVRC1",4,
    "DVRC2",4,
    "DVRC3",4,
    "DVRC4",1,
    "DVRC5",1,
    "DVRC6",1,
    "DVRC7",1,
    "DVRC8",1,
    "DVRC9",1,
    "DTP1_AGE",2,
    "DTP2_AGE",2,
    "DTP3_AGE",2,
    "DTP4_AGE",2,
    "DTP5_AGE",2,
    "DTP6_AGE",2,
    "DTP7_AGE",1,
    "DTP8_AGE",1,
    "DTP9_AGE",1,
    "FLU1_AGE",2,
    "FLU2_AGE",2,
    "FLU3_AGE",2,
    "FLU4_AGE",2,
    "FLU5_AGE",2,
    "FLU6_AGE",2,
    "FLU7_AGE",1,
    "FLU8_AGE",1,
    "FLU9_AGE",1,
    "HEA1_AGE",2,
    "HEA2_AGE",2,
    "HEA3_AGE",2,
    "HEA4_AGE",2,
    "HEA5_AGE",1,
    "HEA6_AGE",1,
    "HEA7_AGE",1,
    "HEA8_AGE",1,
    "HEA9_AGE",1,
    "HEP1_AGE",2,
    "HEP2_AGE",2,
    "HEP3_AGE",2,
    "HEP4_AGE",2,
    "HEP5_AGE",2,
    "HEP6_AGE",2,
    "HEP7_AGE",2,
    "HEP8_AGE",1,
    "HEP9_AGE",1,
    "HIB1_AGE",2,
    "HIB2_AGE",2,
    "HIB3_AGE",2,
    "HIB4_AGE",2,
    "HIB5_AGE",2,
    "HIB6_AGE",2,
    "HIB7_AGE",2,
    "HIB8_AGE",1,
    "HIB9_AGE",1,
    "MMR1_AGE",2,
    "MMR2_AGE",2,
    "MMR3_AGE",2,
    "MMR4_AGE",2,
    "MMR5_AGE",1,
    "MMR6_AGE",1,
    "MMR7_AGE",1,
    "MMR8_AGE",1,
    "MMR9_AGE",1,
    "MP1_AGE",1,
    "MP2_AGE",1,
    "MP3_AGE",1,
    "MP4_AGE",1,
    "MP5_AGE",1,
    "MP6_AGE",1,
    "MP7_AGE",1,
    "MP8_AGE",1,
    "MP9_AGE",1,
    "MPR1_AGE",1,
    "MPR2_AGE",1,
    "MPR3_AGE",1,
    "MPR4_AGE",1,
    "MPR5_AGE",1,
    "MPR6_AGE",1,
    "MPR7_AGE",1,
    "MPR8_AGE",1,
    "MPR9_AGE",1,
    "PCV1_AGE",2,
    "PCV2_AGE",2,
    "PCV3_AGE",2,
    "PCV4_AGE",2,
    "PCV5_AGE",2,
    "PCV6_AGE",2,
    "PCV7_AGE",2,
    "PCV8_AGE",1,
    "PCV9_AGE",1,
    "POL1_AGE",2,
    "POL2_AGE",2,
    "POL3_AGE",2,
    "POL4_AGE",2,
    "POL5_AGE",2,
    "POL6_AGE",2,
    "POL7_AGE",1,
    "POL8_AGE",1,
    "POL9_AGE",1,
    "RB1_AGE",2,
    "RB2_AGE",1,
    "RB3_AGE",1,
    "RB4_AGE",1,
    "RB5_AGE",1,
    "RB6_AGE",1,
    "RB7_AGE",1,
    "RB8_AGE",1,
    "RB9_AGE",1,
    "ROT1_AGE",2,
    "ROT2_AGE",2,
    "ROT3_AGE",2,
    "ROT4_AGE",2,
    "ROT5_AGE",1,
    "ROT6_AGE",1,
    "ROT7_AGE",1,
    "ROT8_AGE",1,
    "ROT9_AGE",1,
    "VRC1_AGE",2,
    "VRC2_AGE",2,
    "VRC3_AGE",2,
    "VRC4_AGE",1,
    "VRC5_AGE",1,
    "VRC6_AGE",1,
    "VRC7_AGE",1,
    "VRC8_AGE",1,
    "VRC9_AGE",1,
    "XDTPTY1",2,
    "XDTPTY2",2,
    "XDTPTY3",2,
    "XDTPTY4",2,
    "XDTPTY5",2,
    "XDTPTY6",2,
    "XDTPTY7",1,
    "XDTPTY8",1,
    "XDTPTY9",1,
    "XFLUTY1",2,
    "XFLUTY2",2,
    "XFLUTY3",2,
    "XFLUTY4",2,
    "XFLUTY5",2,
    "XFLUTY6",2,
    "XFLUTY7",1,
    "XFLUTY8",1,
    "XFLUTY9",1,
    "XHEPTY1",2,
    "XHEPTY2",2,
    "XHEPTY3",2,
    "XHEPTY4",2,
    "XHEPTY5",2,
    "XHEPTY6",2,
    "XHEPTY7",2,
    "XHEPTY8",1,
    "XHEPTY9",1,
    "XHIBTY1",2,
    "XHIBTY2",2,
    "XHIBTY3",2,
    "XHIBTY4",2,
    "XHIBTY5",2,
    "XHIBTY6",2,
    "XHIBTY7",2,
    "XHIBTY8",1,
    "XHIBTY9",1,
    "XMMRTY1",2,
    "XMMRTY2",2,
    "XMMRTY3",2,
    "XMMRTY4",2,
    "XMMRTY5",1,
    "XMMRTY6",1,
    "XMMRTY7",1,
    "XMMRTY8",1,
    "XMMRTY9",1,
    "XPCVTY1",2,
    "XPCVTY2",2,
    "XPCVTY3",2,
    "XPCVTY4",2,
    "XPCVTY5",2,
    "XPCVTY6",2,
    "XPCVTY7",2,
    "XPCVTY8",1,
    "XPCVTY9",1,
    "XPOLTY1",2,
    "XPOLTY2",2,
    "XPOLTY3",2,
    "XPOLTY4",2,
    "XPOLTY5",2,
    "XPOLTY6",2,
    "XPOLTY7",1,
    "XPOLTY8",1,
    "XPOLTY9",1,
    "XROTTY1",2,
    "XROTTY2",2,
    "XROTTY3",2,
    "XROTTY4",2,
    "XROTTY5",2,
    "XROTTY6",1,
    "XROTTY7",1,
    "XROTTY8",1,
    "XROTTY9",1,
    "XVRCTY1",2,
    "XVRCTY2",2,
    "XVRCTY3",2,
    "XVRCTY4",1,
    "XVRCTY5",1,
    "XVRCTY6",1,
    "XVRCTY7",1,
    "XVRCTY8",1,
    "XVRCTY9",1,
    "INS_1",2,
    "INS_2",2,
    "INS_3",2,
    "INS_3A",2,
    "INS_4_5",2,
    "INS_6",2,
    "INS_11",2
  )

############################################################################
#                       READ IN ALL DATA SETS                              #
############################################################################

NAMEWIDTH <- matrix(LIST.NAMEWIDTH, 509, 2, byrow=T, dimnames = list(NULL, c("VARIABLE","WIDTH")))
NA_STRING <- c(" ", ".", " .", "  .", "   .", "   .    ", " .              ", "    .              ", "     .              ", "     .             ")

NISPUF10 <- read.fwf(flatfile10, widths= as.numeric(NAMEWIDTH[,2]), col.names = NAMEWIDTH[,1], na.strings= NA_STRING, as.is=TRUE)

NAMEWIDTH <- matrix(LIST.NAMEWIDTH11, 515, 2, byrow=T, dimnames = list(NULL, c("VARIABLE","WIDTH")))
NA_STRING <- c(" ", ".", " .", "  .", "   .", "   .    ", " .              ", "    .              ", "     .              ", "     .             ")

NISPUF11 <- read.fwf(flatfile11, widths= as.numeric(NAMEWIDTH[,2]), col.names = NAMEWIDTH[,1], na.strings= NA_STRING, as.is=TRUE)

NAMEWIDTH <- matrix(LIST.NAMEWIDTH12, length(LIST.NAMEWIDTH12)/2, 2, byrow=T, dimnames = list(NULL, c("VARIABLE","WIDTH")))
NA_STRING <- c(" ", ".", " .", "  .", "   .", "   .    ", " .              ", "    .              ", "     .              ", "     .             ")

NISPUF12 <- read.fwf(flatfile12, widths= as.numeric(NAMEWIDTH[,2]), col.names = NAMEWIDTH[,1], na.strings= NA_STRING, as.is=TRUE)

NAMEWIDTH <- matrix(LIST.NAMEWIDTH13, length(LIST.NAMEWIDTH13)/2, 2, byrow=T, dimnames = list(NULL, c("VARIABLE","WIDTH")))
NA_STRING <- c(" ", ".", " .", "  .", "   .", "   .    ", " .              ", "    .              ", "     .              ", "     .             ")

NISPUF13 <- read.fwf(flatfile13, widths= as.numeric(NAMEWIDTH[,2]), col.names = NAMEWIDTH[,1], na.strings= NA_STRING, as.is=TRUE)

NAMEWIDTH <- matrix(LIST.NAMEWIDTH14, length(LIST.NAMEWIDTH14)/2, 2, byrow=T, dimnames = list(NULL, c("VARIABLE","WIDTH")))
NA_STRING <- c(" ", ".", " .", "  .", "   .", "   .    ", " .              ", "    .              ", "     .              ", "     .             ")

NISPUF14 <- read.fwf(flatfile14, widths= as.numeric(NAMEWIDTH[,2]), col.names = NAMEWIDTH[,1], na.strings= NA_STRING, as.is=TRUE)

############################################################################
#                         COMBINE  DATA SETS                               #
############################################################################

library(plyr)
 
#Bind by column names (only for those columns that match)
library(gtools)
NISPUF_Combined <- smartbind(NISPUF10,NISPUF11,NISPUF12,NISPUF13)

#Keep only those columns that havev less than 70% NA values
Keep <- which((colSums(is.na(NISPUF_Combined))/nrow(NISPUF_Combined))<.7)
NISPUF_Combined_Final <- NISPUF_Combined[, Keep]
colnames(NISPUF_Combined_Final)

#Select out all other unwanted columns
NISPUF_Combined <- NISPUF_Combined_Final[, c(1:4,11:50,140:193,238:244)]
colnames_used <- colnames(NISPUF_Combined)
NISPUF_Test <- NISPUF14[, which(colnames(NISPUF14) %in% colnames_used)]
NISPUF_Train <- NISPUF_Combined[,-39] #This was missing in the 2014 data

#Create labels for most predictor variables
labels <- c(SEQNUMC="Child_ID",SEQNUMHH="Household_ID",PDAT="Prov_Data_Adequacy",
            HAD_CPOX="Had_Chickenpox", BF_ENDR06="BreastFeedingTime", 
            BF_EXCLR06="Excl_Breast&Formula_Duration",
            BF_FORMR08="Age_First_Formula", C1R="Num_in_HH", C5R="Respondent_Relationship",
            CBF_01="Ever_Breastfed",CEN_REG="Census_Region", CHILDNM="Num_HH_children",
            CWIC_01="Ever_WIC", CWIC_02="Current_WIC",EDUC1="Maternal_Education",FRSTBRN=
              "First_Born", I_HISP_K="Hispanic_Origin",INCPORAR="Income:Poverty", INCPOV1=
              "Poverty_Status", INCQ298A="Family_Income", INTRP="Interrupted_Phone_Utilities", 
            LANGUAGE="Language_of_Interview", M_AGEGRP="Maternal_AGEGRP",MARITAL2="Maternal_Marital_Status",
            MOBIL_I="Moved_Since_Birth", NUM_PHONE="Num_HH_Phones",NUM_CELLS_HH="Num_HH_Cellphones",
            NUM_CELLS_PARENTS="Num_Parental_Cellphones", RACE_K="Race", RACEETHK="Ethnicity", 
            RENT_OWN="Home_Own_Rent", SEX="Gender", STATE="State_of_Residence", D6R="Num_Vaccine_Providers",
            D7="Imm_Record_Consent", N_PRVR="Num_Providers_Reponded",
            PROV_FAC="Provider_Facility", REGISTRY="Immunizations_Reported", VFC_ORDER="Health_Dept_Vaccines",
            HEP_BRTH="HepB_at_Birth",INS_1 ="Employer_Insurance",INS_2="Medicaid_Coverage",
            INS_3="S-CHIP_Coverage",INS_3A = "Medicaid_or_CHIP",INS_4_5 = "Indian_Military_Tricare",
            INS_6="Other_Insurance_Coverage",INS_11="Any_Period_Uninsured")
Labels <- as.data.frame(labels)

nrow(NISPUF_Test) #24897
nrow(NISPUF_Train) #100302

sum(is.na(NISPUF_Train)) #2898512
sum(!is.na(NISPUF_Train)) #7532896
#Divide...
#38.5% NA values in training set

sum(is.na(NISPUF_Test)) #815776
sum(!is.na(NISPUF_Test)) #1773512
#Divide... 
815776/1773512
#46% NA values in test set

#PDAT == 2 means that there was not adequate provider data -- these should be removed

Training_Set <- NISPUF_Train[which(NISPUF_Train$PDAT==1),]
Testing_Set <- NISPUF_Test[which(NISPUF_Test$PDAT==1),]

nrow(Testing_Set) #15059
nrow(Training_Set) #67514

sum(is.na(Training_Set)) #724215
sum(!is.na(Training_Set)) #6297241
#Divide...
724215/6297241
#11.5% NA values in training set (Significantly improved)

sum(is.na(Testing_Set)) #155576
sum(!is.na(Testing_Set)) #1410560
#Divide... 
155576/1410560
#11% NA values in test set (Also better)

############################################################################
#                     CREATE A PERMANENT R DATASET                         #
############################################################################

write.table(Training_Set, file = "TRAIN.csv", row.names=F, sep=",")
write.table(Testing_Set, file = "TEST.csv", row.names=F, sep=",")
write.table(Labels, file = "LABELS.csv", row.names=T, sep=",")

library(tidyverse)

TRAIN <- read.csv("TRAIN.csv",encoding = 'utf-8', stringsAsFactors = FALSE)
TEST <- read.csv("TEST.csv",encoding = 'utf-8', stringsAsFactors = FALSE)
LABELS <- read.csv("LABELS.csv",encoding = 'utf-8', stringsAsFactors = FALSE)

############################################################################
#                             MORE DATA PREP                               #
############################################################################

sum(TRAIN$AGEGRP==1)/(nrow(TRAIN))
#0.2883994 (about a third are under 24 months old)

sum(TEST$AGEGRP==1)/(nrow(TEST))
#0.2959028 (about a third are under 24 months old)

#Put data for all children over 24 months old into new dataframe
drops <- which(TRAIN$AGEGRP == 1)
TRAIN2 <- TRAIN[-drops,]

drops <- which(TEST$AGEGRP == 1)
TEST2 <- TEST[-drops,]

#Fraction of children without any record of first MMR vaccine
(sum(is.na(TRAIN2$DMMR1))/nrow(TRAIN2)) #0.06602419 (~7%)

(sum(is.na(TEST2$DMMR1))/nrow(TEST2)) #0.06017165 (~6%)

############################################################################
#                           CREATE FORMATS                                 #
############################################################################

AGEGRPlevels=c(1,2,3)
AGEGRPlabels=c("19 - 23 MONTHS", "24 - 29 MONTHS", "30 - 35 MONTHS")

LANGUAGElevels=c(1,2,3)
LANGUAGElabels=c("ENGLISH", "SPANISH", "OTHER")

YNDKRFlevels=c(1,2,77,99)
YNDKRFlabels=c("YES", "NO", "DON'T KNOW", "REFUSED")

SHOTCOUNlevels=c(77,88,99)
SHOTCOUNlabels=c("DON'T KNOW", "1+ BUT UNKNOWN NUMBER", "REFUSED")

SCUTDlevels=c(1,2,77,88,99)
SCUTDlabels=c("UTD / SC", "NOT UTD / SC", "DON'T KNOW", "UNKNOWN", "REFUSED")

HHNUMlevels=c(0,1,50,77,99)
HHNUMlabels=c("NONE", "AT LEAST ONE", "ALL", "DON'T KNOW", "REFUSED")

YNlevels=c(1,2)
YNlabels=c("YES", "NO")

SHOTCARDlevels=c(1,2)
SHOTCARDlabels=c("SHOTCARD", "NO SHOTCARD")

Ylevels=c(1)
Ylabels=c("YES")

CHILDNMlevels=c(1,2,3,77,99)
CHILDNMlabels=c("ONE", "TWO OR THREE", "FOUR OR MORE", "DON'T KNOW", "REFUSED")

CWIClevels=c(1,2,3,77,99)
CWIClabels=c("YES", "NO", "NEVER HEARD OF WIC", "DON'T KNOW", "REFUSED")

EDUC1_levels=c(1,2,3,4,77,99)
EDUC1_labels=c("< 12 YEARS", "12 YEARS", "> 12 YEARS, NON-COLLEGE GRAD", "COLLEGE GRAD", "DON'T KNOW", "REFUSED")

HISPlevels=c(1,2,3,4,5)
HISPlabels=c("HISPANIC", "NON-HISPANIC", "OTHER", "DON'T KNOW", "REFUSED")

MAGEGRPlevels=c(1,2,3,77,99)
MAGEGRPlabels=c("<= 19 YEARS", "20 - 29 YEARS", ">= 30 YEARS", "DON'T KNOW", "REFUSED")

MOBILlevels=c(1,2,77,99)
MOBILlabels=c("MOVED FROM DIFFERENT STATE", "DID NOT MOVE FROM DIFFERENT STATE", "DON'T KNOW", "REFUSED")

SEXlevels=c(1,2,77,99)
SEXlabels=c("MALE", "FEMALE", "DON'T KNOW", "REFUSED")

INCPOVlevels=c(1,2,3,4)
INCPOVlabels=c("ABOVE POVERTY, > $75K", "ABOVE POVERTY, <= $75K", "BELOW POVERTY", "UNKNOWN")

DISPlevels=c(1,10,11,2,3,4,5,6,7,8,9)
DISPlabels=c("COMPLETE PROVIDER INFO, NO PROBLEMS", "INCOMPLETE PROVIDER RESP, HH NOT EXACT", "INCOMPLETE PROVIDER RESP, HH WITHOUT SHOT CARD", "COMPLETE PROVIDER INFO, NO SHOT CARD", "COMPLETE PROVIDER INFO, POOR HISTORY",
             "COMPLETE PROVIDER INFO, POOR HIST/OTHER", "INCOMPLETE PROVIDER RESP, BUT 4:3:1:3:3 INDICATED", "INCOMPLETE PROVIDER RESP, INFO MATCHES", "INCOMPLETE PROVIDER RESP, HISTORY UNKNOWN", "INCOMPLETE PROVIDER RESP, 4:3:1:3:3 WITH HH",
             "INCOMPLETE PROVIDER RESP, MATCHES HH")

HASPDA2Flevels=c(1,2)
HASPDA2Flabels=c("CHILD HAS ADEQUATE PROVIDER DATA OR ZERO VACCINATIONS", "CHILD DOES NOT HAVE ADEQUATE PROVIDER DATA")

PROVIDlevels=c(1,2,3,4,5,6,7)
PROVIDlabels=c("ALL PUBLIC FACILITIES", "ALL HOSPITAL FACILITIES", "ALL PRIVATE FACILITIES", "ALL MILITARY/OTHER FACILITIES", "MIXED", "TYPE OF PROVIDER UNKNOWN", "ALL WIC CLINIC PROVIDERS")

REGISTRYlevels=c(1,2,3,4)
REGISTRYlabels=c("ALL PROVIDERS", "SOME BUT POSSIBLY OR DEFINITELY NOT ALL PROVIDERS", "NO PROVIDERS", "UNKNOWN/DON'T KNOW")

TYPElevels=c("","01","02","03","04","05","07","08","1L","1M","1N","20","21","22","30","31","32","33","43","44","60","70","71","72","73","74","BC","D3","DH","DK","FL","FM","FN","FO","H2","HA","HB","HG","HI","HM","HS","MA","MB","MM","MP","NC","OT","RB","RG",
             "RM","RO","TY","UN","VA","VM","VO","YF")
TYPElabels=c("MISSING", "DT", "DTP", "DTP-UNKNOWN", "DTAP", "DTP-HIB", "DTAP-HIB", "DTAP-HEPB-IPV", "H1N1 FLU-UNKNOWN", "H1N1 FLU SPRAY", "H1N1 FLU INJECTED", "OPV", "IPV", "POLIO-UNKNOWN", "MMR", "MEASLES ONLY", "MEASLES-MUMPS", "MEASLES-RUBELLA",
             "HEPB-HIB", "HIB ONLY-UNKNOWN", "HEPB ONLY", "PCV CONJUGATE-UNKNOWN", "PCV POLYSACCHARIDE", "PCV-UNKNOWN", "PCV CONJUGATE-7", "PCV CONJUGATE-13", "BCG (TUBERCULOSIS)", "DTAP-IPV-HIB", "DTP-HEPB", "DON'T KNOW", "SEASONAL FLU-UNKNOWN", "SEASONAL FLU SPRAY",
             "SEASONAL FLU INJECTED", "FOUR-IN-ONE", "HIB (SANOFI OR GLAXOSMITHKLINE)", "HEPA", "HEPB-UNKNOWN", "HIB (GLAXOSMITHKLINE)", "HIB-UNKNOWN", "HIB (MERCK)", "HIB (SANOFI)", "MALARIA", "MUMPS-RUBELLA", "MCV-UNKNOWN", "MUMPS", "NEVER CODABLE", "OTHER",
             "RUBELLA", "ROTARIX (GSK)", "ROTATEQ (MERCK)", "ROTAVIRUS-UNKNOWN", "TYPHOID", "UNCODABLE", "VARICELLA-UNKNOWN", "MMR-VARICELLA", "VARICELLA-ONLY", "YELLOW FEVER")

HEPBRTlevels=c(1,2)
HEPBRTlabels=c("AT LEAST ONE PROVIDER CHECKED GIVEN AT BIRTH", "NO PROVIDERS CHECKED GIVEN AT BIRTH")

HEPFLGlevels=c(1,2)
HEPFLGlabels=c("HEPB BIRTH SHOT DATE IMPUTED FROM SHOTCARD", "HEPB BIRTH SHOT DATE IMPUTED FROM DISTRIBUTION OF BIRTH DOSE DATES")

UTDlevels=c(0,1)
UTDlabels=c("NOT UTD", "UTD")

CENREGlevels=c(1,2,3,4)
CENREGlabels=c("NORTHEAST", "MIDWEST", "SOUTH", "WEST")

STATElevels=c(1,10,11,12,13,15,16,17,18,19,2,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,4,40,41,42,44,45,46,47,48,49,5,50,51,53,54,55,56,6,66,72,78,8,9)
STATElabels=c("ALABAMA", "DELAWARE", "DISTRICT OF COLUMBIA", "FLORIDA", "GEORGIA", "HAWAII", "IDAHO", "ILLINOIS", "INDIANA", "IOWA", "ALASKA", "KANSAS", "KENTUCKY", "LOUISIANA", "MAINE", "MARYLAND", "MASSACHUSETTS", "MICHIGAN", "MINNESOTA", "MISSISSIPPI",
              "MISSOURI", "MONTANA", "NEBRASKA", "NEVADA", "NEW HAMPSHIRE", "NEW JERSEY", "NEW MEXICO", "NEW YORK", "NORTH CAROLINA", "NORTH DAKOTA", "OHIO", "ARIZONA", "OKLAHOMA", "OREGON", "PENNSYLVANIA", "RHODE ISLAND", "SOUTH CAROLINA", "SOUTH DAKOTA", "TENNESSEE",
              "TEXAS", "UTAH", "ARKANSAS", "VERMONT", "VIRGINIA", "WASHINGTON", "WEST VIRGINIA", "WISCONSIN", "WYOMING", "CALIFORNIA", "GUAM", "PUERTO RICO", "U.S. VIRGIN ISLANDS", "COLORADO", "CONNECTICUT")
FLUUTDlevels=c(1,2,3)
FLUUTDlabels=c("VACCINATED", "NOT VACCINATED", "NOT ELIGIBLE")

RACE_PUFlevels=c(1,2,3)
RACE_PUFlabels=c("WHITE ONLY", "BLACK ONLY", "OTHER + MULTIPLE RACE")

AGECPOXRlevels=c(1,2,3,4)
AGECPOXRlabels=c("0 TO 6 MONTHS OLD", "7 TO 12 MONTHS OLD", "13 TO 18 MONTHS OLD", "19+ MONTHS OLD")

C1Rlevels=c(1,2,3,4,5,6,7,8)
C1Rlabels=c("1", "2", "3", "4", "5", "6", "7", "8+")

C5Rlevels=c(1,2,3,4,77,99)
C5Rlabels=c("MOTHER (STEP, FOSTER, ADOPTIVE) OR FEMALE GUARDIAN", "FATHER (STEP, FOSTER, ADOPTIVE) OR MALE GUARDIAN", "GRANDPARENT", "OTHER FAMILY MEMBER/FRIEND", "DON'T KNOW", "REFUSED")

INCQ298Alevels=c(10,11,12,13,14,3,4,5,6,7,77,8,9,99)
INCQ298Alabels=c("$35001 - $40000", "$40001 - $50000", "$50001 - $60000", "$60001 - $75000", "$75001+", "$0 - $7500", "$7501 - $10000", "$10001 - $17500", "$17501 - $20000", "$20001 - $25000", "DON'T KNOW", "$25001 - $30000", "$30001 - $35000", "REFUSED")

RACEETHKlevels=c(1,2,3,4)
RACEETHKlabels=c("HISPANIC", "NON-HISPANIC WHITE ONLY", "NON-HISPANIC BLACK ONLY", "NON-HISPANIC OTHER + MULTIPLE RACE")

D6Rlevels=c(0,1,2,3)
D6Rlabels=c("0", "1", "2", "3+")

FRSTBRNlevels=c(1,2,77,99)
FRSTBRNlabels=c("NO", "YES", "DON'T KNOW", "REFUSED")

CHARIDlevels=c( )
CHARIDlabels=c("MISSING")


TRAIN2$BF_FORMR08 <- as.numeric(TRAIN2$BF_FORMR08)
TEST2$BF_FORMR08 <- as.numeric(TEST2$BF_FORMR08)
TRAIN2$BF_FORMR08[is.na(TRAIN2$BF_FORMR08)] <- 888
TEST2$BF_FORMR08[is.na(TEST2$BF_FORMR08)] <- 888
TEST2$BF_FORMR08[TEST2$BF_FORMR08 != 888] <- NA
TRAIN2$BF_FORMR08[TRAIN2$BF_FORMR08 != 888] <- NA
TRAIN2$BF_FORMR08[is.na(TRAIN2$BF_FORMR08)] <- 0
TEST2$BF_FORMR08[is.na(TEST2$BF_FORMR08)] <- 0
BF_FORMR08levels=c(0,888)
BF_FORMR08labels=c("FED FORMULA", "NOT FED FORMULA")


RENTOWNlevels=c(1,2,3,77,99)
RENTOWNlabels=c("OWNED OR BEING BOUGHT", "RENTED", "OTHER ARRANGMENT", "DON'T KNOW", "REFUSED")

NUM_PHONlevels=c(1,2,3,4,77,99)
NUM_PHONlabels=c("ONE", "TWO", "THREE OR MORE", "NONE", "DON'T KNOW", "REFUSED")

INS_STATlevels=c(1,2,3)
INS_STATlabels=c("YES", "NO", "NOT ASCERTAINED")

MAR_PUF2_levels=c(1,2)
MAR_PUF2_labels=c("MARRIED", "NEVER MARRIED/WIDOWED/DIVORCED/SEPARATED/DECEASED")

UTDPCVBlevels=c(1,2,3)
UTDPCVBlabels=c("4+ PCV7 PLUS 1+ PCV13", "4+ PCV7, NO FOLLOWING PCV13, WITH TYPE OF ALL VACCINES (IF ANY) FOLLOWING THE 4 PCV7 KNOWN", "ALL OTHERS WITH ADEQUATE PROVIDER DATA")

SAMPFRAMElevels=c(1,2)
SAMPFRAMElabels=c("LANDLINE SAMPLE FRAME", "CELL-PHONE SAMPLE FRAME")

ESTIAP11Flevels=c(1,10,103,11,12,13,14,16,17,18,19,2,20,22,25,27,28,29,30,31,34,35,36,38,4,40,41,44,46,47,49,5,50,51,52,53,54,55,56,57,58,59,6,60,61,62,63,64,65,66,68,7,72,73,74,75,76,77,8,95)
ESTIAP11Flabels=c("CT", "NY-REST OF STATE", "MD-PRINCE GEORGE'S COUNTY", "NY-CITY OF NEW YORK", "DC", "DE", "MD-REST OF STATE", "PA-REST OF STATE", "PA-PHILADELPHIA COUNTY", "VA", "WV", "MA", "AL", "FL", "GA", "KY", "MS", "NC", "SC", "TN",
                  "IL-REST OF STATE", "IL-CITY OF CHICAGO", "IN", "MI", "ME", "MN", "OH", "WI", "AR", "LA", "NM", "NH", "OK", "TX-REST OF STATE", "TX-DALLAS COUNTY", "TX-EL PASO COUNTY", "TX-CITY OF HOUSTON", "TX-BEXAR COUNTY", "IA", "KS", "MO", "NE", "RI", "CO", "MT",
                  "ND", "SD", "UT", "WY", "AZ", "CA", "VT", "HI", "NV", "AK", "ID", "OR", "WA", "NJ", "US VIRGIN ISLANDS")

############################################################################
#                   ASSIGN FACTOR/NUMERIC VARIABLES                        #
############################################################################

# colnames(TRAIN2)

'%!in%' <- function(x,y)!('%in%'(x,y))

factors = c("AGEGRP","LANGUAGE", "HAD_CPOX", "CBF_01", "CWIC_02", "INTRP", "INS_1", "INS_2", "INS_3",
            "INS_3A", "INS_4_5", "INS_6", "INS_11", "D7", "SHOTCARD", "CHILDNM", "CWIC_01", "EDUC1",
            "I_HISP_K", "M_AGEGRP", "MOBIL_I", "SEX", "INCPOV1", "PDAT", "PROV_FAC",
            "REGISTRY", "VFC_ORDER", "HEP_BRTH", "CEN_REG", "STATE", "RACE_K", "C1R", "C5R", "INCQ298A",
            "RACEETHK", "D6R", "N_PRVR", "FRSTBRN", "SEQNUMC", "SEQNUMHH", "BF_FORMR08", "RENT_OWN",
            "NUM_PHONE", "NUM_CELLS_HH", "NUM_CELLS_PARENTS", "MARITAL2","YEAR")
# 
# TRAIN2[factors] <- lapply(TRAIN2[factors], factor)
# TEST2[factors] <- lapply(TEST2[factors], factor)

# #factors %!in% colnames(TRAIN2) #Used this for editing purposes
# 

numerics_nums <- which(colnames(TRAIN2) %!in% factors)
numerics <- colnames(TRAIN2[,numerics_nums])
TRAIN2[numerics] <- lapply(TRAIN2[numerics], as.numeric)
TEST2[numerics] <- lapply(TEST2[numerics], as.numeric)


TRAIN2$AGEGRP <- factor(TRAIN2$AGEGRP, levels=AGEGRPlevels, labels=AGEGRPlabels)
TRAIN2$LANGUAGE <- factor(TRAIN2$LANGUAGE, levels=LANGUAGElevels, labels=LANGUAGElabels)
TRAIN2$HAD_CPOX <- factor(TRAIN2$HAD_CPOX, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$CBF_01 <- factor(TRAIN2$CBF_01, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$CWIC_02 <- factor(TRAIN2$CWIC_02, levels=YNDKRFlevels, labels=YNDKRFlabels)

TRAIN2$INTRP <- factor(TRAIN2$INTRP, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$INS_1 <- factor(TRAIN2$INS_1, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$INS_2 <- factor(TRAIN2$INS_2, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$INS_3 <- factor(TRAIN2$INS_3, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$INS_3A <- factor(TRAIN2$INS_3A, levels=YNDKRFlevels, labels=YNDKRFlabels)

TRAIN2$INS_4_5 <- factor(TRAIN2$INS_4_5, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$INS_6 <- factor(TRAIN2$INS_6, levels=YNDKRFlevels, labels=YNDKRFlabels)
TRAIN2$INS_11 <- factor(TRAIN2$INS_11, levels=YNDKRFlevels, labels=YNDKRFlabels)

TRAIN2$D7 <- factor(TRAIN2$D7, levels=YNlevels, labels=YNlabels)
TRAIN2$SHOTCARD <- factor(TRAIN2$SHOTCARD, levels=SHOTCARDlevels, labels=SHOTCARDlabels)

TRAIN2$CHILDNM <- factor(TRAIN2$CHILDNM, levels=CHILDNMlevels, labels=CHILDNMlabels)
TRAIN2$CWIC_01 <- factor(TRAIN2$CWIC_01, levels=CWIClevels, labels=CWIClabels)
TRAIN2$EDUC1 <- factor(TRAIN2$EDUC1, levels=EDUC1_levels, labels=EDUC1_labels)
TRAIN2$I_HISP_K <- factor(TRAIN2$I_HISP_K, levels=HISPlevels, labels=HISPlabels)

TRAIN2$M_AGEGRP <- factor(TRAIN2$M_AGEGRP, levels=MAGEGRPlevels, labels=MAGEGRPlabels)
TRAIN2$MOBIL_I <- factor(TRAIN2$MOBIL_I, levels=MOBILlevels, labels=MOBILlabels)
TRAIN2$SEX <- factor(TRAIN2$SEX, levels=SEXlevels, labels=SEXlabels)
TRAIN2$INCPOV1 <- factor(TRAIN2$INCPOV1, levels=INCPOVlevels, labels=INCPOVlabels)

TRAIN2$PDAT <- factor(TRAIN2$PDAT, levels=HASPDA2Flevels, labels=HASPDA2Flabels)
TRAIN2$PROV_FAC <- factor(TRAIN2$PROV_FAC, levels=PROVIDlevels, labels=PROVIDlabels)
TRAIN2$REGISTRY <- factor(TRAIN2$REGISTRY, levels=REGISTRYlevels, labels=REGISTRYlabels)
TRAIN2$VFC_ORDER <- factor(TRAIN2$VFC_ORDER, levels=REGISTRYlevels, labels=REGISTRYlabels)

TRAIN2$HEP_BRTH <- factor(TRAIN2$HEP_BRTH, levels=HEPBRTlevels, labels=HEPBRTlabels)

TRAIN2$CEN_REG <- factor(TRAIN2$CEN_REG, levels=CENREGlevels, labels=CENREGlabels)
TRAIN2$STATE <- factor(TRAIN2$STATE, levels=STATElevels, labels=STATElabels)

TRAIN2$RACE_K <- factor(TRAIN2$RACE_K, levels=RACE_PUFlevels, labels=RACE_PUFlabels)

TRAIN2$C1R <- factor(TRAIN2$C1R, levels=C1Rlevels, labels=C1Rlabels)
TRAIN2$C5R <- factor(TRAIN2$C5R, levels=C5Rlevels, labels=C5Rlabels)

TRAIN2$INCQ298A <- factor(TRAIN2$INCQ298A, levels=INCQ298Alevels, labels=INCQ298Alabels)
TRAIN2$RACEETHK <- factor(TRAIN2$RACEETHK, levels=RACEETHKlevels, labels=RACEETHKlabels)
TRAIN2$D6R <- factor(TRAIN2$D6R, levels=D6Rlevels, labels=D6Rlabels)
TRAIN2$N_PRVR <- factor(TRAIN2$N_PRVR, levels=D6Rlevels, labels=D6Rlabels)
TRAIN2$FRSTBRN <- factor(TRAIN2$FRSTBRN, levels=FRSTBRNlevels, labels=FRSTBRNlabels)

TRAIN2$SEQNUMC <- as.factor(TRAIN2$SEQNUMC)
TRAIN2$SEQNUMHH <- as.factor(TRAIN2$SEQNUMHH)
TRAIN2$BF_FORMR08 <- factor(TRAIN2$BF_FORMR08, levels=BF_FORMR08levels, labels=BF_FORMR08labels)
TRAIN2$RENT_OWN <- factor(TRAIN2$RENT_OWN, levels=RENTOWNlevels, labels=RENTOWNlabels)
TRAIN2$NUM_PHONE <- factor(TRAIN2$NUM_PHONE, levels=NUM_PHONlevels, labels=NUM_PHONlabels)

TRAIN2$NUM_CELLS_HH <- factor(TRAIN2$NUM_CELLS_HH, levels=NUM_PHONlevels, labels=NUM_PHONlabels)
TRAIN2$NUM_CELLS_PARENTS <- factor(TRAIN2$NUM_CELLS_PARENTS, levels=NUM_PHONlevels, labels=NUM_PHONlabels)
TRAIN2$MARITAL2 <- factor(TRAIN2$MARITAL2, levels=MAR_PUF2_levels, labels=MAR_PUF2_labels)

TRAIN2$YEAR <- as.factor(TRAIN2$YEAR)

## REPEAT FACTORS WITH TEST SET...

TEST2$AGEGRP <- factor(TEST2$AGEGRP, levels=AGEGRPlevels, labels=AGEGRPlabels)
TEST2$LANGUAGE <- factor(TEST2$LANGUAGE, levels=LANGUAGElevels, labels=LANGUAGElabels)
TEST2$HAD_CPOX <- factor(TEST2$HAD_CPOX, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$CBF_01 <- factor(TEST2$CBF_01, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$CWIC_02 <- factor(TEST2$CWIC_02, levels=YNDKRFlevels, labels=YNDKRFlabels)

TEST2$INTRP <- factor(TEST2$INTRP, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$INS_1 <- factor(TEST2$INS_1, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$INS_2 <- factor(TEST2$INS_2, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$INS_3 <- factor(TEST2$INS_3, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$INS_3A <- factor(TEST2$INS_3A, levels=YNDKRFlevels, labels=YNDKRFlabels)

TEST2$INS_4_5 <- factor(TEST2$INS_4_5, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$INS_6 <- factor(TEST2$INS_6, levels=YNDKRFlevels, labels=YNDKRFlabels)
TEST2$INS_11 <- factor(TEST2$INS_11, levels=YNDKRFlevels, labels=YNDKRFlabels)

TEST2$D7 <- factor(TEST2$D7, levels=YNlevels, labels=YNlabels)
TEST2$SHOTCARD <- factor(TEST2$SHOTCARD, levels=SHOTCARDlevels, labels=SHOTCARDlabels)

TEST2$CHILDNM <- factor(TEST2$CHILDNM, levels=CHILDNMlevels, labels=CHILDNMlabels)
TEST2$CWIC_01 <- factor(TEST2$CWIC_01, levels=CWIClevels, labels=CWIClabels)
TEST2$EDUC1 <- factor(TEST2$EDUC1, levels=EDUC1_levels, labels=EDUC1_labels)
TEST2$I_HISP_K <- factor(TEST2$I_HISP_K, levels=HISPlevels, labels=HISPlabels)

TEST2$M_AGEGRP <- factor(TEST2$M_AGEGRP, levels=MAGEGRPlevels, labels=MAGEGRPlabels)
TEST2$MOBIL_I <- factor(TEST2$MOBIL_I, levels=MOBILlevels, labels=MOBILlabels)
TEST2$SEX <- factor(TEST2$SEX, levels=SEXlevels, labels=SEXlabels)
TEST2$INCPOV1 <- factor(TEST2$INCPOV1, levels=INCPOVlevels, labels=INCPOVlabels)

TEST2$PDAT <- factor(TEST2$PDAT, levels=HASPDA2Flevels, labels=HASPDA2Flabels)
TEST2$PROV_FAC <- factor(TEST2$PROV_FAC, levels=PROVIDlevels, labels=PROVIDlabels)
TEST2$REGISTRY <- factor(TEST2$REGISTRY, levels=REGISTRYlevels, labels=REGISTRYlabels)
TEST2$VFC_ORDER <- factor(TEST2$VFC_ORDER, levels=REGISTRYlevels, labels=REGISTRYlabels)

TEST2$HEP_BRTH <- factor(TEST2$HEP_BRTH, levels=HEPBRTlevels, labels=HEPBRTlabels)

TEST2$CEN_REG <- factor(TEST2$CEN_REG, levels=CENREGlevels, labels=CENREGlabels)
TEST2$STATE <- factor(TEST2$STATE, levels=STATElevels, labels=STATElabels)

TEST2$RACE_K <- factor(TEST2$RACE_K, levels=RACE_PUFlevels, labels=RACE_PUFlabels)

TEST2$C1R <- factor(TEST2$C1R, levels=C1Rlevels, labels=C1Rlabels)
TEST2$C5R <- factor(TEST2$C5R, levels=C5Rlevels, labels=C5Rlabels)

TEST2$INCQ298A <- factor(TEST2$INCQ298A, levels=INCQ298Alevels, labels=INCQ298Alabels)
TEST2$RACEETHK <- factor(TEST2$RACEETHK, levels=RACEETHKlevels, labels=RACEETHKlabels)
TEST2$D6R <- factor(TEST2$D6R, levels=D6Rlevels, labels=D6Rlabels)
TEST2$N_PRVR <- factor(TEST2$N_PRVR, levels=D6Rlevels, labels=D6Rlabels)
TEST2$FRSTBRN <- factor(TEST2$FRSTBRN, levels=FRSTBRNlevels, labels=FRSTBRNlabels)

TEST2$SEQNUMC <- as.factor(TEST2$SEQNUMC)
TEST2$SEQNUMHH <- as.factor(TEST2$SEQNUMHH)
TEST2$BF_FORMR08 <- factor(TEST2$BF_FORMR08, levels=BF_FORMR08levels, labels=BF_FORMR08labels)
TEST2$RENT_OWN <- factor(TEST2$RENT_OWN, levels=RENTOWNlevels, labels=RENTOWNlabels)
TEST2$NUM_PHONE <- factor(TEST2$NUM_PHONE, levels=NUM_PHONlevels, labels=NUM_PHONlabels)

TEST2$NUM_CELLS_HH <- factor(TEST2$NUM_CELLS_HH, levels=NUM_PHONlevels, labels=NUM_PHONlabels)
TEST2$NUM_CELLS_PARENTS <- factor(TEST2$NUM_CELLS_PARENTS, levels=NUM_PHONlevels, labels=NUM_PHONlabels)
TEST2$MARITAL2 <- factor(TEST2$MARITAL2, levels=MAR_PUF2_levels, labels=MAR_PUF2_labels)

TEST2$YEAR <- as.factor(TEST2$YEAR)

############################################################################
#                                IMPUTE                                    #
############################################################################

#MODE FUNCTION
getmode <- function(v) {
  uniqv <- unique(v)
  v <- v[!is.na(v)]
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

rownames(TRAIN2) <- NULL
rownames(TEST2) <- NULL

#for loop to impute mode for categorical and median for numerical
for (i in 1:ncol(TRAIN2)){
  if (class(TRAIN2[,i]) == 'factor'){
    TRAIN2[which(is.na(TRAIN2[,i])),i] <- getmode(TRAIN2[,i])
  }
}

for (i in 1:ncol(TEST2)){
  if (class(TEST2[,i]) == 'factor'){
    TEST2[which(is.na(TEST2[,i])),i] <- getmode(TEST2[,i])
  }
}

TRAIN2[which(is.na(TRAIN2[,8])),8] <- median(TRAIN2[,8],na.rm=TRUE)
TRAIN2[which(is.na(TRAIN2[,9])),9] <- median(TRAIN2[,9],na.rm=TRUE)
TRAIN2[which(is.na(TRAIN2[,21])),21] <- median(TRAIN2[,21],na.rm=TRUE)

TEST2[which(is.na(TEST2[,8])),8] <- median(TEST2[,8],na.rm=TRUE)
TEST2[which(is.na(TEST2[,9])),9] <- median(TEST2[,9],na.rm=TRUE)
TEST2[which(is.na(TEST2[,21])),21] <- median(TEST2[,21],na.rm=TRUE)

############################################################################
#                           CREATE MMR DATAFRAME                           #
############################################################################

#Create a data frame specifically for examining the MMR vaccine (remove ages/numbers
#for all other vaccines, as we don't want to use these as predictors)
colnames(TRAIN2)
TRAIN_MMR <- TRAIN2[,c(1:43,59,86,98:104)]

colnames(TEST2)
TEST_MMR <- TEST2[,c(1:43,59,86,98:104)]

TRAIN_MMR$Missing_MMR <- as.numeric(I(is.na(TRAIN_MMR$DMMR1)))
TEST_MMR$Missing_MMR <- as.numeric(I(is.na(TEST_MMR$DMMR1)))

############################################################################
#                      VACCINE RECEIPT DATAFRAME                           #
############################################################################

drops = c("DMMR1","MMR1_AGE")

TRAIN_MMR_RECEIPT <- TRAIN_MMR[ , !(names(TRAIN_MMR) %in% drops)]
TEST_MMR_RECEIPT <- TEST_MMR[ , !(names(TEST_MMR) %in% drops)]

sum(is.na(TRAIN_MMR_RECEIPT)) #No NAs
sum(is.na(TEST_MMR_RECEIPT)) #No NAs

############################################################################
#                      AGE PREDICTION DATAFRAME                            #
############################################################################

TRAIN_MMR_AGE<- subset(TRAIN_MMR, TRAIN_MMR$Missing_MMR == 0)
TEST_MMR_AGE <- subset(TEST_MMR, TEST_MMR$Missing_MMR == 0)

sum(is.na(TRAIN_MMR_AGE)) #No NAs
sum(is.na(TEST_MMR_AGE)) #No NAs

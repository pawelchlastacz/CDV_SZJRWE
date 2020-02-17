
library(tidyr)
library(dplyr)
library(ggplot2)

tab<-read.csv(file="C:/Users/Chlastek/Desktop/danemoje.csv",sep=";",dec=",",encoding = "UTF-8")


names(tab)

names(tab)[3:16]<-paste0("Mleko3.5_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[17:30]<-paste0("Mleko2.5_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[31:44]<-paste0("Ser_twarogowy_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[45:58]<-paste0("Ser_dojrzewajacy_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[59:72]<-paste0("Jajka_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[73:86]<-paste0("Jablka_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[87:100]<-paste0("Ziemniaki_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[101:114]<-paste0("Koszulka_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[115:128]<-paste0("Woda_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))
names(tab)[129:142]<-paste0("Wegiel_kamienny_",c("Styczen_2006","Styczen_2007","Styczen_2008","Styczen_2009","Styczen_2010","Styczen_2011","Styczen_2012","Styczen_2013","Styczen_2014","Styczen_2015","Styczen_2016","Styczen_2017","Styczen_2018","Styczen_2019"))

names(tab)[143:156]<-paste0("Mleko3.5_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[157:170]<-paste0("Mleko2.5_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[171:184]<-paste0("Ser_twarogowy_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[185:198]<-paste0("Ser_dojrzewajacy_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[199:212]<-paste0("Jajka_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[213:226]<-paste0("Jablka_,",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[227:240]<-paste0("Ziemniaki_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[241:254]<-paste0("Kioszulka_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[255:268]<-paste0("Woda_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))
names(tab)[269:282]<-paste0("Wegiel_kamienny_",c("Luty_2006","Luty_2007","Luty_2008","Luty_2009","Luty_2010","Luty_2011","Luty_2012","Luty_2013","Luty_2014","Luty_2015","Luty_2016","Luty_2017","Luty_2018","Luty_2019"))

names(tab)[283:296]<-paste0("Mleko3.5_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[297:310]<-paste0("Mleko2.5_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[311:324]<-paste0("Ser_twarogowy_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[325:338]<-paste0("Ser_dojrzewajacy_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[339:352]<-paste0("Jajka_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[353:366]<-paste0("Jablka_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[367:380]<-paste0("Ziemniaki_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[381:394]<-paste0("Koszulka_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[395:408]<-paste0("Woda_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))
names(tab)[409:422]<-paste0("Wegiel_kamienny_",c("Marzec_2006","Marzec_2007","Marzec_2008","Marzec_2009","Marzec_2010","Marzec_2011","Marzec_2012","Marzec_2013","Marzec_2014","Marzec_2015","Marzec_2016","Marzec_2017","Marzec_2018","Marzec_2019"))

names(tab)[423:436]<-paste0("Mleko3.5_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[437:450]<-paste0("Mleko2.5_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[451:464]<-paste0("Ser_twarogowy_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[465:478]<-paste0("Ser_dojrzewajacy_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[479:492]<-paste0("Jajka_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[493:506]<-paste0("Jablka_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[507:520]<-paste0("Ziemniaki_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[521:534]<-paste0("Koszulka_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[535:548]<-paste0("Woda_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))
names(tab)[549:562]<-paste0("Wegiel_kamienny_",c("Kwiecien_2006","Kwiecien_2007","Kwiecien_2008","Kwiecien_2009","Kwiecien_2010","Kwiecien_2011","Kwiecien_2012","Kwiecien_2013","Kwiecien_2014","Kwiecien_2015","Kwiecien_2016","Kwiecien_2017","Kwiecien_2018","Kwiecien_2019"))

names(tab)[563:576]<-paste0("Mleko3.5_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[577:590]<-paste0("Mleko2.5_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[591:604]<-paste0("Ser_twarogowy_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[605:618]<-paste0("Ser_dojrzewajacy_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[619:632]<-paste0("Jajka_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[633:646]<-paste0("Jablka_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[647:660]<-paste0("Ziemniaki_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[661:674]<-paste0("Koszulka_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[675:688]<-paste0("Woda_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))
names(tab)[689:702]<-paste0("Wegiel_kamienny_",c("Maj_2006","Maj_2007","Maj_2008","Maj_2009","Maj_2010","Maj_2011","Maj_2012","Maj_2013","Maj_2014","Maj_2015","Maj_2016","Maj_2017","Maj_2018","Maj_2019"))

names(tab)[703:716]<-paste0("Mleko3.5_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[717:730]<-paste0("Mleko2.5_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[731:744]<-paste0("Ser_twarogowy_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[745:758]<-paste0("Ser_dojrzewajacy_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[759:772]<-paste0("Jajka_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[773:786]<-paste0("Jablka_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[787:800]<-paste0("Ziemniaki_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[801:814]<-paste0("Koszulka_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[815:828]<-paste0("Woda_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
names(tab)[829:842]<-paste0("Wegiel_kamienny_",c("Czerwiec_2006","Czerwiec_2007","Czerwiec_2008","Czerwiec_2009","Czerwiec_2010","Czerwiec_2011","Czerwiec_2012","Czerwiec_2013","Czerwiec_2014","Czerwiec_2015","Czerwiec_2016","Czerwiec_2017","Czerwiec_2018","Czerwiec_2019"))
#i tak dalej, i tak dalej... 


#wykresy dla miesiêcy roku:

#np.2018:

ggplot(tab,aes(x = Nazwa,y = Mleko3.5_Styczen_2018)) +geom_bar(stat="identity", color="red", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Mleko2.5_Styczen_2018)) +geom_bar(stat="identity", color="green", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ser_twarogowy_Styczen_2018)) +geom_bar(stat="identity", color="yellow",  width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ser_dojrzewajacy_Styczen_2018)) +geom_bar(stat="identity", color="purple",  width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1))

ggplot(tab,aes(x = Nazwa,y = Jajka_Styczen_2018)) +geom_bar(stat="identity", color="orange", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Jablka_Styczen_2018)) +geom_bar(stat="identity", color="blue", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ziemniaki_Styczen_2018)) +geom_bar(stat="identity", color="pink", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Koszulka_Styczen_2018)) +geom_bar(stat="identity", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Woda_Styczen_2018)) +geom_bar(stat="identity", , color="grey", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Wegiel_kamienny_Styczen_2018)) +geom_bar(stat="identity", color="brown", width = 0.3)+       
  theme(text = element_text(size=10,),
        axis.text.x = element_text(angle=45, hjust=1)) 


#np.2012
ggplot(tab,aes(x = Nazwa,y = Mleko3.5_Styczen_2012)) +geom_bar(stat="identity", color="red", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Mleko2.5_Styczen_2012)) +geom_bar(stat="identity", color="green", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ser_twarogowy_Styczen_2012)) +geom_bar(stat="identity", color="yellow",  width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ser_dojrzewajacy_Styczen_2012)) +geom_bar(stat="identity", color="purple",  width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1))

ggplot(tab,aes(x = Nazwa,y = Jajka_Styczen_2012)) +geom_bar(stat="identity", color="orange", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Jablka_Styczen_2012)) +geom_bar(stat="identity", color="blue", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ziemniaki_Styczen_2012)) +geom_bar(stat="identity", color="pink", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Koszulka_Styczen_2012)) +geom_bar(stat="identity", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Woda_Styczen_2012)) +geom_bar(stat="identity", , color="grey", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Wegiel_kamienny_Styczen_2012)) +geom_bar(stat="identity", color="brown", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 


#np.2006
ggplot(tab,aes(x = Nazwa,y = Mleko3.5_Styczen_2006)) +geom_bar(stat="identity", color="red", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Mleko2.5_Styczen_2006)) +geom_bar(stat="identity", color="green", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ser_twarogowy_Styczen_2006)) +geom_bar(stat="identity", color="yellow",  width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ser_dojrzewajacy_Styczen_2006)) +geom_bar(stat="identity", color="purple",  width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1))

ggplot(tab,aes(x = Nazwa,y = Jajka_Styczen_2006)) +geom_bar(stat="identity", color="orange", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Jablka_Styczen_2006)) +geom_bar(stat="identity", color="blue", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Ziemniaki_Styczen_2006)) +geom_bar(stat="identity", color="pink", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Koszulka_Styczen_2006)) +geom_bar(stat="identity", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Woda_Styczen_2006)) +geom_bar(stat="identity", , color="grey", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

ggplot(tab,aes(x = Nazwa,y = Wegiel_kamienny_Styczen_2006)) +geom_bar(stat="identity", color="brown", width = 0.3)+       
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=45, hjust=1)) 

#Ceny œrednie z danego miesi¹ca odchylenia standardowe z miesi¹ca, np. 

sr_Ziemniaki<- tab %>%
  summarise("2019" = mean(Ziemniaki_Styczen_2019),
            "2018" = mean(Ziemniaki_Styczen_2018),
            "2017" = mean(Ziemniaki_Styczen_2017),
            "2016" = mean(Ziemniaki_Styczen_2016),
            "2015" = mean(Ziemniaki_Styczen_2015),
            "2014" = mean(Ziemniaki_Styczen_2014),
            "2013" = mean(Ziemniaki_Styczen_2013),
            "2012" = mean(Ziemniaki_Styczen_2012),
            "2011" = mean(Ziemniaki_Styczen_2011),
            "2010" = mean(Ziemniaki_Styczen_2010),
            "2009" = mean(Ziemniaki_Styczen_2009),
            "2008" = mean(Ziemniaki_Styczen_2008),
            "2007" = mean(Ziemniaki_Styczen_2007),
            "2006" = mean(Ziemniaki_Styczen_2006))


new1<-gather(sr_Ziemniaki, œrednia_Ziemniaki_Styczen, cena)
View(new)

ggplot(new1,aes(x = œrednia_Ziemniaki_Styczen,y =cena)) +geom_bar(stat="identity", width = 0.4)   


sd_Mleko3.5<- tab %>%
  summarise("2019" = sd(Mleko3.5_Styczen_2019),
            "2018" = sd(Mleko3.5_Styczen_2018),
            "2017" = sd(Mleko3.5_Styczen_2017),
            "2016" = sd(Mleko3.5_Styczen_2016),
            "2015" = sd(Mleko3.5_Styczen_2015),
            "2014" = sd(Mleko3.5_Styczen_2014),
            "2013" = sd(Mleko3.5_Styczen_2013),
            "2012" = sd(Mleko3.5_Styczen_2012),
            "2011" = sd(Mleko3.5_Styczen_2011),
            "2010" = sd(Mleko3.5_Styczen_2010),
            "2009" = sd(Mleko3.5_Styczen_2009),
            "2008" = sd(Mleko3.5_Styczen_2008),
            "2007" = sd(Mleko3.5_Styczen_2007),
            "2006" = sd(Mleko3.5_Styczen_2006))


new2<-gather(sd_Mleko3.5, odchylenie_standardowe_Mleko3.5_Styczen, cena)
View(new2)


ggplot(new2,aes(x = odchylenie_standardowe_Mleko3.5_Styczen,y =cena)) +geom_bar(stat="identity", color="red", width = 0.4)      


sr_Jajka<- tab %>%
  summarise("2019" = mean(Jajka_Styczen_2019),
            "2018" = mean(Jajka_Styczen_2018),
            "2017" = mean(Jajka_Styczen_2017),
            "2016" = mean(Jajka_Styczen_2016),
            "2015" = mean(Jajka_Styczen_2015),
            "2014" = mean(Jajka_Styczen_2014),
            "2013" = mean(Jajka_Styczen_2013),
            "2012" = mean(Jajka_Styczen_2012),
            "2011" = mean(Jajka_Styczen_2011),
            "2010" = mean(Jajka_Styczen_2010),
            "2009" = mean(Jajka_Styczen_2009),
            "2008" = mean(Jajka_Styczen_2008),
            "2007" = mean(Jajka_Styczen_2007),
            "2006" = mean(Jajka_Styczen_2006))


new_3<-gather(sr_Jajka, œrednia_Jajka_Styczen, cena)
View(new_3)



sd_Jablka<- tab %>%
  summarise("2019" = sd(Jablka_Styczen_2019),
            "2018" = sd(Jablka_Styczen_2018),
            "2017" = sd(Jablka_Styczen_2017),
            "2016" = sd(Jablka_Styczen_2016),
            "2015" = sd(Jablka_Styczen_2015),
            "2014" = sd(Jablka_Styczen_2014),
            "2013" = sd(Jablka_Styczen_2013),
            "2012" = sd(Jablka_Styczen_2012),
            "2011" = sd(Jablka_Styczen_2011),
            "2010" = sd(Jablka_Styczen_2010),
            "2009" = sd(Jablka_Styczen_2009),
            "2008" = sd(Jablka_Styczen_2008),
            "2007" = sd(Jablka_Styczen_2007),
            "2006" = sd(Jablka_Styczen_2006))


new_Jablka1<-gather(sd_Jablka, rok,odchylenie_standardowe_Jablka_Styczen )
View(new_Jablka1)


ggplot(new_Jablka1,aes(x = rok,y =odchylenie_standardowe_Jablka_Styczen)) +geom_bar(stat="identity", width = 0.7)




sr_tow<- tab %>%
  summarise("Mleko3.5" = mean(Mleko3.5_Styczen_2019),
            "Mleko2.5" = mean(Mleko2.5_Styczen_2019),
            "Ser_twarogowy" = mean(Ser_twarogowy_Styczen_2019),
            "Ser_dojrzewajacy" = mean(Ser_dojrzewajacy_Styczen_2019),
            "Jajka" = mean(Jajka_Styczen_2019),
            "Jablka" = mean(Jablka_Styczen_2019),
            "Ziemniaki" = mean(Ziemniaki_Styczen_2019),
            "Koszulka" = mean(Koszulka_Styczen_2019),
            "Woda" = mean(Woda_Styczen_2019),
            "Wegiel_kamienny" = mean(Wegiel_kamienny_Styczen_2019))

new_tow<-gather(sr_tow,œrednia_Towary_Styczen_2019, cena)

View(new_tow)



ggplot(new_tow,aes(x = œrednia_Towary_Styczen_2019,y =cena)) +geom_bar(stat="identity", width = 0.5)   

sd_tow<- tab %>%
  summarise("Mleko3.5" = sd(Mleko3.5_Styczen_2019),
            "Mleko2.5" = sd(Mleko2.5_Styczen_2019),
            "Ser_twarogowy" = sd(Ser_twarogowy_Styczen_2019),
            "Ser_dojrzewajacy" = sd(Ser_dojrzewajacy_Styczen_2019),
            "Jajka" = sd(Jajka_Styczen_2019),
            "Jablka" = sd(Jablka_Styczen_2019),
            "Ziemniaki" = sd(Ziemniaki_Styczen_2019),
            "Koszulka" = sd(Koszulka_Styczen_2019),
            "Woda" = sd(Woda_Styczen_2019),
            "Wegiel_kamienny" = sd(Wegiel_kamienny_Styczen_2019))


new_tow1<-gather(sd_tow, rok,odchylenie_standardowe_Towary_Styczen)
View(new_tow1)


ggplot(new_tow1,aes(x = rok,y =odchylenie_standardowe_Towary_Styczen)) +geom_bar(stat="identity", width = 0.5)

sd_tow<- tab %>%
  summarise("Mleko3.5" = sd(Mleko3.5_Luty_2019),
            "Mleko2.5" = sd(Mleko2.5_Luty_2019),
            "Ser_twarogowy" = sd(Ser_twarogowy_Luty_2019),
            "Ser_dojrzewajacy" = sd(Ser_dojrzewajacy_Luty_2019),
            "Jajka" = sd(Luty_2019),
            "Jablka" = sd(Luty_2019),
            "Ziemniaki" = sd(Luty_2019),
            "Koszulka" = sd(Luty_2019),
            "Woda" = sd(Luty_2019),
            "Wegiel_kamienny" = sd(Luty_2019))


new_tow2<-gather(sd_tow, rok,odchylenie_standardowe_Towary_Luty)
View(new_tow2)


ggplot(new_tow2,aes(x = rok,y =odchylenie_standardowe_Towary_Luty)) +geom_bar(stat="identity", width = 0.5)



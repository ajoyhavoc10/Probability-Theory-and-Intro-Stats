#name
print("Module 1")

#import dataset
Lungtumor<- read.csv("C:\\Users\\AJOY\\Downloads\\LungTumorMF-P2.csv")
Lungtumor

#remove column A
Lungtumor = subset(Lungtumor, select = -c(A) )
Lungtumor

#remove row no 23
Lungtumor <- Lungtumor[-c(23),] 
Lungtumor

#changed column names 
colnames(Lungtumor) <- c('No.of Checkups','Age','Gender','Chemo Therapy',
                         'Radio Therapy', 'Smoking','Loss of Appetite') 
Lungtumor

#filter only male patients 
filter(Lungtumor, Gender == 'male')

#frequency of gender
freq_gender <- table(Lungtumor$Gender) 
freq_gender

#freq of smoking
freq_smoking <- table(Lungtumor$Smoking) 
freq_smoking

#freq of age
freq_age<-table(Lungtumor$Age)
freq_age

#barplot for gender frequency
barplot(freq_gender, ylim=c(0,400), xlab = "Gender" , ylab = "Frequency",
main = "Gender Frequency",cex.names=1, col = "light green")

#barplot for smoking freq
barplot(freq_smoking, ylim=c(0,800), xlab = "Smoking" , ylab = "Frequency",
main = "Smoking Frequency",cex.names=1, col = "red")

#barplot for age freq
barplot(freq_age, ylim=c(0,100), xlab = "Age" , ylab = "Frequency",
main = "Age Frequency",cex.names=1, col = "yellow")

#proportion of gender
freq_gender_prob <- freq_gender / sum(freq_gender)
freq_gender_prob

#proportion of age
freq_age_prob <- freq_age / sum(freq_age) 
freq_age_prob

#proportion of smoking
freq_smoking_prob <- freq_smoking / sum(freq_smoking) 
freq_smoking_prob

#histograph of gender distribution
hist(freq_gender,
main = "Gender Distribution" ,
xlab = "Gender",
ylab = "Frequency",
ylim = c(0,3),
col = "cadetblue",
col.main = "cadetblue")


#histograph of age distribution
hist(freq_age,
main = "Age Distribution" ,
xlab = "Age (yrs)",
ylab = "Frequency",
xlim = c(0,50),
ylim = c(0,30),
col = "cadetblue",
col.main = "cadetblue")

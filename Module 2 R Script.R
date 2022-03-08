#name 
print("Module 2")

#import dataset
students<-read.csv("C:\\Users\\AJOY\\Downloads\\Student Performance new.csv")

#mean,median,sd,min,max
psych::describe(students)

#scatterplot for math and reading
plot(x = Math,y = Read,
xlab = "Math score",
ylab = "Reading score",
xlim = c(0,1),
ylim = c(0,1),
main = "MATH SCORE VS READING SCORE",pch=16)
abline(lm(Math~Read, data = students))

#scatterplot for math and writing
plot(x =Math,y = Write,
xlab = "Math score",
ylab = "Writing score",
xlim = c(0,1),
ylim = c(0,1),
main = "MATH SCORE VS WRITING SCORE",pch=16)
abline(lm(Math~Write, data = students))

#jitterplot for math and reading 
ggplot(students, aes(x = Math, y = Read)) +
geom_jitter()

#jitterplot for math and writing
ggplot(students, aes(x = Math, y = Write)) +
geom_jitter()

#boxplot for math and read
boxplot(Math~Read,data=students, main="MATH PERCENTAGE VS READING PERCENTAGE",
xlab="Math Percentage", ylab="Reading Percentage")

#boxplot for math and witing
boxplot(Math~Write,data=students, main="MATH PERCENTAGE VS WRITING PERCENTAGE",
xlab="Math Percentage", ylab="Writing Percentage")

#using par function
par( mfrow= c(2,2) )
#scatterplot for math and reading
plot(x = Math,y = Read,
     xlab = "Math score",
     ylab = "Reading score",
     xlim = c(0,1),
     ylim = c(0,1),
     main = "MATH SCORE VS READING SCORE",pch=16)
abline(lm(Math~Read, data = students))

#scatterplot for math and writing
plot(x =Math,y = Write,
     xlab = "Math score",
     ylab = "Writing score",
     xlim = c(0,1),
     ylim = c(0,1),
     main = "MATH SCORE VS WRITING SCORE",pch=16)
abline(lm(Math~Write, data = students))


#boxplot for math and read
boxplot(Math~Read,data=students, main="MATH PERCENTAGE VS READING PERCENTAGE",
        xlab="Math Percentage", ylab="Reading Percentage")

#boxplot for math and witing
boxplot(Math~Write,data=students, main="MATH PERCENTAGE VS WRITING PERCENTAGE",
        xlab="Math Percentage", ylab="Writing Percentage")




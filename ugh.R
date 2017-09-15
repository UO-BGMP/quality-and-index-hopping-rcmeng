getwd()
setwd("C:/Users/Ryan1/Documents/FinalAssignment")
test1 <- read.table('test.txt')
test2 <- read.table('test1.txt')
test3 <- read.table('test2.txt')
test4 <- read.table('test3.txt')

test1 <- cbind(rownames(test1), test1)
rownames(test1) <- NULL
colnames(test1) <- c("V1","V2")

test2 <- cbind(rownames(test2), test2)
rownames(test2) <- NULL
colnames(test2) <- c("V1","V2")

test3 <- cbind(rownames(test3), test3)
rownames(test3) <- NULL
colnames(test3) <- c("V1","V2")

test4 <- cbind(rownames(test4), test4)
rownames(test4) <- NULL
colnames(test4) <- c("V1","V2")

test5 <- seq(1, 101, by=1)
test6 <- seq(1, 8, by=1)

plot(test1$V2~test5)
plot(test2[1:8,]$V2~test6)
plot(test3[1:8,]$V2~test6)
plot(test4$V2~test5)

test20 <- read.table('test20.txt', sep = ':')
test21 <- read.table('test21.txt', sep = ':')
test22 <- read.table('test22.txt', sep = ':')
test23 <- read.table('test23.txt', sep = ':')

plot(log(test20$V2)~test20$V1, xlab = 'Average Quality Score Per Read', ylab = 'Log of Frequency', main = 'R1 Frequency vs Average Quality Score Per Read')
plot(log(test21$V2)~test21$V1, xlab = 'Average Quality Score Per Read', ylab = 'Log of Frequency', main = 'R2 Frequency vs Average Quality Score Per Read')
plot(log(test22$V2)~test22$V1, xlab = 'Average Quality Score Per Read', ylab = 'Log of Frequency', main = 'R3 Frequency vs Average Quality Score Per Read')
plot(log(test23$V2)~test23$V1, xlab = 'Average Quality Score Per Read', ylab = 'Log of Frequency', main = 'R4 Frequency vs Average Quality Score Per Read')

test24 <- read.table('FINALLYDONEWITHTHESUMMERTERM2.TXT', sep=':')
test25 <- test24[order(test24$V2),c(1,2)]
test26 <- subset(test25, V2 > 250000, select=c(V1, V2))
plot(test26$V2~test26$V1)

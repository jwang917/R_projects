myFavNum <- c(0.1719)
myNums <- c(7,18,9,21,10,8,1)
firstNames <- c("Li","Paul")
myVec <-c("Ma",32)

typeof(myVec)
class(firstNames)

myNums[7] <- myFavNum
myFirstAddition <- myNums
myFirstAddition

(mySecondAddition <- myNums[7] + myFavNum)

(myFirstSum <- myNums + myFavNum)

thisIsGettingMoreComplex <- myFavNum + min(myNums)

whatT <- myNums[2] + myVec[2]
whatT

x <- c(1,2,3,NULL)
# Null just puff, disappeared. 

myAtomicVec <- c(1,4,3,2,NA,3.22,-44,2,NA,0,22,24)
sum(myAtomicVec > 0,na.rm = T)
sum(myAtomicVec < 0,na.rm=T)
sum(myAtomicVec == 0,na.rm=T)
sum(is.na(myAtomicVec))
is.na(myAtomicVec) & myAtomicVec != 0
sum(myAtomicVec[myAtomicVec > 0],rm.na=T)

#A list is useful for dynamic growing data. 


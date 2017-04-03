#zadanie (konczymy to z poprzednich zajec)


x <-c()

n<-100
x[1] <- 1
symulacje <- function(a,b){
  for (i in 1:n){
    u <- runif(1)
    x[i+1] <- ifelse(x[i]==1,ifelse(u<a,2,1),ifelse(u<b,1,2))
  }
  return(x)
}


powtorzenia2 <- replicate(1000,{
  x <-symulacje(0.5,0.5)
  mn<- sum(x)/101
})


wariancja_symulacyjna <- var(powtorzenia2)
wariancja_teoretyczna <- 1/(n+1)


powtorzenia3 <-replicate(1000,{
  x <-symulacje(0.1,0.1)
  mn<- sum(x)/101
})

wariancja_symulacyjna <- var(powtorzenia3)
wariancja_teoretyczna <- 1/(n+1)

wariancja_symulacyjna-wariancja_teoretyczna


x <- 101*wariancja_symulacyjna

#
powtorzenia4 <-replicate(1000,{
  x <-symulacje(0.9,0.9)
  mn<- sum(x)/101
})

wariancja_symulacyjna <- var(powtorzenia4)
wariancja_teoretyczna <- 1/(n+1)

wariancja_symulacyjna-wariancja_teoretyczna


x <- 101*wariancja_symulacyjna
y <- 0.25*(0.9)/0.1


####Zadanie z pudełkiem

X <- c()
X[1] <- 0
n<- 10
T <- c()
T[1] <- rexp(l)
q <- 0.2
l<- 0.1
W <- c()
W[1] <-0
for(i in 1:n){
  u <- runif(1)
  X[i+1] <- ifelse(u<(l)/(l+q*X[i]),X[i]+1,X[i]-1)
  W[i+1] <- rexp(1,l+q*X[i])
  T[i+1] <- T[i]+W[i+1]
  }







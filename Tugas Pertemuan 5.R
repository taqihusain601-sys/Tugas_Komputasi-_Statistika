#1.Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)?  (distribusi exponensial)
pexp(5, rate = 1/5, lower.tail = FALSE)

#2. (uniform)
set.seed(2025)
n<- 100
a<- 0
b<- 20
var(runif(n, min = a, max = b))

#3. (exponensial)
pexp(5, rate = 1/10, lower.tail = TRUE)

#4. (normal)
mu <- 250
sigma <- 5
pnorm(240, mean = mu, sd = sigma)





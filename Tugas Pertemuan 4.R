# 1. Jika rata-rata pelanggan datang ke toko adalah 3 orang per jam, modelkan dengan Poisson dan hitung P(X≥5)
lambda<-3
poison<-1-ppois(4, lambda)
poison
x<-0:15
PMF <- dpois(x, lamdaa)
plot(x, PMF, type='h', lwd=3, main='Poisson(λ=3)', xlab='k', ylab='P(X=k)')


# 2. Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian. Modelkan jumlah bola merah yang diambil dengan distribusi yang tepat.
N<-100
K<-20
n<-10

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))
# PMF: P(X = k)
PMF <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = PMF)
# Plot PMF
plot(k, PMF, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak sukses dalam sampel)", ylab = "P(X=k)")

# 3. Simulasikan 1.000 percobaan Binomial (n=15,p=0.4) dan bandingkan histogram hasil simulasi dengan PMF teoretis.
set.seed(2025)
n<-15
p<-0.4
S <- rbinom(1000, size=n, prob=p) 

hist(S, breaks = seq(-0.5, n + 0.5, by = 1), probability = TRUE,
     main = "Histogram Simulasi vs PMF Binomial", 
     xlab = "k", ylab = "P(X=k)", col = "lightblue")
x <- 0:n
PMF <- dbinom(x, size = n, prob = p)
lines(x, PMF, type = "b", pch = 16, col = "red", lwd = 3)




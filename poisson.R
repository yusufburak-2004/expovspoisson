library(ggplot2)

# Saatleri tanımla (0'dan 10'a kadar)
saatler <- 0:10  

# Lambda değeri (ortalama 3 saatte bir olayın olması bekleniyor)
lambda <- 3

# Her bir saatteki olasılıkları hesapla
prob_e <- pexp(saatler, rate = 1/lambda)  # Exponential dağılım ile hesaplama
prob_p <- ppois(saatler, lambda)          # Poisson dağılımı ile hesaplama

# Verileri bir veri çerçevesine yerleştir
df <- data.frame(Saat = saatler, prob_e = prob_e, prob_p = prob_p)

# Verileri nokta olarak ve çizgi olarak görselleştir
ggplot(df, aes(x = Saat)) +
  geom_point(aes(y = prob_e, color = "Exponential"), size = 3, shape = 16) +
  geom_line(aes(y = prob_e, color = "Exponential"), size = 1) +  # Exponential için çizgi ekle
  geom_point(aes(y = prob_p, color = "Poisson"), size = 3, shape = 16) +
  scale_color_manual(values = c("Exponential" = "blue", "Poisson" = "red")) +
  labs(x = "Saat", y = "Kümülatif Olasılık", color = "Dağılım Türü") +
  theme_minimal()


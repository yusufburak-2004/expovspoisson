library(ggplot2)

# Saatleri tanımla
saatler <- 1:5

# Lambda değeri (ortalama 3 saatte bir olayın olması bekleniyor)
lambda <- 3

# Her bir saatteki olasılıkları hesapla
prob_e <- pexp(saatler, rate = 1/lambda)  # Exponential dağılım ile hesaplama
prob_p <- ppois(saatler, lambda)          # Poisson dağılımı ile hesaplama

# Verileri bir veri çerçevesine yerleştir
df <- data.frame(Saat = saatler, prob_e = prob_e, prob_p = prob_p)

# Veri çerçevesini yazdır
print(df)

# Verileri nokta olarak görselleştir
ggplot(df, aes(x = Saat)) +
  geom_point(aes(y = prob_e, color = "Exponential"), size = 3, shape = 16) +
  geom_point(aes(y = prob_p, color = "Poisson"), size = 3, shape = 16) +
  scale_color_manual(values = c("Exponential" = "blue", "Poisson" = "red")) +
  labs(x = "Saat", y = "Kümülatif Olasılık", color = "Dağılım Türü") +
  theme_minimal()


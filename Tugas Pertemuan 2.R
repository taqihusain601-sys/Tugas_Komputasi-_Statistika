library(dplyr)
data(iris)

# 1. Tampilkan data Sepal.Length
iris$Sepal.Length

# 2. Sebutkan tipe data tiap kolom
str(iris)

# 3. Buat variabel baru bernama 'turunan' dari Sepal.Width
iris <- iris %>% 
  mutate(turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil"))
head(iris,5)
# 4. Ubah variabel turunan menjadi sepal
iris <- iris %>% 
  rename(sepal = turunan)

# 5. Ambil data dengan sepal bernilai besar dari species virginica
subset_virginica <- iris %>% 
  filter(sepal == "Besar" & Species == "virginica")
print(subset_virginica)

# 6. Cek jumlah species dalam data
table(iris$Species)

# 7. Pecah data iris menjadi 3 data frame khusus untuk species tertentu
df_setosa <- filter(iris, Species == "setosa")
df_versicolor <- filter(iris, Species == "versicolor")
df_virginica <- filter(iris, Species == "virginica")

# 8. Dari setiap data frame species, urutkan data berdasarkan Sepal.Width
df_setosa_urut <- arrange(df_setosa, Sepal.Width)
df_versicolor_urut <- arrange(df_versicolor, Sepal.Width)
df_virginica_urut <- arrange(df_virginica, Sepal.Width)
print(df_setosa_urut)
print(df_virginica_urut)
print(df_virginica_urut)





#Program 1
#Kondisi 1
teks <- "Ibu sedang masak di dapur, sedangkan ayah mencuci motor. Kucing tidur di atas kasur, sementara burung bernyanyi di luar sangkar."
jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")


#Kondisi 2
teks <- "Indonesia merdeka pada tanggal 17 Agustus 1945."

jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")

#Kondisi 3
teks <- "Harga buku ini 50000 namun aku hanya membawa 30000."

jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")


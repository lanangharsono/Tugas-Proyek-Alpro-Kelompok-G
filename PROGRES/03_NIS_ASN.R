#Program NIP_ASN 
#Inisialisasi kamus bulan dan batas hari
data_bulan <- c("Januari", "Februari", "Maret", "April", "Mei", "Juni",
  "Juli", "Agustus", "September", "Oktober", "November", "Desember"
)
data_hari <- c(31, 28, 31, 30, 31, 30, 
  31, 31, 30, 31, 30, 31
)
while (TRUE) {
  #Menerima input dari user
  NIP <- readline(prompt = "Masukkan 18 digit NIP Anda:")
  tahun <- as.numeric(substr(NIP, 1, 4)) #Inkes R mulai dari 1
  bulan <- as.numeric(substr(NIP, 5, 6))
  tanggal <- as.numeric(substr(NIP, 7, 8))

  #Validasi rentang bulan
  if (bulan < 1 | bulan > 12){
  cat("NIP tidak valid, harap masukkan ulang.\n\n")
  next #Kembali ke "repeat"
  }
  
  #Mengambil data dari kamus
  nama_bulan <- data_bulan[bulan]
  max_hari <- data_hari[bulan]

  #Cek tahun kabisat (ubdate batas Februari)
  if (bulan == 2 & (tahun %% 400 == 0 | (tahun %% 4 == 0 & tahun %% 100 != 0))){
  max_hari = 29
  }

  #Validasi batas tanggal
  if (tanggal <1 | tanggal > max_hari){
    cat("NIP tidak valid, harap masukkan ulang.\n\n")
  next #Kembali ke "repeat"
  }

  #Jika semua valid
  cat("Tanggal lahir Anda:", tanggal, nama_bulan, tahun, "\n")
  break
}


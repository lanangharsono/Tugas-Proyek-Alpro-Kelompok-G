hitung_interval_konfidensi <- function(p_hat,alpha,n) {
  # Validasi proporsi (0 <= p <= 1)
  if (p_hat < 0 || p_hat > 1) {
    stop("Kesalahan: Proporsi harus bernilai antara 0 dan 1.")
  }
  # Validasi ukuran sampel (n harus positif)
  if (n <= 0) {
    stop("Kesalahan: Ukuran sampel (n) harus lebih besar dari 0.")
  }
  # Menentukan nilai z berdasarkan alpha
  if (alpha == 0.10) {
    z <- 1.645
  } else if (alpha == 0.05) {
    z <- 1.96
  } else {
    stop("Kesalahan: Nilai alpha hanya mendukung 0.10 (10%) atau 0.05 (5%).")
  }
  # Perhitungan
  margin_of_error <- z * sqrt((p_hat * (1 - p_hat)) / n)
  batas_bawah <- p_hat - margin_of_error
  batas_atas <- p_hat + margin_of_error
  # Menampilkan hasil
  cat("\n--- Hasil Perhitungan ---")
  cat(sprintf("\nInterval Konfidensi (%.0f%%): %.4f < p < %.4f\n", 
              (1 - alpha) * 100, batas_bawah, batas_atas))
}

# Menjalankan fungsi
hitung_interval_konfidensi(0.6,0.05,50)

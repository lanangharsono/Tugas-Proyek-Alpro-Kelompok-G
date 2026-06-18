#PROGRAM NO 6 
hitung_interval_konfidensi <- function(p_hat,alpha,n) {
  if (p_hat < 0 || p_hat > 1) {
    cat("Proporsi (p_hat) harus berada di antara 0 dan 1.\n")
  } else if (n <= 0) {
    cat("Ukuran sampel (n) harus lebih besar dari 0.\n")
  } else if (!(alpha == 0.10 || alpha == 0.05)) {
    cat("Nilai alpha harus 0.10 atau 0.05.\n")
  } else {
    # Jika semua valid, baru hitung
    z <- ifelse(alpha == 0.10, 1.645, 1.96)
    
    margin_of_error <- z * sqrt((p_hat * (1 - p_hat)) / n)
    batas_bawah <- p_hat - margin_of_error
    batas_atas <- p_hat + margin_of_error
    
    cat("\n--- Hasil Perhitungan ---\n")
    cat(sprintf("\nInterval Konfidensi (%.0f%%): %.4f < p < %.4f\n", 
                (1 - alpha) * 100, batas_bawah, batas_atas))
  }
}

# Menjalankan fungsi
hitung_interval_konfidensi(0.5,0.05,1000)
hitung_interval_konfidensi(0.5,0.1,50)
hitung_interval_konfidensi(1.2,0.05,50)

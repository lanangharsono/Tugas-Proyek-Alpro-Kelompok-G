tentukan_cluster <- function(x1, x2, x3) {
  
  # KONDISI 2: Validasi Error Input (Bukan Angka)
  if (!is.numeric(x1) || !is.numeric(x2) || !is.numeric(x3)) {
    cat(sprintf("Menguji Titik U: (%s, %s, %s)\n", as.character(x1), as.character(x2), as.character(x3)))
    cat("Hasil: KONDISI ERROR (Input harus berupa angka!)\n\n")
  }else{
    
    # Tetapkan koordinat pusat cluster tetap
    A <- c(2, 1, 3)
    B <- c(1, -4, 6)
    C <- c(-2, 3, -2)
    
    # Gabungkan parameter menjadi vektor U
    U <- c(x1, x2, x3)
    
    # Fungsi internal untuk menghitung jarak Euclidean
    hitung_jarak <- function(titik1, titik2) {
      return(sqrt(sum((titik1 - titik2)^2)))
    }
    
    # Hitung jarak dari U ke setiap cluster
    jarak_A <- hitung_jarak(U, A)
    jarak_B <- hitung_jarak(U, B)
    jarak_C <- hitung_jarak(U, C)
    
    # Cetak informasi titik dan jarak
    cat(sprintf("Menguji Titik U: (%.1f, %.1f, %.1f)\n", x1, x2, x3))
    cat(sprintf("- Jarak ke Cluster A: %.4f\n", jarak_A))
    cat(sprintf("- Jarak ke Cluster B: %.4f\n", jarak_B))
    cat(sprintf("- Jarak ke Cluster C: %.4f\n", jarak_C))
    
    
    # KONDISI 1: Kondisi Khusus (Deteksi Cluster yang Jaraknya Sama)
    if (jarak_A == jarak_B && jarak_B == jarak_C) {
      cat("Hasil: KONDISI KHUSUS (Titik U berada tepat di tengah-tengah antara Cluster A, B, dan C)\n\n")
    } else if (jarak_A == jarak_B && jarak_A <= jarak_C) {
      cat("Hasil: KONDISI KHUSUS (Titik U memiliki jarak terdekat yang SAMA antara CLUSTER A dan CLUSTER B)\n\n")
    } else if (jarak_A == jarak_C && jarak_A <= jarak_B) {
      cat("Hasil: KONDISI KHUSUS (Titik U memiliki jarak terdekat yang SAMA antara CLUSTER A dan CLUSTER C)\n\n")
    } else if (jarak_B == jarak_C && jarak_B <= jarak_A) {
      cat("Hasil: KONDISI KHUSUS (Titik U memiliki jarak terdekat yang SAMA antara CLUSTER B dan CLUSTER C)\n\n")
    } 
    
    
    # KONDISI 3: Kondisi Normal (Satu Cluster Terdekat)
    else if (jarak_A < jarak_B && jarak_A < jarak_C) {
      cat("Hasil: KONDISI NORMAL (CLUSTER A)\n\n")
    } else if (jarak_B < jarak_C) {
      cat("Hasil: KONDISI NORMAL (CLUSTER B)\n\n")
    } else {
      cat("Hasil: KONDISI NORMAL (CLUSTER C)\n\n")
    } 
  }
}  

# UJI COBA KONDISI
tentukan_cluster(0, 2, 0.5)        
tentukan_cluster(-1, 2, -1)        
tentukan_cluster("Lanang",3,5)     
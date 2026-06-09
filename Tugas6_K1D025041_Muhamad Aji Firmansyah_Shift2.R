# Fungsi hitung tagihan
hitung_tagihan<-function(kWh){
  total_tagihan=1500*kWh
  pajak=0.1*total_tagihan
  total_bayar=total_tagihan+pajak
  return(list(
    total_tagihan=total_tagihan,
    pajak=pajak,
    total_bayar=total_bayar))
}
hitung_tagihan(70)
# Prosedur cetak tagihan
cetak_tagihan<-function(nama,hasil){
  cat("Nama pelanggan :",nama,"\n")
  cat("Total tagihan :",hasil$total_tagihan,"\n")
  cat("Pajak :",hasil$pajak,"\n")
  cat("Total bayar :",hasil$total_bayar)
}
hasil<-hitung_tagihan(60)
cetak_tagihan("Aji",hasil)
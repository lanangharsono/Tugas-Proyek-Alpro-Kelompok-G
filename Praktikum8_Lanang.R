#Fungsi Tanpa Parameter
salam<-function(){
  print("Selamat Siang")
}
#Memanggil program salam
salam()

#Fungsi dengan parameter
salam1<-function(nama){
  print(paste("Selamat siang",nama))
}
salam1("lanang")

salam2<-function(nama1,nama2){
  print(paste("Selamat siang",nama1,"dan",nama2))
}
salam2("ali","budi")
salam2(nama2="budi",nama1 = "ali")

luas_persegi_panjang<-function(panjang,lebar){
  luas<-panjang*lebar
  return(luas)
}
luas_persegi_panjang(10,5)
luas_persegi_panjang(lebar = 5,panjang = 10)

#Fungsi dengan struktur percabangan
kategori_nilai<-function(nilai){
  if(nilai>=80){
    kategori<-"A"
  } else if (nilai>=70){
    kategori<-"B"
  } else if (nilai>=60){
    kategori<-"C"
  }else{
    kategori<-"D"
  }
  return(kategori)
}
kategori_nilai(75)

#struktur pengulangan
jumlah_genap<-function(n){
  total<-0
  for(i in 1:n){
    if(i%%2==0){
      total<-total+i
    }
  }
  return(total)
}
jumlah_genap(15)

#Vektor
summary_nilai<-function(vektor_nilai){
  total<-sum(vektor_nilai)
  rata_rata<-mean(vektor_nilai)
  hasil<-list(
    total=total,
    rata_rata=rata_rata
  )
  return(hasil)
}
data_nilai<-c(80,90,70)
summary_nilai(data_nilai)

#Modular
#Fungsi menghitung diskon
hitung_diskon <- function(total_belanja) {
  if (total_belanja >= 1000000) {
    diskon <- 0.20
  } else if (total_belanja >= 500000) {
    diskon <- 0.10
  } else {
    diskon <- 0
  }
  return(diskon)
}
#Fungsi menghitung total bayar
hitung_total_bayar <- function(total_belanja) {
  diskon <- hitung_diskon(total_belanja)
  potongan <- total_belanja * diskon
  total_bayar <- total_belanja - potongan
  return(total_bayar)
}
#Memanggil fungsi
hitung_total_bayar(1200000)
hitung_total_bayar(750000)
hitung_total_bayar(250000)
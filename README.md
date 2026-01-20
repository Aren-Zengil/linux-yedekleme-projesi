# Açık Kaynak Dersi - Yedekleme Otomasyonu Projesi

Bu projeyi, Linux sistemlerde verilerimizi manuel olarak kopyalamak yerine tek bir komutla nasıl güvenli hale getirebileceğimizi göstermek için hazırladım.

### Neler Ekledim?
1. **Otomatik Klasör Oluşturma:** Eğer yedekleme yapacağımız klasörü silersek script hata vermiyor, kendisi klasörü tekrar oluşturuyor.
2. **Hata Takibi:** Script her çalıştığında `yedek_notlari.txt` dosyasına işlemin başarılı olup olmadığını yazıyor. Böylece geçmişe dönük kontrol yapabiliyorum.
3. **Disk Alanı Sorgulama:** Yedeklemeye başlamadan önce sistemde ne kadar boş yer olduğunu terminale yazdırarak kullanıcıyı bilgilendiriyor.

### Nasıl Çalıştırılır?
* Terminale `bash yedekle.sh` yazmanız yeterlidir.
* İzin hatası alırsanız `chmod +x yedekle.sh` komutunu kullanın.

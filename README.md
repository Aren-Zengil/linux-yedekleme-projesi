# Linux Otomatik Yedekleme Projesi

Bu projeyi Açık Kaynak İşletim Sistemleri dersi için hazırladım. Amacım, Linux sistemlerde manuel olarak yapılan yedekleme işlemini küçük bir kod parçasıyla (Bash Script) otomatik hale getirmek.

## Proje İçeriği
- `yedekle.sh`: Bu dosya belirlediğim klasörü alıp, o günün tarihiyle sıkıştırarak yedek klasörüne taşıyor.
- Kullanılan komutlar: `tar`, `chmod`, `variables`, `date`.

## Nasıl Çalışır?
1. Script dosyasını indirin.
2. `chmod +x yedekle.sh` ile yetki verin.
3. `./yedekle.sh` yazarak çalıştırın.

## Projeyi Hazırlarken Bende Birkaç Yeni Bilgi Öğrendim
Script yazarken değişken tanımlamayı ve Linux'ta dosya sıkıştırma mantığını öğrendim. İleride bu scripti 'crontab' kullanarak her gece otomatik çalışacak şekilde ayarlamayı planlıyorum.

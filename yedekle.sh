#!/bin/bash

# Yedeklenecek klasoru buraya yaziyoruz
dosyalar="/home/kullanici/Documents"
# Yedegin gidecegi yer
yedek_yeri="/home/kullanici/Masaustu/Yedekler"
# Gunun tarihini formatliyoruz
zaman=$(date +%d-%m-%y_%H-%M)

# Yedekleme klasoru yoksa otomatik olustur
if [ ! -d "$yedek_yeri" ]; then
    echo "Yedek klasoru yoktu, simdi olusturuyorum..."
    mkdir -p "$yedek_yeri"
fi

# --- DISK KONTROLU ---
# Diskte yer var mi diye basitce bakiyoruz
bos_alan=$(df -h / | tail -1 | tr -s ' ' | cut -d ' ' -f 4)
echo "Sistemdeki bos alan: $bos_alan"

# --- ASIL ISLEM ---
echo "Yedekleme islemi basliyor, lutfen bekleyin..."

# tar komutuyla klasoru sıkıştırıyoruz
tar -czf $yedek_yeri/yedek_$zaman.tar.gz $dosyalar

# Islem bitti mi kontrol et 
if [ $? -eq 0 ]; then
    echo "ISLEM TAMAM: $zaman tarihinde yedek alindi." >> yedek_notlari.txt
    echo "Yedekleme basariyla bitti!"
else
    echo "HATA: Bir seyler ters gitti, yedek alinamadi." >> hata_log.txt
fi


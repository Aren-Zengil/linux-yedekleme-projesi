#!/bin/bash

# Değişkenleri tanımlıyoruz 
KAYNAK="/home/kullanici/Belgeler"
HEDEF="/home/kullanici/Yedekler"
TARIH=$(date +%Y-%m-%d)

# Yedek klasörü yoksa oluşturuyoruz
mkdir -p $HEDEF

# Dosyaları sıkıştırma ve yedekleme işlemi yapıyoruz
echo "Yedekleme başlıyor..."
tar -cvzf $HEDEF/yedek-$TARIH.tar.gz $KAYNAK

echo "Yedekleme başarıyla tamamlandı: $HEDEF"
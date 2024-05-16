% Modeli eğitmek ve test etmek için girdi ve çıktıları hazırladık

% Kullanıcıdan elle girilen giriş özelliklerini alalım
olu_sayisi = input('OLU SAYISI değerini girin: ');
yarali_sayisi = input('YARALI SAYISI değerini girin: ');
tasit_sayisi = input('TASIT SAYISI değerini girin: ');
arac_ve_isletme_sayisi = input('Araç ve İşletme Sayısı değerini girin: ');

% Kullanıcı tarafından girilen girdileri bir vektör olarak düzenleyelim
input_vector = [olu_sayisi, yarali_sayisi, tasit_sayisi, arac_ve_isletme_sayisi];

% Modelin predict fonksiyonunu kullanarak tahmin yapalım
predicted_output = predict(model, input_vector);

% Tahmin edilen çıktıyı ekrana yazdıralım
disp(['Tahmin edilen çıkış değeri: ', num2str(predicted_output)]);

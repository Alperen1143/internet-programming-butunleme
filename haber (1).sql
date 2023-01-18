-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Oca 2023, 16:21:52
-- Sunucu sürümü: 8.0.28
-- PHP Sürümü: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `haber`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `i̇letisim`
--

CREATE TABLE `i̇letisim` (
  `iletisimıd` int NOT NULL,
  `isim` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Konu` varchar(2800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mesaj` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `i̇letisim`
--

INSERT INTO `i̇letisim` (`iletisimıd`, `isim`, `email`, `Konu`, `Mesaj`) VALUES
(31, 'delasmus bilgin', 'mbilgin480@gmail.com', 'Site', 'Siten çok iyi\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `kategori_id` int NOT NULL,
  `kategori_ad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`kategori_id`, `kategori_ad`) VALUES
(1, 'Siyaset'),
(2, 'Spor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int NOT NULL,
  `kadi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parola` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
(1, 'alperen', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menuler`
--

CREATE TABLE `menuler` (
  `Tablo_id` int NOT NULL,
  `Tablo_menuad` varchar(45) NOT NULL,
  `Tablo_menuurl` varchar(300) NOT NULL,
  `Tablo_menusira` varchar(45) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `menuler`
--

INSERT INTO `menuler` (`Tablo_id`, `Tablo_menuad`, `Tablo_menuurl`, `Tablo_menusira`) VALUES
(1, 'ANASAYFA', '/', '0'),
(2, 'İLETİSİM', 'iletisim.php', '0'),
(5, 'SPOR', 'Spor.php', '0'),
(6, 'Siyaset', 'siyaset.php', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_tablo`
--

CREATE TABLE `tbl_tablo` (
  `id` int NOT NULL,
  `haber_title` varchar(250) NOT NULL,
  `haber_description` varchar(1000) NOT NULL,
  `kategori_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `tbl_tablo`
--

INSERT INTO `tbl_tablo` (`id`, `haber_title`, `haber_description`, `kategori_id`) VALUES
(1, 'Kılıçdaroğlu-Akşener görüşmesinde neler konuşuldu, bundan sonra nasıl yol izlenecek?', 'CHP Genel Başkanı Kemal Kılıçdaroğlu ile İYİ Parti Genel Başkanı Meral Akşener arasında dün akşam gerçekleşen buluşma, siyasi kulisleri hareketlendirdi. İki parti arasında “gerginlik ve tartışma” yaratan konuların ele alındığı görüşme sonrasında iki lider, “Altılı Masa’da sorun yok” mesajı verdi.\r\n\r\nKulislere yansıyan bilgilere göre “iki lider artık sorun da oluşturan veya kamuoyunun beklediği konuları konuşmaya başladı ve bundan sonra da bu tür görüşmeler devam edecek.     Görüşmeye sinyal bozucuyla önlem\r\nİki liderin görüşeceği bilgisi yakın ekibi tarafından basınla paylaşılırken, görüşme mekanı olarak, ilk Altılı Masa toplantısının gerçekleştiği Çankaya Belediyesi’ne ait Ahlatlıbel tesisi tercih edildi. İki liderin görüşmesinin sızmasına karşı da güvenlik önlemleri alındığı öğrenildi.\r\n\r\nBu çerçevede görüşme süresince, telefon sinyallerin engelleyen jammer cihazı çalıştırıldı, içeri telefon alınmadı ve iki liderin yemek yediği alana bitişik yerler de boşaltıldı.', 1),
(10, 'Kaan Ayhan transferi için Beşiktaş ve Fenerbahçe kapışması!', 'Spor Toto Süper Lig\'de şampiyonluk hedefleyen Beşiktaş ve Fenerbahçe transferde karşı karşıya geldi. İtalyan basınında yer alan habere göre, Beşiktaş ve Fenerbahçe milli yıldızı transfer etmek için yarışıyor.', 2),
(13, 'İslahiye Belediyesi\'nin internet sitesini hackleyip Sedat Peker\'e \'selam\' gönderdiler', 'İslahiye Belediyesi\'nin resmi internet sitesine girenler, ilginç bir görüntüyle karşılaştı.', 1),
(14, 'Fenerbahçe, Volkan Demirelli Hatayspor karşısında! Jorge Jesus\'un kadro tercihi...', 'Ligde son 2 maçını kaybeden Kanarya bugün evinde kazanıp çıkışa geçmek istiyor. Dünya Kupası arasına yenilgi ile girip dönüşü de kayıpla yapan sarı lacivertlilerde kırmızı kart cezalısı Crespo, sakatlığı süren Pedro ve tam hazır olmayan Peres bugün forma giyemeyecek.\r\n                        Ligde Giresunspor ve Trabzonspor maçlarıyla üst üste 6 puan kaybeden Fenerbahçe, bugün Hatayspor’u geçip kötü gidişe son vererek yeni bir seri yakalamak istiyor. Sarı lacivertli takımda kırmızı kart cezalısı Crespo’nun yanı sıra sakatlığı nedeniyle tedavisi devam eden Joao Pedro ile henüz tam olarak hazır olmayan Luan Peres forma giyemeyecek. Sakatlığı atlatan ancak tedbiren Trabzonspor müsabakasında görev verilmeyen Arda Güler ve Alioski’nin oynayabilecek durumda olduğu kararı Jorge Jesus’un vereceği öğrenildi.', 2),
(15, 'LaLiga\'da Barcelona, Espanyol karsısında bir puana razı oldu', 'LaLiga\'nın 15. haftasında oynanan derbide Barcelona ile Espanyol, Camp Nou\'da karşılaştı.\r\n', 2),
(16, 'Jorge Jesus\'tan Serdar Dursun kararı! Transferi an meselesiydi...', ' Ara transfer dönemine kısa bir süre kalırken, Fenerbahçe\'de de hareketlilik yaşanıyor. Jorge Jesus\'la birlikte bu sezon zirveye oynayan sarı-lacivertli takımda hangi oyuncuların gideceği merak ediliyordu. Fenerbahçe\'de son dönemde performansını artıran Serdar Dursun için karar verildi. İşte son dakika haberinin detayları...', 2),
(19, 'İBB\'ye yönelik \'terör sorusturması\' hakkında neler biliniyor?', 'İçişleri Bakanlığı tarafından İstanbul Büyükşehir Belediyesi’ne karşı yürütülen terör soruşturmasına dair raporun Cumhuriyet Başsavcılığı’na verilmesinin ardından bugün hem Ekrem İmamoğlu hem de Süleyman Soylu basın açıklaması düzenledi.', 1),
(20, 'İçişleri Bakanlığı\'ndan İBB\'deki müfettiş değişikliği ile ilgili açıklama', 'İçişleri Bakanlığı, İstanbul Büyükşehir Belediye Başkanlığı\'na yönelik incelemede görevli müfettişin değiştirilmesine yönelik iddialara yanıt verdi.', 1),
(21, 'Bolu Belediyesi Baskanı Tanju Özcan\'ın makam katına kadar gelen bıçaklı saldırgan H.H. gözaltına alındı.', 'Bolu Gündem\'de yer alan habere göre, saat 11.30 sıralarında meydana gelen olayda, H.H. isimli kişi Tanju Özcan\'ın makam odasının önüne gelerek başkanla görüşmek istediğini söyledi.', 1),
(23, 'Ligde son 2 maçını kaybeden Kanarya bugün evinde kazanıp çıkışa geçmek istiyor.', 'Dünya Kupası arasına yenilgi ile girip dönüşü de kayıpla yapan sarı lacivertlilerde kırmızı kart cezalısı Crespo, sakatlığı süren Pedro ve tam hazır olmayan Peres bugün forma giyemeyecek.</p>\r\n               \r\n              \r\n              Ligde Giresunspor ve Trabzonspor maçlarıyla üst üste 6 puan kaybeden Fenerbahçe, bugün Hatayspor’u geçip kötü gidişe son vererek yeni bir seri yakalamak istiyor. Sarı lacivertli takımda kırmızı kart cezalısı Crespo’nun yanı sıra sakatlığı nedeniyle tedavisi devam eden Joao Pedro ile henüz tam olarak hazır olmayan Luan Peres forma giyemeyecek. Sakatlığı atlatan ancak tedbiren Trabzonspor müsabakasında görev verilmeyen Arda Güler ve Alioski’nin oynayabilecek durumda olduğu kararı Jorge Jesus’un vereceği öğrenildi.', 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `i̇letisim`
--
ALTER TABLE `i̇letisim`
  ADD PRIMARY KEY (`iletisimıd`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menuler`
--
ALTER TABLE `menuler`
  ADD PRIMARY KEY (`Tablo_id`);

--
-- Tablo için indeksler `tbl_tablo`
--
ALTER TABLE `tbl_tablo`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `i̇letisim`
--
ALTER TABLE `i̇letisim`
  MODIFY `iletisimıd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `kategori_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `menuler`
--
ALTER TABLE `menuler`
  MODIFY `Tablo_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_tablo`
--
ALTER TABLE `tbl_tablo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

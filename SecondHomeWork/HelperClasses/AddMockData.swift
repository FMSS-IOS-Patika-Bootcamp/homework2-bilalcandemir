//
//  AddMockData.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/14/22.
//

import Foundation

extension ViewController {
    
    
    func addMockData(){
        var newsData = News(image: "imageCar", newsTitle: "ÖTV Vergi İndiriminde Şok Gelişme!", newsDescription: "Resmi Gazete'de yayınlanan ÖTV düzenlenmesi araç fiyatlarında ÖTV indirimi beklentisini oluşturdu.", newsURL:"https://www.haberturk.com/araclarda-otv-indirimi-olacak-mi-2022-otv-indirimi-ne-zaman-gelecek-ikinci-el-otomobil-fiyatlarina-nasil-yansiyacak-3484277/2")
        newsArray.append(newsData)
        
        newsData = News(image: "imageGold", newsTitle: "Altın fiyatlarında 5 ay sonra ilk!", newsDescription: "Altının ons fiyatı 5 ay sonra ilk defa yeni ayda değer kazancında ilerlerken; gram altın 1000 liranın üzerindeki seyrini sürdürüyor.", newsURL: "https://www.hurriyet.com.tr/ekonomi/altin-fiyatlarinda-5-ay-sonra-ilk-dikkatler-bu-veride-iste-uzman-yorumu-42136046")
        newsArray.append(newsData)
        
        newsData = News(image: "imageArdaTURAN", newsTitle: "Arda Turan futbolu bıraktı!", newsDescription: "Arda Turan profesyonel futbol kariyerini noktaladığını açıkladı. 35 yaşında sahalara veda eden Turan, söz konusu kararını duygusal bir videoyla duyurdu.", newsURL: "https://www.hurriyet.com.tr/sporarena/son-dakika-arda-turan-futbolu-birakti-duygusal-veda-galatasaray-ve-fatih-terim-sozleri-42136096")
        newsArray.append(newsData)
        
        newsData = News(image: "imageUEFA", newsTitle: "Şampiyonlar Ligi'nde 2. hafta heyecanı", newsDescription: "UEFA Şampiyonlar Ligi'nde gruplarda 2022-23 sezonu 2. hafta maçları yarın ve çarşamba günü oynanacak", newsURL: "https://www.haberturk.com/son-dakika-haberi-devler-ligi-nde-2-hafta-heyecani-3519714-spor")
        newsArray.append(newsData)
        
        
        newsData = News(image: "imageFlood", newsTitle: "AFAD'tan Ankara ve Kırıkkale için Uyarı!", newsDescription: "AFAD Ankara ve Kırıkkale'nin bazı ilçeleri için sağanak ve ani sel baskını uyarısı yaptı.", newsURL: "https://www.hurriyet.com.tr/gundem/afadtan-iki-ile-saganak-ve-ani-sel-uyarisi-42136215")
        newsArray.append(newsData)
        
        newsData = News(image: "imageTomato", newsTitle: "Konserve yaparken neye dikkat etmeli?", newsDescription: "Ev yapımı konserve tüketimi hem ekonomik hem sağlıklı ancak doğru şekilde işlem görmediği zaman tehlike oluşturabilir. Nelere dikkat edilmesi gerekiyor öğrenelim.", newsURL: "https://www.haberturk.com/htgastro/kesfet/konserve-yaparken-neye-dikkat-etmeli-2536060")
        newsArray.append(newsData)
        
        
        newsData = News(image: "imageBuild", newsTitle: "TOKİ başvuru şartları, tarihleri ve ücreti belli oldu!", newsDescription: "TOKİ başvuruları için heyecanlı bekleyiş sona erdi. Cumhuriyet tarihinin en büyük toplu konut açılış töreninde konuşan Cumhurbaşkanı Erdoğan, TOKİ Sosyal Konut başvurusunun 14 Eylül itibarıyla e-Devlet üzerinden başlayacağını duyurdu.", newsURL: "https://www.haberturk.com/toki-basvuru-sartlari-tarihleri-ve-ucreti-2022-edevlet-toki-sosyal-konut-projesi-basvurusu-basladi-mi-nasil-yapilir-ve-sartlari-neler-3520224")
        newsArray.append(newsData)
        
        
        newsData = News(image: "imageFlug", newsTitle: "Kraliçe Elizabeth'in cenazesi için 13 ton çiçek yola çıktı", newsDescription: "İngiltere Kraliçesi 2'nci Elizabeth'in vefatının ardından yas ve cenaze töreninde kullanılmak üzere Antalya ve Isparta'dan sipariş edilen 13 tona eşit olan 500 bin daldan fazla çiçek Turkish Cargo ile Londra'ya ulaştırılacak", newsURL: "https://www.haberturk.com/kralice-elizabeth-in-cenazesi-icin-13-ton-cicek-yola-cikti-3520626-ekonomi")
        newsArray.append(newsData)
        
    }
    
    
}

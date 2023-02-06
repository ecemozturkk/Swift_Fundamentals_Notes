/*
 Bir A nesnesi olsun. A nesnesi, bir eylemi gerçekleştirmek için B nesnesini çağırır. Eylem tamamlandığında, A nesnesi B'nin görevi tamamladığını ve gerekli eylemi gerçekleştirdiğini bilmelidir. Bu işlem delegate’lerin yardımıyla gerçekleştirilebilir!
 */

// Annenin çocuğuna yemek yedirmesi

// Yemek yedirmeden önce annenin nasıl yemek yapılacağını bilmesi gerekiyor:
protocol YemekPisirme {
    func yemekYemek()
}

// Şimdi "YemekPisirme" protokolüne uygun bir anne yapısı oluşturalım:
struct Anne : YemekPisirme {
    func yemekYemek() {
        print("Çorba geliyor!")
    }
}


    //Şimdi de gerçek bir anne nesnesi oluşturalım:
    var anne = Anne() //Anne yapısını taşıyan anne değişkenini oluşturduk
    anne.yemekYemek() //"Çorba geliyor!"


// Bir çocuk oluşturma vakti. Ama onun birisinin yardımına ihtiyacı var, bu yüzden onun yerine yemek pişirebilecek bir yetişkin (delegate) ekleyeceğiz.
// Çocuk yapısı oluşturma
struct Cocuk {
    var delegate: YemekPisirme? // delegate = özel yetenekleri olan birisi
}

// Şimdi gerçek bir çocuk nesnesi oluşturalım ve delegate'i anne olarak atayalım
//Çocuk nesnesi oluşturma
var alican = Cocuk()
alican.delegate = anne

//Temsilci(delegate) özelliğinin türü “YemekPisirme” dir. “Anne” tipi “YemekPisirme” protokolüne uygun olduğundan hem “YemekPisirme” hem de “Anne” olabilir.

//Şimdi çocuk yemeğini yiyebilir!
alican.delegate?.yemekYemek() // "Çorba geliyor!"

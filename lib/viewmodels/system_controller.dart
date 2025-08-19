import 'package:get/get.dart';
import 'package:orbital_dynamics/models/moon_model.dart';
import 'package:orbital_dynamics/models/planet_model.dart';

class SystemController extends GetxController{
  final List<Planet> planets = [
    Planet(
        name: 'Merkür',
        description: "Güneş'e en yakın ve en küçük gezegendir. Atmosferi yok denecek kadar azdır, bu da yüzey sıcaklığının gece ile gündüz arasında aşırı derecede değişmesine neden olur.",
        imageAsset: 'assets/images/mercury.png',
        moons: [],
    ),
    Planet(
        name: 'Venus',
        description: "Kalın ve zehirli atmosferi nedeniyle Güneş Sistemi'nin en sıcak gezegenidir. Yüzeyi volkanik düzlüklerle kaplıdır.",
        imageAsset: 'assets/images/venus.png',
        moons: [],
    ),
    Planet(
        name: 'Dünya',
        description: "Güneş Sistemi'nde yaşam barındırdığı bilinen tek gezegen. Yoğun bir atmosfere ve yüzeyinde sıvı suya sahiptir.",
        imageAsset: 'assets/images/earth.png',
        moons: [
          Moon(
              name:'Ay',
              description:"Dünya'nın  tek doğal uydusudur. Yüzeyi kriterlerle kaplıdır ve atmosferi yoktur",
              imageAsset: 'assets/images/moon.png',
              impactTitle: 'GELGİTLER',
              impactDescription: "Ay'ın kütleçekimi, Dünya'nın okyanuslarını kendine doğru çekerek su seviyelerine düzenli yükselme ve alçalmalara (gelgit) neden olur.",
          ),
        ],
    ),
    Planet(
        name: "Mars",
        description: "'Kızıl Gezegen' olarak bilinir. İnce bir atmosfere ve kutuplarında buzullara ssahiptir. Güneş Sistemi'ndeki en büyük yanardağ olan Olympus Mons'a ev sahipliği yapar.",
        imageAsset: 'assets/images/mars.png',
        moons: [Moon(
            name: "Phobos",
            description: "Mars'ın iki uydusundan büyük olanıdır. Düzensiz bir şekle sahiptir ve yüzeyi kraterlerle kaplıdır.",
            imageAsset: 'assets/images/phobos.png',
        impactTitle: 'YÖRÜNGESEL ÇÜRÜME',
        impactDescription:" Phobos, Mars'a yavaş yavaş yaklaşmaktadır. Milyonlarca yıl içinde ya Mars'ın yüzeyine çarpacak ya da gelgitsel kuvvetler tarafından parçalanarak Mars etrafında bir halka oluşturacaktır." ,
        ),
        Moon(
            name: 'Deimos',
            description: "Mars'ın daha küçük ve daha uzak uydusudur. Yüzeyi Phobos'a göre daha pürüzsüzdür.",
            imageAsset: 'assets/images/deimos.png'),
        ],
    ),
    Planet(
        name: "Jüpiter",
        description: "Güneş Sistemi'ndeki en büyük gezegen. Bir gaz devi olan Jüpiter, yüzlerce yıl süren dev bir fırtına olan 'Büyük Kırmızı Leke' ile tanınır.",
        imageAsset: 'assets/images/jupiter.png',
        moons: [Moon(
            name: 'Io',
            description: "Jüpiter'in dört büyük Galilei uydusundan biridir ve Güneş Sistemi'nin en yoğun uydusudur.",
            imageAsset: 'assets/images/io.png',
        impactTitle: 'AŞIRI VOLKANİZMA',
        impactDescription: "üpiter'in devasa kütleçekimi, Io'nun içini sürekli olarak esnetip ısıtır. Bu 'gelgitsel ısınma', Io'yu 400'den fazla aktif volkanla Güneş Sistemi'nin en volkanik cismi yapar.",
        ),
          Moon(
              name: 'Europa',
              description: "Yüzeyi çatlaklarla dolu pürüzsüz bir buz tabakasıyla kaplıdır.",
              imageAsset: 'assets/images/europa.png',
          impactTitle: 'YÜZEY ALTI OKYANUSU',
          impactDescription:"Jüpiter'in yarattığı gelgitsel ısınma, Europa'nın kalın buz kabuğunun altında devasa bir sıvı su okyanusunun var olmasını sağlar.",
          ),
        ],
    ),
    Planet(
        name: "Satürn",
        description: ": Çarpıcı halka sistemiyle ünlü bir gaz devi. Halkalar, milyarlarca küçük buz ve kaya parçacığından oluşur. Yoğunluğu sudan daha azdır.",
        imageAsset: 'assets/images/saturn.png',
        moons: [Moon(
            name: "Titan",
            description: "Güneş Sistemi'ndeki en büyük ikinci uydudur ve yoğun bir atmosfere sahip tek uydudur. Yüzeyinde sıvı metan ve etandan oluşan nehirler ve göller bulunur.",
            imageAsset: 'assets/images/titan.png',
        ),
        ],
    ),
    Planet(
        name: "Neptün",
        description: "Güneş'e en uzak gezegendir ve bir buz devidir. Güneş Sistemi'ndeki en güçlü rüzgarlara sahiptir. Rengini atmosferindeki metan gazından alır.",
        imageAsset: 'assets/images/neptune.png',
        moons: [Moon(
            name: "Triton",
            description: "Neptün'ün en büyük uydusudur. Gezegeninin dönüş yönünün tersine (retrograd) bir yörüngede döner. Yüzeyinde aktif buz volkanları (kriyovolkanlar) bulunur.",
            imageAsset: 'assets/images/triton.png',
        ),
        ],
    ),

  ];

}
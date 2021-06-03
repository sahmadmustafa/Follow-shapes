//

#import "playgame.h"
#import <AudioToolbox/AudioToolbox.h>
#include <stdlib.h>


//#import <PowerOfBrain-Swift.h>

@implementation playgame
//static int count;

//static int y=count-1;
//static int y1=count;


//static float t1;
//static float t2;
//static int count;
//static int score;

//static NSMutableArray *computer;
//static NSMutableArray *player;



// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    self.navigationController.navigationBarHidden=YES;
    btnEnterSequenceButton.layer.cornerRadius=btnEnterSequenceButton.frame.size.height/2;
    
    
    red1.layer.cornerRadius=2.0;
    red1.layer.borderColor=(__bridge CGColorRef _Nullable)([UIColor grayColor]);
    red1.layer.borderWidth=1.0;

    
    green1.layer.cornerRadius=2.0;
    green1.layer.borderColor=(__bridge CGColorRef _Nullable)([UIColor grayColor]);
    green1.layer.borderWidth=1.0;


    orange1.layer.cornerRadius=2.0;
    orange1.layer.borderColor=(__bridge CGColorRef _Nullable)([UIColor grayColor]);
    orange1.layer.borderWidth=1.0;

    blue1.layer.cornerRadius=2.0;
    blue1.layer.borderColor=(__bridge CGColorRef _Nullable)([UIColor grayColor]);
    blue1.layer.borderWidth=1.0;

    
    [red1 setBackgroundColor:[UIColor clearColor]];
    [blue1 setBackgroundColor:[UIColor clearColor]];
    [orange1 setBackgroundColor:[UIColor clearColor]];
    [green1 setBackgroundColor:[UIColor clearColor]];

}
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [self HereYouGo];
    
    red1.enabled=NO;
    orange1.enabled=NO;
    green1.enabled=NO;
    blue1.enabled=NO;
    btnEnterSequenceButton.enabled=NO;
    Overlay.hidden=NO;

    
    _babyJan=[[NSMutableArray alloc]initWithObjects:@"연은",@"공중에",@"반작용하여",@"양력과",@"항력을",@"생성하는",@"날개",@"표면이있는",@"공중보다",@"무겁게",@"묶인",@"항공기입니다.",@"연은",@"날개",@"",@"밧줄",@"및",@"닻으로",@"구성됩니다.",@"연은",@"종종",@"바람이",@"그것을",@"들어",@"올릴",@"수",@"있도록",@"연의",@"얼굴을",@"안내하는",@"고삐와",@"꼬리를",@"가지고",@"있습니다.",@"[2]",@"일부",@"연",@"디자인에는",@"고삐가",@"필요하지",@"않습니다.",@"상자",@"연에는",@"단일",@"부착",@"지점이있을",@"수",@"있습니다.",@"연에는",@"연의",@"균형을",@"맞출",@"수있는",@"고정되거나",@"움직이는",@"닻이있을",@"수",@"있습니다.",@"하나의",@"기술적",@"정의는",@"연이",@"",@"끈이",@"결합",@"된",@"날개",@"세트",@"모음",@"이라는",@"것입니다.",@"[3]",@"그",@"이름은",@"떠",@"다니는",@"새를",@"닮았다는",@"점에서",@"유래되었습니다.",@"[4]",@"",@"비행",@"중에",@"연을",@"지탱하는",@"양력은",@"공기가",@"연",@"표면",@"주위를",@"이동할",@"때",@"생성되어",@"날개",@"위와",@"아래에서",@"높은",@"압력을",@"생성합니다.",@"[5]",@"바람과의",@"상호",@"작용은",@"또한",@"바람의",@"방향을",@"따라",@"수평",@"항력을",@"생성합니다.",@"양력",@"및",@"항력",@"구성",@"요소의",@"결과적인",@"힘",@"벡터는",@"연이",@"부착",@"된",@"하나",@"이상의",@"선",@"또는",@"밧줄의",@"장력에",@"의해",@"반대됩니다.",@"[6]",@"카이트",@"라인의",@"앵커",@"포인트는",@"정적이거나",@"움직일",@"수",@"있습니다",@"(예",@":",@"달리는",@"사람",@"",@"보트",@"",@"패러",@"글라이더와",@"같은",@"자유",@"낙하",@"앵커",@"",@"도망자",@"패러",@"카이트",@"[7]",@"[8]",@"또는",@"차량에",@"의한",@"연",@"견인).",@"[9]",@"[10]수소",@"무료",@"백과",@"사전",@"",@"위키피디아에서",@"탐색으로",@"이동",@"검색으로",@"이동",@"이",@"기사는",@"수소의",@"화학에",@"관한",@"것입니다.",@"다른",@"용도에",@"대해서는",@"수소",@"(동음",@"이의어)를",@"참조하십시오.",@"",@"요소",@"1",@"은",@"여기로",@"리디렉션됩니다.",@"레이싱",@"팀에",@"대해서는",@"Element",@"One을",@"참조하십시오.",@"수소",@"",@"1H",@"수소",@"방전",@"tube.jpg",@"플라즈마",@"상태의",@"보라색",@"빛",@"수소",@"외관",@"무색",@"가스",@"표준",@"원자량",@"Ar",@"",@"std",@"(H)",@"[1.00784",@"",@"1.00811]",@"일반",@":",@"1.008",@"주기율표의",@"수소",@"수소",@"헬륨",@"리튬",@"베릴륨",@"붕소",@"탄소",@"질소",@"산소",@"플루오르",@"네온",@"나트륨",@"마그네슘",@"알류미늄",@"규소",@"인",@"황",@"염소",@"아르곤",@"칼륨",@"칼슘",@"스칸듐",@"티탄",@"바나듐",@"크롬",@"망간",@"철",@"코발트",@"니켈",@"구리",@"아연",@"갈륨",@"게르마늄",@"비소",@"셀렌",@"브롬",@"크립톤",@"루비듐",@"스트론튬",@"이트륨",@"지르코늄",@"니오브",@"몰리브덴",@"테크네튬",@"루테늄",@"로듐",@"보장",@"은",@"카드뮴",@"인듐",@"주석",@"안티몬",@"텔루르",@"요오드",@"기호",@"엑스",@"에",@"세슘",@"바륨",@"란탄",@"세륨",@"프라세오디뮴",@"네오디뮴",@"프로메튬",@"사마륨",@"유로퓸",@"가돌리늄",@"테르븀",@"디스프로슘",@"홀뮴",@"에르븀",@"툴륨",@"이테르븀",@"루테튬",@"하프늄",@"탄탈",@"텅스텐",@"레늄",@"오스뮴",@"이리듐",@"백금",@"금",@"수은",@"(요소)",@"탈륨",@"리드",@"창연",@"폴로늄",@"아스타틴",@"라돈",@"프랑슘",@"라듐",@"악티늄",@"토륨",@"프로트",@"악티늄",@"우라늄",@"넵투늄",@"플루토늄",@"아메리슘",@"큐륨",@"버클륨",@"칼리",@"포늄",@"아인",@"슈타이",@"늄",@"페르뮴",@"멘델레븀",@"노벨륨",@"로렌슘",@"러더",@"포듐",@"더",@"브늄",@"시보",@"귬",@"보륨",@"하슘",@"메이트",@"네",@"리움",@"다름",@"슈타",@"튬",@"뢴",@"트게",@"늄",@"코",@"페르",@"니슘",@"니",@"호늄",@"플레로",@"븀",@"Moscovium",@"리버",@"모",@"리움",@"테",@"네신",@"Oganesson",@"–",@"↑",@"H",@"↓",@"리",@"–",@"←",@"수소",@"→",@"헬륨",@"원자",@"번호",@"(Z)",@"1",@"그룹",@"1",@":",@"H",@"및",@"알칼리",@"금속",@"기간",@"1",@"S-",@"블록",@"차단",@"요소",@"범주",@"반응성",@"비금속",@"전자",@"구성",@"1s1",@"껍질",@"당",@"전자",@"1",@"물리적",@"특성",@"STP",@"가스의",@"위상",@"녹는",@"점",@"(H2)",@"13.99",@"K",@"(−259.16",@"°",@"C",@"",@"−434.49",@"°",@"F)",@"끓는점",@"(H2)",@"20.271",@"K",@"(−252.879",@"°",@"C",@"",@"−423.182",@"°",@"F)",@"밀도",@"(STP에서)",@"0.08988",@"g",@"",@"",@"L",@"액체",@"일",@"때",@"(m.p.에서)",@"0.07",@"g",@"",@"",@"cm3",@"(고체",@":",@"0.0763",@"g",@"",@"",@"cm3)",@"[1]",@"액체",@"일",@"때",@"(b.p.에서)",@"0.07099",@"g",@"",@"",@"cm3",@"삼중점",@"13.8033",@"K",@"",@"7.041",@"kPa",@"임계점",@"32.938",@"K",@"",@"1.2858",@"MPa",@"융합",@"열",@"(H2)",@"0.117",@"kJ",@"",@"",@"mol",@"기화열",@"(H2)",@"0.904",@"kJ",@"",@"",@"mol",@"몰",@"열용량",@"(H2)",@"28.836",@"J",@"",@"",@"(mol",@"·",@"K)",@"증기압",@"P",@"(Pa)",@"1",@"10100",@"1k",@"10k",@"100k",@"T",@"(K)",@"15",@"20에서",@"원자",@"속성",@"산화",@"상태",@"-1",@"",@"+1",@"(양쪽",@"성",@"산화물)",@"전기",@"음성도",@"폴링",@"규모",@":",@"2.20",@"이온화",@"에너지",@"1",@"차",@":",@"1312.0",@"kJ",@"",@"",@"mol",@"공유",@"반경",@"31",@"±",@"5",@"pm",@"반",@"데르",@"발스",@"반경",@"120pm",@"스펙트럼",@"범위의",@"컬러",@"라인",@"수소",@"스펙트럼",@"라인",@"기타",@"속성",@"자연",@"발생",@"원시",@"결정",@"구조",@"육각형",@"수소에",@"대한",@"육각형",@"결정",@"구조",@"음속",@"1310m",@"",@"",@"s",@"(가스",@"",@"27",@"°",@"C)",@"열전도율",@"0.1805",@"W",@"",@"",@"(m",@"·",@"K)",@"반자성",@"자기",@"주문",@"[2]",@"자화율",@"−3.98",@"·",@"10−6",@"cm3",@"",@"",@"mol",@"(298",@"K)",@"[3]",@"CAS",@"번호",@"12385-13-6",@"1333-74-0",@"(H2)",@"역사",@"디스커버리",@"헨리",@"카벤",@"디시",@"[4]",@"[5]",@"(1766)",@"이름",@":",@"Antoine",@"Lavoisier",@"[6]",@"(1783)",@"수소의",@"주요",@"동위",@"원소",@"아이소토프",@"풍부",@"반감기",@"(t1",@"",@"",@"2)",@"감쇄",@"모드",@"제품",@"상반기",@"99.98",@"%",@"안정",@"하반기",@"0.02",@"%",@"안정",@"3H",@"추적",@"12.32",@"y",@"β−",@"3He",@"카테고리",@"카테고리",@":",@"수소",@"viewtalkedit",@"|",@"참조",@"수소는",@"기호",@"H와",@"원자",@"번호",@"1이있는",@"화학",@"원소입니다.",@"표준",@"원자량",@"1.008을",@"사용하면",@"수소는",@"주기율표에서",@"가장",@"가벼운",@"원소입니다.",@"수소는",@"우주에서",@"가장",@"풍부한",@"화학",@"물질로",@"",@"전체",@"바리온",@"질량의",@"약",@"75",@"%를",@"구성합니다.",@"[7]",@"[주",@"1]",@"잔존하지",@"않는",@"별은",@"주로",@"플라즈마",@"상태의",@"수소로",@"구성됩니다.",@"가장",@"흔한",@"수소",@"동위",@"원소",@"인",@"프로",@"튬",@"(드물게",@"사용되는",@"이름",@"",@"기호",@"1H)은",@"하나의",@"양성자를",@"가지며",@"중성자는",@"없습니다.",@"",@"원자",@"수소의",@"보편적",@"출현은",@"재결합",@"시대",@"(빅뱅)",@"중에",@"처음",@"발생했습니다.",@"표준",@"온도",@"및",@"압력에서",@"수소는",@"분자식",@"H2를",@"갖는",@"무색",@"",@"무취",@"",@"무미",@"",@"무독성",@"",@"비금속",@"",@"고",@"가연성",@"이원자",@"가스입니다.",@"수소는",@"대부분의",@"비금속",@"원소와",@"공유",@"화합물을",@"쉽게",@"형성하기",@"때문에",@"지구상의",@"대부분의",@"수소는",@"물이나",@"유기",@"화합물과",@"같은",@"분자",@"형태로",@"존재합니다.",@"대부분의",@"산-염기",@"반응은",@"가용성",@"분자",@"사이의",@"양성자",@"교환을",@"포함하기",@"때문에",@"수소는",@"산-염기",@"반응에서",@"특히",@"중요한",@"역할을합니다.",@"이온",@"성",@"화합물에서",@"수소는",@"수",@"소화물로",@"알려진",@"경우",@"음전하",@"(즉",@"",@"음이온)의",@"형태를",@"취하거나",@"기호",@"H",@"+로",@"표시되는",@"양전하",@"(즉",@"",@"양이온)",@"종으로",@"나타날",@"수",@"있습니다.",@"수소",@"양이온은",@"베어",@"양성자로",@"구성된",@"것처럼",@"작성되지만",@"실제로",@"이온",@"화합물의",@"수소",@"양이온은",@"항상",@"더",@"복잡합니다.",@"슈뢰딩거",@"방정식을",@"분석적으로",@"풀",@"수있는",@"유일한",@"중성",@"원자로서",@"[8]",@"수소",@"원자의",@"에너지와",@"결합에",@"대한",@"연구는",@"양자",@"역학의",@"발전에",@"중요한",@"역할을했습니다.",@"",@"수소",@"가스는",@"16",@"세기",@"초에",@"산이",@"금속에",@"반응하여",@"인공적으로",@"처음",@"생산되었습니다.",@"1766",@"~",@"81",@"년에",@"Henry",@"Cavendish는",@"수소",@"가스가",@"불연속적인",@"물질이고",@"[9]",@"불에",@"타면",@"물을",@"생산한다는",@"사실을",@"처음으로",@"인식했습니다.",@"그",@"속성은",@"나중에",@"그리스어로",@"hHidrojen",@"Vikipedi",@"",@"özgür",@"ansiklopedi",@"Gezintiye",@"atlaArama",@"yapmak",@"için",@"atla",@"Bu",@"makale",@"hidrojenin",@"kimyası",@"hakkındadır.",@"Diğer",@"kullanımlar",@"için",@"Hidrojen",@"(belirsizliği",@"giderme)",@"bölümüne",@"bakınız.",@"",@"Öğe",@"1",@"",@"buraya",@"yönlendirir.",@"Yarış",@"takımı",@"için",@"bkz.",@"Element",@"One.",@"Hidrojen",@"",@"1H",@"Hidrojen",@"deşarj",@"tube.jpg",@"Plazma",@"durumunda",@"mor",@"parıltı",@"Hidrojen",@"Görünüm",@"renksiz",@"gaz",@"Standart",@"atom",@"ağırlığı",@"Ar",@"",@"std",@"(H)",@"[1.00784",@"",@"1.00811]",@"geleneksel:",@"1.008",@"Periyodik",@"tablodaki",@"hidrojen",@"Hidrojen",@"Helyum",@"Lityum",@"Berilyum",@"Bor",@"Karbon",@"Azot",@"Oksijen",@"florin",@"Neon",@"Sodyum",@"Magnezyum",@"Alüminyum",@"Silikon",@"Fosfor",@"Kükürt",@"Klor",@"Argon",@"Potasyum",@"Kalsiyum",@"Skandiyum",@"Titanyum",@"Vanadyum",@"Krom",@"Manganez",@"Demir",@"Kobalt",@"Nikel",@"Bakır",@"Çinko",@"galyum",@"Germanyum",@"Arsenik",@"Selenyum",@"Brom",@"Kripton",@"Rubidyum",@"Stronsiyum",@"İtriyum",@"Zirkonyum",@"niyobyum",@"Molibden",@"Teknesyum",@"Rutenyum",@"Rodyum",@"palladyum",@"Gümüş",@"Kadmiyum",@"İndiyum",@"Teneke",@"Antimon",@"Tellür",@"İyot",@"ksenon",@"sezyum",@"Baryum",@"lantan",@"seryum",@"praseodim",@"Neodimyum",@"Promethium",@"Samaryum",@"öropiyum",@"Gadolinyum",@"Terbiyum",@"Disporsiyum",@"Holmiyum",@"erbiyum",@"Tülyum",@"İterbiyum",@"lutesyum",@"Hafniyum",@"Tantal",@"Tungsten",@"Renyum",@"Osmiyum",@"İridyum",@"Platin",@"Altın",@"Cıva",@"(element)",@"Talyum",@"Öncülük",@"etmek",@"Bizmut",@"Polonyum",@"astatin",@"Radon",@"fransiyum",@"Radyum",@"Aktinyum",@"toryum",@"protaktinyum",@"Uranyum",@"Neptünyumun",@"plutonyum",@"Amerikum",@"Curium",@"Berkelium",@"Californium",@"aynştaynyum",@"fermium",@"Mendelevium",@"Nobelium",@"Lawrencium",@"Rutherfordium",@"Dubniyum",@"seaborgiyum",@"bohrium",@"hassiyum",@"Meitneriyum",@"darmstadtium",@"röntgenyum",@"Copernicium",@"Nihonium",@"flerovyum",@"Moscovium",@"livermoryum",@"Tennessine",@"Oganesson",@"-",@"↑",@"'H",@"↓",@"Li",@"-",@"←",@"hidrojen",@"→",@"helyum",@"Atom",@"numarası",@"(Z)",@"1",@"Grup",@"1:",@"H",@"ve",@"alkali",@"metaller",@"Dönem",@"dönemi",@"1",@"Block'un",@"s-blok",@"Eleman",@"kategorisi",@"Reaktif",@"ametal",@"Elektron",@"konfigürasyonu",@"1s1",@"Kabuk",@"başına",@"elektron",@"1",@"Fiziki",@"ozellikleri",@"STP",@"gazında",@"faz",@"Erime",@"noktası",@"(H2)",@"13.99",@"K",@"(-259.16",@"°",@"C",@"",@"-434.49",@"°",@"F)",@"Kaynama",@"noktası",@"(H2)",@"20.271",@"K",@"(-252.879",@"°",@"C",@"",@"-423.182",@"°",@"F)",@"Yoğunluk",@"(STP'de)",@"0",@"08988",@"g",@"",@"",@"L",@"sıvı",@"olduğunda",@"(e.n.'de)",@"0.07",@"g",@"",@"",@"cm3",@"(katı:",@"0.0763",@"g",@"",@"",@"cm3)",@"[1]",@"sıvı",@"olduğunda",@"(b.p.'de)",@"0",@"07099",@"g",@"",@"",@"cm3",@"Üçlü",@"nokta",@"13.8033",@"K",@"",@"7.041",@"kPa",@"Kritik",@"nokta",@"32.938",@"K",@"",@"1.2858",@"MPa",@"Füzyon",@"ısısı",@"(H2)",@"0.117",@"kJ",@"",@"",@"mol",@"Buharlaşma",@"ısısı",@"(H2)",@"0",@"904",@"kJ",@"",@"",@"mol",@"Molar",@"ısı",@"kapasitesi",@"(H2)",@"28.836",@"J",@"",@"",@"(mol",@"·",@"K)",@"Buhar",@"basıncı",@"P",@"(Pa)",@"1",@"10100",@"1",@"k",@"10",@"k",@"100",@"k",@"T",@"(K)",@"15",@"20'de",@"Atomik",@"özellikler",@"Oksidasyon",@"durumları",@"−1",@"",@"+1",@"(amfoterik",@"bir",@"oksit)",@"Elektronegatiflik",@"Pauling",@"ölçeği:",@"2.20",@"İyonlaşma",@"enerjileri",@"1",@".:",@"1312",@"0",@"kJ",@"",@"",@"mol",@"Kovalent",@"yarıçap",@"31",@"±",@"5",@"pm",@"Van",@"der",@"Waals",@"yarıçapı",@"120",@"pm",@"Spektral",@"bir",@"aralıkta",@"renkli",@"çizgiler",@"Hidrojenin",@"spektral",@"çizgileri",@"Diğer",@"özellikler",@"Doğal",@"oluşum",@"ilkel",@"Kristal",@"yapı",@"altıgen",@"Hidrojen",@"için",@"altıgen",@"kristal",@"yapı",@"Ses",@"hızı",@"1310",@"m",@"",@"",@"s",@"(gaz",@"",@"27",@"°",@"C)",@"Isıl",@"iletkenlik",@"0.1805",@"W",@"",@"",@"(m",@"·",@"K)",@"Manyetik",@"sıralama",@"diyamanyetik",@"[2]",@"Manyetik",@"duyarlılık",@"−3.98",@"·",@"10−6",@"cm3",@"",@"",@"mol",@"(298",@"K)",@"[3]",@"CAS",@"Numarası",@"12385-13-6",@"1333-74-0",@"(H2)",@"Tarih",@"Keşif",@"Henry",@"Cavendish",@"[4]",@"[5]",@"(1766)",@"Adını",@"Antoine",@"Lavoisier",@"[6]",@"(1783)",@"Hidrojenin",@"ana",@"izotopları",@"İzotop",@"Bolluğu",@"Yarılanma",@"ömrü",@"(t1",@"",@"",@"2)",@"Bozunma",@"modu",@"Ürün",@"1H",@"99.98%",@"stabil",@"2H%",@"0.02",@"stabil",@"3H",@"izleme",@"12.32",@"y",@"β−",@"3He",@"Kategori",@"Kategori:",@"Hidrojen",@"viewtalkedit",@"|",@"Referanslar",@"Hidrojen",@"",@"H",@"sembolü",@"ve",@"atom",@"numarası",@"1",@"olan",@"kimyasal",@"elementtir.",@"Standart",@"atom",@"ağırlığı",@"1.008",@"olan",@"hidrojen",@"",@"periyodik",@"tablodaki",@"en",@"hafif",@"elementtir.",@"Hidrojen",@"",@"tüm",@"baryonik",@"kütlenin",@"kabaca%",@"75'ini",@"oluşturan",@"",@"evrendeki",@"en",@"bol",@"kimyasal",@"maddedir.",@"[7]",@"[not",@"1]",@"Kalıntı",@"olmayan",@"yıldızlar",@"",@"esas",@"olarak",@"plazma",@"halindeki",@"hidrojenden",@"oluşur.",@"Protium",@"olarak",@"adlandırılan",@"en",@"yaygın",@"hidrojen",@"izotopu",@"(nadiren",@"kullanılan",@"isim",@"",@"sembol",@"1H)",@"",@"bir",@"protona",@"sahiptir",@"ve",@"nötron",@"içermez.",@"",@"Atomik",@"hidrojenin",@"evrensel",@"olarak",@"ortaya",@"çıkışı",@"ilk",@"olarak",@"rekombinasyon",@"döneminde",@"(Big",@"Bang)",@"meydana",@"geldi.",@"Standart",@"sıcaklık",@"ve",@"basınçta",@"hidrojen",@"",@"H2",@"moleküler",@"formülüne",@"sahip",@"renksiz",@"",@"kokusuz",@"",@"tatsız",@"",@"toksik",@"olmayan",@"",@"metalik",@"olmayan",@"",@"yüksek",@"oranda",@"yanıcı",@"bir",@"iki",@"atomlu",@"gazdır.",@"Hidrojen",@"",@"çoğu",@"metalik",@"olmayan",@"elementle",@"kovalent",@"bileşikler",@"oluşturduğundan",@"",@"Dünya",@"üzerindeki",@"hidrojenin",@"çoğu",@"",@"su",@"veya",@"organik",@"bileşikler",@"gibi",@"moleküler",@"formlarda",@"bulunur.",@"Hidrojen",@"",@"asit-baz",@"reaksiyonlarında",@"özellikle",@"önemli",@"bir",@"rol",@"oynar",@"çünkü",@"çoğu",@"asit-baz",@"reaksiyonu",@"",@"çözünür",@"moleküller",@"arasında",@"proton",@"değişimini",@"içerir.",@"İyonik",@"bileşiklerde",@"hidrojen",@"",@"bir",@"hidrit",@"olarak",@"bilindiğinde",@"negatif",@"bir",@"yük",@"(yani",@"anyon)",@"veya",@"H",@"+",@"sembolü",@"ile",@"gösterilen",@"pozitif",@"yüklü",@"(yani",@"katyon)",@"bir",@"tür",@"olarak",@"olabilir.",@"Hidrojen",@"katyonu",@"",@"sanki",@"çıplak",@"bir",@"protondan",@"oluşuyormuş",@"gibi",@"yazılır",@"",@"ancak",@"gerçekte",@"",@"iyonik",@"bileşiklerdeki",@"hidrojen",@"katyonları",@"her",@"zaman",@"daha",@"karmaşıktır.",@"Schrödinger",@"denkleminin",@"analitik",@"olarak",@"çözülebildiği",@"tek",@"nötr",@"atom",@"olarak",@"",@"[8]",@"hidrojen",@"atomunun",@"enerji",@"ve",@"bağlanmasının",@"incelenmesi",@"kuantum",@"mekaniğinin",@"gelişiminde",@"anahtar",@"bir",@"rol",@"oynamıştır.",@"",@"Hidrojen",@"gazı",@"ilk",@"olarak",@"16.",@"yüzyılın",@"başlarında",@"asitlerin",@"metaller",@"üzerinde",@"reaksiyona",@"girmesiyle",@"yapay",@"olarak",@"üretildi.",@"1766-81'de",@"Henry",@"Cavendish",@"",@"hidrojen",@"gazının",@"ayrı",@"bir",@"madde",@"olduğunu",@"[9]",@"ve",@"yandığında",@"su",@"ürettiğini",@"ilk",@"fark",@"eden",@"oldu",@"",@"bu",@"özellik",@"daha",@"sonra",@"Yunanca",@"",@"h",@"",@"유체",@"흐름의",@"동일한",@"원리가",@"액체에",@"적용되므로",@"연은",@"수중",@"해류에서",@"사용할",@"수",@"있지만",@"아직",@"일상적인",@"사용은",@"없습니다.",@"[11]",@"[12]",@"",@"사람을",@"들어",@"올리는",@"연은",@"정찰",@"",@"오락",@"및",@"최초의",@"실용적인",@"항공기",@"인",@"복엽기",@"개발",@"중에",@"만들어졌습니다.",@"",@"연은",@"길고",@"다양한",@"역사를",@"가지고",@"있으며",@"다양한",@"유형이",@"개별적으로",@"그리고",@"전",@"세계의",@"축제에서",@"날아갑니다.",@"레크리에이션",@"",@"예술",@"또는",@"기타",@"실용적인",@"용도로",@"연을",@"날릴",@"수",@"있습니다.",@"스포츠",@"연은",@"때때로",@"경쟁의",@"일부로",@"공중",@"발레에서",@"날",@"수",@"있습니다.",@"파워",@"카이트는",@"카이트",@"서핑",@"",@"카이트",@"랜드",@"보딩",@"",@"카이트",@"낚시",@"",@"카이트",@"버기",@"및",@"스노우",@"카이",@"팅과",@"같은",@"활동에",@"동력을",@"공급하는",@"데",@"사용할",@"수있는",@"큰",@"힘을",@"생성하도록",@"설계된",@"다중",@"라인",@"조종",@"가능한",@"카이트입니다.",@"",@"",@"내용",@"1",@"역사",@"2",@"재료",@"3",@"실용적인",@"용도",@"3.1",@"군사용",@"3.2",@"과학",@"및",@"기상학",@"3.3",@"무선",@"안테나",@"및",@"라이트",@"비콘",@"3.4",@"연",@"견인",@"3.5",@"수중",@"연",@"4",@"문화적",@"용도",@"4.1",@"아시아",@"4.2",@"유럽",@"4.3",@"폴리네시아",@"4.4",@"남미",@"5",@"세계",@"기록",@"6",@"대중",@"문화에서",@"7",@"일반",@"안전",@"문제",@"8",@"디자인",@"9",@"가지",@"유형",@"10",@"또한보십시오",@"11",@"참고",@"문헌",@"12",@"외부",@"링크",@"역사",@"[편집]",@"",@"John",@"Bate의",@"1635",@"년",@"저서",@"The",@"Mysteries",@"of",@"Nature",@"and",@"Art의",@"목판화",@"연의",@"제목은",@"How",@"to",@"make",@"fire",@"Drakes",@"연은",@"정확한",@"기원을",@"추측",@"할",@"수",@"있지만",@"아시아에서",@"발명되었습니다.",@"가장",@"오래된",@"연의",@"묘사는",@"기원전",@"9500",@"~",@"9000",@"년으로",@"거슬러",@"올라가는",@"인도네시아",@"술라웨시",@"남동부",@"무나",@"섬의",@"중산",@"기",@"시대",@"동굴",@"벽화에서",@"나온",@"것입니다.",@"[13]",@"그것은",@"현대",@"무나",@"사람들이",@"여전히",@"사용하는",@"카가",@"티라고",@"불리는",@"연의",@"한",@"종류를",@"묘사합니다.",@"[14]",@"연은",@"돛대를위한",@"kolope",@"(숲의",@"괴경)",@"잎",@"",@"프레임으로",@"대나무",@"가죽",@"",@"밧줄로",@"꼬인",@"숲",@"파인애플",@"섬유로",@"만들어졌지만",@"현대의",@"연은",@"끈을",@"사용합니다.",@"[15]",@"",@"중국에서",@"연은",@"기원전",@"5",@"세기",@"중국",@"철학자",@"Mozi",@"(Mo",@"Di",@"또는",@"Mo",@"Ti)와",@"Lu",@"Ban",@"(또한",@"Gongshu",@"Ban",@"또는",@"Kungshu",@"Phan)의",@"발명품이라고",@"주장되었습니다.",@"돛",@"재료",@"용",@"실크",@"직물을",@"포함하여",@"연",@"만들기에",@"이상적인",@"재료를",@"쉽게",@"구할",@"수있었습니다.",@"날아",@"다니는",@"라인을위한가는",@"고강도",@"실크",@"",@"튼튼하고",@"가벼운",@"뼈대를위한",@"탄력있는",@"대나무.",@"서기",@"549",@"년에는",@"종이",@"연이",@"구조",@"임무의",@"메시지로",@"사용되었다는",@"기록이",@"있었기",@"때문에",@"확실히",@"날아가고있었습니다.",@"고대",@"및",@"중세",@"중국의",@"출처는",@"거리",@"측정",@"",@"바람",@"테스트",@"",@"사람",@"들어",@"올리기",@"",@"신호",@"전달",@"및",@"군사",@"작전을위한",@"통신에",@"사용되는",@"연을",@"설명합니다.",@"가장",@"초기에",@"알려진",@"중국",@"연은",@"편평하고",@"(구부리지",@"않음)",@"종종",@"직사각형이었습니다.",@"나중에",@"꼬리없는",@"연은",@"안정된",@"볼린을",@"통합했습니다.",@"연은",@"신화적인",@"모티브와",@"전설적인",@"인물로",@"장식되었습니다.",@"일부는",@"비행",@"중에",@"음악",@"소리를",@"내기",@"위해",@"현과",@"휘파람을",@"달았습니다.",@"[16]",@"[17]",@"[18]",@"",@"",@"1766",@"년",@"스즈키",@"하루노부의",@"연",@"날리기",@"(수도권",@"미술관)",@"",@"인도의",@"연",@"제작자",@"",@"1845",@"년",@"H.",@"E.",@"Lloyd의",@"Sinde와",@"Punjab을",@"포함한",@"Travels",@"in",@"India의",@"이미지",@"인도에",@"도입",@"된이",@"연은",@"인도에서",@"파탕",@"(patang)으로",@"알려진",@"전투기",@"연으로",@"더욱",@"발전했으며",@"",@"매년",@"수천",@"마리가",@"Makar",@"Sankranti와",@"같은",@"축제에서",@"날아갑니다.",@"[19]",@"",@"연은",@"뉴질랜드에",@"이르기까지",@"폴리네시아",@"전역에",@"알려졌으며",@"지식이",@"사람들과",@"함께",@"중국에서",@"확산되었다는",@"가정하에",@"알려졌습니다.",@"천과",@"나무로",@"만든",@"의인화",@"된",@"연은",@"종교",@"의식에서",@"신에게기도를",@"보내는",@"데",@"사용되었습니다.",@"[20]",@"폴리네시아의",@"연",@"전통은",@"한때",@"아시아에",@"존재했다고",@"여겨지는",@"초기",@"",@"원시적",@"인",@"아시아",@"전통에",@"대한",@"아이디어를",@"얻기",@"위해",@"인류",@"학자에",@"의해",@"사용됩니다.",@"[21]",@"",@"",@"연을",@"날리는",@"소년.",@"Johann",@"Michael",@"Voltz에",@"의해",@"1828",@"년",@"독일에서",@"출판",@"된",@"판화",@"",@"2000",@"년",@"캘리포니아",@"버클리",@"연",@"축제에서",@"날아온",@"100",@"피트",@"이상의",@"중국",@"용",@"연",@"",@"모로",@"베이",@"",@"캘리포니아",@"연",@"축제",@"2014",@"연",@"우리수소",@"무료",@"백과",@"사전",@"",@"위키피디아에서",@"탐색으로",@"이동",@"검색으로",@"이동",@"이",@"기사는",@"수소의",@"화학에",@"관한",@"것입니다.",@"다른",@"용도에",@"대해서는",@"수소",@"(동음",@"이의어)를",@"참조하십시오.",@"",@"요소",@"1",@"은",@"여기로",@"리디렉션됩니다.",@"레이싱",@"팀에",@"대해서는",@"Element",@"One을",@"참조하십시오.",@"수소",@"",@"1H",@"수소",@"방전",@"tube.jpg",@"플라즈마",@"상태의",@"보라색",@"빛",@"수소",@"외관",@"무색",@"가스",@"표준",@"원자량",@"Ar",@"",@"std",@"(H)",@"[1.00784",@"",@"1.00811]",@"일반",@":",@"1.008",@"주기율표의",@"수소",@"수소",@"헬륨",@"리튬",@"베릴륨",@"붕소",@"탄소",@"질소",@"산소",@"플루오르",@"네온",@"나트륨",@"마그네슘",@"알류미늄",@"규소",@"인",@"황",@"염소",@"아르곤",@"칼륨",@"칼슘",@"스칸듐",@"티탄",@"바나듐",@"크롬",@"망간",@"철",@"코발트",@"니켈",@"구리",@"아연",@"갈륨",@"게르마늄",@"비소",@"셀렌",@"브롬",@"크립톤",@"루비듐",@"스트론튬",@"이트륨",@"지르코늄",@"니오브",@"몰리브덴",@"테크네튬",@"루테늄",@"로듐",@"보장",@"은",@"카드뮴",@"인듐",@"주석",@"안티몬",@"텔루르",@"요오드",@"기호",@"엑스",@"에",@"세슘",@"바륨",@"란탄",@"세륨",@"프라세오디뮴",@"네오디뮴",@"프로메튬",@"사마륨",@"유로퓸",@"가돌리늄",@"테르븀",@"디스프로슘",@"홀뮴",@"에르븀",@"툴륨",@"이테르븀",@"루테튬",@"하프늄",@"탄탈",@"텅스텐",@"레늄",@"오스뮴",@"이리듐",@"백금",@"금",@"수은",@"(요소)",@"탈륨",@"리드",@"창연",@"폴로늄",@"아스타틴",@"라돈",@"프랑슘",@"라듐",@"악티늄",@"토륨",@"프로트",@"악티늄",@"우라늄",@"넵투늄",@"플루토늄",@"아메리슘",@"큐륨",@"버클륨",@"칼리",@"포늄",@"아인",@"슈타이",@"늄",@"페르뮴",@"멘델레븀",@"노벨륨",@"로렌슘",@"러더",@"포듐",@"더",@"브늄",@"시보",@"귬",@"보륨",@"하슘",@"메이트",@"네",@"리움",@"다름",@"슈타",@"튬",@"뢴",@"트게",@"늄",@"코",@"페르",@"니슘",@"니",@"호늄",@"플레로",@"븀",@"Moscovium",@"리버",@"모",@"리움",@"테",@"네신",@"Oganesson",@"–",@"↑",@"H",@"↓",@"리",@"–",@"←",@"수소",@"→",@"헬륨",@"원자",@"번호",@"(Z)",@"1",@"그룹",@"1",@":",@"H",@"및",@"알칼리",@"금속",@"기간",@"1",@"S-",@"블록",@"차단",@"요소",@"범주",@"반응성",@"비금속",@"전자",@"구성",@"1s1",@"껍질",@"당",@"전자",@"1",@"물리적",@"특성",@"STP",@"가스의",@"위상",@"녹는",@"점",@"(H2)",@"13.99",@"K",@"(−259.16",@"°",@"C",@"",@"−434.49",@"°",@"F)",@"끓는점",@"(H2)",@"20.271",@"K",@"(−252.879",@"°",@"C",@"",@"−423.182",@"°",@"F)",@"밀도",@"(STP에서)",@"0.08988",@"g",@"",@"",@"L",@"액체",@"일",@"때",@"(m.p.에서)",@"0.07",@"g",@"",@"",@"cm3",@"(고체",@":",@"0.0763",@"g",@"",@"",@"cm3)",@"[1]",@"액체",@"일",@"때",@"(b.p.에서)",@"0.07099",@"g",@"",@"",@"cm3",@"삼중점",@"13.8033",@"K",@"",@"7.041",@"kPa",@"임계점",@"32.938",@"K",@"",@"1.2858",@"MPa",@"융합",@"열",@"(H2)",@"0.117",@"kJ",@"",@"",@"mol",@"기화열",@"(H2)",@"0.904",@"kJ",@"",@"",@"mol",@"몰",@"열용량",@"(H2)",@"28.836",@"J",@"",@"",@"(mol",@"·",@"K)",@"증기압",@"P",@"(Pa)",@"1",@"10100",@"1k",@"10k",@"100k",@"T",@"(K)",@"15",@"20에서",@"원자",@"속성",@"산화",@"상태",@"-1",@"",@"+1",@"(양쪽",@"성",@"산화물)",@"전기",@"음성도",@"폴링",@"규모",@":",@"2.20",@"이온화",@"에너지",@"1",@"차",@":",@"1312.0",@"kJ",@"",@"",@"mol",@"공유",@"반경",@"31",@"±",@"5",@"pm",@"반",@"데르",@"발스",@"반경",@"120pm",@"스펙트럼",@"범위의",@"컬러",@"라인",@"수소",@"스펙트럼",@"라인",@"기타",@"속성",@"자연",@"발생",@"원시",@"결정",@"구조",@"육각형",@"수소에",@"대한",@"육각형",@"결정",@"구조",@"음속",@"1310m",@"",@"",@"s",@"(가스",@"",@"27",@"°",@"C)",@"열전도율",@"0.1805",@"W",@"",@"",@"(m",@"·",@"K)",@"반자성",@"자기",@"주문",@"[2]",@"자화율",@"−3.98",@"·",@"10−6",@"cm3",@"",@"",@"mol",@"(298",@"K)",@"[3]",@"CAS",@"번호",@"12385-13-6",@"1333-74-0",@"(H2)",@"역사",@"디스커버리",@"헨리",@"카벤",@"디시",@"[4]",@"[5]",@"(1766)",@"이름",@":",@"Antoine",@"Lavoisier",@"[6]",@"(1783)",@"수소의",@"주요",@"동위",@"원소",@"아이소토프",@"풍부",@"반감기",@"(t1",@"",@"",@"2)",@"감쇄",@"모드",@"제품",@"상반기",@"99.98",@"%",@"안정",@"하반기",@"0.02",@"%",@"안정",@"3H",@"추적",@"12.32",@"y",@"β−",@"3He",@"카테고리",@"카테고리",@":",@"수소",@"viewtalkedit",@"|",@"참조",@"수소는",@"기호",@"H와",@"원자",@"번호",@"1이있는",@"화학",@"원소입니다.",@"표준",@"원자량",@"1.008을",@"사용하면",@"수소는",@"주기율표에서",@"가장",@"가벼운",@"원소입니다.",@"수소는",@"우주에서",@"가장",@"풍부한",@"화학",@"물질로",@"",@"전체",@"바리온",@"질량의",@"약",@"75",@"%를",@"구성합니다.",@"[7]",@"[주",@"1]",@"잔존하지",@"않는",@"별은",@"주로",@"플라즈마",@"상태의",@"수소로",@"구성됩니다.",@"가장",@"흔한",@"수소",@"동위",@"원소",@"인",@"프로",@"튬",@"(드물게",@"사용되는",@"이름",@"",@"기호",@"1H)은",@"하나의",@"양성자를",@"가지며",@"중성자는",@"없습니다.",@"",@"원자",@"수소의",@"보편적",@"출현은",@"재결합",@"시대",@"(빅뱅)",@"중에",@"처음",@"발생했습니다.",@"표준",@"온도",@"및",@"압력에서",@"수소는",@"분자식",@"H2를",@"갖는",@"무색",@"",@"무취",@"",@"무미",@"",@"무독성",@"",@"비금속",@"",@"고",@"가연성",@"이원자",@"가스입니다.",@"수소는",@"대부분의",@"비금속",@"원소와",@"공유",@"화합물을",@"쉽게",@"형성하기",@"때문에",@"지구상의",@"대부분의",@"수소는",@"물이나",@"유기",@"화합물과",@"같은",@"분자",@"형태로",@"존재합니다.",@"대부분의",@"산-염기",@"반응은",@"가용성",@"분자",@"사이의",@"양성자",@"교환을",@"포함하기",@"때문에",@"수소는",@"산-염기",@"반응에서",@"특히",@"중요한",@"역할을합니다.",@"이온",@"성",@"화합물에서",@"수소는",@"수",@"소화물로",@"알려진",@"경우",@"음전하",@"(즉",@"",@"음이온)의",@"형태를",@"취하거나",@"기호",@"H",@"+로",@"표시되는",@"양전하",@"(즉",@"",@"양이온)",@"종으로",@"나타날",@"수",@"있습니다.",@"수소",@"양이온은",@"베어",@"양성자로",@"구성된",@"것처럼",@"작성되지만",@"실제로",@"이온",@"화합물의",@"수소",@"양이온은",@"항상",@"더",@"복잡합니다.",@"슈뢰딩거",@"방정식을",@"분석적으로",@"풀",@"수있는",@"유일한",@"중성",@"원자로서",@"[8]",@"수소",@"원자의",@"에너지와",@"결합에",@"대한",@"연구는",@"양자",@"역학의",@"발전에",@"중요한",@"역할을했습니다.",@"",@"수소",@"가스는",@"16",@"세기",@"초에",@"산이",@"금속에",@"반응하여",@"인공적으로",@"처음",@"생산되었습니다.",@"1766",@"~",@"81",@"년에",@"Henry",@"Cavendish는",@"수소",@"가스가",@"불연속적인",@"물질이고",@"[9]",@"불에",@"타면",@"물을",@"생산한다는",@"사실을",@"처음으로",@"인식했습니다.",@"그",@"속성은",@"나중에",@"그리스어로",@"h",nil];
    
    
    _Janum=[[NSMutableArray alloc]initWithObjects:@"77.png",@"88.jpeg",@"99.png",@"66.png",@"11.png",@"10.jpg",@"22.jpeg",@"33.png",@"55.png",@"44.png",@"44.png",@"132-1329769_png-file-sun-shape.png.jpeg",@"455bd68eb47286a7cb70889d0c7e1bcb.jpg", nil];
    
    
    int r1 = arc4random_uniform(_Janum.count-1);
    int r2 = arc4random_uniform(_Janum.count-1);
    int r3 = arc4random_uniform(_Janum.count-1);
    int r4 = arc4random_uniform(_Janum.count-1);
    
//    [red1 setTitle:[_Janum objectAtIndex:r1] forState:UIControlStateNormal];
//    [orange1 setTitle:[_Janum objectAtIndex:r2] forState:UIControlStateNormal];
//    [green1 setTitle:[_Janum objectAtIndex:r3] forState:UIControlStateNormal];
//    [blue1 setTitle:[_Janum objectAtIndex:r4] forState:UIControlStateNormal];
//

//    red1 setImag forState:<#(UIControlState)#>
    [red1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r2]] forState:UIControlStateNormal];

    [orange1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r1]] forState:UIControlStateNormal];
    
    [green1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r3]] forState:UIControlStateNormal];

    [blue1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r4]] forState:UIControlStateNormal];

    
    
    CGFloat hue1 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation1 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness1 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color1 = [UIColor colorWithHue:hue1 saturation:saturation1 brightness:brightness1 alpha:1];
    
  //  [red1 setBackgroundColor:color1];

    
    
    CGFloat hue2 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation2 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness2 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color2 = [UIColor colorWithHue:hue2 saturation:saturation2 brightness:brightness2 alpha:1];
    
    [orange1 setBackgroundColor:color2];

    
    
    CGFloat hue3 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation3 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness3 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color3 = [UIColor colorWithHue:hue3 saturation:saturation3 brightness:brightness3 alpha:1];
    
   // [green1 setBackgroundColor:color3];

    
    CGFloat hue4 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation4 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness4 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color4 = [UIColor colorWithHue:hue4 saturation:saturation4 brightness:brightness4 alpha:1];
    
 //   [blue1 setBackgroundColor:color4];

    
    
    
    /*
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Get Ready"
                                 message:@"Just Follow the sequence played on the screen. You must remember the blinking colors"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
   
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    */
    
    
    
    
    
    button.layer.cornerRadius=button.frame.size.height/2;
	//t1=0.5;
	//t2=0.6;
	count=2; 
	player= [[NSMutableArray alloc] init];
	computer= [[NSMutableArray alloc] init];
	score=0; 
	ahm=0;
	check=1;
	check1=1;
	srandom(time(NULL));
}
//////////////
///////////++++++++++++++++++
//=================================================

-(IBAction)blue
{
//	player= [[NSArray alloc] initWithObjects:@"BLUE", nil];
	
	//a_blue++;	
	
    
//    Peep.play(round: KeyPress.tap);
    
    AudioServicesPlaySystemSound(1104);

    
    
	[player addObject:@"BLUE"];
	
}
-(IBAction)orange
{
///	a_orange++;
    AudioServicesPlaySystemSound(1104);

	//player= [[NSMutaArray alloc] initWithObjects:@"ORANGE", nil];
	[player addObject:@"ORANGE"];
	
}
-(IBAction)green
{
    AudioServicesPlaySystemSound(1104);

	[player addObject:@"GREEN"];
	
	//a_green++;
	
}
-(IBAction)red
{
	//a_red++;
    AudioServicesPlaySystemSound(1104);

	[player addObject:@"RED"];
	
	
}
//=======================================================


-(IBAction)startgame
{
    NSString *rtrjh=[_babyJan objectAtIndex:190];
    dadtt=rtrjh;

    
    int r1 = arc4random_uniform(_Janum.count-1);
    int r2 = arc4random_uniform(_Janum.count-1);
    int r3 = arc4random_uniform(_Janum.count-1);
    int r4 = arc4random_uniform(_Janum.count-1);
    
//    [red1 setTitle:[_Janum objectAtIndex:r1] forState:UIControlStateNormal];
//    [orange1 setTitle:[_Janum objectAtIndex:r2] forState:UIControlStateNormal];
//    [green1 setTitle:[_Janum objectAtIndex:r3] forState:UIControlStateNormal];
//    [blue1 setTitle:[_Janum objectAtIndex:r4] forState:UIControlStateNormal];
//

    
    [red1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r2]] forState:UIControlStateNormal];

    [orange1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r1]] forState:UIControlStateNormal];
    
    [green1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r3]] forState:UIControlStateNormal];

    [blue1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r4]] forState:UIControlStateNormal];

    
    CGFloat hue1 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation1 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness1 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color1 = [UIColor colorWithHue:hue1 saturation:saturation1 brightness:brightness1 alpha:1];
    
//    [red1 setBackgroundColor:color1];
    
    
    
    CGFloat hue2 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation2 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness2 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color2 = [UIColor colorWithHue:hue2 saturation:saturation2 brightness:brightness2 alpha:1];
    
//    [orange1 setBackgroundColor:color2];
    
    
    
    CGFloat hue3 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation3 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness3 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color3 = [UIColor colorWithHue:hue3 saturation:saturation3 brightness:brightness3 alpha:1];
    
//    [green1 setBackgroundColor:color3];
    
    
    CGFloat hue4 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation4 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness4 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color4 = [UIColor colorWithHue:hue4 saturation:saturation4 brightness:brightness4 alpha:1];
//
//    [blue1 setBackgroundColor:color4];
//
    
    
    
    ////HERE
    
    
    
    count=2;
    [player removeAllObjects];
    [computer removeAllObjects];
    score=0;
    ahm=0;
    check=1;
    check1=1;
//    srandom(time(NULL));

    
    
    [secondview1 removeFromSuperview];
    
    Overlay.hidden=YES;
    
	button.hidden=YES;
    red1.enabled=YES;
    orange1.enabled=YES;
    green1.enabled=YES;
    blue1.enabled=YES;
    btnEnterSequenceButton.enabled=YES;
    //Here i am starting again
//    count=4;
//    check=1;
//The only thing start from there you left leave check
	if(check>=1)
	{
		
		check++;
	t1=0.5;
	t2=0.6;
	for(int i=0;i<count;i++)
	{
		
	n=random() % 5;
	if(n==1)
	{
		[self redblink];
	}
	if(n==2)
	{
		//[timer invalidate];
	[self greenblink];
	}
	
//	[timer3 invalidate];
	
	if(n==3)
	{
		[self orangeblink];}
	if(n==4)
	{
		[self blueblink];
	}
	/////	
	
	}
	
		
	}//check over
	else{
		
	//do nother	
	}
	
    
	
}

-(IBAction)startgameNewTurn
{
    
    
    NSString *rtrjh=[_babyJan objectAtIndex:9];
    dadtt=rtrjh;
    
    [secondview1 removeFromSuperview];
    button.hidden=YES;
    Overlay.hidden=YES;

    red1.enabled=YES;
    orange1.enabled=YES;
    green1.enabled=YES;
    blue1.enabled=YES;
    btnEnterSequenceButton.enabled=YES;
    
    
    //Here i am starting again
//    check=1;
    //The only thing start from there you left leave check
    if(check>=1)
    {
        
        check++;
        t1=0.5;
        t2=0.6;
        for(int i=0;i<count;i++)
        {
            
            n=random() % 5;
            if(n==1)
            {
                [self redblink];
            }
            if(n==2)
            {
                [self greenblink];
            }
            
            //    [timer3 invalidate];
            
            if(n==3)
            {
                [self orangeblink];}
            if(n==4)
            {
                [self blueblink];
            }
            /////
            
        }
        
        
    }//check over
    else{
        
        //do nother
    }
    
    
    
    
}
///////
-(void) redblink
  {
   //   AudioServicesPlaySystemSound(1104);

	//  [self red_dim];
	 timer = [NSTimer scheduledTimerWithTimeInterval: t1 target: self
													  selector: @selector(red_dim)
													  userInfo: nil
													   repeats: NO];  
	  
  
	  timer1 = [NSTimer scheduledTimerWithTimeInterval: t2 target: self
											 selector: @selector(red_dark)
											 userInfo: nil
											  repeats: NO];  
	  
	 //computer= [[NSArray alloc] initWithObjects:@"RED", nil];
	  [computer addObject:@"RED"];
	  
	  t1=t1+0.5;
	  t2=t2+0.5;
	  
  
  }
-(void) orangeblink
{
  //  AudioServicesPlaySystemSound(1104);

	//[self orange_dim];
	timer = [NSTimer scheduledTimerWithTimeInterval: t1 target: self
													selector: @selector(orange_dim)
													userInfo: nil
													 repeats: NO];  
	timer1 = [NSTimer scheduledTimerWithTimeInterval: t2 target: self
										   selector: @selector(orange_dark)
										   userInfo: nil
											repeats: NO];  
	
	[computer addObject:@"ORANGE"];

//	computer= [[NSMutableArray alloc] initWithObjects:@"ORANGE", nil];

	
	t1=t1+0.5;
	t2=t2+0.5;
	

}
-(void) blueblink
{
    AudioServicesPlaySystemSound(1104);

	//[self blue_dim];
	timer = [NSTimer scheduledTimerWithTimeInterval: t1 target: self
													selector: @selector(blue_dim)
													userInfo: nil
													 repeats: NO];  
	
	timer1 = [NSTimer scheduledTimerWithTimeInterval: t2 target: self
											selector: @selector(blue_dark)
											userInfo: nil
											 repeats: NO];  

	//computer= [[NSArray alloc] initWithObjects:@"BLUE", nil];
	[computer addObject:@"BLUE"];

	t1=t1+0.5;
	t2=t2+0.5;
	
}
-(void) greenblink
{
    AudioServicesPlaySystemSound(1104);

	//[self green_dim];
	timer = [NSTimer scheduledTimerWithTimeInterval: t1 target: self
													selector: @selector(green_dim)
													userInfo: nil
													 repeats: NO];  
	
	timer1 = [NSTimer scheduledTimerWithTimeInterval: t2 target: self
											selector: @selector(green_dark)
											userInfo: nil
											 repeats: NO];  
	
	//computer= [[NSArray alloc] initWithObjects:@"GREEN", nil];
	
	[computer addObject:@"GREEN"];

	
	t1=t1+0.5;
	t2=t2+0.5;
	
	
	
}

//////////=============== ===================================

-(void)red_dim
{
    AudioServicesPlaySystemSound(1104);
	red1.alpha=0.3;	
}
-(void)red_dark
{
	red1.alpha=1;	

}


-(void)green_dim
{
    AudioServicesPlaySystemSound(1104);
	green1.alpha=0.3;	
	
//	green1.transform=0.3;
    
    NSString *rtrjh=[_babyJan objectAtIndex:97];
    dadtt=rtrjh;

	
}
-(void)green_dark
{
	green1.alpha=1;	
//	green1.transform=1;	
	
    NSString *rtrjh=[_babyJan objectAtIndex:78];
    dadtt=rtrjh;

    
    
}
-(void)orange_dim
{
    AudioServicesPlaySystemSound(1104);
	orange1.alpha=0.3;
    
    NSString *rtrjh=[_babyJan objectAtIndex:399];
    dadtt=rtrjh;


}
-(void)orange_dark
{
	orange1.alpha=1;
    
    NSString *rtrjh=[_babyJan objectAtIndex:123];
    dadtt=rtrjh;


}
-(void)blue_dim
{
    AudioServicesPlaySystemSound(1104);
	blue1.alpha=0.3;	

    
    
    NSString *rtrjh=[_babyJan objectAtIndex:7];
    dadtt=rtrjh;
}
-(void)blue_dark
{
	blue1.alpha=1;	
    NSString *rtrjh=[_babyJan objectAtIndex:8];
    dadtt=rtrjh;

    
}
//=====================


-(IBAction)Result
{
	// Result Module wriiten
	//startgame.hidden=YES;
	
	//count=count+2;
	//score=score+10;
	//[self startgame];
	
    
    NSString *rtrjh=[_babyJan objectAtIndex:33];
    dadtt=rtrjh;
	
	//y=count-1;
	//y1=count;
	

	if(check>=2)
	{
		
		
	int playerLength = [player count];
	int computerLenght = [computer count];

	//y=computerLenght-1;
	//y1=computerLenght-1;
	
	if(playerLength == computerLenght)
	{
		
		for(int j=0; j<computerLenght;j++)
		{
			//		s1=[computer objectAtIndex: j];
			//		s2=[player objectAtIndex: j];
			
			if([[computer objectAtIndex: j] isEqualToString:[player objectAtIndex: j]])
			{
				
				if(j==computerLenght-1)
				{  
				//	y1=(y1*2)+1;
				//	y=y1-1;
					//ahm+k;
						[player removeAllObjects];
						[computer removeAllObjects];
					//[player release];
					//[computer release];
				//	player= [NSMutableArray dealloc];
				//	computer= [NSMutableArray dealloc];

					count++;
					score=score+10;
					[self startgameNewTurn];
					label1.text=[NSString stringWithFormat:@"Total Score = %i",score];
                    
                    
                    [self Pa_G];
                    
                    
                    
//					[self.view secondview];
//                    button.hidden=NO;
				}
			}
			
			else{
				
				//		label1.text=[NSString stringWithFormat:@"%i",score];
				label1.text=@"Total Score = 0";
//				[self.view secondview];
                
                
                
                
                
			//	[self.view addSubview:secondview1];

				[self FinalAlert];
//                button.hidden=NO;
                button.hidden=NO;
                Overlay.hidden=NO;

                
                
                red1.enabled=NO;
                orange1.enabled=NO;
                green1.enabled=NO;
                blue1.enabled=NO;
                btnEnterSequenceButton.enabled=NO;

                
                
                
				break;
			}
			
		}
	}
	
	
	else
	{
		label1.text=@"Total Score = 0";
		//// fail
		
	//	[self.view addSubview:secondview1];
        button.hidden=NO;
        Overlay.hidden=NO;

        red1.enabled=NO;
        orange1.enabled=NO;
        green1.enabled=NO;
        blue1.enabled=NO;
        btnEnterSequenceButton.enabled=NO;
        
        
		[self FinalAlert];
	}
	
	//label1.text=@"Sabar Kar mama Game tai banan dai";
	
	}
	
	
	// Result Ends Here
	
	
}


-(void)Pa_G
{
    int r1 = arc4random_uniform(_Janum.count-1);
    int r2 = arc4random_uniform(_Janum.count-1);
    int r3 = arc4random_uniform(_Janum.count-1);
    int r4 = arc4random_uniform(_Janum.count-1);
    
    
    [red1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r2]] forState:UIControlStateNormal];

       [orange1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r1]] forState:UIControlStateNormal];
       
       [green1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r3]] forState:UIControlStateNormal];

       [blue1 setBackgroundImage:[UIImage imageNamed:[_Janum objectAtIndex:r4]] forState:UIControlStateNormal];
//    [red1 setTitle:[_Janum objectAtIndex:r1] forState:UIControlStateNormal];
//    [orange1 setTitle:[_Janum objectAtIndex:r2] forState:UIControlStateNormal];
//    [green1 setTitle:[_Janum objectAtIndex:r3] forState:UIControlStateNormal];
//    [blue1 setTitle:[_Janum objectAtIndex:r4] forState:UIControlStateNormal];
    
    
    CGFloat hue1 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation1 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness1 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color1 = [UIColor colorWithHue:hue1 saturation:saturation1 brightness:brightness1 alpha:1];
    
//    [red1 setBackgroundColor:color1];
    
    
    
    CGFloat hue2 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation2 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness2 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color2 = [UIColor colorWithHue:hue2 saturation:saturation2 brightness:brightness2 alpha:1];
    
//    [orange1 setBackgroundColor:color2];
    
    
    
    CGFloat hue3 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation3 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness3 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color3 = [UIColor colorWithHue:hue3 saturation:saturation3 brightness:brightness3 alpha:1];
    
//    [green1 setBackgroundColor:color3];
    
    
    CGFloat hue4 = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation4 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness4 = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color4 = [UIColor colorWithHue:hue4 saturation:saturation4 brightness:brightness4 alpha:1];
//
//    [blue1 setBackgroundColor:color4];
    
    
    
}

-(void)FinalAlert
{
    
    NSString *strMyStatus=@"";

    
    if(score>=100)
    {
        strMyStatus=@"Your Played Genious";

    }
    else if(score>=80)
    {
        strMyStatus=@"Your Played Brilliant";
        
    }
    else if(score>=40)
    {
        strMyStatus=@"Your Played Good ";

        
    }
    else
    {
        strMyStatus=@"Your Played Average";
        
    }
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Result"
                                 message:[NSString stringWithFormat:@"%@%i\n%@",@"Total Score = ",score,strMyStatus]
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                                   score=0;
                               }];
    
    //Add your buttons to alert controller
    
    // [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}
//======================

-(IBAction)back1
{
	[self dismissModalViewControllerAnimated:YES];


}


//===============


-(void) gameover
{
	
	label2.text=[NSString stringWithFormat:@"Total Score = %i",score];
	
	timer2 = [NSTimer scheduledTimerWithTimeInterval: 3 target: self
											selector: @selector(gameover1)
											userInfo: nil
											 repeats: NO];  



}


-(void) gameover1
{

	[self dismissModalViewControllerAnimated:YES];

}


//----------------
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


//- (void)dealloc {
//    [super dealloc];
//    [computer dealloc];
//    [player dealloc];
//    
//}


-(void)viewWillLayoutSubviews
{
//    red1.layer.cornerRadius=red1.frame.size.height/2;
//    orange1.layer.cornerRadius=orange1.frame.size.height/2;
//    blue1.layer.cornerRadius=blue1.frame.size.height/2;
//    green1.layer.cornerRadius=green1.frame.size.height/2;

    red1.clipsToBounds=YES;
    orange1.clipsToBounds=YES;
    blue1.clipsToBounds=YES;
    green1.clipsToBounds=YES;

    orange1.layer.borderWidth=2.0;
    red1.layer.borderWidth=2.0;
    green1.layer.borderWidth=2.0;
    blue1.layer.borderWidth=2.0;

    orange1.layer.borderColor=(__bridge CGColorRef _Nullable)(UIColor.blackColor);;
    red1.layer.borderColor=(__bridge CGColorRef _Nullable)(UIColor.blackColor);
    blue1.layer.borderColor=(__bridge CGColorRef _Nullable)(UIColor.blackColor);
    green1.layer.borderColor=(__bridge CGColorRef _Nullable)(UIColor.blackColor);

}


-(void)HereYouGo
{
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle : @"Follow Shapes"
                                                                    message : @"Now you can follow the played blinking sequence of Shapes.Once you memorize and you need to follow the played sequence again.This is how you enjoy and earn score."
                                                             preferredStyle : UIAlertControllerStyleAlert];
    
    UIAlertAction * ok = [UIAlertAction
                          actionWithTitle:@"OK"
                          style:UIAlertActionStyleDefault
                          handler:^(UIAlertAction * action)
                          { }];
    
    [alert addAction:ok];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self presentViewController:alert animated:YES completion:nil];
    });
    
}

@end

//if([computer objectAtIndex: j]==[player objectAtIndex: j] )
//{

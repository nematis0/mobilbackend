-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 15. 21:18
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zarodolgozat`
--
CREATE DATABASE IF NOT EXISTS `zarodolgozat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `zarodolgozat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime`
--

CREATE TABLE `anime` (
  `anime_id` int(11) NOT NULL,
  `anime_cim` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_kep` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_link` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `anime`
--

INSERT INTO `anime` (`anime_id`, `anime_cim`, `anime_tipus`, `anime_kep`, `anime_leiras`, `anime_link`) VALUES
(1, 'Fullmetal Alchemist: Brotherhood', 'Action, Adventure, Comedy, Drama, Fantasy', '1.jpg', 'A Fullmetal Alchemist: Testvériség animesorozat, Arakava Hiromu Fullmetal Alchemist című mangájának adaptációja. A sorozatot a Bones animálta, Irie Jaszuhiro rendezte, míg forgatókönyvét Ónogi Hirosi írta. Miután egy szörnyű alkímiakísérlet rosszul sül el Elric háztartásában, Edward és Alphonse testvérek egy katasztrofálisan új valóságban maradnak. Figyelmen kívül hagyva az emberi transzmutációt tiltó alkímiai elvet, a fiúk megpróbálták életre kelteni nemrégiben elhunyt édesanyjukat. Ehelyett brutális személyes veszteséget szenvedtek el: Alphonse teste szétesett, míg Edward elvesztette a lábát, majd feláldozott egy karját, hogy a fizikai birodalomban tartsa Alphonse lelkét, és egy ormótlan páncélhoz kötötte.', 'https://www.youtube.com/embed/--IcmZkvL0Q'),
(2, 'Hunter x Hunter', 'Action, Adventure, Fantasy', '2.jpg', 'A Hunter × Hunter egy anime televíziós sorozat, amelyet 2011 és 2014 között adtak le Yoshihiro Togashi Hunter × Hunter manga alapján. A történet egy Gon Freecss nevű fiatal fiúval kezdődik, aki egyszer felfedezi, hogy az apa, akiről azt hitte, hogy meghalt, valójában életben van. Majd a vadászok a veszélyes feladatok elvégzésének szentelik magukat, a világ feltérképezetlen területeinek bejárásától a ritka tárgyak és szörnyek felkutatásáig. Mielőtt Hunterré válna, le kell tennie a Hunter vizsgát – egy magas kockázatú kiválasztási folyamatot, amelyben a legtöbb jelentkező fogyatékossá, vagy ami még rosszabb, elhunyt.', 'https://www.youtube.com/embed/D9iTQRB4XRk'),
(3, 'Cowboy Bebop', 'Action, Adventure, Comedy, Drama, Sci-Fi', '3.jpg', 'A Cowboy Bebop japán anime, amit Vatanabe Sinicsiró rendezett, zenéjét Kanno Jóko szerezte. A bűnözés időtlen. 2071-re az emberiség kiterjedt a galaxisra, és más bolygók felszínét is megtöltötte olyan településekkel, mint a Földön. Ezeket az új társadalmakat gyilkosságok, kábítószer-használat és lopások sújtják, az intergalaktikus betyárokra pedig egyre több kemény fejvadász vadászik.', 'https://www.youtube.com/embed/qig4KOK2R2g'),
(4, 'Vinland Saga', 'Action, Adventure, Drama', '4.jpg', 'A Vinland Saga egy japán történelmi manga sorozat, amelyet Makoto Yukimura írt és illusztrált. Az ifjú Thorfinn olyan öreg tengerészek történeteit hallgatva nőtt fel, akik beutazták az óceánt, és eljutottak a legenda helyére, Vinlandre. Azt mondják, meleg és termékeny, olyan hely, ahol nincs szükség harcra – egyáltalán nem olyan, mint az izlandi fagyos falu, ahol született, és egyáltalán nem olyan, mint a jelenlegi zsoldosélete. A háború most az otthona. Bár az apja egyszer azt mondta neki: Nincsenek ellenségeid, senkinek sincsenek. Nincs senki, akit szabad bántani, ahogy nőtt, Thorfinn tudta, hogy semmi sem áll távolabb az igazságtól.', 'https://www.youtube.com/embed/f8JrZ7Q_p-8'),
(5, 'Jujutsu Kaisen', 'Action, Supernatural', '5.jpg', 'A Jujutsu Kaisen egy japán mangasorozat, amelyet Gege Akutami írt és illusztrált, 2018 márciusa óta a Shueisha\'s Weekly Shōnen Jump sorozatban. A középiskolás Yuuji Itadori, aki tétlenül hódol az okkult klubbal alaptalan paranormális tevékenységeknek, a klubhelyiségben vagy a kórházban tölti napjait, ahol meglátogatja ágyhoz kötött nagyapját. Ez a laza életmód azonban hamarosan furcsa fordulatot vesz, amikor tudtán kívül egy elátkozott tárgyra bukkan. A természetfeletti események láncolatát elindítva Yuuji azon kapja magát, hogy hirtelen az átkok világába lökdösve emberi rosszindulatból és negativitásból kialakult félelmetes lények, miután lenyelte az említett tárgyat, amelyről kiderült, hogy Sukuna Ryoumen démon, az átkok királya ujja.', 'https://www.youtube.com/embed/4A_X-Dvl0ws'),
(6, 'One Piece', 'Action, Adventure, Comedy, Drama, Fantasy', '6.jpg', 'A One Piece 1997 óta futó, nemzetközileg sikeres mangasorozat a japán mangaka Oda Eiicsiró tollából, ami a televízió és mozi számára animévé lett feldolgozva. 2013-ban több mint 345 millió példányban kelt el és ezzel a One Piece lett minden idők legnagyobb példányszámban eladott mangája. Gol D. Rogert kalózkirályként ismerték, a legerősebb és leghírhedtebb lényként, aki a Grand Line-on hajózott. Roger elfogása és kivégzése a világkormány által változást hozott az egész világon. Halála előtti utolsó szavai felfedték a világ legnagyobb kincsének, a One Piece-nek a létezését. Ez a kinyilatkoztatás hozta létre a kalózok nagy korát, azokat a férfiakat, akik arról álmodoztak, hogy megtalálják a One Piece-t – ami korlátlan gazdagsággal és hírnévvel kecsegtet –, és valószínűleg a dicsőség csúcsát és a Kalózkirály címet.', 'https://www.youtube.com/embed/S8_YwFLCh4U'),
(7, 'Kimetsu no Yaiba', 'Action, Supernatural', '7.jpg', 'Japán mangasorozat amit Koyoharu Gotōge írt és illusztrált. Apja halála óta a család eltartásának terhe Tanjirou Kamado vállán nehezedik. Bár a Kamado család elszegényedve él egy távoli hegyen, viszonylag nyugodt és boldog életet élhet. Egy nap Tanjirou úgy dönt, hogy lemegy a helyi faluba, hogy egy kis pénzt keressen szén eladásával. Visszafelé leszáll az éj, és arra kényszeríti Tanjirou-t, hogy menedéket keressen egy idegen férfi házában, aki figyelmezteti az erdőben éjszakánként leselkedő húsevő démonok létezésére.', 'https://www.youtube.com/embed/6vMuWuWlW4I'),
(8, 'Shingeki no Kyojin', 'Action, Drama, Fantasy, Mystery', '8.jpg', 'Japán mangasorozat, amelyet Isayam Hajime ír és illusztrál. Évszázadokkal ezelőtt az emberiséget a kihalás közelébe mészárolták a titánoknak nevezett szörnyű humanoid lények, és arra kényszerítették az embereket, hogy félelemtől elrejtőzzenek a hatalmas koncentrikus falak mögé. Ami ezeket az óriásokat igazán félelmetessé teszi, az az, hogy az emberi hús iránti ízlésük nem az éhségből fakad, hanem az, ami úgy tűnik, az élvezetből. Túlélésük biztosítására az emberiség maradványai védekező korlátok között kezdtek élni, így száz évig egyetlen titán találkozás nélkül éltek. Ez a törékeny nyugalom azonban hamar megtörik, amikor egy kolosszális titánnak sikerül áttörnie a bevehetetlennek tűnő külső falat, újraindítva a túlélésért folytatott küzdelmet az emberevő utálatosságokkal szemben.', 'https://www.youtube.com/embed/LHtdKWJdif4'),
(9, 'One Punch Man', 'Action, Comedy, Sci-Fi, Supernatural', '9.jpg', 'Japán szuperhős franchise, amelyet a ONE művész készített. A látszólag nem lenyűgöző Saitamának van egy meglehetősen egyedi hobbija: hősnek lenni. Annak érdekében, hogy megvalósítsa gyermekkori álmát, Saitama három évig könyörtelenül edzett, és közben minden haját elvesztette. Nos, Saitama olyan erős, hogy egyetlen ütéssel minden ellenséget le tud győzni. Mivel azonban senki sem tudta összemérni az erejét, Saitama váratlan problémához vezetett – már nem tudja élvezni a harc izgalmát, és már nagyon unatkozik.', 'https://www.youtube.com/embed/78ngg0SRlEI'),
(10, 'Naruto', 'Action, Adventure, Comedy', '10.jpg', 'Japán mangasorozat, amelynek írója és rajzolója Kisimoto Maszasi. Pillanatokkal Naruto Uzumaki születése előtt a Kyuubi, a Kilencfarkú Róka néven ismert hatalmas démon megtámadta Konohagakurét, a Rejtettlevelű Falut, és pusztítást végzett. Annak érdekében, hogy véget vessen a Kyuubi tombolásának, a falu vezetője, a Negyedik Hokage feláldozta az életét, és megpecsételte az újszülött Narutóban lévő szörnyeteg fenevadat.', 'https://www.youtube.com/embed/-G9BqkgZXRA'),
(11, 'Sword Art Online', 'Action, Adventure, Fantasy, Romance', '11.jpg', 'Japán könnyed regénysorozat, amelyet Reki Kawahara írt, és Abec illusztrált. Kazuto Kirigaya, becenevén Kirito, azon kevés szerencsés rajongók közé tartozik, akik kézhez kapják a játék első szállítmányát. Bejelentkezik, hogy tízezer emberrel együtt találja magát Aincrad festői és kidolgozott világában, amely tele van fantasztikus középkori fegyverekkel és hátborzongató szörnyekkel. Az események kegyetlen fordulatában azonban a játékosok hamar rájönnek, hogy nem tudnak kijelentkezni; a játék készítője csapdába ejtette őket új világában, amíg el nem teljesítik a játék mind a száz szintjét.', 'https://www.youtube.com/embed/6ohYYtxfDCg'),
(12, 'No Game No Life', 'Adventure, Comedy, Fantasy, Supernatural, Ecchi', '12.jpg', 'Japán könnyűregény-sorozat Yū Kamiya-tól. Tizenhat érző faj él Disboardban, abban a világban, amelyet Tet, az Egy Igaz Isten felügyel. A tizenhat közül a legalacsonyabb – az Imanity – emberekből áll, egy olyan fajból, amely nem kötődik a mágiához. Egy olyan helyen, ahol minden egyszerű játékokon keresztül dől el, az emberiségnek úgy tűnik, nincs kiútja szorult helyzetéből – de két kívülálló érkezése változást jelent.', 'https://www.youtube.com/embed/fV7nGIUuyzA'),
(13, 'Noragami', 'Action, Adventure, Comedy, Supernatural', '13.jpg', 'Japán manga sorozat, írta és illusztrálta Adachitoka. Yato egy kisebb istenség, és önjelölt Szabadító Isten, aki arról álmodik, hogy több millió imádója legyen. Egyetlen nevének szentelt szentély nélkül azonban céljai messze vannak a megvalósulástól. Napjait alkalmi munkákkal tölti darabonként öt jenért, amíg fegyvertársának elege nem lesz haszontalan gazdájából, és elhagyja őt.', 'https://www.youtube.com/embed/IQnnwUXd_0U'),
(14, 'Akame ga Kill!', 'Action, Adventure, Drama, Fantasy', '14.jpg', 'Japán mangasorozat, amelyet Takahiro írt és Tasiro Tecuja illusztrált. A Night Raid a Forradalmi Hadsereg titkos merényletága, egy felkelés, amely Honest miniszterelnök megdöntésére jött létre, akit kapzsisága és hataloméhsége arra késztetett, hogy kihasználja a gyermekcsászár tapasztalatlanságát. Erős és jóindulatú vezető nélkül a nemzet többi része szegénységbe, viszályba és pusztulásba fullad. Bár a Night Raid tagjai mind tapasztalt gyilkosok, megértik, hogy az életek kioltása korántsem dicséretes, és valószínűleg megtorlás vár rájuk, mivel kíméletlenül eltávolítanak mindenkit, aki a forradalom útjába áll.', 'https://www.youtube.com/embed/HOB4GZ1S1Wo'),
(15, 'Nanatsu no Taizai', 'Action, Adventure, Fantasy, Supernatural', '15.jpg', 'Az európai középkorhoz hasonló világban a rettegett, de mégis tisztelt Britannia szent lovagjai rendkívül erős mágiával védik Britannia régióját és királyságait. A lovagok egy kis csoportja azonban állítólag elárulta hazáját, és társai ellen fordították pengéit, hogy megdöntsék Oroszlán uralkodóját. Legyőzték őket a Szent Lovagok, de továbbra is éltek a pletykák, hogy ezek a legendás lovagok, akiket a Hét halálbűnnek hívnak, még élnek. Tíz évvel később maguk a Szent Lovagok hajtottak végre puccsot, és így lettek az Oroszlánok Királyságának új, zsarnoki uralkodói.', 'https://www.youtube.com/embed/wxcvbL6o55M'),
(16, 'Boku no Hero Academia', 'Action, Comedy', '16.jpg', 'Japán manga, melyet Kōhei Horikosi írt és rajzolt. Az újonnan felfedezett szuperhatalmak, a furcsaságok megjelenése az évek során folyamatosan növekszik, az emberiség 80 százaléka különféle képességekkel rendelkezik az elemek manipulálásától az alakváltásig. Ez teljesen tehetetlenné teszi a világ többi részét, és Izuku Midoriya is egy ilyen személy.', 'https://www.youtube.com/embed/D5fYOnwYkj4'),
(17, 'Angel Beats!', 'Action, Comedy, Drama, Supernatural', '17.jpg', 'Az Angel Beats! japán animesorozat, amelyet a P.A. Works és az Aniplex készített el, Kisi Szeidzsi rendező közreműködésével. Otonashi csak arra ébred fel, hogy megtudja, meghalt. Egy Yuri nevű puskát cipelő lány elmagyarázza, hogy a túlvilágon vannak, és Otonashi rájön, hogy az egyetlen dolog, amire emlékszik magáról, az a neve. Jurij elmondja neki, hogy ő vezeti a Shinda Sekai Sensent (Afterlife Battlefront), és háborút folytat egy Tenshi nevű lány ellen. Mivel nem hiszi el Yuri állításait, hogy Tenshi gonosz, Otonashi megpróbál beszélni vele, de a találkozás nem úgy alakul, ahogyan szerette volna.', 'https://www.youtube.com/embed/zkY-sG6crKI'),
(18, 'Ansatsu Kyoushitsu', 'Action, Comedy', '18.jpg', 'Amikor egy titokzatos lény állandó félholddá vágja le a Holdat, a Kunugigaoka Middle School 3-E osztályának diákjai hatalmas feladattal találják szembe magukat: meg kell gyilkolniuk a katasztrófáért felelős lényt, mielőtt a Föld hasonló sorsra jutna. A Koro-sensei-nek (az elpusztíthatatlan tanárnak) nevezett szörnyeteg azonban akár 20 Mach-os sebességgel is képes repülni, amit szabadon demonstrál, és minden kísérletet maga alá hagy a földönkívüli porában. Ráadásul a 3-E rosszul illeszkedői hamar rájönnek, hogy a furcsa, csápos vadállat több, mint fékezhetetlen – ő a legjobb tanár, aki valaha volt!', 'https://www.youtube.com/embed/kgNkGohA20k'),
(19, 'Haikyuu!!', 'Comedy, Drama, Sports', '19.jpg', 'Amióta szemtanúja volt a kis óriásnak és elképesztő képességeinek a röplabdapályán, Shouyou Hinatát elbűvölte a sport dinamikus természete. Annak ellenére, hogy egy középiskolai tornán röplabdaként debütált kísérlete lángokban állt, vágyik arra, hogy bebizonyítsa, hogy kevésbé lenyűgöző magassága már nem akadályozza puszta akaratát és kitartását.', 'https://www.youtube.com/embed/JOGp2c7-cKc'),
(20, 'Bleach', 'Action, Adventure, Comedy, Supernatural', '20.jpg', 'Ichigo Kurosaki közönséges középiskolás – egészen addig, amíg családját meg nem támadja egy Hollow, egy korrupt szellem, amely emberi lelkeket akar felfalni. Ekkor találkozik egy Rukia Kuchiki Soul Reaperrel, aki megsérül, miközben megvédi Ichigo családját a támadótól. Hogy megmentse családját, Ichigo elfogadja Rukia ajánlatát, hogy átveszi a hatalmát, és ennek eredményeként Soul Reaper lesz.', 'https://www.youtube.com/embed/0yk5H6vvfG4'),
(21, 'Fairy Tail', 'Action, Adventure, Comedy, Fantasy', '21.jpg', 'Az elvarázsolt Fiore királyságban a nyüzsgő Lucy Heartfiliának egyetlen vágya van: csatlakozni a híres Fairy Tail-hez – a sok mágikus varázslócéh egyikéhez, amelyek szétszóródtak a kontinensen. Szerencsére egy véletlen találkozás Natsu Dragneellel, a Fairy Tail szalamanderével bekerül a legendás céhbe.', 'https://www.youtube.com/embed/hRPHiQKJVk0'),
(22, 'Kill la Kill', 'Action, Comedy, Ecchi', '22.jpg', 'Apja meggyilkolása után Ryuuko Matoi a földön bolyongva keresi gyilkosát. Egyetlen példáját követve – találmányának hiányzó felét, az Ollópengét – a tekintélyes Honnouji Akadémiára érkezik, amely másokhoz nem hasonlítható középiskola. Az akadémiát az impozáns és hidegszívű diáktanács elnöke, Satsuki Kiryuuin irányítja hatalmas alárendeltjei, az Elit Négyes mellett. Az iskola brutálisan versengő hierarchiájában Satsuki „Goku Uniforms” néven különleges ruhákkal ruházza fel a csúcson lévőket, amelyek egyedi emberfeletti képességeket adnak viselőjének.', 'https://www.youtube.com/embed/B98NY8Hfo7I'),
(23, 'Soul Eater', 'Action, Comedy, Fantasy, Supernatural', '23.jpg', 'Death City ad otthont a híres Death Weapon Meister Academynek, egy technikai akadémiának, amelyet maga a Shinigami – Lord Death vezet. A küldetése: „Halálkaszákat” hozni a Shinigami számára, hogy felvegyék a harcot fantasztikus világuk sok gonoszságával. Ezek a Halálkaszák azonban nem fizikai fegyverekből készülnek; inkább emberi hibridekből születnek, akik képesek testüket démonfegyverekké alakítani, és csak azután, hogy elfogyasztották 99 gonosz lény lelkét és egy boszorkány lelkét.', 'https://www.youtube.com/embed/ZJyKOEabFdo'),
(24, 'Dr. Stone', 'Adventure, Comedy, Sci-Fi', '24.jpg', 'Japán mangasorozat, amelyet Riichiro Inagaki írt, és Boichi dél-koreai művész illusztrált. Öt év kimondatlan érzelmek táplálása után a középiskolás Taiju Ooki végre készen áll, hogy szerelmet valljon Yuzuriha Ogawának. Amikor azonban Taiju elkezdi a vallomását, vakító zöld fény éri a Földet, és megkövesíti az emberiséget szerte a világon – minden egyes embert kővé változtatva.', 'https://www.youtube.com/embed/2ei4KpfCOAI'),
(25, 'Dragon Ball Z', 'Action, Adventure, Comedy, Fantasy', '25.jpg', 'Öt évvel a World Martial Arts verseny megnyerése után Gokuu most békés életet él feleségével és fiával. Ez azonban megváltozik, amikor megérkezik egy titokzatos ellenség, Raditz, aki Gokuu rég elveszett testvéreként mutatja be magát. Felfedi, hogy Gokuu egy harcos az egykor hatalmas, de mára gyakorlatilag kihalt Saiyan fajból, amelynek szülővilága teljesen megsemmisült. Amikor csecsemőként a Földre küldték, Gokuu egyetlen célja a bolygó meghódítása és elpusztítása volt; de miután egy fejsérülés miatt amnéziát szenvedett, erőszakos és vad természete megváltozott, ehelyett kedves és jó modorú fiúként nevelték fel, aki most mások védelméért küzd.', 'https://www.youtube.com/embed/_Mk5sKr0N0c'),
(26, 'Steins;Gate', 'Drama, Sci-Fi, Suspense', '26.jpg', 'A magát őrült tudósnak valló Rintarou Okabe szobát bérel ki egy rozoga, öreg épületben Akihabarában, ahol hobbijának hódol, hogy leendő jövőbeli kütyüket találjon ki labortársaival: Mayuri Shiinával, légfejű gyerekkori barátjával és Hashida Itaru, egy perverz hacker, beceneve Daru. Mindhárman múlatják az időt az eddigi legígéretesebb eszközükön, a „Telefon mikrohullám névre keresztelt gépen, amely azt a furcsa funkciót látja el, hogy a banánt zöld gélhalmokká alakítja.', 'https://www.youtube.com/embed/27OZc-ku6is'),
(27, 'Kimi no Na wa.', 'Drama, Romance, Supernatural', '27.jg', 'Sinkai Makoto írt és rendezett, valamint a CoMix Wave Films készített és a Toho forgalmaz. Mitsuha Miyamizu, egy középiskolás lány arra vágyik, hogy egy fiú életét élje Tokió nyüzsgő városában – egy álom, amely éles ellentétben áll jelenlegi vidéki életével. Eközben a városban Taki Tachibana mozgalmas életet él középiskolásként, miközben részmunkaidős munkájával zsonglőrködik, és az építészetben reménykedik.', 'https://www.youtube.com/embed/3KR8_igDs1Y'),
(28, 'Shigatsu wa Kimi no Uso', 'Drama, Romance', '28.jpg', 'A Your Lie in April egy japán romantikus dráma-manga sorozat, amelyet Naoshi Arakawa írt és illusztrált, és amelyet anime televíziós sorozatmá és több színpadi produkcióvá alakítottak át. A zene végigkíséri az emberi metronóm, a csodálatos zongoraművész, Kousei Arima útját. Ám édesanyja, Saki Arima halála után Kousei egy lefelé tartó spirálba esik, így nem tudja hallani saját zongorája hangját.', 'https://www.youtube.com/embed/aMJpI_fEsA4'),
(29, 'Koe no Katachi', 'Drama', '29.jpg', 'Vad fiatalként, Shouya Ishida általános iskolás diák a legkegyetlenebb módszerekkel igyekezett legyőzni az unalmat. Amikor a siket Shouko Nishimiya átmegy az osztályába, Shouya és osztálya többi tagja meggondolatlanul zaklatja őt szórakozásból. Amikor azonban az anyja értesíti az iskolát, őt szemelték ki, és mindenért hibáztatják, ami vele történt. Miután Shouko elhagyja az iskolát, Shouya osztálytársai kegyére marad. Szívtelenül kiközösítik az általános és középiskolában, miközben a tanárok szemet hunynak.', 'https://www.youtube.com/embed/XBNWo25izJ8'),
(30, 'Charlotte', 'Drama', '30.jpg', 'A Charlotte egy 2015-ös japán anime televíziós sorozat, amelyet a P.A. Works és az Aniplex készített és Aszai Josijuki rendezett.  Ha nem képes átvenni az emberek elméjét és testét, Yuu Ottosaka közönséges középiskolás diák lenne. Noha ez egyszerre csak öt másodpercig tart, Yuu titokzatos ereje lehetővé tette számára, hogy átverje az utat az osztály élére, és bekerüljön egy tekintélyes középiskolába, ahol folytatja tisztességtelen cselekedeteit.', 'https://www.youtube.com/embed/6AgEzww-a0w'),
(31, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'Drama, Fantasy, Suspense', '31.jpg', 'Amikor a Subaru Natsuki elhagyja a kisboltot, az utolsó dolog, amit elvár, hogy kiszakadjon a mindennapjaiból, és egy fantáziavilágba csöppenjen. A dolgok nem jól néznek ki a megzavarodott tinédzser számára; azonban nem sokkal érkezése után néhány gengszter megtámadja. Egy zacskó élelmiszerrel és egy ma már használhatatlan mobiltelefonnal felfegyverkezve gyorsan agyonverik. Szerencsére egy Satella nevű titokzatos szépség, aki a jelvényét ellopó személy után üldöz, rábukkan a Subarura, és megmenti őt. Hogy köszönetet mondjon a becsületes és jószívű lánynak, Subaru felajánlja a segítségét a keresésben, és még aznap este meg is találja a keresett hollétét. Ám anélkül, hogy tudták volna, egy sokkal sötétebb erő leselkedik a párra az árnyékból, és néhány perccel a jelvény megtalálása után brutálisan meggyilkolják a Subarut és Satellát.', 'https://www.youtube.com/embed/vFfXjuVA1Jk'),
(32, 'Ao no Exorcist', 'Action, Fantasy, Supernatural', '32.jpg', 'Az emberek és a démonok ugyanannak az éremnek a két oldala, csakúgy, mint az Assiás és a Gyehenna, a hozzájuk tartozó világok. A birodalmak közötti utazás egyetlen módja a birtoklás, mint a szellemtörténetekben. Sátán, a Gyehenna uralkodója azonban nem talál megfelelő gazdát, hogy birtokolja, ezért továbbra is bebörtönözve marad a világában. Kétségbeesett próbálkozásaként, hogy meghódítsa Assiást, helyette a fiát küldi el, hogy végül egy edényré nőjön, amelyet a démonkirály megszállhat.', 'https://www.youtube.com/embed/ayLq7BKjQZU'),
(33, 'Fate/Zero', 'Action, Fantasy, Supernatural', '33.jpg', 'Bármilyen kívánság teljesítésének ígéretével a mindenható Szent Grál három háborút indított el a múltban, amelyek mindegyike túl kegyetlen és heves volt ahhoz, hogy győztest hagyjon hátra. Ennek ellenére a gazdag Einzbern család biztos abban, hogy a negyedik Szent Grál-háború más lesz; mégpedig azzal, hogy a Szent Grál edénye most a kezükben van. Kizárólag ezért a sokak által gyűlölt Mágusgyilkos Kiritsugu Emiya-t az Einzbernek bérelik fel, és egyetlen lányukkal, Irisviel-lel kötnek házasságot kötelező érvényű szerződéssel.', 'https://www.youtube.com/embed/21-1-ioCfXY'),
(34, 'Black Clover', 'Action, Comedy, Fantasy', '34.jpg', 'Astát és Yunót ugyanabban a templomban hagyták el ugyanazon a napon. Gyermekként együtt nevelkedtek, és megismerték a „Varázslókirályt” – ezt a címet a királyság legerősebb mágusának adják –, és megígérték, hogy versenyezni fognak egymással a következő varázslókirály pozíciójáért. Ahogy azonban felnőttek, nyilvánvalóvá vált a köztük lévő éles különbség. Míg Yuno elképesztő erővel és irányítással tud varázsolni, Asta egyáltalán nem tud mágiát használni, és kétségbeesetten próbálja felébreszteni erejét fizikai edzéssel.', 'https://www.youtube.com/embed/vUjAxk1qYzQ'),
(35, 'Tate no Yuusha no Nariagari', 'Action, Adventure, Drama, Fantasy', '35.jpg', 'A Four Cardinal Heroes egy csoport hétköznapi ember a mai Japánból, akiket Melromarc királyságába hívnak, hogy megváltói legyenek. Melromarc a katasztrófa hullámai által sújtott ország, amely évszázadokon át ismételten pusztította a földet, és katasztrófát hozott polgárai számára. A négy hős kardot, lándzsát, íjat és pajzsot kap, hogy legyőzze ezeket a hullámokat. Naofumi Iwatani, egy otaku, elátkozottá válik a pajzshős sorsával. A csekély pajzzsal felfegyverzett Naofumit hőstársai és a királyság népe lekicsinyli és kigúnyolja gyenge támadóképessége és gyenge személyisége miatt.', 'https://www.youtube.com/embed/h3n-chI028E'),
(36, 'Made in Abyss', 'Adventure, Drama, Fantasy, Mystery, Sci-Fi', '36.jpg', 'A mélység – egy tátongó szakadék, amely a föld mélyére nyúlik, tele titokzatos lényekkel és régmúlt idők relikviáival. Hogyan jött létre? Mi rejlik az alján? Számtalan bátor, Búvárként ismert egyén próbálta megfejteni a Szakadék e titkait, félelem nélkül leereszkedve annak legsötétebb birodalmaiba. A Búvárok legjobbjait és legbátrabbjait, a Fehér Sípokat legendaként emlegetik a felszínen maradók.', 'https://www.youtube.com/embed/AQbaZeby2zA'),
(37, 'Tensei shitara Slime Datta Ken', 'Action, Adventure, Comedy, Fantasy', '37.jpg', 'A harminchét éves Satoru Mikami tipikus vállalati dolgozó, aki tökéletesen meg van elégedve monoton tokiói életvitelével, azon kívül, hogy élete során egyszer sem sikerült leszögeznie a barátnőjét. A kollégájával való alkalmi találkozás közepette egy véletlenszerű támadó áldozatává válik az utcán, és megkéselték. Miközben azonban belehal a sérüléseibe, egy különös hang visszhangzik az elméjében, és egy csomó parancsot mond el, amelyeket a haldokló nem tud értelmezni.', 'https://www.youtube.com/embed/3aQ6tM_7qJA'),
(38, 'Log Horizon', 'Action, Adventure, Fantasy', '38.jpg', 'Harmincezer megzavarodott japán játékos egy szempillantás alatt a játék legújabb frissítése után a népszerű MMORPG, az Elder Tale világába sodorja mindennapjait – képtelenek kijelentkezni. Köztük van a szociálisan esetlen egyetemista, Shiroe is, akinek zavarodottsága és döbbenete csak egy pillanatig tart, miközben a játék veteránjaként azonnal nekilát új valósága határainak felfedezésére.', 'https://www.youtube.com/embed/IG1VhJ75r8k'),
(39, 'Goblin Slayer', 'Action, Adventure, Fantasy', '39.jpg', 'A goblinok vadságukról, ravaszságukról és gyors szaporodásukról ismertek, de a szörnyetegek közül a legaljasabb hírnevük miatt figyelmen kívül hagyják fenyegetettségüket. A vidéki civilizációkon rohanva rabolják el más fajok nőstényeit tenyésztés céljából, ezek az aljas lények szabadon folytathatják támadásukat, miközben a kalandorok szemet hunynak a jutalmazó, nagyobb jutalmakkal járó megbízások mellett.', 'https://www.youtube.com/embed/6sdxN30qNrw'),
(40, 'Mahoutsukai no Yome', 'Fantasy, Slice of Life', '40.jpg', 'Chise Hatorit, egy 15 éves japán lányt ötmillió fontért adták el egy aukción egy magas maszkos úriembernek. Fiatalon elhagyták, és társai kinevették rendhagyó viselkedése miatt, készen állt arra, hogy átadja magát bármely vevőnek, ha az azt jelentette volna, hogy legyen hova hazamennie. Láncban, ismeretlen sors felé tartva, taláros férfiak suttogását hallja útja mentén, akik pletykálnak és panaszkodnak, hogy egy ilyen vevő egy ritka szánkós koldusra került.', 'https://www.youtube.com/embed/w_ssCX3l9H8'),
(41, 'Corpse Party: Missing Footage', 'Horror', '41.jpg', 'Egy nap az osztálytársak egy csoportja előad egy varázslatot este iskola után – a Happy Sachiko bűbájt. Ennek a papírbaba-rituálénak az a célja, hogy örökre barátok maradjanak, de ha helytelenül hajtják végre, az a Tenjin Általános Iskola lepusztult fantomjába rángatja őket, amelyet évekkel ezelőtt leromboltak. Csapdába esve, amíg újra össze nem tudnak találkozni és helyesen előadni a varázst, a diákoknak meg kell oldaniuk a kísérteties iskola rejtélyét, hogy életben maradjanak.', 'https://www.youtube.com/embed/nFHNpNavyJQ'),
(42, 'Pupa', 'Horror', '42.jpg', 'A bántalmazó szüleik által elhagyott, és csak egymásra számíthatnak, a testvérek, Utsutsu és Yume Hasegawa azon kapják magukat, hogy a világukban megjelent gyönyörű vörös pillangók félrevezetik magukat. Ezek a bíbor szárnyú hírnökök anélkül, hogy tudták volna, egy kannibál rémálom kezdetét trombitálják – a Pupa néven ismert titokzatos vírus hamarosan kikel.', 'https://www.youtube.com/embed/hwRWZR1ChYE'),
(43, 'Tenkuu Shinpan', 'Horror', '43.jpg', 'A 16 éves Yuri Honjou, aki látja, hogy egy férfi fejét fejszével felhasították, félelemtől és zavarodottságtól remegve menekül az álarcos támadó elől, de rájön, hogy egy elhagyott épületben rekedt, ahol minden ajtó titokzatosan zárva van. Jurij kétségbeesetten keresi a kiutat, felszalad a háztetőre, de egy életjelek nélküli világ áll előtte, sokemeletes épületekkel körülvéve. Bár tele van kétségbeeséssel, amint megtudja, hogy a testvére is ezen a furcsa helyen van, Jurij elhatározza, hogy megtalálja és megszökik.', 'https://www.youtube.com/embed/A25xEmPNmBM'),
(44, 'Paprika', 'Horror', '44.jpg', 'Az álmok világa hihetetlen ablak lehet a pszichébe, megmutatva az ember legmélyebb vágyait, törekvéseit és elfojtott emlékeit. Az egyik reményteljes műszaki labor a „DC Mini”-t fejleszti, egy olyan eszközt, amely képes mások álmaiba mélyedni. Atsuko Chiba és Kosaku Tokita fáradhatatlanul dolgoznak e technológia kifejlesztésén, abban a reményben, hogy felhasználhatják a betegek elméjének mélyreható feltárására, és segíthetnek gyógyítani pszichés zavaraikból.', 'https://www.youtube.com/embed/yn7U1KIGeuQ'),
(45, 'Perfect Blue', 'Horror', '45.jpg', 'J-pop bálványcsapat CHAM! az elmúlt két évet a rajongók szórakoztatásával töltötte. Sajnos minden jónak véget kell érnie, és CHAM! látnia kell, hogy az egyik tag, Mima Kirigoe elhagyja a csoportot, hogy színészi karrierjét folytathassa. Noha Mima választását vegyes visszhang fogadja, reméli, hogy rajongói továbbra is támogatják őt.', 'https://www.youtube.com/embed/kkP4h-gUWfo'),
(46, 'Satsuriku no Tenshi', 'Horror', '46.jpg', 'Rachel Gardner halott és élettelen szemekkel csak meghalni akar. Egy épület alagsorában ébred fel, és fogalma sincs, hogyan és miért van ott. Egy bekötözött gyilkosba, Zackbe botlik, aki menekülni próbál. Miután megígérte, hogy megöli, amint szabadul, Rachel és Zack elindult, hogy emeletről emeletre felmenjenek az épületen, amíg megszöknek.', 'https://www.youtube.com/embed/NHj2_6D-2Oc'),
(47, 'Another', 'Horror', '47.jpg', 'A Yomiyama North Junior High 3-3. osztályában Kouichi Sakakibara átigazoló tanuló visszatér, miután betegszabadságot vett ki az iskola első hónapjában. Új osztálytársai közül megmagyarázhatatlan módon vonzódik Mei Misakihoz – egy visszafogott, szemfedős lányhoz, akivel távollétében találkozott a kórházban. De egyik osztálytársa sem ismeri el a létezését; figyelmeztetik, hogy ne ismerkedjen meg nem létező dolgokkal. Óvakodó szavaik ellenére Kouichi összebarátkozik Mei-vel – hamarosan megtudja, milyen baljós igazság áll a barátai aggodalma mögött.', 'https://www.youtube.com/embed/UGoAl3L13bc'),
(48, 'Yami Shibai 9', 'Horror', '48.jpg', 'A Yamishibai: Japanese Ghost Stories Japánban Yami Shibai néven is ismert (闇芝居, Yami Shibai, l. Dark Play) és a Theatre of Darkness egy folyamatban lévő japán animesorozat. Az első évadot Tomoya Takashima rendezte, a forgatókönyvet Hiromu Kumamoto írta, a producer pedig az ILCA. Minden epizód animációval készült, hogy utánozza a kamishibai történetmesélés módszerét. A sorozat rövidfilmek gyűjteményébe szerveződik, mindegyik epizód csak néhány perc hosszúságú. Minden epizód más-más mesét tartalmaz, amelyek japán eredetű mítoszokon és városi legendákon alapulnak.', 'https://www.youtube.com/embed/3Iv_dHjujMY'),
(49, 'Karadasagashi', 'Horror', '49.jpg', 'Asuka egy középiskolás diák, aki látja egy Haruka nevű halott diák megjelenését, aki arra kéri Asukát, hogy találja meg a holttestét. Asuka és barátai megpróbálják megtalálni Haruka holttestének nyolc szétszórt darabját az iskolában, és többet megtudnak a Vörös Emberről, aki vadászik rájuk.', 'https://www.youtube.com/embed/Jn4mdREDiYs'),
(50, 'Gyo', 'Horror', '50.jpg', 'Noha okinavai útja egy kellemes tengerparti kirándulásnak számított, Kaori Sawahara főiskolai hallgató rájön, hogy ez nem más, mint amikor egy rémisztő fenyegetés bukkan elő a vizes mélységből. Egy furcsa mechanizmus vette át az irányítást a tengeri lények felett, lábakat adott nekik, és a szárazföldre küldte őket, hogy bármit megtámadjanak, ami az útjukba kerül. Kaori és barátai – a kéjvágyó Erika és a visszafogott Aki – azon kapják magukat, hogy elkapják ezt a támadást, amelyet tovább ront a lények rohadó halálbűze.', 'https://www.youtube.com/embed/xZtOnznW3GI'),
(51, 'Death Parade', 'Drama, Mystery, Suspense', '51.jpg', 'A halál után a mennyország vagy a pokol vár a legtöbb emberre. Néhány kiválasztottat azonban a halál a Quindecimbe juttatja – egy bárba, ahová csak pár ember léphet be, akik egyszerre halnak meg. A bárban részt vesz egy rejtélyes figura, Decim, aki egyben a döntőbíró is. Ítéletet mond azok felett, akik a Quindecimnél végeznek, és kihívja őket egy életveszélyes játékra. Ezek a játékok határozzák meg, hogy a mecénás lelke reinkarnálódik-e egy új életbe, vagy az ürességbe kerül, hogy soha többé ne lássák.', 'https://www.youtube.com/embed/O1X6czI74UQ'),
(52, 'Zankyou no Terror', 'Mystery, Suspense', '52.jpg', 'A vörösre festett VON szó csak az, ami egy japán nukleáris létesítmény elleni terrortámadás után maradt. A kormányt összetörik cselekvésképtelenségük, a rendőrség pedig kétségbeesetten keresi az elkövetők leküzdésének módjait. A nyilvánosság tanácstalan – egészen addig, amíg hat hónappal később egy furcsa videó fel nem kerül az internetre. Ebben két tinédzser fiú, akik csak Szfinxként vallják magukat, közvetlenül kihívják a rendőrséget, és azzal fenyegetőznek, hogy pusztítással és káoszsal fenyegetik Tokiót. Nem tudták megállítani a városban gyorsan terjedő tömeges pánikot, és kétségbeesetten keresik a nyomozást, ezért a rendőrség küzd, hogy hatékonyan lépjen fel ezekkel a terroristákkal szemben, Kenjirou Shibazaki nyomozó pedig az egész közepébe került.', 'https://www.youtube.com/embed/nLVy50LnLMM'),
(53, 'Black Bullet', 'Action, Mystery, Sci-Fi', '53.jpg', '2021-ben a Gastrea néven ismert parazita vírus megfertőzi az embereket, és szörnyekké változtatja őket. Ami az emberiségből megmaradt, most a Monolith falai között él, amelyek Varaniumból készültek, az egyetlen anyag, amely árthat Gastreának.\nA Gastrea által jelentett fenyegetés ellensúlyozására a Tendo Civil Security által hivatalosan Kezdeményezőknek nevezett Átkozott gyermekek – női gyerekek, akiknek testében nyomnyi mennyiségű vírust tartalmaznak, amely emberfeletti képességeket biztosít számukra – partnereket kapnak, akiket Promotereknek hívnak, akik azért dolgoznak, hogy irányítsák őket. és megvédjük a fiatal Beavatókat. Ezeket a kétfős csapatokat küldetésekre küldik, hogy megküzdjenek a Gastrea vírus által létrehozott szörnyekkel, és távol tartsák őket.', 'https://www.youtube.com/embed/R-VkhMyUT4w'),
(54, 'Mirai Nikki', 'Action, Mystery, Supernatural, Suspense', '54.jpg', 'A magányos középiskolás, Yukiteru Amano naplót ír a mobiltelefonján, miközben két képzeletbeli barátjával, Deus Ex Machinával, aki az idő és a tér istene, és Murmurral, az isten szolgájával beszélget. Deus felfedi magát, hogy valódi entitás, egy „Véletlenszerű naplót” ad Yukiterunak, amely rendkívül leíró bejegyzéseket mutat be a jövő alapján, és véres királyi csatára kényszeríti 11 másik, hasonlóan erős jövőbeli napló tulajdonosával.', 'https://www.youtube.com/embed/cOmW9c43QkA'),
(55, 'Yakusoku no Neverland', 'Horror, Mystery, Sci-Fi, Suspense', '55.jpg', 'Az erdővel és zárt bejárattal körülvett Grace Field House-ban árvák élnek, akik boldogan élnek együtt, egy nagy családként, akikre Mamájuk, Isabella vigyáz. Bár naponta kötelesek tesztet végezni, a gyerekek szabadon tölthetik idejüket, ahogy jónak látják, általában kint játszanak, mindaddig, amíg nem merészkednek túl messzire az árvaháztól – ezt a szabályt minden esetben be kell tartaniuk. Azonban minden jó időnek véget kell érnie, hiszen néhány havonta örökbe fogadnak egy gyermeket, akit új családjukhoz küldenek, és soha többé nem hallanak róla.', 'https://www.youtube.com/embed/JIcjo7XVlOY'),
(56, 'Toradora!', 'Comedy, Romance, Slice of Life', '56.jpg', 'Ryuuji Takasu egy szelíd középiskolás diák, aki szereti a házimunkát; de kedves természetével ellentétben megfélemlítő arca van, ami miatt gyakran bűnözőnek bélyegzik. Másrészt Taiga Aisaka, egy kicsi, babaszerű diáklány, aki nem más, mint egy aranyos és törékeny lány. A fából készült katanával és fergeteges személyiséggel felvértezett Taigát az egész iskolában Palmtop Tigrisként ismerik.', 'https://www.youtube.com/embed/ya570uUgQNc'),
(57, 'Bunny Girl Senpai', 'Comedy, Drama, Romance, Supernatural', '57.jpg', 'A ritka és megmagyarázhatatlan pubertás szindrómát mítosznak tekintik. Ritka betegségről van szó, amely csak a tinédzsereket érinti, tünetei pedig annyira természetfelettiek, hogy szinte senki sem ismeri fel jogos jelenségként. Sakuta Azusagawa középiskolás diák azonban személyes tapasztalatból tudja, hogy ez nagyon is valóságos, és történetesen meglehetősen elterjedt az iskolájában.', 'https://www.youtube.com/embed/ku7XxxXpIKI'),
(58, 'Darling in the FranXX', 'Action, Drama, Romance, Sci-Fi', '58.jpg', 'A távoli jövőben az emberiséget a Klaxosaurus néven ismert óriásvadállatok a kihalás közelébe sodorták, és arra kényszerítették a túlélő embereket, hogy az ültetvényeknek nevezett hatalmas erődvárosokban keressenek menedéket. Az itt nevelkedett gyerekeket arra képezik ki, hogy a FranXX néven ismert óriásmechákat – az egyetlen olyan fegyvert, amelyről ismert, hogy hatékonyak a Klaxosaurusok ellen – vezetni fiú-lány párokban. Ezek a gyerekek, akiket kizárólag arra a célra tenyésztettek, hogy irányítsák ezeket a gépeket, semmit sem tudnak a külvilágról, és csak fajuk védelmével tudják bizonyítani létezésüket.', 'https://www.youtube.com/embed/giD4G9qlzDs'),
(59, 'Kaguya-sama', 'Comedy, Romance', '59.jpg', 'A neves Shuchiin Akadémián Miyuki Shirogane és Kaguya Shinomiya a hallgatói testület legfőbb képviselői. Miyuki, aki az ország legjobb diákja, és a társak és a mentorok is tisztelik, a diáktanács elnöke. Mellette Kaguya alelnök – a gazdag Shinomiya család legidősebb lánya – minden elképzelhető területen kiváló. Irigyli őket az egész diákság, akiket tökéletes párnak tartanak.', 'https://www.youtube.com/embed/Ti2kJ-GYO68&t=5s'),
(60, 'Bakemonogatari', 'Mystery, Romance, Supernatural', '60.jpg', 'Koyomi Araragi, egy harmadéves középiskolás diáknak sikerül túlélnie egy vámpírtámadást Meme Oshino, egy furcsa férfi segítségével, aki egy elhagyatott épületben lakik. Noha megmenekültünk a vámpírizmustól, és most újra ember lettünk, számos mellékhatás, mint például az emberfeletti gyógyító képességek és a megnövekedett látás, továbbra is fennáll. Ettől függetlenül Araragi megpróbál egy normális diák életét élni, barátja és az osztályelnök, Tsubasa Hanekawa segítségével.', 'https://www.youtube.com/embed/PugZi9QKL64'),
(61, 'Guilty Crown', 'Action, Drama, Romance, Sci-Fi', '61.jpg', '2029. december 24-én – a köznyelvben az „Elveszett karácsonynak” nevezett napon – az Apokalipszis Vírus Japánban elterjedt, halált hozva polgáraira, és teljes káoszba sodorva az országot. A rend megteremtése érdekében az Egyesült Nemzetek Szervezete elküldi a GHQ-t, hogy segítse a válságot azáltal, hogy megfékezi a járványt, miközben megszünteti a folyamat során minden politikai autonómiát. Egy évtizeddel később az ország még mindig ellenőrzésük alatt él, nem tud kitörni drákói uralmuk alól.', 'https://www.youtube.com/embed/JToS6gmWzgw'),
(62, 'Date A Live', 'Comedy, Romance, Sci-Fi', '62.jpg', 'Shidou Itsuka egy átlagosnak tűnő középiskolás diák, aki húgával, Kotorival él együtt. Amikor egy küszöbön álló térrengés fenyegeti Tengu város biztonságát, a férfi rohan, hogy megmentse, de az ebből eredő kitörés elkapja. Felfedez egy titokzatos lányt a forrásánál, akiről kiderül, hogy ő egy Szellem, egy túlvilági entitás, akinek megjelenése térbeli rengést vált ki. Nem sokkal ezután összetűzésbe keveredik a lány és az Anti-Spirit Team, a Szellemek megsemmisítését célzó könyörtelen támadócsapat között.', 'https://www.youtube.com/embed/AytCKBRQJu0'),
(63, 'Prison School', 'Comedy, Romance, Ecchi', '63.jpg', 'Az új rendelet értelmében az első félév kezdetén mindössze öt fiút fogadtak be, ami gyakorlatilag kétszáz lány/1 fiú arányra osztja a hallgatói létszámot. Kiyoshit, Gakuto-t, Shingo-t, Andre-t és Jo-t gyorsan eldobják anélkül, hogy bármiféle első benyomást kelthetnének. A lelkes fiúk nem tudtak kommunikálni diáktársaikkal, ezért sokkal veszélyesebb feladatra tűzték ki szemüket: bekukkantottak a lányok fürdőjébe!', 'https://www.youtube.com/embed/L5UUgGyNp9o'),
(64, 'Golden Time', 'Comedy, Drama, Romance', '64.jpg', 'Egy tragikus baleset következtében Banri Tada amnéziát szenved, ami feloldja szülővárosának és múltjának emlékeit. Miután azonban összebarátkozott Mitsuo Yanagisawával, úgy dönt, továbblép, és új életet kezd a tokiói jogi egyetemen. De éppen amikor kezd alkalmazkodni egyetemi életéhez, a gyönyörű Kouko Kaga drámai módon behatol Banri életébe, és véletlen találkozásuk egy felejthetetlen év kezdetét jelenti.', 'https://www.youtube.com/embed/ER8wXRhZW1k'),
(65, 'Byousoku 5 Centimeter', 'Drama, Romance, Slice of Life', '65.jpg', 'Mi történik akkor, ha két ember szereti egymást, de nem arra való, hogy együtt legyenek? Takaki Toono és Akari Shinohara gyerekkori barátok, de a rajtuk kívül álló körülmények elszakítják őket egymástól. Megígérik, hogy kapcsolatban maradnak, és bár az idő előrehaladása tágítja köztük a távolságot, az emlékek láncolata mindig jelen marad.', 'https://www.youtube.com/embed/Eh0s0PkahCE'),
(66, 'Neon Genesis Evangelion', 'Action, Avant Garde, Drama, Sci-Fi', '66.jpg', 'Tizenöt évvel a Második Becsapódásként ismert kataklizma után a világ új fenyegetéssel néz szembe: az angyaloknak nevezett szörnyű égi lények sorra megszállják a Tokió-3-at. Az emberiség képtelen megvédeni magát az angyalok ellen annak ellenére, hogy a legfejlettebb lőszereiket és katonai taktikáját alkalmazza. Az emberi üdvösség egyetlen reménye a NERV kezében van, egy titokzatos szervezet, amelyet a hideg Gendou Ikari vezet. A NERV Evangelions névre keresztelt óriási humanoid robotokat üzemeltet, hogy a legmodernebb, fejlett fegyverekkel és az Absolute Terror Fields néven ismert védőkorlátokkal küzdjenek az angyalok ellen.', 'https://www.youtube.com/embed/woto6QFUNbg'),
(67, 'Psycho-Pass', 'Action, Sci-Fi, Suspense', '67.jpg', 'Az igazságszolgáltatás és annak érvényesítése megváltozott. A 22. században Japán érvényre juttatja a Szibilla rendszert, amely objektív eszköz az egyes polgárok fenyegetettségi szintjének meghatározására azáltal, hogy megvizsgálja mentális állapotukat a bűnözői szándékra utaló jelek után, ez a Psycho-Pass néven ismert. Az ellenőrök úgy tartják be a törvényt, hogy – gyakran halálos erővel – leigáznak mindenkit, akiben a legkisebb rosszindulat is rejtőzik; mellettük vannak az Enforcerek, az elfáradt ellenőrök, akik lappangó bűnözőkké váltak, akik viszonylagos szabadságot kaptak az ellenőrök piszkos munkájának elvégzéséért cserébe.', 'https://www.youtube.com/embed/DgDBzAHg4wU'),
(68, 'Gurren Lagann', 'Action, Adventure, Comedy, Sci-Fi', '68.jpg', 'Simon és Kamina egy mély, földalatti faluban születtek és nőttek fel, rejtve a mesés felszín elől. Kamina egy szabadlelkű, laza ágyú, aki arra törekszik, hogy hírnevet szerezzen magának, míg Simon egy félénk fiatal fiú, akinek nincsenek valódi törekvései. Egy nap a föld feltárása közben Simon egy titokzatos tárgyra bukkan, amelyről kiderül, hogy a gyújtókulcs egy ősi háborús műtárgyhoz, amelyet a páros Lagannnak nevezett el. Simon és Kamina új fegyverükkel elhárítanak egy meglepetésszerű támadást a felszínről Yoko Littner segítségével, egy forró vérű vörös hajú, hatalmas fegyverrel hadonászva, aki a fenti világban jár.', 'https://www.youtube.com/embed/rAQylCHv8Cw'),
(69, 'Deadman Wonderland', 'Action, Horror, Sci-Fi, Supernatural', '69.jpg', 'Úgy tűnt, ez egy átlagos nap lesz Ganta Igarashi és osztálytársai számára – osztálykirándulásra készültek egy bizonyos börtönben, a Deadman Wonderland nevű vidámparkban, ahol az elítéltek veszélyes cselekedeteket hajtanak végre a bámészkodók szórakoztatására. Ganta élete azonban gyorsan fenekestül felfordul, amikor az egész osztályát lemészárolja egy titokzatos vörös ruhás férfi. Az incidensre bekészítve és halálra ítélve Gantát abba a börtönbe küldik, amelyet meg kellett volna látogatnia.', 'https://www.youtube.com/embed/WUTFRxi5RXM'),
(70, 'Darker than Black', 'Action, Mystery, Sci-Fi', '70.jpg', '10 éve, hogy a Mennyország kapuja megjelent Dél-Amerikában és a Pokol Kapuja Japánban, és nyomasztó égbolttal fátyolozta be az egykor ismerős éjszakai eget. Céljuk ismeretlen, ezek a kapuk olyan terek, ahol a fizika törvényeit figyelmen kívül hagyják. A kapuk megjelenésével megjelentek a Vállalkozók, akik emberségükért cserébe természetfeletti képességeket kapnak.', 'https://www.youtube.com/embed/upx-_9-RjoE'),
(71, 'Gintama', 'Action, Comedy, Sci-Fi', '71.jpg', 'Edo olyan város, amely országszerte a szamurájok lendületének és ambícióinak otthona volt. Azonban miután a feudális Japán megadta magát az „Amanto” néven ismert erős idegeneknek, ezek a törekvések most megvalósíthatatlannak tűnnek. Az egykor befolyásos sógunátus bábkormányként újjáépített, új törvényt fogadtak el, amely azonnal megtilt minden kardot a nyilvánosság előtt.', 'https://www.youtube.com/embed/GWeuZr6fT6o'),
(72, 'Btooom!', 'Sci-Fi', '72.jpg', 'Ryouta Sakamoto munkanélküli, édesanyjával él, egyetlen igazi eredménye, hogy ő a népszerű Btooom online videojáték Japán legjobb játékosa! Békés élete azonban hamarosan megváltozik, amikor a semmi közepén egy szigeten találja magát, bal kezében egy kis zöld kristállyal, és nem emlékszik arra, hogyan került oda. Megdöbbenésére valaki úgy döntött, hogy újraalkotja azt a játékot, amelyet annyira szeret a való életben, és a tét élet vagy halál.', 'https://www.youtube.com/embed/H92d6YZkVO8'),
(73, 'FLCL', 'Avant Garde, Comedy, Sci-Fi', '73.jpg', 'Naota Nandaba egy átlagos hatodikos, aki egy olyan városban él, ahol úgy tűnik, soha nem történik semmi csodálatos. Miután testvére, Tasuku elhagyja a várost, hogy Amerikában baseballozzon, Naota magára vállalja, hogy gondoskodik mindenről, amit Tasuku hátrahagyott – a felső emeletes ágyától a volt barátnőjéig, Mamimi Samejimáig, aki Tasuku távozása óta nem szűnt meg Naotához ragaszkodni.', 'https://www.youtube.com/embed/MqDlfqmUlcg'),
(74, 'Accel World', 'Sci-Fi', '74.jpg', 'Haruyuki Arita egy túlsúlyos, zaklatott középiskolás, aki az online játékokban talál vigaszt. Ám élete egy napon drasztikus fordulatot vesz, amikor rájön, hogy minden rekordját Kuroyukihime, a diáktanács népszerű alelnöke meghaladta. Ezután meghívja őt a diákszobába, és bemutatja neki a Brain Burst programot, amely lehetővé teszi a felhasználók számára, hogy agyhullámaikat addig a pontig gyorsítsák, ahol az idő megállni látszik. A Brain Burst egy kibővített valóságú harci játékként is funkcionál, és ahhoz, hogy több pontot szerezzenek a gyorsuláshoz, a felhasználóknak meg kell nyerniük párbajokat más játékosok ellen. Ha azonban egy felhasználó elveszíti az összes pontját, akkor a Brain Bursthez való hozzáférését is örökre elveszíti.', 'https://www.youtube.com/embed/Le80O3zYr0U'),
(75, 'Code Geass', 'Sci-Fi', '75.jpg', 'Lelouch Lamperouge, egy brit diák sajnos a Britannian és a 11-es körzet lázadó fegyveres erői közötti kereszttűzbe kerül. Ennek ellenére meg tud szökni egy C. C. nevű titokzatos lány időben történő megjelenésének köszönhetően, aki Geass-szel, a „Királyok hatalmával” ruházza fel őt. Felismerve újonnan felfedezett „abszolút engedelmesség erejében” rejlő hatalmas lehetőségeket, Lelouch veszedelmes utazásra indul, mint a Zero néven ismert álarcos éber, és könyörtelen támadást vezet Britannia ellen, hogy egyszer s mindenkorra bosszút álljon.', 'https://www.youtube.com/embed/ulQGo6X7kFo'),
(76, 'Mob Psycho 100', 'Action, Comedy, Slice of Life, Supernatural', '76.jpg', 'Annak érdekében, hogy irányítani tudja képességeit, Mob besorozza magát Arataka Reigen szárnyai alá, egy szélhámos, aki azt állítja magáról, hogy pszichés, aki Mob képességeit zsebpénzre használja ki. Mára a gonosz szellemek parancsra történő kiűzése maffia mindennapi, egyhangú életének részévé vált. Az általa kifejtett pszichés energia azonban aligha a jéghegy csúcsa; Ha hatalmas potenciálja és féktelen érzelmei megvadulnak, egy olyan kataklizmikus esemény indul el, amely teljesen felismerhetetlenné tenné őt. A maffia robbanása felé haladva növekszik, és hiábavaló a megállítása.', 'https://www.youtube.com/embed/F8g3TuKsQHs'),
(77, 'Chuunibyou demo Koi ga Shitai!', 'Comedy, Drama, Romance, Slice of Life', '77.jpg', 'Yuuta Togashi számára a chuunibyou által hátrahagyott hegek még mindig frissek. Középiskolás évei alatt a Sötét láng mestereként pózolt, és rendkívül zavartan tekint vissza azokra az időkre, olyannyira, hogy elhatározza, hogy egy távoli középiskolába jár, ahol senki sem ismeri fel. Sötét történelmét maga mögött hagyva arra vágyik, hogy normális középiskolai életet éljen.', 'https://www.youtube.com/embed/USgrD2Dqsa0'),
(78, 'K-On!', 'Slice of Life', '78.jpg', 'Egy friss középiskolai év mindig sokat jelent, és az egyik ilyen dolog a klubhoz való csatlakozás. Mivel dilemma előtt áll, hogy melyik klubhoz csatlakozzon, Yui Hirasawa belebotlik, és jelentkezik a Könnyűzenei Klubba, amelyet félre úgy értelmez, hogy egyszerű hangszereken, például kasztnival játszik. Mivel nem tud hangszeren játszani, úgy dönt, felkeresi, hogy bocsánatot kérjen, és kilép.', 'https://www.youtube.com/embed/f-_BPUz-Rxs'),
(79, 'Ao Haru Ride', 'Slice of Life', '79.jpg', 'Futaba Yoshioka vonzó és népszerű középiskolás volt – az ellenkező nem kedvelte, de a lányok kiközösítették. Ennek ellenére képes volt mindezt ecsetelni, mert az egyetlen vélemény, ami igazán számított neki, az Kou Tanaka, egy osztálytárs véleménye volt, akivel egyszer megosztottak menedéket az eső elől, amit még jónéhány más értékes és jelentős emlék követett. Még azt is sikerült megterveznie, hogy találkozzon a csendes és ártatlan fiúval a nyári fesztiválon, de egy egyszerű félreértés és Tanaka azt követő eltűnése miatt barátok nélkül járta iskolája folyosóit.', 'https://www.youtube.com/embed/78k9Rh7kiRo'),
(80, 'Kimi ni Todoke', 'Slice of Life', '80.jpg', 'A Gyűrű sorozat Sadako karakterére való hasonlatosságáról ismert Sawako Kuronuma a Sadako becenevet kapta, és félreérthetőnek tartja, hogy ijesztő és rosszindulatú, mint kitalált megfelelője, annak ellenére, hogy félénk és édes természete van. A barátkozásra és a normális életre vágyó Sawako természetesen vonzódik a vidám és barátságos Shouta Kazehayához, osztálya legnépszerűbb fiújához. Az első találkozásuk óta Sawako csodálta Kazehaya azon képességét, hogy a figyelem középpontjába kerüljön, és arra törekszik, hogy olyan legyen, mint ő.', 'https://www.youtube.com/embed/_gJR6gfRYEQ'),
(81, 'Kuroko no Basket', 'Sports', '81.jpg', 'Új tagok után kutatva a Seirin High School kosárlabdacsapata felveszi Taiga Kagamit és Tetsuya Kurokot, két újoncot, akik úgy tűnik, jelentős különbségekkel rendelkeznek a képességeikben. A közelmúltban Amerikából hazatért Kagami természetes rátermettséggel és könyörtelen szeretettel rendelkezik a sport iránt. Mindeközben Kurokonak nincs jelenléte, és nem mutat kiemelkedő sporttehetséget. Később azonban kiderül, hogy ő Teikou Hatodik Fantomembere, aki egykor a Csodák Generációjának tagja volt.', 'https://www.youtube.com/embed/FTUIs_SuQfw');
INSERT INTO `anime` (`anime_id`, `anime_cim`, `anime_tipus`, `anime_kep`, `anime_leiras`, `anime_link`) VALUES
(82, 'Yuri!!! on Ice', 'Sports', '82.jpg', 'Yuuri azonban a reflektorfényben találja magát, amikor egy videó, amelyen egy korábban ötszörös világbajnok, Victor Nikiforov által végrehajtott rutint hajt végre, hirtelen vírus terjed. Valójában maga Victor hirtelen megjelenik Yuuri házában, és felajánlja, hogy mentora lesz. Egyik legnagyobb rajongójaként Yuuri mohón elfogadja, és elindul az útja, hogy visszatérjen a világ színpadára. A verseny azonban kiélezett, mivel az orosz feltörekvő csillag, Jurij Pliszetszkij könyörtelenül eltökélt szándéka, hogy legyőzze Yuurit és visszaszerezze Victor gyámságát.', 'https://www.youtube.com/embed/9-xcX0sqkkA'),
(83, 'Free!', 'Sports', '83.jpg', 'Haruka Nanase szereti a vizet, és szenvedélye az úszás. Az általános iskolában három barátjával, Rin Matsuokával, Nagisa Hazukival és Makoto Tachibanával váltóversenyen vett részt és nyert. A torna győzelmét követően a négy barát külön utat járt be. Évekkel később középiskolásként újra egyesülnek; Rin azonban nem törődhetett azzal, hogy visszatérjen a régi kerékvágásba. Nem csak, hogy más iskolába jár, de az egyetlen dolog, ami fontos számára, hogy bebizonyítsa, hogy jobb úszó, mint Haruka.', 'https://www.youtube.com/embed/tZhI2_rN74o'),
(84, 'SK8', 'Sports', '84.jpg', 'Munka közben Reki összefut új osztálytársával, Langa Hasegawával, egy félig kanadai és félig japán fiúval, akinek semmiféle gördeszkás tapasztalata nincs. Langának égetően pénzre van szüksége. Miután mindketten meglátogatják S-t, amikor Reki főnöke megbízza őket, bajba keverednek, és egy fogadásra kényszerülnek, amihez Langának korcsolyáznia kell egy versenyen. A titokzatos átigazolási diák azonban egy ütőkártyával rendelkezik, amelyről Reki nem tud, és amely a legváratlanabb módon segíthet neki a verseny megnyerésében.', 'https://www.youtube.com/embed/PcS3QIc6ma8'),
(85, 'Initial D', 'Sports', '85.jpg', 'Osztálytársaival és munkatársaival ellentétben Takumi Fujiwara nem szerette az autókat. Minden róluk folytatott beszélgetés emlékeztetné őt a kora reggeli rutinjára, amikor tofut szállít az apjának. Nem látta az utcai versenyzés vonzerejét, és semmit sem tudott annak szabályairól vagy kultúrájáról. Amikor azonban egy éjszakai találkozóra csatlakozik, egy rivális versenyzőcsapat megjelenése az Akina-hágón arra készteti Takumit, hogy apja AE86-osának volánja mögé pattanjon, és leszáguldjon velük az ismerős hegyről.', 'https://www.youtube.com/embed/1cHHtUvWtWA'),
(86, 'Grappler Baki', 'Action, Sports', '86.jpg', 'Baki Hanma születése óta nem tudott mást, csak küzdeni – minden egyes izmot megerősített, és különböző harcművészetekből tanult különböző technikákat édesanyja, Emi Akezawa felügyelete alatt. Azért edz, hogy felkészüljön saját apjával, Yuujirou Hanmával, akivel a tömegek „Ogreként” rettegnek, és akit a világ legerősebb lényének tartanak, és végül felülmúlja.', 'https://www.youtube.com/embed/Wnj13t7zi-I'),
(87, 'Hinomaruzumou', 'Sports', '87.jpg', 'A profi szumóban nincsenek súlycsoportok. Ez egy vad sport, ahol a legerősebbek maradnak életben, és bárki, aki hajlandó próbára tenni tudását, ringbe léphet. Mindazonáltal van egy minimális méretkövetelmény ahhoz, hogy profi szumóbirkózó legyen, és a fiatal Hinomaru Ushio, hihetetlenül tehetséges és szorgalmas, nem felel meg ennek a követelménynek. Ennek a kisfiúnak nagy álmai vannak, hogy elérjék a szumó legmagasabb osztályát, a Hinoshita Kaisant. Az egyetlen módja annak, hogy profivá váljon, ha ő lesz a High School Yokozuna cím, amelyet a középiskolai versenyek legerősebb birkózójának adnak.', 'https://www.youtube.com/embed/3azWibcgiCA'),
(88, 'All Out!!', 'Sports', '88.jpg', 'A rögbi olyan sport, ahol bárki sztár lehet, ha tartja a labdát. A szabályok egyszerűek: az egyik játékosnak el kell vinnie a labdát a kapufák mellett a pályán keresztül, miközben elkerüli a másik csapatot, akik minden erejüket felhasználhatják az ellenség leütésére. A játékos azonban passzolhat a mögöttük lévő csapattársnak, vagy elrúghatja a labdát, mielőtt lecsapnák őket. Más sportágakkal ellentétben a játék akkor is folytatódik, amikor a labdát tartó személyt leszedik.', 'https://www.youtube.com/embed/dd4sJUqiWLM'),
(89, 'Inazuma Eleven', 'Sports', '89.jpg', 'Míg Japánban más iskolák versengenek az ország legjobb futballcsapatának címéért, a Raimon Middle School futballklubja, az Inazuma Eleven a feloszlás széléről küzd. Az Inazuma Eleven első generációs kapusának és a csapat kapitányának, Mamoru Endounak az unokája vállalja a kihívást, hogy újra formába lendítse a régóta elhanyagolt klubot. Ehhez egy kis segítségre és több szerencsére van szüksége.', 'https://www.youtube.com/embed/cdJZAVIVEO0'),
(90, 'Redline', 'Action, Sci-Fi, Sports', '90.jpg', 'Ötévente megrendezik a Redline nevű izgalmas versenyt, és az univerzum legjobban várt versenyének egyetlen szabálya van: az, hogy ilyenek nincsenek. A versenyzők az abszolút határig vannak taszítva – ezt az érzést, amit a vakmerő pilóta, JP túlságosan is jól ismer. Mivel most kvalifikálta magát a Redline versenyen való részvételre, alig várja, hogy megküzdjön a többi magasan képzett pilótával, különösen a gyönyörű feltörekvő csillaggal és az egyetlen emberrel, aki kvalifikálta magát, Sonoshee McLarennel.', 'https://www.youtube.com/embed/RB-2Hjj_eEg'),
(91, 'Death Note', 'Supernatural', '91.jpg', 'Saját szórakoztatására Ryuk bedobja a Haláljegyzetét az emberi világba. Fény belebotlik, nevetségesnek tartja szabályai közül az elsőt: az ember, akinek a neve szerepel ebben a jegyzetben, meg fog halni. A kísértés azonban túl nagy, és Light kísérletezik egy bűnöző nevének felírásával, ami zavaróan előadja első gyilkosságát.', 'https://www.youtube.com/embed/Amag3NrjBc0'),
(92, 'ERASED', 'Supernatural', '92.jpg', 'Amikor azonban jogtalanul megvádolják egy hozzá közel álló ember meggyilkolásával, Satoru ismét a múltba kerül, de ezúttal 1988-ba, vagyis 18 évvel a múltba. Hamarosan rájön, hogy a gyilkosság összefügghet egyik osztálytársa, a magányos és titokzatos Kayo Hinazuki elrablásával és meggyilkolásával, amely gyermekkorában történt. Ez az esély arra, hogy helyrehozza a dolgokat.', 'https://www.youtube.com/embed/jTOyQJuZuy4'),
(93, 'JoJo\'s Bizarre Adventure', 'Supernatural', '93.jpg', 'Az évszám 1868; Az angol nemes, George Joestar és fia, Jonathan adósai lesznek Dario Brandónak, miután megmentették őket egy kocsieseményből. A Joestarok azonban nem veszik észre, hogy Dariónak nem állt szándékában segíteni rajtuk; azt hitte, hogy meghaltak, és megpróbálta feltárni a holmijukat. Dario 12 évvel későbbi halála után George – abban a reményben, hogy visszafizetheti adósságát – örökbe fogadja fiát, Diót.', 'https://www.youtube.com/embed/PGVSViecHWE'),
(94, 'Durarara!!', 'Supernatural', '94.jpg', 'Mikado Ryuugamine mindig is vágyott a városi élet izgalmára, és egy gyerekkori barátja meghívása ráveszi, hogy Tokióba költözzön. Amikor a Fekete Lovas szemtanúja volt a városban töltött első napján, úgy tűnik, hogy kívánsága már teljesült. De amint természetfeletti események kezdődnek, a hozzá hasonló hétköznapi polgárok, valamint Ikebukuro legszínesebb lakói belekeverednek a városukban kitörő zűrzavarba.', 'https://www.youtube.com/embed/v8cqCapgcaQ'),
(95, 'Owari no Seraph', 'Supernatural', '95.jpg', 'A túlélők között van Yuuichirou és Mikaela Hyakuya, két fiatal fiú, akiket egy árvaházból ejtenek fogságba, más gyerekekkel együtt, akiket családtagnak tartanak. Mivel elégedetlen azzal, hogy a vámpírok kegyetlen uralma alatt állatként kezelik, Mikaela lázadó menekülési tervet dolgoz ki, amely végül kudarcra van ítélve. Az egyetlen túlélő a túloldalon Yuuichirou, akit a Moon Demon Company, a japán vámpírok kiirtására hivatott katonai egység talál meg.', 'https://www.youtube.com/embed/NtzDAmRhD9s'),
(96, 'Bungou Stray Dogs', 'Supernatural', '96.jpg', 'Miközben éhezik egy folyóparton, Atsushi megment egy meglehetősen különc embert, Osamu Dazait a fulladástól. A szeszélyes öngyilkosság-rajongó és természetfeletti nyomozó, Dazai ugyanazon tigris után nyomoz, aki a fiút terrorizálta. Dazai partnerével, Doppo Kunikidával együtt megoldják a rejtélyt, de megoldása szorult helyzetbe hozza Atsushit. Különböző furcsa események történnek, Atsushit arra kényszerítik, hogy csatlakozzon a természetfeletti nyomozók cégéhez, és számos rejtélyes munkatársa mellett olyan szokatlan eseteket vállal fel, amelyeket a rendőrség nem tud kezelni.', 'https://www.youtube.com/embed/zyc8p_jDdtI'),
(97, 'Enen no Shouboutai', 'Action, Supernatural', '97.jpg', 'Spontán emberi égés: egy kaotikus jelenség, amely évek óta sújtja az emberiséget, véletlenszerűen változtatva a hétköznapi embereket lángoló, erőszakos lényekké, úgynevezett Infernalsokká. Míg a pokolgépek alkotják az emberi égés első generációs beszámolóit, a második és harmadik generáció pirokinetika néven vált ismertté – olyan emberek, akik képesek manipulálni és irányítani a lángjukat, miközben emberek maradnak. A pokoli fenyegetés leküzdésére és az ok feltárására a Tokiói Fegyveres Erők, a Tűzvédelmi Ügynökség és a Sol Szent Egyháza megadta a választ: a Különleges Tűzoltó Erőket.', 'https://www.youtube.com/embed/9uT5Iw2d0q4'),
(98, 'Dororo', 'Action, Adventure, Supernatural', '98.jpg', 'Ezt a gyereket a folyóba dobják, és elfelejtik. De szerencsére megmenti egy gyógyszerész, aki protézisekkel és fegyverekkel látja el, lehetővé téve számára, hogy túlélje és gondoskodjon önmagáról. A fiú él és növekszik, és bár nem lát, nem hall vagy érez semmit, le kell győznie a démonokat, akik áldozatul vették. Mindegyikük halálával visszaszerzi önmagának azt a részét, amely jogosan az övé. Sok éven át egyedül bolyong, mígnem egy napon egy árva fiú, Dororo összebarátkozik vele. A valószínűtlen veszett pár most a túlélésért és az emberiségért küzd egy megbocsáthatatlan, démonokkal teli világban.', 'https://www.youtube.com/embed/v3ApcTz1lwE'),
(99, 'Devilman: Crybaby', 'Action, Avant Garde, Horror, Supernatural', '99.jpg', 'A gyenge és szerény Akira Fudou szíve mindig is vérző volt. Így amikor gyerekkori barátja, Ryou Asuka segítséget kér az ördögök felderítéséhez, Akira habozás nélkül elfogadja. Akira meglepetésére azonban Sabbath a hely, ahová mennek: a kicsapongás és a degeneráció erkölcstelen partija. A vérontás és a halál közepette démonok szállják meg a résztvevőket, testüket groteszk szörnyeteggé változtatják, és elkezdenek pusztítást végezni. A legjobb barátja megmentésére tett vakmerő kísérletben Akira akaratlanul is egyesül az ördög Amonnal, és Ördögemberré válik, hatalmat szerezve a megmaradt démonok legyőzésére.', 'https://www.youtube.com/embed/ww06yGPM7Kc'),
(100, 'Tokyo Revengers', 'Action, Drama, Supernatural', '100.jpg', 'Takemichi Hanagaki középiskolai második éve volt élete legmagasabb pontja. Volt tisztelete, baráti társasága, akikre számíthatott, és még egy barátnője is. De ez tizenkét éve volt. Ma már egy senki: egy elmosott semmiség, akit a gyerekek kinevetnek, és mindig kénytelen bocsánatot kérni fiatalabb főnökétől. Egy hirtelen híradás a tokiói mandzsi banda kegyetlen meggyilkolásáról az egyetlen barátnője ellen, aki valaha volt testvére mellett, csak fokozza a sértést. Fél másodperccel azelőtt, hogy egy vonat végleg véget vet szánalmas életének, Takemichi felvillant ugyanarra a tizenkét évvel ezelőtti napra, amikor még Hinata Tachibanával járt.', 'https://www.youtube.com/embed/r9M34VgTfzY');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `forumuzenet`
--

CREATE TABLE `forumuzenet` (
  `forum_id` int(11) NOT NULL,
  `forum_nev` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `forum_szoveg` varchar(150) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `forumuzenet`
--

INSERT INTO `forumuzenet` (`forum_id`, `forum_nev`, `forum_szoveg`) VALUES
(1, 'Pisti', 'Örülök, hogy ráleltem erre az oldalra!'),
(2, 'Attila', 'Proba');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazat`
--

CREATE TABLE `szavazat` (
  `anime_id` int(11) NOT NULL,
  `anime_ertekeles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzenet`
--

CREATE TABLE `uzenet` (
  `uzenet_id` int(11) NOT NULL,
  `uzenet_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `uzenet_szoveg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `uzenet_datum` date NOT NULL,
  `uzenet_tipus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `uzenet`
--

INSERT INTO `uzenet` (`uzenet_id`, `uzenet_nev`, `uzenet_szoveg`, `uzenet_datum`, `uzenet_tipus_id`) VALUES
(1, 'David', 'Mindenkinek csak ajánlani tudom! ;)', '2022-01-02', 1),
(2, 'Pistiiii', 'Nem bántam meg, hogy elfogadtam mások tanácsát és a HxH-val kezdtem. Best of', '2022-01-01', 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`anime_id`);

--
-- A tábla indexei `forumuzenet`
--
ALTER TABLE `forumuzenet`
  ADD PRIMARY KEY (`forum_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazat`
--
ALTER TABLE `szavazat`
  ADD PRIMARY KEY (`anime_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A tábla indexei `uzenet`
--
ALTER TABLE `uzenet`
  ADD PRIMARY KEY (`uzenet_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `anime`
--
ALTER TABLE `anime`
  MODIFY `anime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT a táblához `forumuzenet`
--
ALTER TABLE `forumuzenet`
  MODIFY `forum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `szavazat`
--
ALTER TABLE `szavazat`
  MODIFY `anime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `uzenet`
--
ALTER TABLE `uzenet`
  MODIFY `uzenet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

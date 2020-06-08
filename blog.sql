-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 03:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentID` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `postID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentID`, `comment`, `userID`, `created_at`, `postID`) VALUES
(69, 'Bas lepo napisano!', 141, '2020-06-08 13:45:17', 6);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `fullName`, `email`, `content`) VALUES
(9, 'Jovana Jovic', 'jovana1@gmail.com', 'Test'),
(10, 'Pera Peric', 'pera1@gmail.com', 'Radi!');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `genderID` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`genderID`, `gender`) VALUES
(1, 'Muški'),
(2, 'Ženski');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `name`) VALUES
(1, 'Naslovna'),
(2, 'O autoru'),
(3, 'Kontakt');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageSrc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageAlt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `part_one` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `part_two` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `part_three` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `title`, `body`, `imageSrc`, `imageAlt`, `userID`, `time`, `part_one`, `part_two`, `part_three`) VALUES
(3, 'Tajne za pravilan uzgoj sukulenata u enterijeru', 'Ako ste ubili svaki sukulent koji ste pokušali da uzgojite, onda znate da sve startuje veoma dobro, ali nekoliko nedelja nakon unošenja biljaka u dom, one počinju da izgledaju dugačko, tanko i tužno pre nego što odustanu od borbe i uvenu.\r\n\r\nUprkos svemu što čujete o tome koliko sukulenti umeju da budu otporni, jednostavno nikada nemate sreće sa njima. Budite uvreni da niste jedini i da se ubice sukulenata nalaze svuda oko vas. U slučaju da ste uznemireni ovim svojim neuspesima prilikom pokušaja uzgoja sukulenata u enterijeru vašeg stana ili kuće, predstavljamo vam par kratkih, ali veoma korisnih saveta, koji vam za početak mogu pomoći da produžite život svojih dragih biljaka.', 'assets/img/blog1.jpg', 'sukulenti', 1, '2019-02-13 14:00:08', 'Kada govorimo o klimi, sukulenti obožavaju suvu. Ova vrsta biljaka fantastično uspeva u suvim predelima, dok u nekim delovima sveta kao korov raste iz pukotina na trotoaru, izlazi iz žardinjera smeštenih pokraj ulice, u spiralnim oblicima izvire iz visećih saksija, podržana kanapima koji vise sa bandera, a sukulentne biljke koje rastu u San Francisku su toliko zdrave i rasprostranjene da njegovi građani ponekada pomisle da su u nekom gradu južnije.', 'Pružite sukulentima dovoljno svetlosti i toplote, jer oni ipak pripadaju pustinjskim biljkama. Oni rastu u toplim krajevima koji obiluju sunčevom svetlošću. Zato ne predstavlja nikakvo čudo to što vam kaktus smešten pokraj kompjutera posle nekog vremena uvene, jer iako u našoj klimi ne možemo da očekujemo tople sunčane dane tokom cele godine, možemo obezbediti dovoljno prirodne svetlosti i prijatne sobne temperature, što će isto tako pogodovati njegovom životu i razvoju.\r\nPružite sukulentima mesta da dišu u unutrašnjosti. ', 'U spoljnoj sredini, sukulenti mogu savršeno dobro uspevati čak i u zgusnutim rasporedima, ali, ako želite da vam ove biljke uspevaju na nižoj svetlosti enterijera, najbolje je da ih izdvojite od ostalog zelenila i postavite na najsvetlije mesto kako bi najviše sunčevih zraka doprlo do njih. Počnite sa zelenim sukulentima. Što su listovi sukulenata zeleniji, veće su šanse da će preživeti unutar enterijera. Zaobiđite sive, plave, ljubičaste biljke i odmah kupite sukulente sa svetlo zelenim lišćem.'),
(5, 'Gajenje kaktusa', 'Kaktus više voli pesak od vlage, pa zato u glinenu saksiju jednom nedeljno dodajte supenu kašiku peska, jer će on obaviti drenažu podloge, kaktus će izgledati lepše, a one vrste koje cvetaju davaće krupnije cvetove.\r\n\r\nIako stručnjaci za feng šui, drevnu kinesku vještinu uređenja doma, ne preporučuju da se u vašem okruženju nađu kaktusi, ove biljke mogu da oplemene izgled stambenog i poslovnog prostora. Ne zahtevaju preteranu negu, ljupke su i ako odaberete sorte koje cvetaju, moći ćete da se pohvalite atraktivnim saksijama punim dekorativnih zvončića.\r\n\r\n- Sve vrste kaktusa imaju jednu zajedničku karakteristiku, a to je da ne vole previše vlage. Manje ćete pogrešiti ako ih zalivate jednom u desetak dana, nego ako budete revnosni pa ih zalivate svakodnevno.', 'assets/img/blog2.jpg', 'kaktus', 1, '2018-10-02 13:00:08', 'Kaktusi vole glinene saksije i zemlju koja je pomešana sa peskom i kamenčićima, jer ovi prirodni sastojci upijaju višak vlage i čine da zemljište bude istovetno onom u prirodnim uslovima.\r\n\r\n- U glinenim posudama zemlja se umereno suši, dok u plastičnim saksijama zemlja gubi vlagu samo na površini, pa koren može da propadne usled veće količine vlage – otkriva naša sagovornica.\r\n\r\nDa biste ustanovili da li je potrebno zalivanje, u zemlju u kojoj se nalazi kaktus zabodite čačkalicu. Ukoliko na njoj nema ostataka zemlje, znači da biste mogli da sipate malo vode u saksiju.\r\n', '- Kaktus više voli pesak od vlage, pa jednom nedjeljno dodate supenu kašiku pijeska, jer će on obaviti drenažu podloge. Tada će kaktus izgledati lepše, a one vrste koje cvetaju davaće krupnije zvončiće.\r\nUkoliko nameravate da saksije sa kaktusima ovoga leta iznesete na balkon ili u baštu, trebalo bi da odaberete tmuran dan i da biljke odmah po iznošenju poprskate vodom u koju ste dodali sredstvo protiv gljivica. Kada kaktus počne da raste, što ćete ustanoviti po zelenoj glavi biljke, možete da ga zalijete, najbolje preko tacne u kojoj se nalazi saksija.\r\nPresađivanje kaktusa trebalo bi da obavite svake godine u prve četiri godine starosti biljke, a potom se presađivanje obavlja na svake dve do tri godine.', ' Poboljšanje uslova zemljišta u kom kaktus živi obavlja se uklanjanjem gornjeg sloja zemlje i dodavanjem novog treseta sa peskom. Kada presađujete mladi kaktus, saksiju izvrnite naopako, pa biljku zajedno sa zemljom istresite na novinsku hartiju. Drvenim štapićem odstranite višak zemlje, na dno nove glinene posude stavite drenažni sloj u vidu kamenčića ili strugotina cigle, pa sipajte novu zemlju od treseta i peska u kombinaciji 1:2. Postavite kaktus u središte saksije, pritisnite koren da uđe u zemlju i nekoliko dana zalivajte biljku odozgo. Čim primtite da u tacnici ima vode, ukinite zalivanje.\r\n\r\nKaktuse bi trebalo uneti u kuću pre nego što spoljašnja temperatura vazduha padne ispod pet stepeni. Posle „selidbe“ biljke držite blizu izvora toplote, a kada se adaptiraju na nove uslove, čuvajte ih u prostoriji u kojoj je temperatura vazduha od 12 do 15 stepeni.'),
(6, 'Eliksir mladosti - biljka koja štiti naše zdravlje', 'Iako se danas prvenstveno koristi za proizvodnju kozmetičkih preparata, ne treba zaboraviti na lekovita svojstva aloja vere.\r\nPodseća na kaktus, sadrži obilje vode, cinka i vitamina C i E, mukopolisaharida, amino-kiselina i enzima. Ima antibakterijsko dejstvo, zahvaljujući kojem uspešno sprečava razvoj infekcija.\r\nOd davnina je poznata kao eliksir dugovečnosti. Zbog svoje hranjive vrednosti i izuzetnih lekovitih svojstava nazivaju je \"Kraljicom lekovitih biljaka\".\r\n', 'assets/img/blog3.jpg', 'aloa vera', 1, '2019-01-17 14:00:31', 'Ime je dobila po botaničaru Milleru, koji ju je otkrio na ostrvu Barbadosu i uvrstio u registar lekovitog bilja. Reč Aloe potiče iz latinske forme arapskog naziva \"Aloeh\", Sirijskog \"Alwai\" ili hebrejskog \"Halal\", čije je značenje \"izuzetno gorka materija\", što ukazuje na izuzetno gorku žutu tečnost, mleko, odnosno sok, koju sadrži biljka, a nalazi se neposredno ispod tankog kožastog tkiva, odnosno kore.Komercijalni naziv Aloa Vera je latinskog porekla i znači \"prava Aloa\". Žuti \"lekoviti\" sok su u ove svrhe koristili još u 4. veku p.n.e. Aloa je hranljiva biljka za svaku ćeliju ljudskog organizma. Kada je ćelija zdrava, onda je otporna i sposobna da izvrši sve funkcije koje joj je priroda dala. \r\n\r\n \r\n', 'Biljka je radi vlastitog opstanka razvila bogat sadržaj vitamina, aminokiselina, enzima i mineralnih materija da bi osigurala svoj opstanak u oskudnim okolnostima postojanja. Sama lekovitost se nalazi u komponentama koje imaju različite i specijalne energetske vrednosti. Aloe je biljka koja spada u porodicu ljiljana i u svetu je poznato preko 250 vrsta, od kojih svega četiri imaju lekovito dejstvo, a najveće Aloe Vera (Barbadensis Miler). Sečenjem listova i njihovim presovanjem cedi se sok koji se stabilizuje Papajom, a ima hranljivi i lekoviti učinak koji daju preko 200 aktivnih sastojaka Aloe potrebnih za svakodnevno funkcionisanje svake ćelije. Prirodno raste samo u područjima sa toplom i suvom klimom (najbolji uslovi su tamo gde je prosečna godišnja temperatura iznad 22°C, npr. Karibi, Meksiko). Od biljke se najviše upotrebljava njen gel, želatinasta masa koja se nalazi u unutrašnjosti lista.', 'Aloe Barbadensis Miller ima sabljaste, špicaste listove, sa testerastim ivicama, koji po obliku podsećaju na ružu, rastu pri zemlji. Iz sredine ruže raste cvetna drška koja se završava u vidu žutog ili crvenkastog cevolikog cveća. Aloa spada u porodicu ljiljana, a cvet koliko-toliko podseća na cvet istočnog ljiljana.\r\nI napitak od soka aloja vere ima pozitivan efekat na zdravlje, pa njegova popularnost raste iz dana u dan. Možete sami da ga napravite ili, što je daleko jednostavnije, da ga kupite u svakoj bolje snabdevenoj apoteci.'),
(7, 'Napravite peščanu baštu sa kaktusima', 'Iskoristite poslednje dane zime za razmnožavanje sukulenata. Najbolje je birati biljke različitog oblika, recimo kombinaciju starčeve brade, slonovog uva, agave i čuvarkuće.\r\nKaktusi vole suv vazduh centralnog grejanja koji, inače, smeta većini sobnih biljaka. Njima prija i toplota, a jedini razlog zašto se zimi čuvaju na zastakljenoj hladnoj terasi je da bi lepo cvetali. Male kaktuse je teško odgajiti iz semena, a nove dobijene odvajanjem od “majke” ili odsecanjem ne treba iznositi na hladnoću. Pošto je najbolje vreme za razmnožavanje i rasađivanje sukulenata rano proleće, kraj zime treba iskoristiti za takav posao.', 'assets/img/blog4.jpg', 'adgss', 1, '2019-01-17 22:26:35', 'Kaktusi rastu sporo i ukoliko se hranljivom zemljom i čestim zalivanjem podstiče njihov brz rast, počeće da se deformišu i menjaju oblik, da bi se na kraju polomili ili istrulili. Mali kaktusi, dok ne dobiju pristojnu veličinu, mogu da se posade zajedno u peščani vrt.\r\nMalu peščanu baštu sa kaktusima najbolje je napraviti u rano proleće, a potrebno je pripremiti novinski papir, rukavice, pesak, zemlju za kaktuse, kamenčiće, kašiku, kaktuse i lepu posudu.\r\nNa dno posude koja mora da bude plitka, jer kaktusi nemaju dubok koren, treba postaviti šljunak, kamenčiće ili krhotine polomljene saksije. Odozgo se postavlja zemlja za kaktuse.', '\r\nU zavisnosti od broja kaktusa, treba napraviti rupice u koje će se postaviti sukulenti. Najbolje je birati kaktuse različitog oblika, recimo, lepo će izgledati kombinacija starčeva brada, slonovo uvo, agava i čuvarkuća.\r\nUkoliko se kaktusi nalaze u malim saksijama mogu da se bukvalno posade sa posudama, jer će se tako lakše izvaditi. Ukoliko su, zaista, male biljke dobijene razmnožavanjem, treba ih pažljivo posaditi na razmaku veličine kaktusa, jer za godinu dana može da se dogodi da jedan drugom smetaju.\r\nKada se kaktusi vade iz saksija, zbog presađivanja, treba ih prvo zaliti, jer mokar koren lakše podnosi stres. Kaktuse, koliko god bile meke bodlje, ne treba dodirivati prstima već rukavicama i umotati ih u novinski papir.', 'U zemlju se spuštaju kašikom i, kada se posade, od prljavštine čiste četkicom.\r\nNeki kaktusi se razmnožavaju tako što otpadnu sa matične biljke ili se jednostavno odlome. Njih je dovoljno blago utisnuti u zemlju za kaktuse i ubrzo će pustiti koren. Ukoliko se odsecaju oštrim nožem od matične biljke, treba ih prvo ostaviti da se prosuše i tek posle nedelju dana zabosti u zemlju i ostaviti da se užile. Ukoliko kaktus ili sukulent izlučuje mlečni sok, kada se osuši rez treba posuti prahom od drvenog uglja i tek tada staviti u zemlju.\r\n\r\nPosađene kaktuse pokriti još jednim slojem zemlje, jer će se vremenom slegnuti. Na kraju, preko ravnog sloja površinske zemlje treba posuti pesak i utapkati ga kašikom. Pesak može da bude i crne, bele ili neke druge boje, kakvi se mogu kupiti u rasadnicima, ali i pet šop centrima (prodaju ih za dno kaveza za papagaje). Pesak treba da bude debljine, bar, jednog santimetra, jer se samo tada mogu praviti šare i geometrijski oblici (dodati neki lep kamenčić) čime će čitava pustinja biti još lepša.'),
(8, 'Božidar živi sa kaktusima, sadi ih pincetom, i čeka 7 godina da ugleda samo jedan cvet\r\n', 'Više od četvrt veka metalostrugar Božidar Ristić živi sa kaktusima, njihovo seme sadi pincetom, a pojedine od 1.000 vrsta mezimaca strpljivo čeka i po sedam godina da prvi put procvetaju. Nekim kaktusima je lečio obolele od karcinoma, druge ljubio na rastanku, a neke nikada neće prodati ni za kakve pare jer \"znaju se\" jedno 15 godina.\r\n\r\nAko se malo detaljnije pogledaju oglasi o prodaji kaktusa vidi se da je u većini njih uzgajivač muškarac.\r\n\r\n', 'assets/img/blog5.jpg', '', 1, '2019-01-17 22:26:35', '- Ja ne znam u Šumadiji ni jednu ženu koja uzgaja samo kaktuse, sve su muškarci, svi su nežna bića i mnogo vole žene, to valjda ide sa kaktusima, naše strpljenje je možda glavna caka. Kad bolje razmislim, i kupci su mi češće muškarci - smeška se Božidar, penzionisani metalostrugar iz Zastavine Kovačnice.\r\n\r\nI zaista, Boško kaže da je neke kaktuse čekao tri godine da procvetaju, neke sedam, a nekima treba i 13 godina. Mnoge je rasađivao, kalemio, a neke sadio iz semena i tu tek pokazao nivo svog strpljenja.', '- Kad kaktus procveta, taj cvet se osuši i u bobici ostane seme. Ono je toliko sitno da se skoro ne vidi golim okom, pa uzmem beli papir i izručim ga na njega. Jednu semenku ne možete ni izdvojiti, a kamoli posaditi, pa ih samo pospem u zemlju i čekam. Kada niknu, to izgledao kao minijaturna četka, pa izdanak mogu samo pincetom odvajati od drugih i tom pincetom ga i saditi u saksiju. Lakše je bilo pre jedno 10 ili 20 godina, sada mi trebaju i naočari sa dobrom dioptrijom, ali i dalje uživam u tome, još kako - smeška se Boško Ristić.\r\n\r\nA pred njim dva kaktusa vršnjaka, obojici je po 15-ak godina. Jedan je teško i podići, drugi je tešine oko 100 grama i visine oko sedam centimetara. Ovaj veliki je Boškov ljubimac, negovan nežnom rukom metalca, i on ga nikada neće prodati.', 'Nakon tolikih godina druženja ovaj čovek ne može sebi da dozvoli da ujutru ne vidi bodljikavog drugara. I ovaj mali je iste sudbine, jer ga je Boško pratio deceniju i po dok je kaktus rastao pola centimetra godišnje.\r\n\r\n- Nekim vrstama cvet traje po mesec dana, druge imaju predivne cvetove koji neizdrživo smrde. Ipak, nema boje na svetu a da kaktusi nemaju cvet u toj boji,\r\nimaju i zelen i crni cvet. Posedujem kaktuse koji se hrane insektima, neke koji liče na kamenčiće, one koji imaju kukice na vrhu bodlje pa raspore kožu ako se\r\nubodeš i povučeš trn napolje - kaže Boško.\r\n\r\n- Imam i one koji leče, oko 20 vrsta aloje. Njih uglavnom poklanjam, ne mogu lek da naplatim. Moja naplata je kada mušterija dođe i kaže - hvala čika Boško, vi ste mi spasili majku. Naravno da nisam ja, ali je ljudski pomoći kada možeš - dodaje Boško.\r\n\r\nOn kaktuse preporučuje i kao dobro poznate \"upijače\" zračenja - računara, TV aparata, mobilnih telefona. Kupci mahom žele okrugle kaktuse sa velikim\r\nbodljama, a neki koji izgledaju kao kamenje ili su \"čupavi\" imaju manje poklonika.\r\n\r\nPazari se i poznati \"svekrvin jezik\", a kupci nisu izbirljivi u pogledu ovih biljaka, samo da je \"jezik\" veliki, a bodlje oštre.'),
(9, 'Kako da u par koraka napravite mini baštu sa kaktusima: dekorativno i jednostavno za održavanje', 'Kaktusi u akvarijumu ili terarijumu ulepšaće svaki prostor i vrlo su zahvalni kada je gajenje u pitanju.\r\nIskoristite stari akvarijum kao terarijum za uzgajanje kaktusa. Kaktusi su izuzetno jednostavni za gajenje i bez problema će opstati u terarijumu. S obzirom da su u pitanju vrlo izdržljive biljke, biće im dovoljno par sati sunčeve svetlosti dnevno i suva zemlja. Nakon što kaktusima obezbedite osnovne, neophodne uslove da rastu.\r\nNabavite sve što vam je potrebno za gajenje kaktusa. Baštenska zemlja za uzgajanje kaktusa, šljunak ili pesak, kamenčići i đubrivo za biljke koje sadrži azot i fosrfor, neophodni su za gajenje i rast kaktusa.', 'assets/img/blog6.jpg', '', 1, '2019-01-17 22:29:08', 'Odaberite akvarijum bilo koje veličine, u zavisnosti od toga koliko kaktusa želite da zasadite. Za početak je bolje uzeti sasvim mali akvarijum (ili terarijum), dok se ne uhodate. Očistite ga detaljno kako ne bi ostalo prašine i drugih prljavština i isperite ga deterdžentom za sudove i vrućom vodom. Kada operete akvarijum iznutra i spolja, ispirajte ga dok voda ne postane čista. Vodite računa da uklonite ostatke deterdženta sa stakla.\r\nNakon što ste očistili akvarijum, započnite sadnju kaktusa. Prekrijte dno šljunkom i kamenčićima koje ste prethodno takođe očistili, u sloju od 2.5 cm. Ovaj korak je bitan jer će pomoći prilikom drenaže vode koja bude prolazila kroz zemljište. Imajte na umu da kaktusi ne uspevaju dobro kada je zemljište vlažno.\r\n\r\n', 'Kaktusi imaju drugačije potrebe u odnosu na druge biljke. Najbolje bi bilo da uzmete mešavinu zemlje, peska i đubriva kako biste obezbedili balans svih nutrijenata neophodnih kaktusu. Preko šljunka i kamenčića stavite sloj od nekoliko centimetara baštenske zemlje za gajenje kaktusa kako bi kaktus imao dovoljno mesta da pusti svoje korenje i da raste.\r\nNapravite par malih rupa u zemlji, u koje ćete ubaciti kaktus. Pažljivo ubacite kaktus i popunite rupe ali vodite računa da ne natrpate previše zemlje. Nakon što ste ga zasadili, pospite sloj šljunka ili peska preko površine zemlje oko zasađenog kaktusa. Možete da koristite rukavice tokom ovog procesa.', 'Svoj kaktus-akvarijum možete da dekorišete kako god želite. Na primer, dodajte par rečnih ili dekorativnih kamenčića po svom izboru. Ulepšaće akvarijum i odlično će se uklopiti uz ove pustinjske biljke. Kamenčiće samo spustite i nemojte ih gurati u zemlju.\r\nBilo bi poželjno da bašta s kaktusima bude na mestu gde ima dovoljno sunčeve svetlosti (na primer, na prozorskoj dasci). Zalivajte ih jednom mesečno ili po potrebi, kada vidite da je zemlja isušena. Ukoliko ste mini baštu stavili na mesto sa malo svetla, bilo bi poželjno zaliti kaktuse jednom do dva puta nedeljno sa malo vode. Đubrite zemljište jednom do dva puta godišnje, u skladu s uputstvom na pakovanju. Najbolje je da to bude tokom prolećnih ili letnjih meseci.'),
(10, '3 saveta za cvetanje božićnog kaktusa: evo kako da negujete čarobnu prazničnu biljku', 'U vreme dok još nije bilo popularnih i svuda dostupnih božićnih zvezda, naše su bake obožavale božićni kaktus (Epiphyllum truncatum). Još uvek je taj kaktus čest ukras naših domova, posebno u vrijeme Božića kada raskošno cvetaju cvetovi u crvenoj, ljubičastoj, narandžastoj, žutoj, beloj i ružičastoj boji.', 'assets/img/blog7.jpg', '', 1, '2019-01-17 22:29:08', 'Ova biljka spada među člankovite kaktuse koji potiču iz Južne Amerike. Njihovi su listovi promenjeni u zelene i pljosnate članke. Brzo rastu, a novi člankoviti listovi i pupoljci niču iz starog članka, poslednjeg u nizu. Lako se razmnožavaju, a svaki članak ima svoj korenčić. Dovoljno ga je staviti u vlažni pesak i za dvadesetak dana će se ukoreniti, pa ga možete presaditi u saksiju sa zemljom za kaktuse.', 'Cveta u rano proleće i zimi, a za božićnu dekoraciju ih kupujemo od kraja oktobra, kada su biljke pune pupoljaka. Božićni kaktus je vrlo tolerantan što se tiče temperature i vrste grejanja, dobro će podneti bilo koji prostor koji ste mu namenili. Najbolje je da stavite biljku na policu prozora na istočnoj ili zapadnoj strani, gde je zaštićen od jakog podnevnog sunca.', 'Ako ga držite u dnevnom boravku ili drugoj sobi u kojoj je temperatura iznad 18 stepeni Celzijusa, cvetovi će biti bogatiji.Božićni kaktus nije pravi kaktus, pa mu treba više vlage nego kaktusu. Zato ga zalivajte kad god je zemlja suva na dodir i redovno ga pođubrite, barem na svake dve nedelje. Koristite đubrivo za sobno cveće ili posebno đubrivo za kaktuse i sukulente.'),
(11, 'Kako gajiti mini kaktuse', 'Mini kaktuse možete gajiti u sasvim malim posudama, udružene u većim posudama ili u staklenim terarijumima. Njihova lepota je u raznovrsnosti i lakoći gajenja, a samo pogled na vaš mali cvetak osvežiće vaš radni ili životni kutak.\r\nPreporučljive vrste mini kaktusa su Jade, Echeveria, Sedum, and Euphorbia, ali i Aeonium i Echeverias iz porodice Crassulaceae i Opunta Microdasys. Ako gajite različite vrste u zajedničkim posudama, obavezno uskladite vrste koje vole slične uslove.', 'assets/img/blog8.jpg', '', 1, '2019-01-17 22:30:18', 'Da biste zasadili mini kaktuse možete koristiti lišće, zasečene stabljike ili korenje. Ako koristite korenje morate ga obraditi i smanjiti na potrebnu veličinu pre sadnje. Ako koristite listove, postavite ih na zemlju ili zasadite u zemlju, a oni će proklijati. Posadite ih u sasvim maloj saksiji, a ako ih sadite u bašti, nemojte ih raštrkati, jer ove vrste najbolje izgledaju i uspevaju kada rastu zgusnute.\r\nKljučna preporuka za gajenje ovih vrsta ogleda se u tome da im ne treba mnogo vode. Ako se previše zalivaju uginu ili istrule, pa se, pored treseta i zemlje, na dno stavljaju sitni kamenčići kako bi se voda proceđivala. Zalivaju se otprilike jednom nedeljno tokom kasnog proleća i leta, a na jesen i zimu tek jednom mesečno.', 'Karakteristično za ove vrste je da ih treba obilno zalivati, zatim ocediti, a ponovo se zalivaju tek kada im se zemlja sasvim osuši. Dobro je zaliti ih rano ujutru, kako bi tokom dana mogle da upiju vodu. Treba izbegavati direktno kvašenje listova, zbog eventualnih opekotina nastalih direktnim izlaganjem suncu.\r\nKaktusi izuzetno vole sunce. Potrebno ih je držati na južnim, zapadnim pa i istočnim stranama, a tako da budu izložene suncu najmanje tri sata dnevno. Uz to, treba voditi računa o opekotinama zbog prekomerne direktne izloženosti najjačem suncu.\r\n\r\n', 'Poigrajte se i dizajnirajte svoj kutak za kaktuse, koji su idealni za dekorisanje, a potrebno će vam biti malo kamenčića i figurica. Ako želite da imate minijaturnu verziju bašte u svojoj saksiji, uzmite plitku veću saksiju i u nju zasadite različite vrste sukulenata, a zatim ih ukrasite kamenčićima ili čak figuricama koje će oponašati izgled bašte. Tako možete napraviti minijaturnu verziju parka, sa mini biljkama, osvetljenjem, klupicama i ljudskim figuricama.'),
(12, 'Neobičan hobi - čuvanje kaktusa', 'Nišlija Boban Stanković već 20 godina prikuplja različite vrste kaktusa i trenutno ima zbirku od preko 1.000 različitih primeraka.Neobična ljubav prema ovim čudnim biljkama kod Bobana se, kako kaže, javila sasvim slučajno. Pre dvadeset godina imao je cvećaru i tada se prvi put susreo sa kaktusima.', 'assets/img/blog9.jpg', '', 1, '2019-01-17 22:30:18', 'On se svojom zbirkom ne hvali, ali ukoliko želite da je vidite sa zadovoljstvom će vam pokazati sve te zadivljujuće primerke i uvesti vas u svet kaktusarstva. Boban sa puno ljubavi govori o svojim biljkama, ali ukoliko mu se učinite kao osoba koja će lepo brinuti o kaktusu sa zadovoljstvom će vam pokloniti neki od njih.\r\nOvaj Nišlija tvrdi da mu hobi ne oduzima puno vremena jer kaktusi ne zahtevaju posebnu negu i brigu. Većinu primeraka zaliva jednom nedeljno, ali ako nekada i preskoči ceo mesec na biljku se to neće odraziti kao nešto pogubno.', 'Kaže da zbog obimnosti zbirke nega ponekad može i duže da traje, ali da je ljubiteljima koji imaju samo po par primeraka dovoljno par minuta mesečno, pa je kaktus idealan za one koji vole prirodne biljke, a nemaju vremena da im se posveta jer on neće ni primetiti ako ga na nedelju dana potpuno zaboravite. Ipak, ako bolje brinete o njemu uzvratiće vam primamljivijim izgledom.\r\nKada se zainteresovao za kaktuse nije ni znao da u Srbiji postoji još puno poštovalaca ovih biljaka, a da sada čak postoji udruženje kaktusara čiji je on predsednik. On kaže da sa njima razmenjuje retke primerke i tako proširuje svoju kolekciju, ali i da u slobodno vreme zajedno odlaze na planinarenje i uživaju u prirodi što češće.', 'Stanković tvrdi da kaktusarstvo nije skupo, ali da je pojedinim primercima potrebno mnogo vremena da se razviju. On neke primerke sam uzgaja, pa čak i po simboličnim cenama prodaje vrste koje mu dobro uspevaju, ali da ima primeraka koji za njega nemaju cenu.\r\nOn kaže da za početak nije potrebno mnogo para i da on sam većini zainteresovanih pokloni po par vrsta za početak.  Boban takođe ljubiteljima kaktusa koji tek počinju da se bave ovim hobijem daje savet da je većini kaktusa dovoljno jedno zalivanje nedeljno, da leti vole toplotu, a zimi hladniji zatvoren prostor i da im to u tom periodu voda nije potrebna. Kaže da mu je želja da Niš ima botaničku baštu i u njoj odeljak posvećen njemu najdražim biljkama.');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `questionID` int(11) NOT NULL,
  `question` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`questionID`, `question`) VALUES
(1, 'Da li je zemlji za kaktuse potrebno dodavati đubrivo?');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `socialnetwork`
--

CREATE TABLE `socialnetwork` (
  `socialNetworkID` int(11) NOT NULL,
  `href` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialnetwork`
--

INSERT INTO `socialnetwork` (`socialNetworkID`, `href`, `icon`) VALUES
(1, 'https://facebook.com', 'fab fa-facebook-square'),
(2, 'https://twitter.com', 'fab fa-twitter'),
(3, 'https://instagram.com', 'fab fa-instagram'),
(4, 'https://www.pinterest.com', 'fab fa-pinterest-p');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `statisticsID` int(11) NOT NULL,
  `suggestionID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`statisticsID`, `suggestionID`, `questionID`, `userID`) VALUES
(1, 3, 1, 37),
(2, 1, 1, 39),
(3, 2, 1, 39),
(4, 1, 1, 88),
(5, 3, 1, 88),
(6, 3, 1, 88),
(7, 2, 1, 88),
(8, 2, 1, 88),
(9, 2, 1, 88),
(10, 2, 1, 88),
(11, 2, 1, 88),
(12, 3, 1, 88),
(13, 3, 1, 88),
(14, 2, 1, 88),
(15, 2, 1, 88),
(16, 2, 1, 88),
(17, 2, 1, 88),
(18, 2, 1, 88),
(19, 2, 1, 88),
(20, 2, 1, 88),
(21, 1, 1, 92),
(24, 3, 1, 117),
(25, 3, 1, 124),
(26, 1, 1, 128),
(27, 1, 1, 136),
(28, 2, 1, 140),
(29, 1, 1, 141);

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `suggestionID` int(11) NOT NULL,
  `suggestion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`suggestionID`, `suggestion`, `questionID`) VALUES
(1, 'Da', 1),
(2, 'Ne', 1),
(3, 'Ne znam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `roleID` int(11) NOT NULL,
  `active` int(11) DEFAULT 0,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `email`, `password`, `registerDate`, `roleID`, `active`, `token`) VALUES
(141, 'Jovana Jovic', 'jovana1@gmail.com', '5116f16d3399fcb6571f571d79f35f41', '2020-06-08 13:44:07', 2, 1, 'bd8e04ecdaca533952ac382d61a79815542fc592be43a25dd11f19c5cd095bdd1f2f6de58c61b540cf5b1e13f744dff4930ab267f6f7a8592d1972ab'),
(142, 'Bojan Bojanic', 'admin@gmail.com', '7488e331b8b64e5794da3fa4eb10ad5d', '2020-06-08 13:47:13', 1, 1, '6001e2e44ba70c4f26dd6da867f0f0c71ca57f8f2d9541fbe3d117271780c4d83ddb63824c7ad8e79f99f7f2c1a81534caf05439a4bbe0dc5bcab159');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`genderID`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `socialnetwork`
--
ALTER TABLE `socialnetwork`
  ADD PRIMARY KEY (`socialNetworkID`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`statisticsID`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`suggestionID`),
  ADD KEY `questionsID` (`questionID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `genderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `socialnetwork`
--
ALTER TABLE `socialnetwork`
  MODIFY `socialNetworkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `statisticsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `suggestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD CONSTRAINT `suggestion_ibfk_1` FOREIGN KEY (`questionID`) REFERENCES `question` (`questionID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

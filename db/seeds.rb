require "open-uri"
require "nokogiri"

p "Seeding Users"

admin = User.new(
  email: "admin@htl.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)
admin.save!

# Roman emperors (reigns):

p "Seeding Emperors section"

romanemperors = Timeline.new(
  name: "Roman emperors",
  description: "The Roman emperors were the rulers of the Roman Empire from the granting of the name and title Augustus to Octavian by the Roman Senate in 27 BC onwards. Augustus maintained a facade of Republican rule, rejecting monarchical titles but calling himself princeps senatus (first man of the Senate) and princeps civitatis (first citizen of the state). The title of Augustus was conferred on his successors to the imperial position, and emperors gradually grew more monarchical and authoritarian."
)
romanemperors.user = admin
romanemperors.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'roman_empire.jpg')), filename: 'roman_empire.jpg', content_type: 'romanempire.png')

augustus = Event.new(
  name: "Augustus",
  description: "Grandnephew and adopted son of Julius Caesar. Gradually acquired further power through grants from, and constitutional settlements with, the Roman Senate. Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
  start_date: Date.new(-26, 1, 27),
  end_date: Date.new(14, 8, 19)
)
augustus.user = admin
augustus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
augustus.save!

tiberius = Event.new(
  name: "Tiberius",
  description: "Stepson, former son-in-law and adopted son of Augustus. Died probably of natural causes, allegedly murdered at the instigation of Caligula",
  start_date: Date.new(14, 9, 17),
  end_date: Date.new(37, 3, 16)
)
tiberius.user = admin
tiberius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
tiberius.save!

caligula = Event.new(
  name: "Caligula",
  description: "Grandnephew and adopted heir of Tiberius, great-grandson of Augustus. Murdered in a conspiracy involving the Praetorian Guard and senators",
  start_date: Date.new(37, 3, 18),
  end_date: Date.new(41, 1, 24)
)
caligula.user = admin
caligula.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
caligula.save!

claudius = Event.new(
  name: "Claudius",
  description: "Uncle of Caligula, grandnephew of Augustus, proclaimed emperor by the Praetorian Guard and accepted by the Senate. Probably poisoned by his wife Agrippina, in favor of her son Nero",
  start_date: Date.new(41, 1, 24),
  end_date: Date.new(54, 10, 13)
)
claudius.user = admin
claudius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
claudius.save!

nero = Event.new(
  name: "Nero",
  description: "Grandnephew, stepson, son-in-law and adopted son of Claudius, great-great-grandson of Augustus. Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
  start_date: Date.new(54, 10, 13),
  end_date: Date.new(68, 6, 9)
)
nero.user = admin
nero.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
nero.save!

galba = Event.new(
  name: "Galba",
  description: "Governor of Hispania Tarraconensis, revolted against Nero and seized power after his suicide, with support of the Senate and Praetorian Guard. Murdered by soldiers of the Praetorian Guard in a coup led by Otho",
  start_date: Date.new(68, 6, 8),
  end_date: Date.new(69, 1, 15)
)
galba.user = admin
galba.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'galba.jpg')), filename: 'galba.png', content_type: 'image.png')
galba.save!

otho = Event.new(
  name: "Otho",
  description: "Seized power through a coup against Galba. Committed suicide after losing the Battle of Bedriacum to Vitellius",
  start_date: Date.new(69, 1, 15),
  end_date: Date.new(69, 4, 16)
)
otho.user = admin
otho.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'otho.jpg')), filename: 'otho.png', content_type: 'image.png')
otho.save!

vitellius = Event.new(
  name: "Vitellius",
  description: "Governor of Germania Inferior, proclaimed emperor by the Rhine legions on 2 January in opposition to Galba and Otho, later recognized by the Senate. Murdered by Vespasian's troops",
  start_date: Date.new(69, 4, 19),
  end_date: Date.new(69, 12, 20)
)
vitellius.user = admin
vitellius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'vitellius.png')), filename: 'vitellius.png', content_type: 'image.png')
vitellius.save!

vespasian = Event.new(
  name: "Vespasian",
  description: "Seized power with support of the eastern legions, in opposition to Vitellius. Died of natural causes",
  start_date: Date.new(69, 7, 1),
  end_date: Date.new(79, 6, 23)
)
vespasian.user = admin
vespasian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'vespasian.jpg')), filename: 'vespasian.png', content_type: 'image.png')
vespasian.save!

titus = Event.new(
  name: "Titus",
  description: "Son of Vespasian. Died of natural causes",
  start_date: Date.new(79, 6, 24),
  end_date: Date.new(81, 9, 13)
)
titus.user = admin
titus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'titus.jpg')), filename: 'titus.png', content_type: 'image.png')
titus.save!

domitian = Event.new(
  name: "Domitian",
  description: "Brother of Titus and son of Vespasian. Assassinated in a conspiracy of court officials, possibly involving Nerva",
  start_date: Date.new(81, 9, 14),
  end_date: Date.new(96, 9, 18)
)
domitian.user = admin
domitian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'domitian.jpg')), filename: 'domitian.png', content_type: 'image.png')
domitian.save!

nerva = Event.new(
  name: "Nerva",
  description: "Proclaimed emperor after the murder of Domitian. First of the 'Five Good Emperors'. Died of natural causes.",
  start_date: Date.new(96, 9, 18),
  end_date: Date.new(98, 1, 27)
)
nerva.user = admin
nerva.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nerva.jpg')), filename: 'nerva.png', content_type: 'image.png')
nerva.save!

trajan = Event.new(
  name: "Trajan",
  description: "Adopted son of Nerva. First non-Italian emperor. His reign marked the geographical peak of the empire. Died of natural causes.",
  start_date: Date.new(98, 1, 28),
  end_date: Date.new(117, 8, 11)
)
trajan.user = admin
trajan.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'trajan.jpg')), filename: 'trajan.png', content_type: 'image.png')
trajan.save!

hadrian = Event.new(
  name: "Hadrian",
  description: "Cousin of Trajan, allegedly adopted on his deathbed. Ended Roman expansionism. Died of natural causes.",
  start_date: Date.new(117, 8, 11),
  end_date: Date.new(138, 7, 10)
)
hadrian.user = admin
hadrian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'hadrian.jpg')), filename: 'hadrian.png', content_type: 'image.png')
hadrian.save!

antoninuspius = Event.new(
  name: "Antoninus Pius",
  description: "Adopted son of Hadrian. Died of natural causes.",
  start_date: Date.new(138, 7, 10),
  end_date: Date.new(161, 3, 7)
)
antoninuspius.user = admin
antoninuspius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'antoninuspius.jpg')), filename: 'antoninuspius.png', content_type: 'image.png')
antoninuspius.save!

marcusaurelius = Event.new(
  name: "Marcus Aurelius",
  description: "Son-in-law and adopted son of Antoninus Pius. Reigned jointly with his adoptive brother, Lucius Verus, the first time multiple emperors shared power. Last of the 'Five Good Emperors'; also one of the most representative Stoic philosophers. Died of natural causes.",
  start_date: Date.new(161, 3, 7),
  end_date: Date.new(180, 3, 17)
)
marcusaurelius.user = admin
marcusaurelius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'marcusaurelius.jpg')), filename: 'marcusaurelius.png', content_type: 'image.png')
marcusaurelius.save!

luciusverus = Event.new(
  name: "Lucius Verus",
  description: "Adopted son of Antoninus Pius, joint emperor with his adoptive brother, Marcus Aurelius. Died of natural causes.",
  start_date: Date.new(161, 3, 7),
  end_date: Date.new(169, 1, 31)
)
luciusverus.user = admin
luciusverus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'luciusverus.jpg')), filename: 'luciusverus.png', content_type: 'image.png')
luciusverus.save!

commodus = Event.new(
  name: "Commodus",
  description: "Son of Marcus Aurelius. First emperor to be elevated during predecessor's lifetime. Strangled to death in a conspiracy involving his praetorian prefect, Laetus, and mistress, Marcia.",
  start_date: Date.new(176, 11, 27),
  end_date: Date.new(192, 12, 31)
)
commodus.user = admin
commodus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'commodus.jpg')), filename: 'commodus.png', content_type: 'image.png')
commodus.save!

era_julioc = Era.new(
  name: "Julio-Claudian dynasty",
  description: "",
  start_date: Date.new(-26, 1, 27),
  end_date: Date.new(68, 6, 9)
)
era_julioc.user = admin
era_julioc.save!

era_fouremperors = Era.new(
  name: "Year of the Four Emperors",
  description: "",
  start_date: Date.new(68, 6, 8),
  end_date: Date.new(69, 12, 20)
)
era_fouremperors.user = admin
era_fouremperors.save!

era_flavian = Era.new(
  name: "Flavian dynasty",
  description: "",
  start_date: Date.new(69, 7, 1),
  end_date: Date.new(96, 9, 18)
)
era_flavian.user = admin
era_flavian.save!

era_nerva = Era.new(
  name: "Nerva–Antonine dynasty",
  description: "",
  start_date: Date.new(96, 9, 18),
  end_date: Date.new(192, 12, 31)
)
era_nerva.user = admin
era_nerva.save!

era_severan = Era.new(
  name: "Severan dynasty",
  description: "",
  start_date: Date.new(193, 4, 9),
  end_date: Date.new(235, 3, 21)
)
era_severan.user = admin
era_severan.save!

era_crisis = Era.new(
  name: "Crisis of the Third Century",
  description: "",
  start_date: Date.new(235, 3, 1),
  end_date: Date.new(284, 11, 1)
)
era_crisis.user = admin
era_crisis.save!

romanemperors.events = [augustus, tiberius, caligula, claudius, nero, galba, otho, vitellius, vespasian, titus, domitian, nerva, trajan, hadrian, antoninuspius, marcusaurelius, luciusverus, commodus]
romanemperors.eras = [era_julioc, era_nerva, era_flavian, era_fouremperors, era_severan, era_crisis]
romanemperors.start_date = romanemperors.events.first.start_date
romanemperors.end_date = romanemperors.events.last.end_date
romanemperors.save!

# Wars of the Roman Empire

p "Seeding Roman wars section"

romanwars = Timeline.new(
  name: "Wars of the Roman Empire",
  description: "The wars fought by the Roman Empire, starting with the Battle of Actium (31 BC)"
)
romanwars.user = admin
romanwars.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofactium.jpg')), filename: 'battleofactium.jpg', content_type: 'battleofactium.png')

battleofactium = Event.new(
  name: "The Battle of Actium",
  description: "The Battle of Actium was a naval battle fought between a maritime fleet led by Octavian and the combined fleets of both Mark Antony and Cleopatra VII Philopator. The battle took place on 2 September 31 BC in the Ionian Sea, near the former Roman colony of Actium, Greece, and was the climax of over a decade of rivalry between Octavian and Antony.",
  start_date: Date.new(-30, 9, 2)
)
battleofactium.user = admin
battleofactium.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofactium.jpg')), filename: 'battleofactium.png', content_type: 'battleofactium.png')
battleofactium.save!

cantabrianwars = Event.new(
  name: "Cantabrian Wars",
  description: "The Cantabrian Wars (29-19 BC) (Bellum Cantabricum), sometimes also referred to as the Cantabrian and Asturian Wars (Bellum Cantabricum et Asturicum), were the final stage of the two-century long Roman conquest of Hispania, in what today are the provinces of Cantabria, Asturias and León in northwestern Spain.",
  start_date: Date.new(-28),
  end_date: Date.new(-18)
)
cantabrianwars.user = admin
cantabrianwars.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'cantabrianwars.jpg')), filename: 'cantabrianwars.png', content_type: 'cantabrianwars.png')
cantabrianwars.save!

germanicbattles = Event.new(
  name: "Germanic Battles",
  description: "Roman forces under Augustus's stepson Drusus win a victory in Germany.",
  start_date: Date.new(-15),
  end_date: Date.new(-10)
)
germanicbattles.user = admin
germanicbattles.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'germanicbattles.jpg')), filename: 'germanicbattles.png', content_type: 'germanicbattles.png')
germanicbattles.save!

bellumbatonianum = Event.new(
  name: "Bellum Batonianum",
  description: "An alliance of tribes numbering more than 200,000 people in Illyria rise in rebellion, but are suppressed by Roman legions led by Tiberius and Germanicus.",
  start_date: Date.new(6),
  end_date: Date.new(9)
)
bellumbatonianum.user = admin
bellumbatonianum.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'bellumbatonianum.jpg')), filename: 'bellumbatonianum.png', content_type: 'bellumbatonianum.png')
bellumbatonianum.save!

battleofteutoburgforest = Event.new(
  name: "Battle of the Teutoburg Forest",
  description: "The Battle of the Teutoburg Forest, described as the Varian Disaster (Clades Variana) by Roman historians, took place at modern Kalkriese in AD 9, when an alliance of Germanic peoples ambushed Roman legions and their auxiliaries, led by Publius Quinctilius Varus. The alliance was led by Arminius, a Germanic officer of Varus's auxilia. Arminius had acquired Roman citizenship and had received a Roman military education, which enabled him to deceive the Roman commander methodically and anticipate the Roman army's tactical responses.",
  start_date: Date.new(9)
)
battleofteutoburgforest.user = admin
battleofteutoburgforest.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofteutoburgforest.jpg')), filename: 'battleofteutoburgforest.png', content_type: 'battleofteutoburgforest.png')
battleofteutoburgforest.save!

battleatponteslongi = Event.new(
  name: "Battle at Pontes Longi",
  description: "Indecisive battle between a Roman army under Aulus Caecina Severus and German tribes led by Arminius.",
  start_date: Date.new(15)
)
battleatponteslongi.user = admin
battleatponteslongi.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleatponteslongi.jpg')), filename: 'battleatponteslongi.png', content_type: 'battleatponteslongi.png')
battleatponteslongi.save!

battleoftheweserriver = Event.new(
  name: "Battle of the Weser River",
  description: "Legions under Germanicus defeat German tribes of Arminius.",
  start_date: Date.new(16)
)
battleoftheweserriver.user = admin
battleoftheweserriver.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleoftheweserriver.jpg')), filename: 'battleoftheweserriver.png', content_type: 'battleoftheweserriver.png')
battleoftheweserriver.save!

romanwars.events = [battleofactium, cantabrianwars, germanicbattles, bellumbatonianum, battleofteutoburgforest, battleatponteslongi, battleoftheweserriver]
romanwars.start_date = romanwars.events.first.start_date
romanwars.end_date = romanwars.events.last.end_date
romanwars.save!


# Emperors' lifetimes
p "Seeding Emperors' lives section"

emperorslives = Timeline.new(
  name: "Lifetimes of the Roman Emperors",
  description: "This timeline chronicles the lifetimes of the Roman Emperors"
)
emperorslives.user = admin

augustuslife = Event.new(
  name: "Augustus",
  description: "Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
  start_date: Date.new(-62, 9, 23),
  end_date: Date.new(14, 8, 19)
)
augustuslife.user = admin
augustuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
augustuslife.save!

tiberiuslife = Event.new(
  name: "Tiberius",
  description: "Died probably of natural causes, allegedly murdered at the instigation of Caligula",
  start_date: Date.new(-41, 11, 16),
  end_date: Date.new(37, 3, 16)
)
tiberiuslife.user = admin
tiberiuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
tiberiuslife.save!

caligulalife = Event.new(
  name: "Caligula",
  description: "Murdered in a conspiracy involving the Praetorian Guard and senators",
  start_date: Date.new(12, 8, 31),
  end_date: Date.new(41, 1, 24)
)
caligulalife.user = admin
caligulalife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
caligulalife.save!

claudiuslife = Event.new(
  name: "Claudius",
  description: "Probably poisoned by his wife Agrippina, in favor of her son Nero",
  start_date: Date.new(-9, 8, 1),
  end_date: Date.new(54, 10, 13)
)
claudiuslife.user = admin
claudiuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
claudiuslife.save!

nerolife = Event.new(
  name: "Nero",
  description: "Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
  start_date: Date.new(37, 12, 15),
  end_date: Date.new(68, 6, 9)
)
nerolife.user = admin
nerolife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
nerolife.save!

emperorslives.events = [augustuslife, tiberiuslife, caligulalife, claudiuslife, nerolife]
emperorslives.start_date = emperorslives.events.first.start_date
emperorslives.end_date = emperorslives.events.last.end_date
emperorslives.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
emperorslives.save!


# Soviet union section:

p "Seeding Soviet Union section"

sovietunion = Timeline.new(
  name: "Leaders of Soviet Union (1922-1991)",
  description: "This timeline includes persons who held the top leadership position of the Soviet Union from its founding in 1922 until its 1991 dissolution."
)

sovietunion.user = admin
sovietunion.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'urss.jpg')), filename: 'urss.jpgg', content_type: 'iurss.jpg')

lenin = Event.new(
  name: "Vladimir Lenin",
  description: "Ever since the Bolsheviks inception, Lenin had served as their de facto leader. After the Russian Revolution, Lenin became leader of the Russian Soviet Federative Socialist Republic (RSFSR) from 1917 and leader of the Union of Soviet Socialist Republics (USSR) from 1922 until his death.",
  start_date: Date.new(1922, 12, 30),
  end_date: Date.new(1924, 1, 21)
)
lenin.user = admin
lenin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'lenin.jpg')), filename: 'lenin.png', content_type: 'image.png')
lenin.save!

stalin = Event.new(
  name: "Iosif Stalin",
  description: "Following the death of Lenin, Stalin initially ruled as part of a troika alongside Grigory Zinoviev and Lev Kamenev. However, by April 1925, this arrangement broke down as Stalin consolidated power to become the Soviet Union's absolute dictator. He also held the post of the Minister of Defence from 19 July 1941 to 3 March 1947 and chaired the State Defense Committee during World War II.",
  start_date: Date.new(1924, 1, 21),
  end_date: Date.new(1953, 3, 5)
)
stalin.user = admin
stalin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'stalin.jpg')), filename: 'stalin.png', content_type: 'image.png')
stalin.save!

russian_communisme = Era.new(
  name: "Communisme in Russia",
  description: "From the 27 October 1917, when the  the Bolsheviks and Left Socialist Revolutionaries took the lead of the country. To 26 December 1991, the date of the to the dissolution of the Soviet Union.",
  start_date: Date.new(1917, 10, 27),
  end_date: Date.new(1991, 12, 26)
)
russian_communisme.user = admin
russian_communisme.save!

sovietunion.events = [lenin, stalin]
sovietunion.eras = [russian_communisme]
sovietunion.start_date = sovietunion.events.first.start_date
sovietunion.end_date = sovietunion.events.last.end_date
sovietunion.save!


bookmark_first = Bookmark.new
bookmark_first.user = admin
bookmark_first.timeline = romanemperors
bookmark_first.save!

bookmark_second = Bookmark.new
bookmark_second.user = admin
bookmark_second.timeline = romanwars
bookmark_second.save!

# This is the function that is called to scrape EB

def ebscraper(user)
  philosophersarray = []
  # Ancient until 900
  ancientphil = []

  # Medieval from 900 to 1300
  medievalphil = []

  # Early modern from 1300 to 1600
  earlymodernphil = []

  # 1600 to 1800
  midmodernphil = []

  # 1800 to 1900
  nineteenthphil = []

  # 1900 to present
  contemporaryphil = []

  for a in 1..8 do
    url = "https://www.britannica.com/browse/Philosophers/#{a}"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)

    # urlsarray is the list of urls on a single page, the urls link to individiual people's pages
    urlsarray = []
    html_doc.search(".font-weight-bold.font-16").each do |element|
      urlsarray << "https://www.britannica.com#{element.attribute("href").value}"
    end

    counter = 0
    urlsarray.each do |url|
      doc = Nokogiri::HTML(URI.open(url).read, nil, "utf-8")
      name = doc.search("h1").text
      description = doc.search(".topic-paragraph").first.text.gsub("  ", " ")
      picture_url = doc.search(".card-media").attribute("href").nil? ? "invalid" : doc.search(".card-media").attribute("href").value
      firstdate = "invalid"
      seconddate = "invalid"

      unless doc.at('dt:contains("Born")').nil?
        firstquery = doc.at('dt:contains("Born")').next_element.search(".fact-item").first.text.gsub("c.", "").gsub(/\(.*/, "")
        firstquery = firstquery.split("or")[0].rstrip if firstquery.include?("or")
        firstquery.gsub!("?", "")
        # This stuff below checks for a regular date ("October 12, 1406") and sets it
        if firstquery.match?(/[a-zA-Z]{3,9} \d{1,2}, \d{2,4}/)
          firstdate = firstquery.match(/[a-zA-Z]{3,9} \d{1,2}, \d{2,4}/)[0]
        else
          # This is where we check for other conditions
          firstquery.match?(/\A\D/) ? firstdate = "invalid" : firstdate = "January 1, #{firstquery}"
        end
      end

      unless doc.at('dt:contains("Died")').nil?
        secondquery = doc.at('dt:contains("Died")').next_element.search(".fact-item").first.text.gsub("c.", "").gsub(/\(.*/, "")
        secondquery = secondquery.split("or")[0].rstrip if secondquery.include?("or")
        secondquery.gsub!("?", "")
        if secondquery.match?(/[a-zA-Z]{3,9} \d{1,2}, \d{2,4}/)
          seconddate = secondquery.match(/[a-zA-Z]{3,9} \d{1,2}, \d{2,4}/)[0]
        else
          seconddate = "invalid"
          secondquery.match?(/\A\D/) ? seconddate = "invalid" : seconddate = "January 1, #{secondquery}"
        end
      end

      event = Event.new
      if firstdate != "invalid"
        event.name = name
        event.description = description
        event.start_date = Date.parse(firstdate, false)
        event.user = user
        event.end_date = Date.parse(seconddate, false) unless seconddate == "invalid"
        counter += 1
        if picture_url == "invalid"
          event.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'cover.jpg')), filename: 'cover.png', content_type: 'image.png')
        else
          event.photo.attach(io: URI.open(picture_url), filename: "#{name.downcase.gsub(" ", "_").gsub(/\W/, "")}.png", content_type: "#{name.downcase.gsub(" ", "_").gsub(/\W/, "")}.png")
        end
      end

      if event.save
        p "Successfully saved #{event.name}"

        # Here we should divide the events into different arrays for different periods
        philosophersarray << event
        ancientphil << event if event.start_date.year < 900
        # Medieval from 900 to 1300
        medievalphil << event if event.start_date.year >= 900 && event.start_date.year < 1300
        # Early modern from 1300 to 1600
        earlymodernphil << event if event.start_date.year >= 1300 && event.start_date.year < 1600
        # 1600 to 1800
        midmodernphil << event if event.start_date.year >= 1600 && event.start_date.year < 1800
        # 1800 to 1900
        nineteenthphil << event if event.start_date.year >= 1800 && event.start_date.year < 1900
        # 1900 to present
        contemporaryphil << event if event.start_date.year >= 1900
      else
        p "Failed to save #{name}"
      end
    end
    p "#{counter} philosophers passed on page #{a}"
  end

  # All philosophers timeline (huge):
  p "Making big philosophers' timeline"
  philosophers = Timeline.new(
    name: "Philosophers throughout the ages",
    description: "This timeline chronicles all of the philosophers that are listed on Encyclopedia Britannica."
  )

  philosophers.events = philosophersarray
  philosophers.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'cover.jpg')), filename: 'cover.png', content_type: 'image.png')
  philosophers.user = user
  philosophers.save!

  # Individual periods:
  p "Making individual periods"
  ancientphils = Timeline.new(
    name: "Ancient philosophers (before the year 900 A.D.)",
    description: "This timeline chronicles all of the ancient philosophers that are listed on Encyclopedia Britannica."
  )

  ancientphils.events = ancientphil
  ancientphils.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'ancientphils.jpg')), filename: 'ancientphils.png', content_type: 'image.png')
  ancientphils.user = user
  ancientphils.save!

  medievalphils = Timeline.new(
    name: "Medieval philosophers (from 900 to 1300 A.D.)",
    description: "This timeline chronicles all of the medieval philosophers that are listed on Encyclopedia Britannica."
  )

  medievalphils.events = medievalphil
  medievalphils.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'medievalphils.jpg')), filename: 'medievalphils.png', content_type: 'image.png')
  medievalphils.user = user
  medievalphils.save!

  earlymodernphils = Timeline.new(
    name: "Early modern philosophers (from 1300 to 1600 A.D.)",
    description: "This timeline chronicles all of the early modern philosophers that are listed on Encyclopedia Britannica."
  )

  earlymodernphils.events = earlymodernphil
  earlymodernphils.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'earlymodernphils.jpg')), filename: 'earlymodernphils.png', content_type: 'image.png')
  earlymodernphils.user = user
  earlymodernphils.save!

  midmodernphils = Timeline.new(
    name: "Modern philosophers (from 1600 to 1800 A.D.)",
    description: "This timeline chronicles all of the 17th and 18th century philosophers that are listed on Encyclopedia Britannica."
  )

  midmodernphils.events = midmodernphil
  midmodernphils.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'midmodernphils.jpg')), filename: 'midmodernphils.png', content_type: 'image.png')
  midmodernphils.user = user
  midmodernphils.save!

  nineteenthphils = Timeline.new(
    name: "19th century philosophers",
    description: "This timeline chronicles all of the nineteenth century philosophers that are listed on Encyclopedia Britannica."
  )

  nineteenthphils.events = nineteenthphil
  nineteenthphils.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'nineteenthphils.jpg')), filename: 'nineteenthphils.png', content_type: 'image.png')
  nineteenthphils.user = user
  nineteenthphils.save!

  contemporaryphils = Timeline.new(
    name: "20th century and contemporary philosophers",
    description: "This timeline chronicles all of the 20th and 21st century philosophers that are listed on Encyclopedia Britannica."
  )

  contemporaryphils.events = contemporaryphil
  contemporaryphils.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'philosophers', 'contemporaryphils.jpg')), filename: 'contemporaryphils.png', content_type: 'image.png')
  contemporaryphils.user = user
  contemporaryphils.save!
end

# The scraper is called here. Comment it out if you do not want to load it (it takes a long time)
ebscraper(admin)

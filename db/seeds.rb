require "open-uri"
require "nokogiri"

p "Seeding Users"

admin = User.new(
  email: "admin@htl.com",
  password: "123456",
  password_confirmation: "123456",
  username: "adminofdoom",
  admin: true
)
admin.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'skeletor.webp')), filename: 'skeletor.webp', content_type: 'skeletor.png')
admin.save!

# Roman emperors (reigns):

p "Seeding Emperors section"

romanemperors = Timeline.new(
  name: "Roman emperors",
  description: "This timeline contains all the Roman Emperors from Augustus to Commodus."
)
romanemperors.user = admin
romanemperors.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'roman_empire.jpg')), filename: 'roman_empire.jpg', content_type: 'romanempire.png')

augustus = Event.new(
  name: "Augustus",
  description: "Grandnephew and adopted son of Julius Caesar. Gradually acquired further power through grants from, and constitutional settlements with, the Roman Senate. Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
  start_day: 16,
  start_month: 1,
  start_year: -27,
  end_day: 19,
  end_month: 8,
  end_year: 14
)
augustus.user = admin
augustus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
augustus.save!

tiberius = Event.new(
  name: "Tiberius",
  description: "Stepson, former son-in-law and adopted son of Augustus. Died probably of natural causes, allegedly murdered at the instigation of Caligula",
  start_day: 17,
  start_month: 9,
  start_year: 14,
  end_day: 16,
  end_month: 3,
  end_year: 37
)
tiberius.user = admin
tiberius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
tiberius.save!

caligula = Event.new(
  name: "Caligula",
  description: "Grandnephew and adopted heir of Tiberius, great-grandson of Augustus. Murdered in a conspiracy involving the Praetorian Guard and senators",
  start_day: 18,
  start_month: 3,
  start_year: 37,
  end_day: 24,
  end_month: 1,
  end_year: 41
)
caligula.user = admin
caligula.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
caligula.save!

claudius = Event.new(
  name: "Claudius",
  description: "Uncle of Caligula, grandnephew of Augustus, proclaimed emperor by the Praetorian Guard and accepted by the Senate. Probably poisoned by his wife Agrippina, in favor of her son Nero",
  start_day: 24,
  start_month: 1,
  start_year: 41,
  end_day: 13,
  end_month: 10,
  end_year: 54
)
claudius.user = admin
claudius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
claudius.save!

nero = Event.new(
  name: "Nero",
  description: "Grandnephew, stepson, son-in-law and adopted son of Claudius, great-great-grandson of Augustus. Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
  start_day: 13,
  start_month: 10,
  start_year: 54,
  end_day: 9,
  end_month: 6,
  end_year: 68
)
nero.user = admin
nero.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
nero.save!

galba = Event.new(
  name: "Galba",
  description: "Governor of Hispania Tarraconensis, revolted against Nero and seized power after his suicide, with support of the Senate and Praetorian Guard. Murdered by soldiers of the Praetorian Guard in a coup led by Otho",
  start_day: 8,
  start_month: 6,
  start_year: 68,
  end_day: 15,
  end_month: 1,
  end_year: 69
)
galba.user = admin
galba.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'galba.jpg')), filename: 'galba.png', content_type: 'image.png')
galba.save!

otho = Event.new(
  name: "Otho",
  description: "Seized power through a coup against Galba. Committed suicide after losing the Battle of Bedriacum to Vitellius",
  start_day: 15,
  start_month: 1,
  start_year: 69,
  end_day: 16,
  end_month: 4,
  end_year: 69
)
otho.user = admin
otho.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'otho.jpg')), filename: 'otho.png', content_type: 'image.png')
otho.save!

vitellius = Event.new(
  name: "Vitellius",
  description: "Governor of Germania Inferior, proclaimed emperor by the Rhine legions on 2 January in opposition to Galba and Otho, later recognized by the Senate. Murdered by Vespasian's troops",
  start_day: 19,
  start_month: 4,
  start_year: 69,
  end_day: 20,
  end_month: 12,
  end_year: 69
)
vitellius.user = admin
vitellius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'vitellius.png')), filename: 'vitellius.png', content_type: 'image.png')
vitellius.save!

vespasian = Event.new(
  name: "Vespasian",
  description: "Seized power with support of the eastern legions, in opposition to Vitellius. Died of natural causes",
  start_day: 1,
  start_month: 7,
  start_year: 69,
  end_day: 23,
  end_month: 6,
  end_year: 79
)
vespasian.user = admin
vespasian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'vespasian.jpg')), filename: 'vespasian.png', content_type: 'image.png')
vespasian.save!

titus = Event.new(
  name: "Titus",
  description: "Son of Vespasian. Died of natural causes",
  start_day: 24,
  start_month: 6,
  start_year: 79,
  end_day: 13,
  end_month: 9,
  end_year: 81
)
titus.user = admin
titus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'titus.jpg')), filename: 'titus.png', content_type: 'image.png')
titus.save!

domitian = Event.new(
  name: "Domitian",
  description: "Brother of Titus and son of Vespasian. Assassinated in a conspiracy of court officials, possibly involving Nerva",
  start_day: 14,
  start_month: 9,
  start_year: 81,
  end_day: 18,
  end_month: 9,
  end_year: 96
)
domitian.user = admin
domitian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'domitian.jpg')), filename: 'domitian.png', content_type: 'image.png')
domitian.save!

nerva = Event.new(
  name: "Nerva",
  description: "Proclaimed emperor after the murder of Domitian. First of the 'Five Good Emperors'. Died of natural causes.",
  start_day: 18,
  start_month: 9,
  start_year: 96,
  end_day: 27,
  end_month: 1,
  end_year: 98
)
nerva.user = admin
nerva.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nerva.jpg')), filename: 'nerva.png', content_type: 'image.png')
nerva.save!

trajan = Event.new(
  name: "Trajan",
  description: "Adopted son of Nerva. First non-Italian emperor. His reign marked the geographical peak of the empire. Died of natural causes.",
  start_day: 28,
  start_month: 1,
  start_year: 98,
  end_day: 11,
  end_month: 8,
  end_year: 117
)
trajan.user = admin
trajan.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'trajan.jpg')), filename: 'trajan.png', content_type: 'image.png')
trajan.save!

hadrian = Event.new(
  name: "Hadrian",
  description: "Cousin of Trajan, allegedly adopted on his deathbed. Ended Roman expansionism. Died of natural causes.",
  start_day: 11,
  start_month: 8,
  start_year: 117,
  end_day: 10,
  end_month: 7,
  end_year: 138
)
hadrian.user = admin
hadrian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'hadrian.jpg')), filename: 'hadrian.png', content_type: 'image.png')
hadrian.save!

antoninuspius = Event.new(
  name: "Antoninus Pius",
  description: "Adopted son of Hadrian. Died of natural causes.",
  start_day: 10,
  start_month: 7,
  start_year: 138,
  end_day: 7,
  end_month: 3,
  end_year: 161
)
antoninuspius.user = admin
antoninuspius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'antoninuspius.jpg')), filename: 'antoninuspius.png', content_type: 'image.png')
antoninuspius.save!

marcusaurelius = Event.new(
  name: "Marcus Aurelius",
  description: "Son-in-law and adopted son of Antoninus Pius. Reigned jointly with his adoptive brother, Lucius Verus, the first time multiple emperors shared power. Last of the 'Five Good Emperors'; also one of the most representative Stoic philosophers. Died of natural causes.",
  start_day: 7,
  start_month: 3,
  start_year: 161,
  end_day: 17,
  end_month: 3,
  end_year: 180
)
marcusaurelius.user = admin
marcusaurelius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'marcusaurelius.jpg')), filename: 'marcusaurelius.png', content_type: 'image.png')
marcusaurelius.save!

luciusverus = Event.new(
  name: "Lucius Verus",
  description: "Adopted son of Antoninus Pius, joint emperor with his adoptive brother, Marcus Aurelius. Died of natural causes.",
  start_day: 7,
  start_month: 3,
  start_year: 161,
  end_day: 31,
  end_month: 1,
  end_year: 169
)
luciusverus.user = admin
luciusverus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'luciusverus.jpg')), filename: 'luciusverus.png', content_type: 'image.png')
luciusverus.save!

commodus = Event.new(
  name: "Commodus",
  description: "Son of Marcus Aurelius. First emperor to be elevated during predecessor's lifetime. Strangled to death in a conspiracy involving his praetorian prefect, Laetus, and mistress, Marcia.",
  start_day: 27,
  start_month: 11,
  start_year: 176,
  end_day: 31,
  end_month: 12,
  end_year: 192
)
commodus.user = admin
commodus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'commodus.jpg')), filename: 'commodus.png', content_type: 'image.png')
commodus.save!

pertinax = Event.new(
  name: "Pertinax",
  description: "City prefect of Rome at Commodus's death, set up as emperor by the praetorian prefect, Laetus, with consent of the Senate. Murdered by mutinous soldiers of the Praetorian Guard.",
  start_day: 1,
  start_month: 1,
  start_year: 193,
  end_day: 28,
  end_month: 3,
  end_year: 193
)
pertinax.user = admin
pertinax.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'pertinax.jpg')), filename: 'pertinax.png', content_type: 'image.png')
pertinax.save!

didiusjulianus = Event.new(
  name: "Didius Julianus",
  description: "Won auction held by the Praetorian Guard for the position of emperor. Killed on order of the Senate, at the behest of Septimius Severus.",
  start_day: 28,
  start_month: 3,
  start_year: 193,
  end_day: 1,
  end_month: 6,
  end_year: 193
)
didiusjulianus.user = admin
didiusjulianus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'didiusjulianus.jpg')), filename: 'didiusjulianus.png', content_type: 'image.png')
didiusjulianus.save!

era_julioc = Era.new(
  name: "Julio-Claudian dynasty",
  description: "",
  start_day: 27,
  start_month: 1,
  start_year: -26,
  end_day: 9,
  end_month: 6,
  end_year: 68
)
era_julioc.user = admin
era_julioc.save!

era_fouremperors = Era.new(
  name: "Year of the Four Emperors",
  description: "",
  start_day: 8,
  start_month: 6,
  start_year: 68,
  end_day: 20,
  end_month: 12,
  end_year: 69
)
era_fouremperors.user = admin
era_fouremperors.save!

era_flavian = Era.new(
  name: "Flavian dynasty",
  description: "",
  start_day: 1,
  start_month: 7,
  start_year: 69,
  end_day: 18,
  end_month: 9,
  end_year: 96
)
era_flavian.user = admin
era_flavian.save!

era_nerva = Era.new(
  name: "Nerva–Antonine dynasty",
  description: "",
  start_day: 18,
  start_month: 9,
  start_year: 96,
  end_day: 31,
  end_month: 12,
  end_year: 192
)
era_nerva.user = admin
era_nerva.save!

era_severan = Era.new(
  name: "Severan dynasty",
  description: "",
  start_day: 9,
  start_month: 4,
  start_year: 193,
  end_day: 21,
  end_month: 3,
  end_year: 235
)
era_severan.user = admin
era_severan.save!

era_crisis = Era.new(
  name: "Crisis of the Third Century",
  description: "",
  start_day: 1,
  start_month: 3,
  start_year: 235,
  end_day: 1,
  end_month: 11,
  end_year: 284
)
era_crisis.user = admin
era_crisis.save!

romanemperors.events = [augustus, tiberius, caligula, claudius, nero, galba, otho, vitellius, vespasian, titus, domitian, nerva, trajan, hadrian, antoninuspius, marcusaurelius, luciusverus, commodus, pertinax, didiusjulianus]
romanemperors.eras = [era_julioc, era_nerva, era_flavian, era_fouremperors, era_severan, era_crisis]
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
  start_day: 2,
  start_month: 9,
  start_year: -31
)
battleofactium.user = admin
battleofactium.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofactium.jpg')), filename: 'battleofactium.png', content_type: 'battleofactium.png')
battleofactium.save!

cantabrianwars = Event.new(
  name: "Cantabrian Wars",
  description: "The Cantabrian Wars (29-19 BC) (Bellum Cantabricum), sometimes also referred to as the Cantabrian and Asturian Wars (Bellum Cantabricum et Asturicum), were the final stage of the two-century long Roman conquest of Hispania, in what today are the provinces of Cantabria, Asturias and León in northwestern Spain.",
  start_year: -29,
  end_year: -19
)
cantabrianwars.user = admin
cantabrianwars.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'cantabrianwars.jpg')), filename: 'cantabrianwars.png', content_type: 'cantabrianwars.png')
cantabrianwars.save!

germanicbattles = Event.new(
  name: "Germanic Battles",
  description: "Roman forces under Augustus's stepson Drusus win a victory in Germany.",
  start_year: -16,
  end_year: -11
)
germanicbattles.user = admin
germanicbattles.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'germanicbattles.jpg')), filename: 'germanicbattles.png', content_type: 'germanicbattles.png')
germanicbattles.save!

bellumbatonianum = Event.new(
  name: "Bellum Batonianum",
  description: "An alliance of tribes numbering more than 200,000 people in Illyria rise in rebellion, but are suppressed by Roman legions led by Tiberius and Germanicus.",
  start_year: 6,
  end_year: 9
)
bellumbatonianum.user = admin
bellumbatonianum.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'bellumbatonianum.jpg')), filename: 'bellumbatonianum.png', content_type: 'bellumbatonianum.png')
bellumbatonianum.save!

battleofteutoburgforest = Event.new(
  name: "Battle of the Teutoburg Forest",
  description: "The Battle of the Teutoburg Forest, described as the Varian Disaster (Clades Variana) by Roman historians, took place at modern Kalkriese in AD 9, when an alliance of Germanic peoples ambushed Roman legions and their auxiliaries, led by Publius Quinctilius Varus. The alliance was led by Arminius, a Germanic officer of Varus's auxilia. Arminius had acquired Roman citizenship and had received a Roman military education, which enabled him to deceive the Roman commander methodically and anticipate the Roman army's tactical responses.",
  start_year: 9
)
battleofteutoburgforest.user = admin
battleofteutoburgforest.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofteutoburgforest.jpg')), filename: 'battleofteutoburgforest.png', content_type: 'battleofteutoburgforest.png')
battleofteutoburgforest.save!

battleatponteslongi = Event.new(
  name: "Battle at Pontes Longi",
  description: "Indecisive battle between a Roman army under Aulus Caecina Severus and German tribes led by Arminius.",
  start_year: 15
)
battleatponteslongi.user = admin
battleatponteslongi.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleatponteslongi.jpg')), filename: 'battleatponteslongi.png', content_type: 'battleatponteslongi.png')
battleatponteslongi.save!

battleoftheweserriver = Event.new(
  name: "Battle of the Weser River",
  description: "Legions under Germanicus defeat German tribes of Arminius.",
  start_year: 16
)
battleoftheweserriver.user = admin
battleoftheweserriver.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleoftheweserriver.jpg')), filename: 'battleoftheweserriver.png', content_type: 'battleoftheweserriver.png')
battleoftheweserriver.save!

romanwars.events = [battleofactium, cantabrianwars, germanicbattles, bellumbatonianum, battleofteutoburgforest, battleatponteslongi, battleoftheweserriver]
romanwars.save!


# # Emperors' lifetimes
# p "Seeding Emperors' lives section"
#
# emperorslives = Timeline.new(
#   name: "Lifetimes of the Roman Emperors",
#   description: "This timeline chronicles the lifetimes of the Roman Emperors"
# )
# emperorslives.user = admin
#
# augustuslife = Event.new(
#   name: "Augustus",
#   description: "Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
#   start_date: Date.new(-62, 9, 23),
#   end_date: Date.new(14, 8, 19)
# )
# augustuslife.user = admin
# augustuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
# augustuslife.save!
#
# tiberiuslife = Event.new(
#   name: "Tiberius",
#   description: "Died probably of natural causes, allegedly murdered at the instigation of Caligula",
#   start_date: Date.new(-41, 11, 16),
#   end_date: Date.new(37, 3, 16)
# )
# tiberiuslife.user = admin
# tiberiuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
# tiberiuslife.save!
#
# caligulalife = Event.new(
#   name: "Caligula",
#   description: "Murdered in a conspiracy involving the Praetorian Guard and senators",
#   start_date: Date.new(12, 8, 31),
#   end_date: Date.new(41, 1, 24)
# )
# caligulalife.user = admin
# caligulalife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
# caligulalife.save!
#
# claudiuslife = Event.new(
#   name: "Claudius",
#   description: "Probably poisoned by his wife Agrippina, in favor of her son Nero",
#   start_date: Date.new(-9, 8, 1),
#   end_date: Date.new(54, 10, 13)
# )
# claudiuslife.user = admin
# claudiuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
# claudiuslife.save!
#
# nerolife = Event.new(
#   name: "Nero",
#   description: "Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
#   start_date: Date.new(37, 12, 15),
#   end_date: Date.new(68, 6, 9)
# )
# nerolife.user = admin
# nerolife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
# nerolife.save!
#
# emperorslives.events = [augustuslife, tiberiuslife, caligulalife, claudiuslife, nerolife]
# emperorslives.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
# emperorslives.save!
#
#
# # Soviet union section:
#
# p "Seeding Soviet Union section"
#
# sovietunion = Timeline.new(
#   name: "Leaders of Soviet Union (1922-1991)",
#   description: "This timeline includes persons who held the top leadership position of the Soviet Union from its founding in 1922 until its 1991 dissolution."
# )
#
# sovietunion.user = admin
# sovietunion.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'urss.jpg')), filename: 'urss.jpgg', content_type: 'iurss.jpg')
#
# lenin = Event.new(
#   name: "Vladimir Lenin",
#   description: "Ever since the Bolsheviks inception, Lenin had served as their de facto leader. After the Russian Revolution, Lenin became leader of the Russian Soviet Federative Socialist Republic (RSFSR) from 1917 and leader of the Union of Soviet Socialist Republics (USSR) from 1922 until his death.",
#   start_date: Date.new(1922, 12, 30),
#   end_date: Date.new(1924, 1, 21)
# )
# lenin.user = admin
# lenin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'lenin.jpg')), filename: 'lenin.png', content_type: 'image.png')
# lenin.save!
#
# stalin = Event.new(
#   name: "Iosif Stalin",
#   description: "Following the death of Lenin, Stalin initially ruled as part of a troika alongside Grigory Zinoviev and Lev Kamenev. However, by April 1925, this arrangement broke down as Stalin consolidated power to become the Soviet Union's absolute dictator. He also held the post of the Minister of Defence from 19 July 1941 to 3 March 1947 and chaired the State Defense Committee during World War II.",
#   start_date: Date.new(1924, 1, 21),
#   end_date: Date.new(1953, 3, 5)
# )
# stalin.user = admin
# stalin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'stalin.jpg')), filename: 'stalin.png', content_type: 'image.png')
# stalin.save!
#
# russian_communisme = Era.new(
#   name: "Communisme in Russia",
#   description: "From the 27 October 1917, when the  the Bolsheviks and Left Socialist Revolutionaries took the lead of the country. To 26 December 1991, the date of the to the dissolution of the Soviet Union.",
#   start_date: Date.new(1917, 10, 27),
#   end_date: Date.new(1991, 12, 26)
# )
# russian_communisme.user = admin
# russian_communisme.save!
#
# sovietunion.events = [lenin, stalin]
# sovietunion.eras = [russian_communisme]
# sovietunion.save!


bookmark_first = Bookmark.new
bookmark_first.user = admin
bookmark_first.timeline = romanemperors
bookmark_first.save!

bookmark_second = Bookmark.new
bookmark_second.user = admin
bookmark_second.timeline = romanwars
bookmark_second.save!

# This is the function that is called to scrape EB, it does not currently work, it needs to be changed to work with the new system of start_year, start_month, etc

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
        event.photo.attach(io: URI.open(picture_url), filename: "#{name.downcase.gsub(" ", "_").gsub(/\W/, "")}.png", content_type: "#{name.downcase.gsub(" ", "_").gsub(/\W/, "")}.png") unless picture_url == "invalid"
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
# ebscraper(admin)

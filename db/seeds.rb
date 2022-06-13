# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Roman emperors section:

testuser = User.new(
  email: "testuser@testuser.com",
  password: "augustus",
  password_confirmation: "augustus"
)
testuser.save!

# Roman emperors (reigns):

romanemperors = Timeline.new(
  name: "Roman emperors",
  description: "The Roman emperors were the rulers of the Roman Empire from the granting of the name and title Augustus to Octavian by the Roman Senate in 27 BC onwards. Augustus maintained a facade of Republican rule, rejecting monarchical titles but calling himself princeps senatus (first man of the Senate) and princeps civitatis (first citizen of the state). The title of Augustus was conferred on his successors to the imperial position, and emperors gradually grew more monarchical and authoritarian."
)
romanemperors.user = testuser
romanemperors.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'roman_empire.jpg')), filename: 'roman_empire.jpg', content_type: 'romanempire.png')

augustus = Event.new(
  name: "Augustus",
  description: "Grandnephew and adopted son of Julius Caesar. Gradually acquired further power through grants from, and constitutional settlements with, the Roman Senate. Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
  start_date: Date.new(-26, 1, 27),
  end_date: Date.new(14, 8, 19)
)
augustus.user = testuser
augustus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
augustus.save!

tiberius = Event.new(
  name: "Tiberius",
  description: "Stepson, former son-in-law and adopted son of Augustus. Died probably of natural causes, allegedly murdered at the instigation of Caligula",
  start_date: Date.new(14, 9, 17),
  end_date: Date.new(37, 3, 16)
)
tiberius.user = testuser
tiberius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
tiberius.save!

caligula = Event.new(
  name: "Caligula",
  description: "Grandnephew and adopted heir of Tiberius, great-grandson of Augustus. Murdered in a conspiracy involving the Praetorian Guard and senators",
  start_date: Date.new(37, 3, 18),
  end_date: Date.new(41, 1, 24)
)
caligula.user = testuser
caligula.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
caligula.save!

claudius = Event.new(
  name: "Claudius",
  description: "Uncle of Caligula, grandnephew of Augustus, proclaimed emperor by the Praetorian Guard and accepted by the Senate. Probably poisoned by his wife Agrippina, in favor of her son Nero",
  start_date: Date.new(41, 1, 24),
  end_date: Date.new(54, 10, 13)
)
claudius.user = testuser
claudius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
claudius.save!

nero = Event.new(
  name: "Nero",
  description: "Grandnephew, stepson, son-in-law and adopted son of Claudius, great-great-grandson of Augustus. Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
  start_date: Date.new(54, 10, 13),
  end_date: Date.new(68, 6, 9)
)
nero.user = testuser
nero.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
nero.save!

galba = Event.new(
  name: "Galba",
  description: "Governor of Hispania Tarraconensis, revolted against Nero and seized power after his suicide, with support of the Senate and Praetorian Guard. Murdered by soldiers of the Praetorian Guard in a coup led by Otho",
  start_date: Date.new(68, 6, 8),
  end_date: Date.new(69, 1, 15)
)
galba.user = testuser
galba.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'galba.jpg')), filename: 'galba.png', content_type: 'image.png')
galba.save!

otho = Event.new(
  name: "Otho",
  description: "Seized power through a coup against Galba. Committed suicide after losing the Battle of Bedriacum to Vitellius",
  start_date: Date.new(69, 1, 15),
  end_date: Date.new(69, 4, 16)
)
otho.user = testuser
otho.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'otho.jpg')), filename: 'otho.png', content_type: 'image.png')
otho.save!

vitellius = Event.new(
  name: "Vitellius",
  description: "Governor of Germania Inferior, proclaimed emperor by the Rhine legions on 2 January in opposition to Galba and Otho, later recognized by the Senate. Murdered by Vespasian's troops",
  start_date: Date.new(69, 4, 19),
  end_date: Date.new(69, 12, 20)
)
vitellius.user = testuser
vitellius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'vitellius.png')), filename: 'vitellius.png', content_type: 'image.png')
vitellius.save!

vespasian = Event.new(
  name: "Vespasian",
  description: "Seized power with support of the eastern legions, in opposition to Vitellius. Died of natural causes",
  start_date: Date.new(69, 7, 1),
  end_date: Date.new(79, 6, 23)
)
vespasian.user = testuser
vespasian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'vespasian.jpg')), filename: 'vespasian.png', content_type: 'image.png')
vespasian.save!

titus = Event.new(
  name: "Titus",
  description: "Son of Vespasian. Died of natural causes",
  start_date: Date.new(79, 6, 24),
  end_date: Date.new(81, 9, 13)
)
titus.user = testuser
titus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'titus.jpg')), filename: 'titus.png', content_type: 'image.png')
titus.save!

domitian = Event.new(
  name: "Domitian",
  description: "Brother of Titus and son of Vespasian. Assassinated in a conspiracy of court officials, possibly involving Nerva",
  start_date: Date.new(81, 9, 14),
  end_date: Date.new(96, 9, 18)
)
domitian.user = testuser
domitian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'domitian.jpg')), filename: 'domitian.png', content_type: 'image.png')
domitian.save!

nerva = Event.new(
  name: "Nerva",
  description: "Proclaimed emperor after the murder of Domitian. First of the 'Five Good Emperors'. Died of natural causes.",
  start_date: Date.new(96, 9, 18),
  end_date: Date.new(98, 1, 27)
)
nerva.user = testuser
nerva.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nerva.jpg')), filename: 'nerva.png', content_type: 'image.png')
nerva.save!

trajan = Event.new(
  name: "Trajan",
  description: "Adopted son of Nerva. First non-Italian emperor. His reign marked the geographical peak of the empire. Died of natural causes.",
  start_date: Date.new(98, 1, 28),
  end_date: Date.new(117, 8, 11)
)
trajan.user = testuser
trajan.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'trajan.jpg')), filename: 'trajan.png', content_type: 'image.png')
trajan.save!

hadrian = Event.new(
  name: "Hadrian",
  description: "Cousin of Trajan, allegedly adopted on his deathbed. Ended Roman expansionism. Died of natural causes.",
  start_date: Date.new(117, 8, 11),
  end_date: Date.new(138, 7, 10)
)
hadrian.user = testuser
hadrian.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'hadrian.jpg')), filename: 'hadrian.png', content_type: 'image.png')
hadrian.save!

antoninuspius = Event.new(
  name: "Antoninus Pius",
  description: "Adopted son of Hadrian. Died of natural causes.",
  start_date: Date.new(138, 7, 10),
  end_date: Date.new(161, 3, 7)
)
antoninuspius.user = testuser
antoninuspius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'antoninuspius.jpg')), filename: 'antoninuspius.png', content_type: 'image.png')
antoninuspius.save!

marcusaurelius = Event.new(
  name: "Marcus Aurelius",
  description: "Son-in-law and adopted son of Antoninus Pius. Reigned jointly with his adoptive brother, Lucius Verus, the first time multiple emperors shared power. Last of the 'Five Good Emperors'; also one of the most representative Stoic philosophers. Died of natural causes.",
  start_date: Date.new(161, 3, 7),
  end_date: Date.new(180, 3, 17)
)
marcusaurelius.user = testuser
marcusaurelius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'marcusaurelius.jpg')), filename: 'marcusaurelius.png', content_type: 'image.png')
marcusaurelius.save!

luciusverus = Event.new(
  name: "Lucius Verus",
  description: "Adopted son of Antoninus Pius, joint emperor with his adoptive brother, Marcus Aurelius. Died of natural causes.",
  start_date: Date.new(161, 3, 7),
  end_date: Date.new(169, 1, 31)
)
luciusverus.user = testuser
luciusverus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'luciusverus.jpg')), filename: 'luciusverus.png', content_type: 'image.png')
luciusverus.save!

commodus = Event.new(
  name: "Commodus",
  description: "Son of Marcus Aurelius. First emperor to be elevated during predecessor's lifetime. Strangled to death in a conspiracy involving his praetorian prefect, Laetus, and mistress, Marcia.",
  start_date: Date.new(176, 11, 27),
  end_date: Date.new(192, 12, 31)
)
commodus.user = testuser
commodus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'commodus.jpg')), filename: 'commodus.png', content_type: 'image.png')
commodus.save!

romanemperors.events = [augustus, tiberius, caligula, claudius, nero, galba, otho, vitellius, vespasian, titus, domitian, nerva, trajan, hadrian, antoninuspius, marcusaurelius, luciusverus, commodus]
romanemperors.start_date = romanemperors.events.first.start_date
romanemperors.end_date = romanemperors.events.last.end_date
romanemperors.save!

# Wars of the Roman Empire

romanwars = Timeline.new(
  name: "Wars of the Roman Empire",
  description: "The wars fought by the Roman Empire, starting with the Battle of Actium (31 BC)"
)
romanwars.user = testuser
romanwars.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofactium.jpg')), filename: 'battleofactium.jpg', content_type: 'battleofactium.png')

battleofactium = Event.new(
  name: "The Battle of Actium",
  description: "The Battle of Actium was a naval battle fought between a maritime fleet led by Octavian and the combined fleets of both Mark Antony and Cleopatra VII Philopator. The battle took place on 2 September 31 BC in the Ionian Sea, near the former Roman colony of Actium, Greece, and was the climax of over a decade of rivalry between Octavian and Antony.",
  start_date: Date.new(-30, 9, 2),
)
battleofactium.user = testuser
battleofactium.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'battleofactium.jpg')), filename: 'battleofactium.png', content_type: 'battleofactium.png')
battleofactium.save!

cantabrianwars = Event.new(
  name: "Cantabrian Wars",
  description: "The Cantabrian Wars (29-19 BC) (Bellum Cantabricum), sometimes also referred to as the Cantabrian and Asturian Wars (Bellum Cantabricum et Asturicum), were the final stage of the two-century long Roman conquest of Hispania, in what today are the provinces of Cantabria, Asturias and León in northwestern Spain.",
  start_date: Date.new(-28),
  end_date: Date.new(-18)
)
cantabrianwars.user = testuser
cantabrianwars.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'wars', 'cantabrianwars.jpg')), filename: 'cantabrianwars.png', content_type: 'cantabrianwars.png')
cantabrianwars.save!

romanwars.events = [battleofactium, cantabrianwars]
romanwars.start_date = romanwars.events.first.start_date
romanwars.end_date = romanwars.events.last.end_date
romanwars.save!


# Emperors' lifetimes

emperorslives = Timeline.new(
  name: "Lifetimes of the Roman Emperors",
  description: "This timeline chronicles the lifetimes of the Roman Emperors"
)
emperorslives.user = testuser

augustuslife = Event.new(
  name: "Augustus",
  description: "Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
  start_date: Date.new(-62, 9, 23),
  end_date: Date.new(14, 8, 19)
)
augustuslife.user = testuser
augustuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
augustuslife.save!

tiberiuslife = Event.new(
  name: "Tiberius",
  description: "Died probably of natural causes, allegedly murdered at the instigation of Caligula",
  start_date: Date.new(-41, 11, 16),
  end_date: Date.new(37, 3, 16)
)
tiberiuslife.user = testuser
tiberiuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
tiberiuslife.save!

caligulalife = Event.new(
  name: "Caligula",
  description: "Murdered in a conspiracy involving the Praetorian Guard and senators",
  start_date: Date.new(12, 8, 31),
  end_date: Date.new(41, 1, 24)
)
caligulalife.user = testuser
caligulalife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
caligulalife.save!

claudiuslife = Event.new(
  name: "Claudius",
  description: "Probably poisoned by his wife Agrippina, in favor of her son Nero",
  start_date: Date.new(-9, 8, 1),
  end_date: Date.new(54, 10, 13)
)
claudiuslife.user = testuser
claudiuslife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
claudiuslife.save!

nerolife = Event.new(
  name: "Nero",
  description: "Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
  start_date: Date.new(37, 12, 15),
  end_date: Date.new(68, 6, 9)
)
nerolife.user = testuser
nerolife.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
nerolife.save!

emperorslives.events = [augustuslife, tiberiuslife, caligulalife, claudiuslife, nerolife]
emperorslives.start_date = emperorslives.events.first.start_date
emperorslives.end_date = emperorslives.events.last.end_date
emperorslives.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
emperorslives.save!


# Soviet union section:

sovietunion = Timeline.new(
  name: "Leaders of Soviet Union (1922-1991)",
  description: "This timeline includes persons who held the top leadership position of the Soviet Union from its founding in 1922 until its 1991 dissolution."
)

sovietunion.user = testuser
sovietunion.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'urss.jpg')), filename: 'urss.jpgg', content_type: 'iurss.jpg')

lenin = Event.new(
  name: "Vladimir Lenin",
  description: "Ever since the Bolsheviks inception, Lenin had served as their de facto leader. After the Russian Revolution, Lenin became leader of the Russian Soviet Federative Socialist Republic (RSFSR) from 1917 and leader of the Union of Soviet Socialist Republics (USSR) from 1922 until his death.",
  start_date: Date.new(1922, 12, 30),
  end_date: Date.new(1924, 1, 21)
)
lenin.user = testuser
lenin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'lenin.jpg')), filename: 'lenin.png', content_type: 'image.png')
lenin.save!

stalin = Event.new(
  name: "Iosif Stalin",
  description: "Following the death of Lenin, Stalin initially ruled as part of a troika alongside Grigory Zinoviev and Lev Kamenev. However, by April 1925, this arrangement broke down as Stalin consolidated power to become the Soviet Union's absolute dictator. He also held the post of the Minister of Defence from 19 July 1941 to 3 March 1947 and chaired the State Defense Committee during World War II.",
  start_date: Date.new(1924, 1, 21),
  end_date: Date.new(1953, 3, 5)
)
stalin.user = testuser
stalin.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'sovietleaders', 'stalin.jpg')), filename: 'stalin.png', content_type: 'image.png')
stalin.save!

sovietunion.events = [lenin, stalin]
sovietunion.start_date = sovietunion.events.first.start_date
sovietunion.end_date = sovietunion.events.last.end_date
sovietunion.save!
# Admin

User.create({ email: "admin@htl.com", password: "123456", password_confirmation: "123456", admin: true })

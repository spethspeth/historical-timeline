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

# Julio claudian dynasty (reigns):

romanemperors = Timeline.new(
  name: "Roman emperors",
  description: "The Roman emperors were the rulers of the Roman Empire from the granting of the name and title Augustus to Octavian by the Roman Senate in 27 BC onwards. Augustus maintained a facade of Republican rule, rejecting monarchical titles but calling himself princeps senatus (first man of the Senate) and princeps civitatis (first citizen of the state). The title of Augustus was conferred on his successors to the imperial position, and emperors gradually grew more monarchical and authoritarian."
)
romanemperors.user = testuser

augustus = Event.new(
  name: "Augustus",
  description: "Born as Gaius Octavius; first elected Roman consul on 19 August 43 BC. Died of natural causes",
  start_date: Date.new(-26, 1, 27),
  end_date: Date.new(14, 8, 19)
)
augustus.user = testuser
augustus.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'augustus.jpg')), filename: 'augustus.png', content_type: 'image.png')
augustus.save!

tiberius = Event.new(
  name: "Tiberius",
  description: "Died probably of natural causes, allegedly murdered at the instigation of Caligula",
  start_date: Date.new(14, 9, 17),
  end_date: Date.new(37, 3, 16)
)
tiberius.user = testuser
tiberius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'tiberius.jpg')), filename: 'tiberius.png', content_type: 'image.png')
tiberius.save!

caligula = Event.new(
  name: "Caligula",
  description: "Murdered in a conspiracy involving the Praetorian Guard and senators",
  start_date: Date.new(37, 3, 18),
  end_date: Date.new(41, 1, 24)
)
caligula.user = testuser
caligula.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'caligula.jpg')), filename: 'caligula.png', content_type: 'image.png')
caligula.save!

claudius = Event.new(
  name: "Claudius",
  description: "Probably poisoned by his wife Agrippina, in favor of her son Nero",
  start_date: Date.new(41, 1, 24),
  end_date: Date.new(54, 10, 13)
)
claudius.user = testuser
claudius.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'claudius.jpg')), filename: 'claudius.png', content_type: 'image.png')
claudius.save!

nero = Event.new(
  name: "Nero",
  description: "Committed suicide after being deserted by the Praetorian Guard and sentenced to death by the Senate",
  start_date: Date.new(54, 10, 13),
  end_date: Date.new(68, 6, 9)
)
nero.user = testuser
nero.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'emperors', 'nero.jpg')), filename: 'nero.png', content_type: 'image.png')
nero.save!

romanemperors.events = [augustus, tiberius, caligula, claudius, nero]
romanemperors.start_date = romanemperors.events.first.start_date
romanemperors.end_date = romanemperors.events.last.end_date
romanemperors.save!

# Julio Claudian emperors' lifetimes

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
emperorslives.save!


# Soviet union section:

sovietunion = Timeline.new(
  name: "Leaders of Soviet Union (1922-1991)",
  description: "This timeline includes persons who held the top leadership position of the Soviet Union from its founding in 1922 until its 1991 dissolution."
)

sovietunion.user = testuser

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

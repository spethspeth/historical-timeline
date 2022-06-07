# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

testuser = User.new(
  email: "testuser@testuser.com",
  password: "augustus",
  password_confirmation: "augustus"
)

julioclaudians = Timeline.new(
  name: "Julio-Claudian dynasty (27 BC – AD 68)",
  description: "The Julio-Claudian dynasty comprised the first five Roman emperors: Augustus, Tiberius, Caligula, Claudius, and Nero."
)
julioclaudians.user = testuser

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

julioclaudians.events = [augustus, tiberius, caligula, claudius, nero]
julioclaudians.start_date = julioclaudians.events.first.start_date
julioclaudians.end_date = julioclaudians.events.last.end_date
julioclaudians.save!

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

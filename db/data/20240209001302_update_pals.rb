# frozen_string_literal: true

class UpdatePals < ActiveRecord::Migration[7.1]
  NEW_PALS = [
    { name: 'Lamball', number:1, power: 1470 },
    { name: 'Cattiva', number: 2, power: 1460 },
    { name: 'Chikipi', number: 3, power: 1500 },
    { name: 'Lifmunk', number: 4, power: 1430 },
    { name: 'Foxparks', number: 5, power: 1400 },
    { name: 'Fuack', number: 6, power: 1330 },
    { name: 'Sparkit', number: 7, power: 1410 },
    { name: 'Tanzee', number: 8, power:  1250 },
    { name: 'Rooby', number: 9, power: 1155 },
    { name: 'Pengullet', number: 10, power: 1350},
    { name: 'Penking', number: 11, power: 520},
    { name: 'Jolthog', number: 12, power: 1370},
    { name: 'Jolthog Cryst', number: 13, power: 1360},
    { name: 'Gumoss', number: 14, power: 1240},
    { name: 'Flower Gummos', number: 15, power: 1240},
    { name: 'Vixy', number: 16, power: 1450 },
    { name: 'Hoocrates', number: 17, power: 1390},
    { name: 'Teafant', number: 18, power: 1490},
    { name: 'Depresso', number: 19, power: 1380},
    { name: 'Cremis', number: 20, power: 1455},
    { name: 'Daedream', number: 21, power: 1230},
    { name: 'Rushroar', number: 22, power: 1130},
    { name: 'Nox', number: 23, power: 1180},
    { name: 'Fuddler', number: 24, power: 1220},
    { name: 'Killamari', number: 25, power: 1290},
    { name: 'Mau', number: 26, power: 1480},
    { name: 'Mau Cyst', number: 27, power: 1440},
    { name: 'Celaray', number: 28, power: 870},
    { name: 'Direwolf', number: 29, power: 1060},
    { name: 'Tocotoco', number: 30, power: 1340},
    { name: 'Flopie', number: 31, power: 1280},
    { name: 'Mozzarina', number: 32, power: 910},
    { name: 'Bristla', number: 33, power: 1320},
    { name: 'Gobfin', number: 34, power: 1090},
    { name: 'Gobfin Ignis', number: 35, power: 1100},
    { name: 'Hagnyu', number: 36, power: 1420},
    { name: 'Hagnyu Cyst', number: 37, power: 1422},
    { name: 'Mossanda', number: 38, power: 430},
    { name: 'Mossanda Lux', number: 39, power: 390},
    { name: 'Woolipop', number: 40, power: 1190},
    { name: 'Caprity', number: 41, power: 930},
    { name: 'Melpaca', number: 42, power: 890},
    { name: 'Eikthyrdeer', number: 43, power: 920},
    { name: 'Eikthyrdeer Terra', number: 44, power: 900},
    { name: 'Nitewing', number: 45, power: 420},
    { name: 'Ribbuny', number: 46, power: 1310},
    { name: 'Incineram', number: 47, power: 590},
    { name: 'Incineram Noct', number: 48, power: 580},
    { name: 'Cinnamoth', number: 49, power: 490},
    { name: 'Arsox', number: 50, power: 790},
    { name: 'Dumud', number: 51, power: 895},
    { name: 'Cawgnito', number: 52, power: 1080},
    { name: 'Leezpunk', number: 53, power: 1120},
    { name: 'Leezpunk Ignis', number: 54, power: 1140},
    { name: 'Loupmoon', number: 55, power: 950},
    { name: 'Galeclaw', number: 56, power: 1030},
    { name: 'Robinquill', number: 57, power: 1020},
    { name: 'Robinquill Terra', number: 58, power: 1000},
    { name: 'Gorirat', number: 59, power: 1040},
    { name: 'Beegarde', number: 60, power: 1070},
    { name: 'Elizabee', number: 61, power: 330},
    { name: 'Grintale', number: 62, power: 510},
    { name: 'Swee', number: 63, power: 1300},
    { name: 'Sweepa', number: 64, power: 410},
    { name: 'Chillet', number: 65, power: 800},
    { name: 'Univolt', number: 66, power: 680},
    { name: 'Foxcicle', number: 67, power: 760},
    { name: 'Pyrin', number: 68, power: 360},
    { name: 'Pyrin Noct', number: 69, power: 240},
    { name: 'Reindrix', number: 70, power: 880},
    { name: 'Rayhound', number: 71, power: 740},
    { name: 'Kitsun', number: 72, power: 830},
    { name: 'Dazzi', number: 73, power: 1210},
    { name: 'Lunaris', number: 74, power: 1110},
    { name: 'Dinossom', number: 75, power: 820},
    { name: 'Dinossom Lux', number: 76, power: 810},
    { name: 'Surfent', number: 77, power: 560},
    { name: 'Surfent Terra', number: 78, power: 550},
    { name: 'Maraith', number: 79, power: 1150},
    { name: 'Digtoise', number: 80, power: 850},
    { name: 'Tombat', number: 81, power: 750},
    { name: 'Lovander', number: 82, power: 940},
    { name: 'Flambelle', number: 83, power: 1405},
    { name: 'Vanwyrm', number: 84, power: 660},
    { name: 'Vanwyrm Cryst', number: 85, power: 620},
    { name: 'Bushi', number: 86, power: 640},
    { name: 'Beakon', number: 87, power: 220},
    { name: 'Ragnahawk', number: 88, power: 380},
    { name: 'Katress', number: 89, power: 700},
    { name: 'Wixen', number: 90, power: 1160},
    { name: 'Verdash', number: 91, power: 990},
    { name: 'Vaelet', number: 92, power: 1050},
    { name: 'Sibelyx', number: 93, power: 450},
    { name: 'Elphidran', number: 94, power: 540},
    { name: 'Elphidran Aqua', number: 95, power: 530},
    { name: 'Kelpsea', number: 96, power: 1260},
    { name: 'Kelpsea Ignis', number: 97, power: 1270},
    { name: 'Azurobe', number: 98, power: 500},
    { name: 'Cryolinx', number: 99, power: 130},
    { name: 'Blazehowl', number: 100, power: 710},
    { name: 'Blazehowl Noct', number: 101, power: 670},
    { name: 'Relaxaurus', number: 102, power: 280},
    { name: 'Relaxaurus Lux', number: 103, power: 270},
    { name: 'Broncherry', number: 104, power: 860},
    { name: 'Broncherry Aqua', number: 105, power: 840},
    { name: 'Petallia', number: 106, power: 780},
    { name: 'Reptyro', number: 107, power: 320},
    { name: 'Ice Reptyro', number: 108, power: 230},
    { name: 'Kingpaca', number: 109, power: 470},
    { name: 'Ice Kingpaca', number: 110, power: 440},
    { name: 'Mammorest ', number: 111, power: 300},
    { name: 'Mammorest Cryst', number: 112, power: 290},
    { name: 'Wumpo', number: 113, power: 460},
    { name: 'Wumpo Botan', number: 114, power: 480},
    { name: 'Warsect', number: 115, power: 340},
    { name: 'Fenglope', number: 116, power: 980},
    { name: 'Felbat', number: 117, power: 1010},
    { name: 'Quivern', number: 118, power: 350},
    { name: 'Blazamut', number: 119, power: 10},
    { name: 'Helzephyr', number: 120, power: 190},
    { name: 'Astegon', number: 121, power: 150},
    { name: 'Menasting', number: 122, power: 260},
    { name: 'Anubis', number: 123, power: 570},
    { name: 'Jormuntide', number: 124, power: 310},
    { name: 'Jormuntide Ignis', number: 125, power: 315},
    { name: 'Suzaku', number: 126, power: 50},
    { name: 'Suzaku Aqua', number: 127, power: 30},
    { name: 'Grizzbolt', number: 128, power: 200},
    { name: 'Lyleen', number: 129, power: 250},
    { name: 'Lyleen Noct', number: 130, power: 210},
    { name: 'Faleris', number: 131, power: 370},
    { name: 'Orserk', number: 132, power: 140},
    { name: 'Shadowbeak', number: 133, power: 60},
    { name: 'Paladius', number: 134, power: 80},
    { name: 'Necromus', number: 135, power: 70},
    { name: 'Frostallion', number: 136, power: 120},
    { name: 'Frostallion Noct', number: 137, power: 100},
    { name: 'Jetragon', number: 138, power: 90}
  ].freeze

  def up
    NEW_PALS.each do |pal|
      pal = Pal.create(
        {name: pal[:name],
        number: pal[:number],
        power: pal[:power]
        })
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end


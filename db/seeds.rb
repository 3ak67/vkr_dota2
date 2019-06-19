# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


### Classifier
ds = LoadDatasetService.new
cl = Rumale::LinearModel::LogisticRegression.new(reg_param: 0.01, n_jobs: 5)
cl.fit(ds.csv_x, ds.csv_y)
File.open('classifier.dat', 'wb') { |f| f.write(Marshal.dump(cl)) }
LoadHeroesService.new


## Heroes Icons
Hero.find_by(hero_id: 1).update(portrait: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Anti-Mage_icon.png')).open)
Hero.find_by(hero_id: 2).update(portrait: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Axe_icon.png')).open)
Hero.find_by(hero_id: 3).update(portrait: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Bane_icon.png')).open)
Hero.find_by(hero_id: 4).update(portrait: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Bloodseeker_icon.png')).open)
Hero.find_by(hero_id: 5).update(portrait: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Crystal_Maiden_icon.png')).open)
Hero.find_by(hero_id: 6).update(portrait: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Drow_Ranger_icon.png')).open)
Hero.find_by(hero_id: 7).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Earthshaker_icon.png')).open)
Hero.find_by(hero_id: 8).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Juggernaut_icon.png')).open)
Hero.find_by(hero_id: 9).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Mirana_icon.png')).open)
Hero.find_by(hero_id: 10).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Morphling_icon.png')).open)
Hero.find_by(hero_id: 11).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Shadow_Fiend_icon.png')).open)
Hero.find_by(hero_id: 12).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Phantom_Lancer_icon.png')).open)
Hero.find_by(hero_id: 13).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Puck_icon.png')).open)
Hero.find_by(hero_id: 14).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Pudge_icon.png')).open)
Hero.find_by(hero_id: 15).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Razor_icon.png')).open)
Hero.find_by(hero_id: 16).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/and_King_icon.png')).open)
Hero.find_by(hero_id: 17).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Storm_Spirit_icon.png')).open)
Hero.find_by(hero_id: 18).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Sven_icon.png')).open)
Hero.find_by(hero_id: 19).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Tiny_icon.png')).open)
Hero.find_by(hero_id: 20).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Vengeful_Spirit_icon.png')).open)
Hero.find_by(hero_id: 21).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Windranger_icon.png')).open)
Hero.find_by(hero_id: 22).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Zeus_icon.png')).open)
Hero.find_by(hero_id: 23).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Kunkka_icon.png')).open)
Hero.find_by(hero_id: 25).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Lina_icon.png')).open)
Hero.find_by(hero_id: 26).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Lion_icon.png')).open)
Hero.find_by(hero_id: 27).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Shadow_Shaman_icon.png')).open)
Hero.find_by(hero_id: 28).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Slardar_icon.png')).open)
Hero.find_by(hero_id: 29).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Tidehunter_icon.png')).open)
Hero.find_by(hero_id: 30).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Witch_Doctor_icon.png')).open)
Hero.find_by(hero_id: 31).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Lich_icon.png')).open)
Hero.find_by(hero_id: 32).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Riki_icon.png')).open)
Hero.find_by(hero_id: 33).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Enigma_icon.png')).open)
Hero.find_by(hero_id: 34).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Tinker_icon.png')).open)
Hero.find_by(hero_id: 35).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Sniper_icon.png')).open)
Hero.find_by(hero_id: 36).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Necrophos_icon.png')).open)
Hero.find_by(hero_id: 37).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Warlock_icon.png')).open)
Hero.find_by(hero_id: 38).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Beastmaster_icon.png')).open)
Hero.find_by(hero_id: 39).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Queen_of_Pain_icon.png')).open)
Hero.find_by(hero_id: 40).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Venomancer_icon.png')).open)
Hero.find_by(hero_id: 41).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Faceless_Void_icon.png')).open)
Hero.find_by(hero_id: 42).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Wraith_King_icon.png')).open)
Hero.find_by(hero_id: 43).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Death_Prophet_icon.png')).open)
Hero.find_by(hero_id: 44).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Phantom_Assassin_icon.png')).open)
Hero.find_by(hero_id: 45).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Pugna_icon.png')).open)
Hero.find_by(hero_id: 46).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Templar_Assassin_icon.png')).open)
Hero.find_by(hero_id: 47).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Viper_icon.png')).open)
Hero.find_by(hero_id: 48).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Luna_icon.png')).open)
Hero.find_by(hero_id: 49).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Dragon_Knight_icon.png')).open)
Hero.find_by(hero_id: 50).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Dazzle_icon.png')).open)
Hero.find_by(hero_id: 51).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Clockwerk_icon.png')).open)
Hero.find_by(hero_id: 52).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Leshrac_icon.png')).open)
Hero.find_by(hero_id: 53).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Natures_Prophet_icon.png')).open)
Hero.find_by(hero_id: 54).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Lifestealer_icon.png')).open)
Hero.find_by(hero_id: 55).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Dark_Seer_icon.png')).open)
Hero.find_by(hero_id: 56).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Clinkz_icon.png')).open)
Hero.find_by(hero_id: 57).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Omniknight_icon.png')).open)
Hero.find_by(hero_id: 58).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Enchantress_icon.png')).open)
Hero.find_by(hero_id: 59).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Huskar_icon.png')).open)
Hero.find_by(hero_id: 60).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Night_Stalker_icon.png')).open)
Hero.find_by(hero_id: 61).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Broodmother_icon.png')).open)
Hero.find_by(hero_id: 62).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Bounty_Hunter_icon.png')).open)
Hero.find_by(hero_id: 63).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Weaver_icon.png')).open)
Hero.find_by(hero_id: 64).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Jakiro_icon.png')).open)
Hero.find_by(hero_id: 65).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Batrider_icon.png')).open)
Hero.find_by(hero_id: 66).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Chen_icon.png')).open)
Hero.find_by(hero_id: 67).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Spectre_icon.png')).open)
Hero.find_by(hero_id: 68).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Ancient_Apparition_icon.png')).open)
Hero.find_by(hero_id: 69).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Doom_icon.png')).open)
Hero.find_by(hero_id: 70).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Ursa_icon.png')).open)
Hero.find_by(hero_id: 71).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Spirit_Breaker_icon.png')).open)
Hero.find_by(hero_id: 72).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Gyrocopter_icon.png')).open)
Hero.find_by(hero_id: 73).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Alchemist_icon.png')).open)
Hero.find_by(hero_id: 74).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Invoker_icon.png')).open)
Hero.find_by(hero_id: 75).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Silencer_icon.png')).open)
Hero.find_by(hero_id: 76).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Outworld_Devourer_icon.png')).open)
Hero.find_by(hero_id: 77).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Lycan_icon.png')).open)
Hero.find_by(hero_id: 78).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Brewmaster_icon.png')).open)
Hero.find_by(hero_id: 79).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Shadow_Demon_icon.png')).open)
Hero.find_by(hero_id: 80).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Lone_Druid_icon.png')).open)
Hero.find_by(hero_id: 81).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Chaos_Knight_icon.png')).open)
Hero.find_by(hero_id: 82).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Meepo_icon.png')).open)
Hero.find_by(hero_id: 83).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Treant_Protector_icon.png')).open)
Hero.find_by(hero_id: 84).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Ogre_Magi_icon.png')).open)
Hero.find_by(hero_id: 85).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Undying_icon.png')).open)
Hero.find_by(hero_id: 86).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Rubick_icon.png')).open)
Hero.find_by(hero_id: 87).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Disruptor_icon.png')).open)
Hero.find_by(hero_id: 88).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Nyx_Assassin_icon.png')).open)
Hero.find_by(hero_id: 89).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Naga_Siren_icon.png')).open)
Hero.find_by(hero_id: 90).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Keeper_of_the_Light_icon.png')).open)
Hero.find_by(hero_id: 91).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Io_icon.png')).open)
Hero.find_by(hero_id: 92).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Visage_icon.png')).open)
Hero.find_by(hero_id: 93).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Slark_icon.png')).open)
Hero.find_by(hero_id: 94).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Medusa_icon.png')).open)
Hero.find_by(hero_id: 95).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Troll_Warlord_icon.png')).open)
Hero.find_by(hero_id: 96).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Centaur_Warrunner_icon.png')).open)
Hero.find_by(hero_id: 97).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Magnus_icon.png')).open)
Hero.find_by(hero_id: 98).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Timbersaw_icon.png')).open)
Hero.find_by(hero_id: 99).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Bristleback_icon.png')).open)
Hero.find_by(hero_id: 100).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Tusk_icon.png')).open)
Hero.find_by(hero_id: 101).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Skywrath_Mage_icon.png')).open)
Hero.find_by(hero_id: 102).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Abaddon_icon.png')).open)
Hero.find_by(hero_id: 103).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Elder_Titan_icon.png')).open)
Hero.find_by(hero_id: 104).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Legion_Commander_icon.png')).open)
Hero.find_by(hero_id: 105).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Techies_icon.png')).open)
Hero.find_by(hero_id: 106).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Ember_Spirit_icon.png')).open)
Hero.find_by(hero_id: 107).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Earth_Spirit_icon.png')).open)
Hero.find_by(hero_id: 108).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Underlord_icon.png')).open)
Hero.find_by(hero_id: 109).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Terrorblade_icon.png')).open)
Hero.find_by(hero_id: 110).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Phoenix_icon.png')).open)
Hero.find_by(hero_id: 111).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Oracle_icon.png')).open)
Hero.find_by(hero_id: 112).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Winter_Wyvern_icon.png')).open)
Hero.find_by(hero_id: 113).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Arc_Warden_icon.png')).open)
Hero.find_by(hero_id: 114).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Monkey_King_icon.png')).open)
Hero.find_by(hero_id: 119).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Dark_Willow_icon.png')).open)
Hero.find_by(hero_id: 120).update(remote_portrait_url: Pathname.new(Rails.root.join('app/assets/images/dota_hero_icons/Pangolier_icon.png')).open)
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    building       { FactoryGirl.build( :building ) }
    non_building   { FactoryGirl.build( :non_building ) }
    project_number { ["C0909003","s060213","B0808008","S1107008","S1006002","S1006002 ZONE","S1011003","S1108001","B0903009","S060404","S1309002","C0910008","C0803002","c0903003","M1007001","C0811001","C060402","s0807008","S060527","S1303001","S1313006","S0705003","S1305005","S1302010","S1308018","S1306002","S1310003","s1304007","S060607","S1308005","S1210005","S060102","S0809006","S990924","S1212002","S1208002","M0709004","M0710006","S1208008","S1005001","S1207513","S1006001","S1206005","S1203510","S0911005","B0702004","B0910001","B1007006","B1012006","B051006","S0609009","S0802002","B1103008","S0609009","S1109012","B1103008","S1009002","M0709003","B1310007","B1103012","B1210073","B050314","B060209","B0812001","B0701506","B0807503","B050603","B1210030","M0610009","B0712003","M0912008","S040402","S1005008","B1207001","S0901005","B1210027","S1009003","S1009003_MLCEnlightenment","S060217","M0711005","S1103009","M1003006","S060217","S1001001","S1110005","M1301521","M1202517","S1005003","S1005004","S040703","s1009005","S1111009","S0809004","S0809004_GarranPrimary","S0805006","B041008","S1001003","OHS0001","S0609009","S0609009","S010421","S1011004","C060105","B0611008","S0609009","B050917","S0609009","M0908001","M0805005","S0901009","M1007010","M0806001","S1109501","S1109015","S1109006","S1108510","M1007007","S1108501","S1107004","S1106005","S1106001","S1104003","S1103010","S1102007","M0901007","S1203005","S1101001","S1202002","S1208003","S1208005","S991211","S1006005","s1201502","S1105520","S1010506","S1012003","S1010003","S991113","S991108","S991107","S040320","S0812515","S0910007","S0811004","s0810004","S0805003","S0804002","S0804001","S0803003","M0909006","M0708002","S0910004","","S0802001","M0708004","S0801514","S0907005","s0801002","S0906007","S0712006","M0912007","S0711009","S0905002","S0710002","S0905004","S0903512","S0706003","S0705501","S0902514","S0902507","S0611011","S051252","S051205","S0610012","S051161","S0607018","S051103","S060710","S050712","S060515","S060309","S060108","S050711","S060102","S041205","m031013","B000504","B000107","B000170","B000503","B000505","B000603","B000606","B000704","B000715","B000813","B001079","B001112"].sample}
    img            { "http://notionparallax.co.uk/bldg/bld-" + (0..248).to_a.sample.to_s + ".jpg" }
    value          { "About tree fiddy" }
  end
end

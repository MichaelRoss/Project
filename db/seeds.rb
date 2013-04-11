

#create dummy health data
hd = HealthDatum.new
hd.weight = 83.6
hd.height = 175.3
hd.respitory_rate = 17
hd.blood_pressure = 120
hd.coughs_per_day = 12
hd.save

#create dummy gps data

gps = GpsData.new 
gps.time = "2013-03-06 15:38:10"
gps.lat = 56.46743
gps.lng = -3.05511
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:39:56"
gps.lat = 56.46804
gps.lng = -3.05508
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:40:11"
gps.lat = 56.46823
gps.lng = -3.05408
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:40:42"
gps.lat = 56.46952
gps.lng = -3.05253
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:40:58"
gps.lat = 56.46813
gps.lng = -3.05098
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:41:05"
gps.lat = 56.46764
gps.lng = -3.04563
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:41:36"
gps.lat = 56.46863
gps.lng = -3.03925
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:41:36"
gps.lat = 56.46819
gps.lng = -3.03892
gps.save

gps = GpsData.new 
gps.time = "2013-03-06 15:41:36"
gps.lat = 56.46815
gps.lng = -3.03965
gps.save


#create dummy sleep data

sd = SleepData.new
sd.start_time = "2013-03-08 22:58:40"
sd.end_time = "2013-03-09 05:59:33"
sd.sleepquality = 66
sd.timeinbed = 7.00
sd.mood = ":|"
sd.notes = "Ate Late"
sd.save

sd = SleepData.new
sd.start_time = "2013-03-09 22:48:03"
sd.end_time = "2013-03-10 05:58:33"
sd.sleepquality = 54
sd.timeinbed = 7.10
sd.mood = ":)"
sd.notes = "Drank Caffeine Drink"
sd.save

sd = SleepData.new
sd.start_time = "2013-03-10 23:54:42"
sd.end_time = "2013-03-11 08:24:38"
sd.sleepquality = 74
sd.timeinbed = 8.29
sd.mood = ":("
sd.notes = "Forgot to take medicine"
sd.save

sd = SleepData.new
sd.start_time = "2013-03-11 23:54:44"
sd.end_time = "2013-03-12 07:30:20"
sd.sleepquality = 87
sd.timeinbed = 7.35
sd.mood = ":)"
sd.notes = "Exercised"
sd.save

sd = SleepData.new
sd.start_time = "2013-03-13 03:08:12"
sd.end_time = "2013-03-13 09:27:02"
sd.sleepquality = 75
sd.timeinbed = 6.18
sd.mood = ":|"
sd.notes = ""
sd.save

sd = SleepData.new
sd.start_time = "2013-03-14 01:25:44"
sd.end_time = "2013-03-14 07:51:01"
sd.sleepquality = 67
sd.timeinbed = 6.25
sd.mood = ":("
sd.notes = "Ate Late"
sd.save

sd = SleepData.new
sd.start_time = "2013-03-15 01:51:05"
sd.end_time = "2013-03-15 07:30:41"
sd.sleepquality = 55
sd.timeinbed = 5.39
sd.mood = ":|"
sd.notes = "Drank Caffeine Drink"
sd.save




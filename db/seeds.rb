#set up the roles
["GP", "Social Worker", "Nurse", "Family", "Patient"].each do |role|
r = Role.find_or_create_by_name(role)
end

#set up the rights
r = Right.new
r.name = "cigs per day index"
r.controller = "cigs_per_days"
r.action = "index"
r.save

r = Right.new
r.name = "cigs per day new"
r.controller = "cigs_per_days"
r.action = "new"
r.save

r = Right.new
r.name = "cigs per day create"
r.controller = "cigs_per_days"
r.action = "create"
r.save

r = Right.new
r.name = "family instructions"
r.controller = "family"
r.action = "instructions"
r.save

r = Right.new
r.name = "family movements"
r.controller = "family"
r.action = "movements"
r.save

r = Right.new
r.name = "gp_diagnoses index"
r.controller = "gp_diagnoses"
r.action = "index"
r.save

r = Right.new
r.name = "gp_diagnoses show"
r.controller = "gp_diagnoses"
r.action = "show"
r.save

r = Right.new
r.name = "gp_diagnoses new"
r.controller = "gp_diagnoses"
r.action = "new"
r.save

r = Right.new
r.name = "gp_diagnoses create"
r.controller = "gp_diagnoses"
r.action = "create"
r.save

r = Right.new
r.name = "gps_data index"
r.controller = "gps_data"
r.action = "index"
r.save

r = Right.new
r.name = "health data index"
r.controller = "health_data"
r.action = "index"
r.save

r = Right.new
r.name = "health data show"
r.controller = "health_data"
r.action = "show"
r.save

r = Right.new
r.name = "health data new"
r.controller = "health_data"
r.action = "new"
r.save

r = Right.new
r.name = "health data create"
r.controller = "health_data"
r.action = "create"
r.save

r = Right.new
r.name = "panic_alarms index"
r.controller = "panic_alarms"
r.action = "index"
r.save

r = Right.new
r.name = "panic_alarms new"
r.controller = "panic_alarms"
r.action = "new"
r.save

r = Right.new
r.name = "panic_alarms create"
r.controller = "panic_alarms"
r.action = "create"
r.save

r = Right.new
r.name = "sensor data index"
r.controller = "sensor_data"
r.action = "index"
r.save

r = Right.new
r.name = "sleep data index"
r.controller = "sleep_data"
r.action = "index"
r.save

r = Right.new
r.name = "sw diaries index"
r.controller = "sw_diaries"
r.action = "index"
r.save

r = Right.new
r.name = "sw diaries show"
r.controller = "sw_diaries"
r.action = "show"
r.save

r = Right.new
r.name = "sw diaries new"
r.controller = "sw_diaries"
r.action = "new"
r.save

r = Right.new
r.name = "sw diaries create"
r.controller = "sw_diaries"
r.action = "create"
r.save

#allocate rights to roles
[1,6,7,8,9,10,11,12,18,19,20,21].each do |i|
   rl = Role.find_by_id(1)
   rl.rights << Right.find_by_id(i)
   rl.save
end

[1,6,7,10,11,12,18,19,22,23].each do |i|
   rl = Role.find_by_id(2)
   rl.rights << Right.find_by_id(i)
   rl.save
end

[1,6,7,10,11,12,13,14,18,19,20,21].each do |i|
   rl = Role.find_by_id(3)
   rl.rights << Right.find_by_id(i)
   rl.save
end

[4,5,15,19].each do |i|
   rl = Role.find_by_id(4)
   rl.rights << Right.find_by_id(i)
   rl.save
end

[1,2,3,5,11,12,16,17,19].each do |i|
   rl = Role.find_by_id(5)
   rl.rights << Right.find_by_id(i)
   rl.save
end

#create GP user and allocate role
u = User.new
u.name = "GP"
u.email = "gp@gp.com"
u.password = "password"
u.password_confirmation = "password"
u.roles << Role.find_by_name("GP")
u.save

#create GP user and allocate role
u = User.new
u.name = "Social Worker"
u.email = "socialworker@socialworker.com"
u.password = "password"
u.password_confirmation = "password"
u.roles << Role.find_by_name("Social Worker")
u.save

#create GP user and allocate role
u = User.new
u.name = "Nurse"
u.email = "nurse@nurse.com"
u.password = "password"
u.password_confirmation = "password"
u.roles << Role.find_by_name("Nurse")
u.save

#create GP user and allocate role
u = User.new
u.name = "Alice"
u.email = "alice@alice.com"
u.password = "password"
u.password_confirmation = "password"
u.roles << Role.find_by_name("Family")
u.save

#create GP user and allocate role
u = User.new
u.name = "Bert"
u.email = "bert@bert.com"
u.password = "password"
u.password_confirmation = "password"
u.roles << Role.find_by_name("Patient")
u.save

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




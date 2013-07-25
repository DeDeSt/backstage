# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'go7hic@gmail.com', password: 'qwerasdf', password_confirmation: 'qwerasdf', first_name: 'Ronen', last_name: 'Verdi', title: 'Web Developer', role: 'admin', created_at: Time.now, updated_at: Time.now)
User.create(email: 'verbush@gmail.com', password: '12341234', password_confirmation: '12341234', first_name: 'Egor', last_name: 'Verbitsky', title: 'Project Manager', role: 'admin', created_at: Time.now, updated_at: Time.now)

Opening.create(opening_day: 'Понедельник', opening_from: '10:00', opening_to: '19:00', created_at: Time.now, updated_at: Time.now)
Opening.create(opening_day: 'Вторник', opening_from: '10:00', opening_to: '19:00', created_at: Time.now, updated_at: Time.now)
Opening.create(opening_day: 'Среда', opening_from: '10:00', opening_to: '19:00', created_at: Time.now, updated_at: Time.now)
Opening.create(opening_day: 'Четверг', opening_from: '10:00', opening_to: '19:00', created_at: Time.now, updated_at: Time.now)
Opening.create(opening_day: 'Пятница', opening_from: '10:00', opening_to: '19:00', created_at: Time.now, updated_at: Time.now)
Opening.create(opening_day: 'Суббота', created_at: Time.now, updated_at: Time.now)
Opening.create(opening_day: 'Воскресенье', created_at: Time.now, updated_at: Time.now)

course1 = Course.create(name: 'Парикмахер', created_at: Time.now, updated_at: Time.now)
course2 = Course.create(name: 'Наращивание', created_at: Time.now, updated_at: Time.now)
course3 = Course.create(name: 'Маникюр', created_at: Time.now, updated_at: Time.now)
course4 = Course.create(name: 'Визаж', created_at: Time.now, updated_at: Time.now)

CourseOption.create(name: 'Экспресс курс', duration: 30, lessons: 10, hours: 30, price_uah: 1200, price_usd: 150, course_id: course1.id, created_at: Time.now, updated_at: Time.now)
CourseOption.create(name: 'Базовый курс', duration: 90, lessons: 30, hours: 90, price_uah: 3600, price_usd: 450, course_id: course1.id, created_at: Time.now, updated_at: Time.now)
CourseOption.create(name: 'Углубленный курс', duration: 180, lessons: 60, hours: 180, price_uah: 7200, price_usd: 900, course_id: course1.id, created_at: Time.now, updated_at: Time.now)

CourseOption.create(name: 'Экспресс курс', duration: 30, lessons: 10, hours: 30, price_uah: 2500, price_usd: 315, course_id: course2.id, created_at: Time.now, updated_at: Time.now)
CourseOption.create(name: 'Базовый курс', duration: 60, lessons: 20, hours: 60, price_uah: 5000, price_usd: 630, course_id: course2.id, created_at: Time.now, updated_at: Time.now)

CourseOption.create(name: 'Экспресс курс', duration: 45, lessons: 15, hours: 45, price_uah: 2000, price_usd: 250, course_id: course3.id, created_at: Time.now, updated_at: Time.now)
CourseOption.create(name: 'Базовый курс', duration: 90, lessons: 30, hours: 90, price_uah: 4000, price_usd: 500, course_id: course3.id, created_at: Time.now, updated_at: Time.now)

CourseOption.create(name: 'Экспресс курс', duration: 45, lessons: 15, hours: 45, price_uah: 3500, price_usd: 435, course_id: course4.id, created_at: Time.now, updated_at: Time.now)
CourseOption.create(name: 'Базовый курс', duration: 90, lessons: 30, hours: 90, price_uah: 7000, price_usd: 870, course_id: course4.id, created_at: Time.now, updated_at: Time.now)
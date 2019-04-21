# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


Instructor.destroy_all
instructor1=Instructor.create(name:"Amani")
instructor2=Instructor.create(name:"Mohammad")
instructor3=Instructor.create(name:"Sarah")

Course.destroy_all
Course.create(name:"Horse riding", img:"https://www.pureafricaexperiences.com/wp-content/uploads/2018/03/Horse_Riding__Wine_Track.jpg" , type:"Horse riding", desc:"teaching horse riding for beginner", instructor_id:instructor1.id, start:"2019-07-09 13:30:00", end:"2019-08-09 16:30:00")
Course.create(name:"Carpentry", img:"http://teespring-storecontent.s3.amazonaws.com/dSEFGMQnJv_WCuydS_GIAA_store_header_image" , type:"Carpentry", desc:"This free Introduction to Carpentry course is the perfect first step for you to learn the skills needed for effective carpentry.", instructor_id:instructor2.id, start:"2019-05-12 09:00:00", end:"2019-08-09 17:00:00")
Course.create(name:"Pottery", img:"https://d39l2hkdp2esp1.cloudfront.net/img/photo/133731/133731_00_2x.jpg" , type:"Pottery", desc:"This course teaches students the fundamental wheel-working skills used for shaping clay. Students practice using the potter's wheel and begin throwing basic forms, such as bowls and mugs.", instructor_id:instructor3.id, start:"2019-04-1 05:30:00", end:"2019-06-09 07:30:00")





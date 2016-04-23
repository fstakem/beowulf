# Models
# -----------------------------------------------------------------

# Users
user = User.new
user.email                  = 'fstakem@gmail.com'
user.password               = 'valid_password'
user.password_confirmation  = 'valid_password'
user.username               = 'fstakem'
user.first_name             = 'Fredrick'
user.last_name              = 'Stakem'
user.phone_number           = '4045555555'
user.title                  = 'Software Engineer'
user.about_me               = 'TODO'
user.save!

# Projects
project_1 = Project.new
project_1.name                = 'Game Networking Algorithm Research'             
project_1.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_1.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_1.short_description   = 'TODO'
project_1.long_description    = 'When I first started working in the the signal processing lab my professor was interested in the streaming of 3D meshes since that was what his PhD was on. ' \
                                'The first task I was instructed to do was to network together a very rough virtual environment prototype. ' \
                                'This project led to me researching the networking done in gaming and virtual environments. ' \
                                'Most of the previous research was done on a technique called dead reckoning. ' \
                                'I spent many years researching this and experimenting with algorithms on the transmitter and the receiver to lessen the effects of the network on the end user experience. ' \
                                'My research was more specifically done on human hand movement which is different than avatar movement in a typical first person shooter. ' \
                                'I collected data, wrote algorithms and simulations, and eventually a few research papers. ' \
                                'I always thought this problem was a hard one as the current techniques are good but more advanced techniques are very hard. ' \
                                'My only consolidation to this was in the passing on of my 100 page proposal to a friend working on the networking at Artillery.'     
project_1.user_id             = user.id 
project_1.save!

project_2 = Project.new
project_2.name                = 'Network Gaming Research'             
project_2.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_2.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_2.short_description   = 'TODO'
project_2.long_description    = 'In addition to the more algorithm oriented research on network gaming I did various research projects where I wrote networking software. ' \
                                'One interesting project was the networking of a sort of treasure hunt game done in the real world with mobile phones. ' \
                                'At this point mobile phone development was much more rudimentary that it is now and phone API’s were not close to being as rich. '\
                                'In spite of this we put together a rough prototype which was pretty cool. ' \
                                'I learned a lot of things on the practical aspects of game networking and mobile phones. ' \
                                'Using the GPS and network on those old phones drained the battery like a college frat boy drains a beer. ' \
                                'Between the old phones, the huge battery drain, and the horrible network coverage I would say I learned the most in how the real world often kills good research ideas. ' \
                                'If I ever have any free time I would love to reimplement something similar with todays hardware. ' \
                                'I did some other research and built some prototypes streaming other media forms, but I think the ideas were less novel and interesting.'
project_2.user_id             = user.id 
project_2.save!

project_3 = Project.new
project_3.name                = 'Second Screen Semantic Linking Research'             
project_3.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_3.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_3.short_description   = 'TODO'
project_3.long_description    = 'One of the coolest research projects I worked on was with Motorola labs. ' \
                                'Once again I think we were at the forefront of the idea of a tv linked to a second screen. ' \
                                'No one had done anything in the literature at the time and I was teamed up with a researcher at Motorola labs who wasn’t drinking as much of the corporate Kool-Aid as the typical corporate employee. ' \
                                'I built a Ruby on Rails application that linked interesting web sites to the current video on the tv. ' \
                                'Our prototype was very basic and the idea has since been done, but at the time I thought it was novel. ' \
                                'In the course of this project I learned a lot about OCAP as well which led me to later work. ' \
                                'Unfortunately the the cable world at that timed cared more for OCAP than cool novel tv centric application ideas. ' \
                                'The closed nature of the cable tv system has really soured me on anything interesting happening in this field.'
project_3.user_id             = user.id 
project_3.save!

project_4 = Project.new
project_4.name                = 'Remote Control Raspberry Pi Camera'             
project_4.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_4.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_4.short_description   = 'TODO'
project_4.long_description    = 'TODO'
project_4.user_id             = user.id 
project_4.save!

project_5 = Project.new
project_5.name                = 'Reconfigurable Lexer and Parser for Unstructered Data'             
project_5.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_5.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_5.short_description   = 'TODO'
project_5.long_description    = 'TODO'  
project_5.user_id             = user.id 
project_5.save!

project_6 = Project.new
project_6.name                = 'Coursera Data Science Classes'             
project_6.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_6.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_6.short_description   = 'TODO'
project_6.long_description    = 'TODO'  
project_6.user_id             = user.id 
project_6.save!

project_7 = Project.new
project_7.name                = 'Port of Kalman Filtering Book to Python'             
project_7.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project_7.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project_7.short_description   = 'TODO'
project_7.long_description    = 'TODO'  
project_7.user_id             = user.id 
project_7.save!

# Posts
post_1 = Post.new
post_1.title      = 'A new start'
post_1.text       = 'TODO'
post_1.user_id    = user.id
post_1.save!

# Links
link_1 = Link.new
link_1.text     = 'My linkedin page'
link_1.url      = 'http://www.linkedin.com/in/fstakem/'
link_1.type_of  = 'resume'
link_1.save!

link_2 = Link.new
link_2.text     = 'My github page'
link_2.url      = 'https://github.com/fstakem'
link_2.type_of  = 'resume'
link_2.save!

link_3 = Link.new
link_3.text     = 'My angelist page'
link_3.url      = 'https://angel.co/fstakem'
link_3.type_of  = 'resume'
link_3.save!

# Jobs
job_1 = Job.new
job_1.title         = 'Software Engineer'
job_1.company       = 'Medlytix'
job_1.city          = 'Atlanta'  
job_1.state         = 'GA' 
job_1.start_date    = Date.strptime('9/1/2015', '%m/%d/%Y')
job_1.end_date      = nil
job_1.current_job   = true
job_1.user_id       = user.id
job_1.save! 

job_2 = Job.new
job_2.title         = 'Software Engineer'
job_2.company       = 'Itaas a Cognizant Company'
job_2.city          = 'Atlanta'  
job_2.state         = 'GA' 
job_2.start_date    = Date.strptime('8/30/2015', '%m/%d/%Y')
job_2.end_date      = Date.strptime('8/1/2014', '%m/%d/%Y')
job_2.current_job   = false
job_2.user_id       = user.id
job_2.save! 

job_3 = Job.new
job_3.title         = 'Software Engineer'
job_3.company       = 'Manheim'
job_3.city          = 'Atlanta'  
job_3.state         = 'GA' 
job_3.start_date    = Date.strptime('2/1/2014', '%m/%d/%Y')
job_3.end_date      = Date.strptime('8/1/2014', '%m/%d/%Y')
job_3.current_job   = false
job_3.user_id       = user.id
job_3.save! 

job_4 = Job.new
job_4.title         = 'Software Engineer'
job_4.company       = 'Independent Contractor'
job_4.city          = 'Atlanta'  
job_4.state         = 'GA' 
job_4.start_date    = Date.strptime('7/1/2014', '%m/%d/%Y')
job_4.end_date      = Date.strptime('2/1/2015', '%m/%d/%Y')
job_4.current_job   = false
job_4.user_id       = user.id
job_4.save! 

job_5 = Job.new
job_5.title         = 'Software Engineer'
job_5.company       = 'Medlytix'
job_5.city          = 'Atlanta'  
job_5.state         = 'GA' 
job_5.start_date    = Date.strptime('9/1/2015', '%m/%d/%Y')
job_5.end_date      = Date.strptime('9/1/2015', '%m/%d/%Y')
job_5.current_job   = false
job_5.user_id       = user.id
job_5.save! 

job_6 = Job.new
job_6.title         = 'Middleware Software Engineer'
job_6.company       = 'Cisco Systems'
job_6.city          = 'Atlanta'  
job_6.state         = 'GA' 
job_6.start_date    = Date.strptime('2/1/2012', '%m/%d/%Y')
job_6.end_date      = Date.strptime('7/1/2013', '%m/%d/%Y')
job_6.current_job   = false
job_6.user_id       = user.id
job_6.save! 

job_7 = Job.new
job_7.title         = 'Software Engineer'
job_7.company       = 'TVWorks Comcast'
job_7.city          = 'San Francisco'  
job_7.state         = 'CA' 
job_7.start_date    = Date.strptime('8/1/2011', '%m/%d/%Y')
job_7.end_date      = Date.strptime('1/1/2012', '%m/%d/%Y')
job_7.current_job   = false
job_7.user_id       = user.id
job_7.save! 

job_8 = Job.new
job_8.title         = 'Middleware Software Engineer'
job_8.company       = 'Cisco Systems'
job_8.city          = 'Atlanta'  
job_8.state         = 'GA' 
job_8.start_date    = Date.strptime('7/1/2010', '%m/%d/%Y')
job_8.end_date      = Date.strptime('7/1/2011', '%m/%d/%Y')
job_8.current_job   = false
job_8.user_id       = user.id
job_8.save! 

job_9 = Job.new
job_9.title         = 'Research Assistant'
job_9.company       = 'Georgia Tech Research Institute'
job_9.city          = 'Atlanta'  
job_9.state         = 'GA' 
job_9.start_date    = Date.strptime('1/1/2010', '%m/%d/%Y')
job_9.end_date      = Date.strptime('7/1/2010', '%m/%d/%Y')
job_9.current_job   = false
job_9.user_id       = user.id
job_9.save! 

job_10 = Job.new
job_10.title         = 'Research Assistant'
job_10.company       = 'Georia Institute of Technology'
job_10.city          = 'Atlanta'  
job_10.state         = 'GA' 
job_10.start_date    = Date.strptime('5/1/2004', '%m/%d/%Y')
job_10.end_date      = Date.strptime('7/1/2010', '%m/%d/%Y')
job_10.current_job   = false
job_10.user_id       = user.id
job_10.save! 

job_11 = Job.new
job_11.title         = 'Researcher'
job_11.company       = 'Motorola Labs'
job_11.city          = 'Atlanta'  
job_11.state         = 'GA' 
job_11.start_date    = Date.strptime('1/1/2009', '%m/%d/%Y')
job_11.end_date      = Date.strptime('8/1/2009', '%m/%d/%Y')
job_11.current_job   = false
job_11.user_id       = user.id
job_11.save! 

job_12 = Job.new
job_12.title         = 'Instructor'
job_12.company       = 'Georgia Institute of Technology'
job_12.city          = 'Atlanta'  
job_12.state         = 'GA' 
job_12.start_date    = Date.strptime('8/1/2005', '%m/%d/%Y')
job_12.end_date      = Date.strptime('8/1/2006', '%m/%d/%Y')
job_12.current_job   = false
job_12.user_id       = user.id
job_12.save! 

job_13 = Job.new
job_13.title         = 'Teaching Assistant'
job_13.company       = 'Georgia Institute of Technology'
job_13.city          = 'Atlanta'  
job_13.state         = 'GA' 
job_13.start_date    = Date.strptime('1/1/2002', '%m/%d/%Y')
job_13.end_date      = Date.strptime('8/1/2005', '%m/%d/%Y')
job_13.current_job   = false
job_13.user_id       = user.id
job_13.save! 

job_14 = Job.new
job_14.title         = 'Systems Engineer'
job_14.company       = 'Lucent Technologies'
job_14.city          = 'Atlanta'  
job_14.state         = 'GA' 
job_14.start_date    = Date.strptime('2/1/1999', '%m/%d/%Y')
job_14.end_date      = Date.strptime('8/1/2001', '%m/%d/%Y')
job_14.current_job   = false
job_14.user_id       = user.id
job_14.save! 

# Tasks
task_1 = Task.new
task_1.description    = 'TODO'
task_1.job_id         = job_1.id
task_1.save!

# Skills
skill_1 = Skill.new 
skill_1.name              = 'Python'   
skill_1.description       = 'Python programming'
skill_1.category          = 'programming langauge'
skill_1.currently_using   = true
skill_1.last_used         = nil
skill_1.skill_level       = 9
skill_1.save!

skill_2 = Skill.new 
skill_2.name              = 'Ruby'   
skill_2.description       = 'Ruby programming'
skill_2.category          = 'programming langauge'
skill_2.currently_using   = true
skill_2.last_used         = nil
skill_2.skill_level       = 6
skill_2.save!

skill_3 = Skill.new 
skill_3.name              = 'Java'   
skill_3.description       = 'Java programming'
skill_3.category          = 'programming langauge'
skill_3.currently_using   = false
skill_3.last_used         = Date.strptime('11/1/2014', '%m/%d/%Y')
skill_3.skill_level       = 7
skill_3.save!

skill_4 = Skill.new 
skill_4.name              = 'C++'   
skill_4.description       = 'C++ programming'
skill_4.category          = 'programming langauge'
skill_4.currently_using   = false
skill_4.last_used         = Date.strptime('7/1/2014', '%m/%d/%Y')
skill_4.skill_level       = 5
skill_4.save!

skill_5 = Skill.new 
skill_5.name              = 'Javascript'   
skill_5.description       = 'Javascript programming'
skill_5.category          = 'programming langauge'
skill_5.currently_using   = true
skill_5.last_used         = nil
skill_5.skill_level       = 7
skill_5.save!

skill_6 = Skill.new 
skill_6.name              = 'Bash'   
skill_6.description       = 'Bash scripting'
skill_6.category          = 'programming langauge'
skill_6.currently_using   = true
skill_6.last_used         = nil
skill_6.skill_level       = 7
skill_6.save!

skill_7 = Skill.new 
skill_7.name              = 'Go'   
skill_7.description       = 'Go programming'
skill_7.category          = 'programming langauge'
skill_7.currently_using   = false
skill_7.last_used         = Date.strptime('2/1/2013', '%m/%d/%Y')
skill_7.skill_level       = 3
skill_7.save!

skill_8 = Skill.new 
skill_8.name              = 'HTML'   
skill_8.description       = 'HTML programming'
skill_8.category          = 'programming langauge'
skill_8.currently_using   = true
skill_8.last_used         = nil
skill_8.skill_level       = 7
skill_8.save!

skill_9 = Skill.new 
skill_9.name              = 'CSS'   
skill_9.description       = 'CSS programming'
skill_9.category          = 'programming langauge'
skill_9.currently_using   = true
skill_9.last_used         = nil
skill_9.skill_level       = 7
skill_9.save!

skill_10 = Skill.new 
skill_10.name             = 'SQL'   
skill_10.description      = 'SQL programming'
skill_10.category         = 'programming langauge'
skill_10.currently_using  = true
skill_10.last_used        = nil
skill_10.skill_level      = 7
skill_10.save!

skill_11 = Skill.new 
skill_11.name             = 'EBIF'   
skill_11.description      = 'EBIF programming'
skill_11.category         = 'programming langauge'
skill_11.currently_using  = false
skill_11.last_used        = Date.strptime('8/1/2014', '%m/%d/%Y')
skill_11.skill_level      = 7
skill_11.save!

skill_12 = Skill.new 
skill_12.name             = 'XML'   
skill_12.description      = 'XML programming'
skill_12.category         = 'programming langauge'
skill_12.currently_using  = false
skill_12.last_used        = Date.strptime('8/1/2014', '%m/%d/%Y')
skill_12.skill_level      = 8
skill_12.save!

skill_13 = Skill.new 
skill_13.name             = 'JSON'   
skill_13.description      = 'JSON programming'
skill_13.category         = 'programming langauge'
skill_13.currently_using  = true
skill_13.last_used        = nil
skill_13.skill_level      = 8
skill_13.save!

skill_14 = Skill.new 
skill_14.name             = 'Perl'   
skill_14.description      = 'Perl programming'
skill_14.category         = 'programming langauge'
skill_14.currently_using  = false
skill_14.last_used        = Date.strptime('8/1/2012', '%m/%d/%Y')
skill_14.skill_level      = 3
skill_14.save!

skill_15 = Skill.new 
skill_15.name             = 'SASS'   
skill_15.description      = 'SASS programming'
skill_15.category         = 'programming langauge'
skill_15.currently_using  = true
skill_15.last_used        = nil
skill_15.skill_level      = 3
skill_15.save!

skill_16 = Skill.new 
skill_16.name             = 'R'   
skill_16.description      = 'R programming'
skill_16.category         = 'programming langauge'
skill_16.currently_using  = false
skill_16.last_used        = Date.strptime('8/1/2015', '%m/%d/%Y')
skill_16.skill_level      = 4
skill_16.save!

skill_17 = Skill.new 
skill_17.name             = 'PHP'   
skill_17.description      = 'PHP programming'
skill_17.category         = 'programming langauge'
skill_17.currently_using  = false
skill_17.last_used        = Date.strptime('8/1/2015', '%m/%d/%Y')
skill_17.skill_level      = 3
skill_17.save!

skill_18 = Skill.new 
skill_18.name             = 'Django'   
skill_18.description      = 'Django web framework'
skill_18.category         = 'libraries and frameworks'
skill_18.currently_using  = false
skill_18.last_used        = Date.strptime('10/1/2015', '%m/%d/%Y')
skill_18.skill_level      = 6
skill_18.save!

skill_19 = Skill.new 
skill_19.name             = 'Flask'   
skill_19.description      = 'Flask web framework'
skill_19.category         = 'libraries and frameworks'
skill_19.currently_using  = false
skill_19.last_used        = Date.strptime('4/1/2015', '%m/%d/%Y')
skill_19.skill_level      = 8
skill_19.save!

skill_20 = Skill.new 
skill_20.name             = 'Ruby on Rails'   
skill_20.description      = 'Ruby on Rails web framework'
skill_20.category         = 'libraries and frameworks'
skill_20.currently_using  = true
skill_20.last_used        = nil
skill_20.skill_level      = 7
skill_20.save!

skill_21 = Skill.new 
skill_21.name             = 'Bootstrap'   
skill_21.description      = 'Bootstrap UI library'
skill_21.category         = 'libraries and frameworks'
skill_21.currently_using  = true
skill_21.last_used        = nil
skill_21.skill_level      = 7
skill_21.save!

skill_22 = Skill.new 
skill_22.name             = 'Android'   
skill_22.description      = 'Android platform'
skill_22.category         = 'libraries and frameworks'
skill_22.currently_using  = false
skill_22.last_used        = Date.strptime('1/1/2015', '%m/%d/%Y')
skill_22.skill_level      = 6
skill_22.save!

skill_23 = Skill.new 
skill_23.name             = 'OCAP'   
skill_23.description      = 'OCAP platform'
skill_23.category         = 'libraries and frameworks'
skill_23.currently_using  = false
skill_23.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_23.skill_level      = 5
skill_23.save!

skill_24 = Skill.new 
skill_24.name             = 'RDK'   
skill_24.description      = 'RDK platform'
skill_24.category         = 'libraries and frameworks'
skill_24.currently_using  = false
skill_24.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_24.skill_level      = 4
skill_24.save!

skill_25 = Skill.new 
skill_25.name             = 'Boost'   
skill_25.description      = 'Boost libraries'
skill_25.category         = 'libraries and frameworks'
skill_25.currently_using  = false
skill_25.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_25.skill_level      = 4
skill_25.save!

skill_26 = Skill.new 
skill_26.name             = 'STL'   
skill_26.description      = 'STL'
skill_26.category         = 'libraries and frameworks'
skill_26.currently_using  = false
skill_26.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_26.skill_level      = 6
skill_26.save!

skill_27 = Skill.new 
skill_27.name             = 'Matplotlib'   
skill_27.description      = 'Matplotlib graphing library'
skill_27.category         = 'libraries and frameworks'
skill_27.currently_using  = true
skill_27.last_used        = nil
skill_27.skill_level      = 7
skill_27.save!

skill_28 = Skill.new 
skill_28.name             = 'D3'   
skill_28.description      = 'D3 visualization library'
skill_28.category         = 'libraries and frameworks'
skill_28.currently_using  = true
skill_28.last_used        = nil
skill_28.skill_level      = 5
skill_28.save!

skill_29 = Skill.new 
skill_29.name             = 'TestNG'   
skill_29.description      = 'TestNG testing library'
skill_29.category         = 'libraries and frameworks'
skill_29.currently_using  = false
skill_29.last_used        = Date.strptime('1/1/2012', '%m/%d/%Y')
skill_29.skill_level      = 7
skill_29.save!

skill_30 = Skill.new 
skill_30.name             = 'Junit'   
skill_30.description      = 'Junit test library'
skill_30.category         = 'libraries and frameworks'
skill_30.currently_using  = true
skill_30.last_used        = Date.strptime('1/1/2012', '%m/%d/%Y')
skill_30.skill_level      = 7
skill_30.save!

skill_31 = Skill.new 
skill_31.name             = 'Numpy'   
skill_31.description      = 'Numpy matrix library'
skill_31.category         = 'libraries and frameworks'
skill_31.currently_using  = true
skill_31.last_used        = nil
skill_31.skill_level      = 7
skill_31.save!

skill_32 = Skill.new 
skill_32.name             = 'Pandas'   
skill_32.description      = 'Pandas dataframe library'
skill_32.category         = 'libraries and frameworks'
skill_32.currently_using  = true
skill_32.last_used        = nil
skill_32.skill_level      = 7
skill_32.save!

skill_33 = Skill.new 
skill_33.name             = 'Seaborn'   
skill_33.description      = 'Seaborn graphing library'
skill_33.category         = 'libraries and frameworks'
skill_33.currently_using  = true
skill_33.last_used        = nil
skill_33.skill_level      = 5
skill_33.save!

skill_34 = Skill.new 
skill_34.name             = 'TCP/IP'   
skill_34.description      = 'TCP/IP networking stack'
skill_34.category         = 'networking and telecommunication'
skill_34.currently_using  = true
skill_34.last_used        = nil
skill_34.skill_level      = 8
skill_34.save!

skill_35 = Skill.new 
skill_35.name             = 'UDP for multimedia'   
skill_35.description      = 'UDP for multimeia'
skill_35.category         = 'networking and telecommunication'
skill_35.currently_using  = false
skill_35.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_35.skill_level      = 8
skill_35.save!

skill_36 = Skill.new 
skill_36.name             = 'IMS'   
skill_36.description      = 'IMS'
skill_36.category         = 'networking and telecommunication'
skill_36.currently_using  = false
skill_36.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_36.skill_level      = 6
skill_36.save!

skill_37 = Skill.new 
skill_37.name             = 'SIP'   
skill_37.description      = 'Session Initiation Protocol'
skill_37.category         = 'networking and telecommunication'
skill_37.currently_using  = false
skill_37.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_37.skill_level      = 6
skill_37.save!

skill_38 = Skill.new 
skill_38.name             = 'RTP'   
skill_38.description      = 'Realtime Protocol'
skill_38.category         = 'networking and telecommunication'
skill_38.currently_using  = false
skill_38.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_38.skill_level      = 6
skill_38.save!

skill_39 = Skill.new 
skill_39.name             = 'Socket programming'   
skill_39.description      = 'Socket level programming'
skill_39.category         = 'networking and telecommunication'
skill_39.currently_using  = false
skill_39.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_39.skill_level      = 6
skill_39.save!

skill_40 = Skill.new 
skill_40.name             = 'SOAP'   
skill_40.description      = 'SOAP protocol'
skill_40.category         = 'networking and telecommunication'
skill_40.currently_using  = false
skill_40.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_40.skill_level      = 7
skill_40.save!

skill_41 = Skill.new 
skill_41.name             = 'REST'   
skill_41.description      = 'REST protocol'
skill_41.category         = 'networking and telecommunication'
skill_41.currently_using  = true
skill_41.last_used        = nil
skill_41.skill_level      = 9
skill_41.save!

skill_42 = Skill.new 
skill_42.name             = 'Various MAC layers'   
skill_42.description      = 'MAC layer implementation'
skill_42.category         = 'networking and telecommunication'
skill_42.currently_using  = false
skill_42.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_42.skill_level      = 7
skill_42.save!

skill_43 = Skill.new 
skill_43.name             = 'Linux'   
skill_43.description      = 'Linux OS'
skill_43.category         = 'other'
skill_43.currently_using  = true
skill_43.last_used        = nil
skill_43.skill_level      = 9
skill_43.save!

skill_44 = Skill.new 
skill_44.name             = 'OSX'   
skill_44.description      = 'OSX OS'
skill_44.category         = 'other'
skill_44.currently_using  = true
skill_44.last_used        = nil
skill_44.skill_level      = 8
skill_44.save!

skill_45 = Skill.new 
skill_45.name             = 'Arduino'   
skill_45.description      = 'Arduino embedded dev'
skill_45.category         = 'other'
skill_45.currently_using  = false
skill_45.last_used        = Date.strptime('1/1/2013', '%m/%d/%Y')
skill_45.skill_level      = 7
skill_45.save!

skill_46 = Skill.new 
skill_46.name             = 'Raspberry Pi'   
skill_46.description      = 'Raspberry Pi dev board'
skill_46.category         = 'other'
skill_46.currently_using  = true
skill_46.last_used        = nil
skill_46.skill_level      = 7
skill_46.save!

skill_47 = Skill.new 
skill_47.name             = 'Oprofile'   
skill_47.description      = 'Oprofile profiler'
skill_47.category         = 'other'
skill_47.currently_using  = false
skill_47.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_47.skill_level      = 8
skill_47.save!

skill_48 = Skill.new 
skill_48.name             = 'Valgrind'   
skill_48.description      = 'Valgrind profiler'
skill_48.category         = 'other'
skill_48.currently_using  = false
skill_48.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_48.skill_level      = 4
skill_48.save!

skill_49 = Skill.new 
skill_49.name             = 'LTTng'   
skill_49.description      = 'LTTng profiler'
skill_49.category         = 'other'
skill_49.currently_using  = false
skill_49.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_49.skill_level      = 4
skill_49.save!

skill_50 = Skill.new 
skill_50.name             = 'Maven'   
skill_50.description      = 'Maven build tool'
skill_50.category         = 'other'
skill_50.currently_using  = false
skill_50.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_50.skill_level      = 7
skill_50.save!

skill_51 = Skill.new 
skill_51.name             = 'BitBake'   
skill_51.description      = 'BitBake build tool'
skill_51.category         = 'other'
skill_51.currently_using  = false
skill_51.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill_51.skill_level      = 3
skill_51.save!

skill_52 = Skill.new 
skill_52.name             = 'Gradle'   
skill_52.description      = 'Gradle build tool'
skill_52.category         = 'other'
skill_52.currently_using  = false
skill_52.last_used        = Date.strptime('1/1/2015', '%m/%d/%Y')
skill_52.skill_level      = 5
skill_52.save!

skill_53 = Skill.new 
skill_53.name             = 'signal processing'   
skill_53.description      = 'Signal processing'
skill_53.category         = 'other'
skill_53.currently_using  = false
skill_53.last_used        = Date.strptime('1/1/2014', '%m/%d/%Y')
skill_53.skill_level      = 7
skill_53.save!

skill_54 = Skill.new 
skill_54.name             = 'machine learning'   
skill_54.description      = 'Machine learning'
skill_54.category         = 'other'
skill_54.currently_using  = false
skill_54.last_used        = Date.strptime('1/1/2015', '%m/%d/%Y')
skill_54.skill_level      = 7
skill_54.save!

skill_55 = Skill.new 
skill_55.name             = 'neural networks'   
skill_55.description      = 'Neural networks'
skill_55.category         = 'other'
skill_55.currently_using  = false
skill_55.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill_55.skill_level      = 7
skill_55.save!

skill_56 = Skill.new 
skill_56.name             = 'mvc'   
skill_56.description      = 'Model View Controller'
skill_56.category         = 'other'
skill_56.currently_using  = true
skill_56.last_used        = nil
skill_56.skill_level      = 9
skill_56.save!

# Photos
photo_1                   = Photo.new
photo_1.order             = ''
photo_1.url               = ''   
photo_1.title             = ''
photo_1.caption           = ''
photo_1.project_id        = project_1.id
photo_1.post_id           = post_1.id 
#photo_1.save!

# Schools
school_1                    = School.new
school_1.name               = 'Georgia Institute of Technology'   
school_1.start_date         = Date.strptime('1/1/2002', '%m/%d/%Y')
school_1.end_date           = Date.strptime('12/1/2004', '%m/%d/%Y')
school_1.degree             = 'MS'    
school_1.major              = 'ECE'     
school_1.gpa                = ''
school_1.graduation_date    = Date.strptime('12/1/2004', '%m/%d/%Y') 
school_1.attending          = false 
school_1.activities         = ''
school_1.user_id            = user.id    
school_1.save!

school_2 = School.new
school_2.name               = 'Purdue University'   
school_2.start_date         = Date.strptime('8/1/1994', '%m/%d/%Y')
school_2.end_date           = Date.strptime('12/1/1998', '%m/%d/%Y')
school_2.degree             = 'BS'    
school_2.major              = 'EE'     
school_2.gpa                = ''
school_2.graduation_date    = Date.strptime('12/1/1998', '%m/%d/%Y') 
school_2.attending          = false 
school_2.activities         = ''
school_2.user_id            = user.id    
school_2.save!

# Join Tables
# -----------------------------------------------------------------

# UserLink
user_link_1                 = UserLink.new 
user_link_1.user_id         = user.id
user_link_1.link_id         = link_1.id
user_link_1.save!

user_link_2                 = UserLink.new 
user_link_2.user_id         = user.id
user_link_2.link_id         = link_2.id
user_link_2.save!

user_link_3                 = UserLink.new 
user_link_3.user_id         = user.id
user_link_3.link_id         = link_3.id
user_link_3.save!

# UserSkill
user_skill_1                = UserSkill.new
user_skill_1.user_id        = user.id
user_skill_1.skill_id       = skill_1.id
user_skill_1.save!

# ProjectSkill
project_skill_1             = ProjectSkill.new
project_skill_1.project_id  = project_1.id
project_skill_1.skill_id    = skill_1.id
project_skill_1.save!

# TaskSkill
task_skill_1                = TaskSkill.new
task_skill_1.task_id        = task_1.id
task_skill_1.skill_id       = skill_1.id
task_skill_1.save!

# ProjectLink
project_link_1              = ProjectLink.new 
project_link_1.project_id   = project_1.id
project_link_1.link_id      = link_1.id   
project_link_1.save!
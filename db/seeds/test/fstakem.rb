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
user.phone_number           = '4045021676'
user.title                  = 'Software Engineer'
user.about_me               = 'About me to do'
user.save!

# Projects
projects = []
project = Project.new
project.name                = 'Game Networking Algorithm Research'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'When I first started working in the the signal processing lab my professor was interested in the streaming of 3D meshes since that was what his PhD was on. ' \
                              'The first task I was instructed to do was to network together a very rough virtual environment prototype. ' \
                              'This project led to me researching the networking done in gaming and virtual environments. ' \
                              'Most of the previous research was done on a technique called dead reckoning. ' \
                              'I spent many years researching this and experimenting with algorithms on the transmitter and the receiver to lessen the effects of the network on the end user experience. ' \
                              'My research was more specifically done on human hand movement which is different than avatar movement in a typical first person shooter. ' \
                              'I collected data, wrote algorithms and simulations, and eventually a few research papers. ' \
                              'I always thought this problem was a hard one as the current techniques are good but more advanced techniques are very hard. ' \
                              'My only consolidation to this was in the passing on of my 100 page proposal to a friend working on the networking at Artillery.'     
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Network Gaming Research'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'In addition to the more algorithm oriented research on network gaming I did various research projects where I wrote networking software. ' \
                              'One interesting project was the networking of a sort of treasure hunt game done in the real world with mobile phones. ' \
                              'At this point mobile phone development was much more rudimentary that it is now and phone API’s were not close to being as rich. '\
                              'In spite of this we put together a rough prototype which was pretty cool. ' \
                              'I learned a lot of things on the practical aspects of game networking and mobile phones. ' \
                              'Using the GPS and network on those old phones drained the battery like a college frat boy drains a beer. ' \
                              'Between the old phones, the huge battery drain, and the horrible network coverage I would say I learned the most in how the real world often kills good research ideas. ' \
                              'If I ever have any free time I would love to reimplement something similar with todays hardware. ' \
                              'I did some other research and built some prototypes streaming other media forms, but I think the ideas were less novel and interesting.'
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Second Screen Semantic Linking Research'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'One of the coolest research projects I worked on was with Motorola labs. ' \
                                'Once again I think we were at the forefront of the idea of a tv linked to a second screen. ' \
                                'No one had done anything in the literature at the time and I was teamed up with a researcher at Motorola labs who wasn’t drinking as much of the corporate Kool-Aid as the typical corporate employee. ' \
                                'I built a Ruby on Rails application that linked interesting web sites to the current video on the tv. ' \
                                'Our prototype was very basic and the idea has since been done, but at the time I thought it was novel. ' \
                                'In the course of this project I learned a lot about OCAP as well which led me to later work. ' \
                                'Unfortunately the the cable world at that timed cared more for OCAP than cool novel tv centric application ideas. ' \
                                'The closed nature of the cable tv system has really soured me on anything interesting happening in this field.'
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Remote Control Raspberry Pi Camera'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'TODO'
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Reconfigurable Lexer and Parser for Unstructered Data'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'TODO'
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Coursera Data Science Classes'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'TODO'
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Port of Kalman Filtering Book to Python'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = 'TODO'
project.user_id             = user.id 
project.save!
projects.push(project)

# Posts
posts = []
post = Post.new
post.title      = 'A new start'
post.text       = 'TODO'
post.user_id    = user.id
post.save!
posts.push(post)

# Links
links = []
link = Link.new
link.text     = 'My linkedin page'
link.url      = 'http://www.linkedin.com/in/fstakem/'
link.type_of  = 'resume'
link.save!
links.push(link)

link = Link.new
link.text     = 'My github page'
link.url      = 'https://github.com/fstakem'
link.type_of  = 'resume'
link.save!
links.push(link)

link = Link.new
link.text     = 'My angelist page'
link.url      = 'https://angel.co/fstakem'
link.type_of  = 'resume'
link.save!
links.push(link)

# Jobs
jobs = []
job = Job.new
job.title         = 'Software Engineer'
job.company       = 'Medlytix'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('9/1/2015', '%m/%d/%Y')
job.end_date      = nil
job.current_job   = true
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.company       = 'Itaas a Cognizant Company'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('8/30/2015', '%m/%d/%Y')
job.end_date      = Date.strptime('8/1/2014', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.company       = 'Manheim'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('2/1/2014', '%m/%d/%Y')
job.end_date      = Date.strptime('8/1/2014', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.company       = 'Independent Contractor'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('7/1/2014', '%m/%d/%Y')
job.end_date      = Date.strptime('2/1/2015', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.company       = 'Medlytix'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('9/1/2015', '%m/%d/%Y')
job.end_date      = Date.strptime('9/1/2015', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Middleware Software Engineer'
job.company       = 'Cisco Systems'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('2/1/2012', '%m/%d/%Y')
job.end_date      = Date.strptime('7/1/2013', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.company       = 'TVWorks Comcast'
job.city          = 'San Francisco'  
job.state         = 'CA' 
job.start_date    = Date.strptime('8/1/2011', '%m/%d/%Y')
job.end_date      = Date.strptime('1/1/2012', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Middleware Software Engineer'
job.company       = 'Cisco Systems'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('7/1/2010', '%m/%d/%Y')
job.end_date      = Date.strptime('7/1/2011', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Research Assistant'
job.company       = 'Georgia Tech Research Institute'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('1/1/2010', '%m/%d/%Y')
job.end_date      = Date.strptime('7/1/2010', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Research Assistant'
job.company       = 'Georia Institute of Technology'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('5/1/2004', '%m/%d/%Y')
job.end_date      = Date.strptime('7/1/2010', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Researcher'
job.company       = 'Motorola Labs'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('1/1/2009', '%m/%d/%Y')
job.end_date      = Date.strptime('8/1/2009', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Instructor'
job.company       = 'Georgia Institute of Technology'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('8/1/2005', '%m/%d/%Y')
job.end_date      = Date.strptime('8/1/2006', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Teaching Assistant'
job.company       = 'Georgia Institute of Technology'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('1/1/2002', '%m/%d/%Y')
job.end_date      = Date.strptime('8/1/2005', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Systems Engineer'
job.company       = 'Lucent Technologies'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('2/1/1999', '%m/%d/%Y')
job.end_date      = Date.strptime('8/1/2001', '%m/%d/%Y')
job.current_job   = false
job.user_id       = user.id
job.save! 
jobs.push(job)

# Tasks
tasks = []
task = Task.new
task.description    = 'TODO'
task.job_id         = jobs[0].id
task.save!
tasks.push(task)

# Skills
skills = []
skill = Skill.new 
skill.name              = 'Python'   
skill.description       = 'Python programming'
skill.category          = 'programming langauge'
skill.currently_using   = true
skill.last_used         = nil
skill.skill_level       = 9
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'Ruby'   
skill.description       = 'Ruby programming'
skill.category          = 'programming langauge'
skill.currently_using   = true
skill.last_used         = nil
skill.skill_level       = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'Java'   
skill.description       = 'Java programming'
skill.category          = 'programming langauge'
skill.currently_using   = false
skill.last_used         = Date.strptime('11/1/2014', '%m/%d/%Y')
skill.skill_level       = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'C++'   
skill.description       = 'C++ programming'
skill.category          = 'programming langauge'
skill.currently_using   = false
skill.last_used         = Date.strptime('7/1/2014', '%m/%d/%Y')
skill.skill_level       = 5
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'Javascript'   
skill.description       = 'Javascript programming'
skill.category          = 'programming langauge'
skill.currently_using   = true
skill.last_used         = nil
skill.skill_level       = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'Bash'   
skill.description       = 'Bash scripting'
skill.category          = 'programming langauge'
skill.currently_using   = true
skill.last_used         = nil
skill.skill_level       = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'Go'   
skill.description       = 'Go programming'
skill.category          = 'programming langauge'
skill.currently_using   = false
skill.last_used         = Date.strptime('2/1/2013', '%m/%d/%Y')
skill.skill_level       = 3
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'HTML'   
skill.description       = 'HTML programming'
skill.category          = 'programming langauge'
skill.currently_using   = true
skill.last_used         = nil
skill.skill_level       = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name              = 'CSS'   
skill.description       = 'CSS programming'
skill.category          = 'programming langauge'
skill.currently_using   = true
skill.last_used         = nil
skill.skill_level       = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'SQL'   
skill.description      = 'SQL programming'
skill.category         = 'programming langauge'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'EBIF'   
skill.description      = 'EBIF programming'
skill.category         = 'programming langauge'
skill.currently_using  = false
skill.last_used        = Date.strptime('8/1/2014', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'XML'   
skill.description      = 'XML programming'
skill.category         = 'programming langauge'
skill.currently_using  = false
skill.last_used        = Date.strptime('8/1/2014', '%m/%d/%Y')
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'JSON'   
skill.description      = 'JSON programming'
skill.category         = 'programming langauge'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Perl'   
skill.description      = 'Perl programming'
skill.category         = 'programming langauge'
skill.currently_using  = false
skill.last_used        = Date.strptime('8/1/2012', '%m/%d/%Y')
skill.skill_level      = 3
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'SASS'   
skill.description      = 'SASS programming'
skill.category         = 'programming langauge'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 3
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'R'   
skill.description      = 'R programming'
skill.category         = 'programming langauge'
skill.currently_using  = false
skill.last_used        = Date.strptime('8/1/2015', '%m/%d/%Y')
skill.skill_level      = 4
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'PHP'   
skill.description      = 'PHP programming'
skill.category         = 'programming langauge'
skill.currently_using  = false
skill.last_used        = Date.strptime('8/1/2015', '%m/%d/%Y')
skill.skill_level      = 3
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Django'   
skill.description      = 'Django web framework'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('10/1/2015', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Flask'   
skill.description      = 'Flask web framework'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('4/1/2015', '%m/%d/%Y')
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Ruby on Rails'   
skill.description      = 'Ruby on Rails web framework'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Bootstrap'   
skill.description      = 'Bootstrap UI library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Android'   
skill.description      = 'Android platform'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('1/1/2015', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'OCAP'   
skill.description      = 'OCAP platform'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 5
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'RDK'   
skill.description      = 'RDK platform'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 4
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Boost'   
skill.description      = 'Boost libraries'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 4
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'STL'   
skill.description      = 'STL'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Matplotlib'   
skill.description      = 'Matplotlib graphing library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'D3'   
skill.description      = 'D3 visualization library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 5
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'TestNG'   
skill.description      = 'TestNG testing library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = false
skill.last_used        = Date.strptime('1/1/2012', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Junit'   
skill.description      = 'Junit test library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = Date.strptime('1/1/2012', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Numpy'   
skill.description      = 'Numpy matrix library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Pandas'   
skill.description      = 'Pandas dataframe library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Seaborn'   
skill.description      = 'Seaborn graphing library'
skill.category         = 'libraries and frameworks'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 5
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'TCP/IP'   
skill.description      = 'TCP/IP networking stack'
skill.category         = 'networking and telecommunication'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'UDP for multimedia'   
skill.description      = 'UDP for multimeia'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'IMS'   
skill.description      = 'IMS'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'SIP'   
skill.description      = 'Session Initiation Protocol'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'RTP'   
skill.description      = 'Realtime Protocol'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Socket programming'   
skill.description      = 'Socket level programming'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 6
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'SOAP'   
skill.description      = 'SOAP protocol'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'REST'   
skill.description      = 'REST protocol'
skill.category         = 'networking and telecommunication'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 9
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Various MAC layers'   
skill.description      = 'MAC layer implementation'
skill.category         = 'networking and telecommunication'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Linux'   
skill.description      = 'Linux OS'
skill.category         = 'other'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 9
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'OSX'   
skill.description      = 'OSX OS'
skill.category         = 'other'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Arduino'   
skill.description      = 'Arduino embedded dev'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('1/1/2013', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Raspberry Pi'   
skill.description      = 'Raspberry Pi dev board'
skill.category         = 'other'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Oprofile'   
skill.description      = 'Oprofile profiler'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 8
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Valgrind'   
skill.description      = 'Valgrind profiler'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 4
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'LTTng'   
skill.description      = 'LTTng profiler'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 4
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Maven'   
skill.description      = 'Maven build tool'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'BitBake'   
skill.description      = 'BitBake build tool'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2013', '%m/%d/%Y')
skill.skill_level      = 3
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'Gradle'   
skill.description      = 'Gradle build tool'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('1/1/2015', '%m/%d/%Y')
skill.skill_level      = 5
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'signal processing'   
skill.description      = 'Signal processing'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('1/1/2014', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'machine learning'   
skill.description      = 'Machine learning'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('1/1/2015', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'neural networks'   
skill.description      = 'Neural networks'
skill.category         = 'other'
skill.currently_using  = false
skill.last_used        = Date.strptime('7/1/2010', '%m/%d/%Y')
skill.skill_level      = 7
skill.save!
skills.push(skill)

skill = Skill.new 
skill.name             = 'mvc'   
skill.description      = 'Model View Controller'
skill.category         = 'other'
skill.currently_using  = true
skill.last_used        = nil
skill.skill_level      = 9
skill.save!
skills.push(skill)

# Photos

# Schools
schools = []
school                    = School.new
school.name               = 'Georgia Institute of Technology'   
school.start_date         = Date.strptime('1/1/2002', '%m/%d/%Y')
school.end_date           = Date.strptime('12/1/2004', '%m/%d/%Y')
school.degree             = 'MS'    
school.major              = 'ECE'     
school.gpa                = ''
school.graduation_date    = Date.strptime('12/1/2004', '%m/%d/%Y') 
school.attending          = false 
school.activities         = ''
school.user_id            = user.id    
school.save!
schools.push(school)

school                    = School.new
school.name               = 'Purdue University'   
school.start_date         = Date.strptime('8/1/1994', '%m/%d/%Y')
school.end_date           = Date.strptime('12/1/1998', '%m/%d/%Y')
school.degree             = 'BS'    
school.major              = 'EE'     
school.gpa                = ''
school.graduation_date    = Date.strptime('12/1/1998', '%m/%d/%Y') 
school.attending          = false 
school.activities         = ''
school.user_id            = user.id    
school.save!
schools.push(school)

# Join Tables
# -----------------------------------------------------------------

# UserLink
user_links = []
user_link_range = Array(0..2)

user_link_range.each do |index|
  user_link                 = UserLink.new 
  user_link.user_id         = user.id
  user_link.link_id         = links[index].id
  user_link.save!
  user_links.push(user_link)
end

# UserSkill
user_skills = []
user_skill_range = Array(0..55)
user_skill_range.each do |index|
  user_skill                = UserSkill.new
  user_skill.user_id        = user.id
  user_skill.skill_id       = skills[index].id
  user_skill.save!
  user_skills.push(user_skill)
end

# ProjectSkill
project_skills = []
project_skill_range = Array(0..0)

project_skill_range.each do |index|
  project_skill             = ProjectSkill.new
  project_skill.project_id  = projects[index].id
  project_skill.skill_id    = skills[index].id
  project_skill.save!
  project_skills.push(project_skill)
end

# TaskSkill
task_skills = []
task_skill_range = Array(0..0)

task_skill_range.each do |index|
  task_skill                = TaskSkill.new
  task_skill.task_id        = tasks[index].id
  task_skill.skill_id       = skills[index].id
  task_skill.save!
  task_skills.push(task_skill)
end

# ProjectLink
project_links = []
project_link_range = Array(0..0)

project_link_range.each do |index|
  project_link              = ProjectLink.new 
  project_link.project_id   = projects[index].id
  project_link.link_id      = links[index].id   
  project_link.save!
  project_links.push(project_link)
end

# ProjectPhoto
#project_photos = []
#project_photo_range = []
#
#projects.each_with_index do |project, project_index|
#  Array(0..project_photo_range.sample).each do |index|
#    photo_index = index + project_index * project_photo_range.count
#    photo = photos[photo_index]
#
#    project_photo             = ProjectPhoto.new
#    project_photo.title       = photo.readable_name
#    project_photo.caption     = 'Look at ' + photo.readable_name
#    project_photo.project_id  = project.id
#    project_photo.photo_id    = photo.id
#    project_photo.save!
#    project_photos.push(project_photo)
#  end
#end

## PostPhoto
#post_photos = []
#post_photo_range = []
#
#posts.each_with_index do |post, post_index|
#  Array(0..post_photo_range.sample).each do |index|
#    photo_index = index + post_index * post_photo_range.count
#    photo = photos[photo_index]
#
#    post_photo             = PostPhoto.new
#    post_photo.title       = photo.readable_name
#    post_photo.caption     = 'Look at ' + photo.readable_name
#    post_photo.post_id     = post.id
#    post_photo.photo_id    = photo.id
#    post_photo.save!
#    post_photos.push(post_photo)
#  end
#end

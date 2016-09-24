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
user.about_me               = <<~HEREDOC
                                Of all the places you could have gone you have ended up here. 
                                Welcome to my home here on the web. As an engineer I naturally like to build things.
                                If you do too we may get along. I tend to think most people would like to, but the devil is often in the details.
                                I went to engineering school at Purdue and Georgia Tech but have tried to live by the words of Mark Twain,
                                "Don't let schooling interfere with your education." Day after day I continue to learn and build new things even though time seems to be in short supply these days.
                                Maybe my next project will be more than a prototype.
                                HEREDOC
user.resume_objective       = 'To work on projects in networking, data processing, and machine learning.'
user.professional_title     = 'Software Engineer'
user.save!

# Projects
projects = []
project = Project.new
project.name                = 'Personal Website'             
project.start_date          = Date.strptime('2/1/2016', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = <<~HEREDOC
                                I suppose listing my work on this site is a bit meta. 
                                I used to have a wordpress site that contained all of my work but I changed that out
                                for my own custom built rails site you see here. Unfortunately I don't have a good
                                reason to explain my switch. As a software developer I just felt if I am going to
                                have a website that I might as well just build it myself. In my career I have also 
                                flipped back and forth between using rails and Python for web development. 
                                After starting this project off in Django I switch to rails as still think it 
                                is the most complete framework out there. No thanks node.js. On this site I spent a lot of time 
                                making my web resume look like my latex one and I think it turned out well. Think
                                of this site as my ongoing research platform for putting new ideas and technologies up.
                                HEREDOC
project.user_id             = user.id 
project.save!
projects.push(project)

projects = []
project = Project.new
project.name                = 'Audio Signal Processing'             
project.start_date          = Date.strptime('8/1/2016', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = <<~HEREDOC
                                This research is just starting to get under way. I have a strong background in 
                                signal processing that I gained in grad school at Tech. My goal was to implement 
                                a platform for audio signal capture so I could work on interesting data analysis
                                problems. Working with stock data does really interest me as not having control 
                                of the data collection is a huge hinderance to doing really interesting things. 
                                So far the hardware portion of this has been quite a bear so we will have to see 
                                how far this goes.
                                HEREDOC
project.user_id             = user.id 
project.save!
projects.push(project)

projects = []
project = Project.new
project.name                = 'Reconfigurable Lexer and Parser for Unstructered Data'             
project.start_date          = Date.strptime('7/1/2013', '%m/%d/%Y')
project.end_date            = Date.strptime('3/1/2014', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = <<~HEREDOC
                                For a while now I have been interesting in gaining more information on working 
                                software systems. This information could be useful for bug detection, security, 
                                or more for use in more advanced formal methods. A while back I wrote some 
                                code to parse logs of many different system. One of the hardest parts of this 
                                problem is how to deal with the unstructured portion of portions of a log. 
                                For the mean time I have put this project on the back burner but would like 
                                to pick it back up again.
                                HEREDOC
project.user_id             = user.id 
project.save!
projects.push(project)

projects = []
project = Project.new
project.name                = 'Data Science Education'             
project.start_date          = Date.strptime('6/1/2013', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = <<~HEREDOC
                                In grad school I had two specializations. The first was networking and the second 
                                signal processing. Networking was my stronger focus at first but working in the DSP 
                                group I was determined to make algorithms that could be game changing. 
                                I spent many years collecting data, running the data through simulations, 
                                and doing analysis of my algorithms. The recent development of data sceince as a highly 
                                desired profession sparked my interest in refreshing my data skills. In addition 
                                to reading books, I have taken a decent amount of online classes and short courses. 
                                Working at Medlytix I was able to do a lot of work on data processing pipelines for batch processes.
                                Maybe all of this will lead to something great, but for the time being I plan on trying
                                to keep my algorithm skills up to date. 
                                HEREDOC
project.user_id             = user.id 
project.save!
projects.push(project)

projects = []
project = Project.new
project.name                = 'Game Networking Algorithm Research'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('9/1/2015', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = <<~HEREDOC
                                When I first started working in the the signal processing lab my professor was interested 
                                in the streaming of 3D meshes since that was what his PhD was on. The first task I was instructed 
                                to do was to network together a very rough virtual environment prototype. 
                                This project led to me researching the networking done in gaming and virtual environments. 
                                Most of the previous research on the topic was done on a technique called dead reckoning. 
                                I spent many years researching this and experimenting with algorithms for the transmitter 
                                and the receiver to lessen the effects of the network on the end user experience. 
                                My research was more specifically done on human hand movement which is different than avatar 
                                movement in a typical first person shooter. I collected data, wrote algorithms and simulations, and eventually a few research papers. 
                                I always thought this problem was a hard one as the current techniques are good but more 
                                advanced techniques are very difficult. My only consolidation to this was in the passing on of 
                                my 100 page proposal to a friend working on the networking at the gaming startup Artillery. 
                                HEREDOC
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
job.title_long    = 'Security Product Software Engineer'
job.company       = 'Tripwire'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('10/1/2016', '%m/%d/%Y')
job.end_date      = nil
job.current_job   = true
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.title_long    = 'Data Products Software Engineer'
job.company       = 'Medlytix'
job.city          = 'Atlanta'  
job.state         = 'GA' 
job.start_date    = Date.strptime('9/1/2014', '%m/%d/%Y')
job.end_date      = Date.strptime('9/30/2015', '%m/%d/%Y')
job.end_date      = nil
job.current_job   = true
job.user_id       = user.id
job.save! 
jobs.push(job)

job = Job.new
job.title         = 'Software Engineer'
job.title_long    = 'Software Engineer'
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
job.title_long    = 'Web Application Software Engineer'
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
job.title_long    = 'Software Engineer'
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
job.title_long    = 'Middleware Software Engineer'
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
job.title_long    = 'Integration Testing Software Engineer'
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
job.title_long    = 'Middleware Software Engineer'
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
job.title_long    = 'Mobile Application Research Assistant'
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
job.title_long    = 'Virtual Environment Networking Research Assistant'
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
job.title_long    = 'Cable Systems Researcher'
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
job.title_long    = 'Course Instructor'
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
job.title_long    = 'Digital Design and Writing Laboratory Teaching Assistant'
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
job.title_long    = 'Telephone Equipment Engineer'
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
task.description    = 'Python techniques on security product.'
task.job_id         = jobs[0].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Python techniques on security product.'
task.job_id         = jobs[0].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Python techniques on security product.'
task.job_id         = jobs[0].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Created a new batch data processing pipeline in Python and luigi to for data analysis and reporting.'
task.job_id         = jobs[1].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Implemented various features for mutliple different Ruby on Rails web applications used for data analysis.'
task.job_id         = jobs[1].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed a dashboard in Javascript, SVG, and D3 to give clients an overview of the various ways our software has helped to bring in new revenue.'
task.job_id         = jobs[1].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed and built an EBIF application and associated Python Flask server for STB data collection.'
task.job_id         = jobs[2].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Implemented software with Fabric and Ansible to help customers automate their infrastructure deployment.'
task.job_id         = jobs[2].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Created various application servers for customers using Bootstrap, Django, Flask, and PHP.'
task.job_id         = jobs[2].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Implemented various features in Ruby on Rails and Javascript for the main Mannheim auction web site.'
task.job_id         = jobs[3].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Worked in an agile extreme programming environment and learned various different software development techniques such as pair programming and TDD.'
task.job_id         = jobs[3].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed and built a Python Django social network for software engineering with a rich user interface utilizing bootstrap and D3.'
task.job_id         = jobs[4].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Implemented numerous Python Flask applications exploring different web site designs.'
task.job_id         = jobs[4].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Researched machine learning and built a custom algorithm for more accurate software engineering metrics.'
task.job_id         = jobs[4].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Helped port the C/Java RI OCAP middleware stack and Comcast RDK platform to Cisco hardware.'
task.job_id         = jobs[5].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed tests in Python, Bash, and C++ to measure and improve the RDK’s performance.'
task.job_id         = jobs[5].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Created unique analytic techniques using statistics, graphics, and various linux tools such as oprofile to investigate RDK performance bottlenecks.'
task.job_id         = jobs[5].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Wrote tests in Java and TestNG for system integration testing of cable network infrastructure.'
task.job_id         = jobs[6].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Analyzed cable system servers and server architecture to create test plans and test cases for important components.'
task.job_id         = jobs[6].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Studied cable systems and the specifics of Comcast’s cable tv infrastructure.'
task.job_id         = jobs[6].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Performed debugging of the C/Java OCAP middleware stack to reduce bugs, improve performance, and to help design a better implementation.'
task.job_id         = jobs[7].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed tests in Python, Perl, and Bash to measure and improve OCAP’s application bootup, channel change, and general performance.'
task.job_id         = jobs[7].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Implemented an Android application to detect other devices and signal a custom video server to enable video forwarding.'
task.job_id         = jobs[8].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed and implemented a VLC video server to intelligently switch video between devices with multiple different form factors.'
task.job_id         = jobs[8].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Researched the use of interactive television and the various different vendor’s interactive television solutions.'
task.job_id         = jobs[8].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Created various unique signal processing algorithms to reduce the effect of network delay and jitter. Various machine learning techniques were compared to traditional dead reckoning for state prediction and distribution.'
task.job_id         = jobs[9].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Architected and programmed various applications and tools in C++ and Python for the proposed research. The software included a 3D animation viewer in C++ and Java, a 3D collaborative virtual environment in C++, a simulator for testing signal processing algorithms in Python, and a Neural Network simulation using C#.'
task.job_id         = jobs[9].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Integrated multiple complex sensing hardware systems into the custom collaborative virtual environment.'
task.job_id         = jobs[9].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Built a Ruby on Rails application linking semantic web content to video allowing a richer television viewing experience on a second screen.'
task.job_id         = jobs[10].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Designed and implemented multiple OCAP Java applications to illustrate good paradigms for interactive television applications and interesting future research directions.'
task.job_id         = jobs[10].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Analyzed an internal SIP social networking application to determine the feasibility of porting it to run on various OCAP STBs.'
task.job_id         = jobs[10].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Formulated syllabus, tests, and lectures to teach the most important circuit analysis techniques.'
task.job_id         = jobs[11].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Lectured on electronic circuits and planned classroom activities for junior level engineering students.'
task.job_id         = jobs[11].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Helped students in the art of circuit analysis illustrating standard engineering techniques.'
task.job_id         = jobs[11].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Responsible for the operation of a digital design laboratory. In addition was also responsible for helping to manage the technical writing laboratory and formulate the writing curriculum.'
task.job_id         = jobs[12].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Instructed students in technical writing details and the proper formatting of laboratory results.'
task.job_id         = jobs[12].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Administered quizzes, graded students work, and gave students feedback on ways to improve their writing style.'
task.job_id         = jobs[12].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Worked with traffic engineers, installers, and factory personal to complete telephone equipment orders for 5ESS switches and other central office equipment.'
task.job_id         = jobs[13].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Trained in telecommunication systems fundamentals and the details of Lucent’s switching equipment.'
task.job_id         = jobs[13].id
task.save!
tasks.push(task)

tasks = []
task = Task.new
task.description    = 'Programmed a tool to bring a graphical interface to the equipment configuration process.'
task.job_id         = jobs[13].id
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
school.degree_long        = 'MS in Electrical and Computer Engineering'    
school.major              = 'ECE'     
school.gpa                = ''
school.city               = 'Atlanta'
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
school.degree_long        = 'BS in Electrical Engineering'    
school.major              = 'EE'     
school.gpa                = ''
school.city               = 'West Lafayette'
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

seeds_path = File.join(Rails.root, 'db', 'seeds', 'variables', 'seed_variables')

require seeds_path


# Models
# -----------------------------------------------------------------

# Users
user = User.new
user.email                  = 'gpburdell@gmail.com'
user.password               = 'valid_password'
user.password_confirmation  = 'valid_password'
user.username               = 'gpburdell'
user.first_name             = 'George'
user.last_name              = 'Burdell'
user.phone_number           = '4045555555'
user.title                  = 'Software Director'
user.about_me               = SeedVariables::lorem_str(2)
user.resume_objective       = SeedVariables::bacon_str(2)
user.professional_title     = 'Software Engineer'
user.save!

# Projects
projects = []
project = Project.new
project.name                = 'Personal Website'             
project.start_date          = Date.strptime('9/1/2015', '%m/%d/%Y')
project.end_date            = Date.strptime('7/1/2014', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::lorem_str(3)
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Senior Design Project'             
project.start_date          = Date.strptime('2/1/2014', '%m/%d/%Y')
project.end_date            = Date.strptime('8/1/2013', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::bacon_str(2)
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Junior Design Project'             
project.start_date          = Date.strptime('11/1/2013', '%m/%d/%Y')
project.end_date            = Date.strptime('5/1/2012', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::lorem_str(4)
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Sophmore Design Project'             
project.start_date          = Date.strptime('5/1/2012', '%m/%d/%Y')
project.end_date            = Date.strptime('6/1/2011', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::bacon_str(5)
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Freshman Design Project'             
project.start_date          = Date.strptime('8/1/2011', '%m/%d/%Y')
project.end_date            = Date.strptime('4/1/2010', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::lorem_str(2) 
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'Summer Computer Club Game Engine'             
project.start_date          = Date.strptime('12/1/2010', '%m/%d/%Y')
project.end_date            = Date.strptime('2/1/2009', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::bacon_str(3)  
project.user_id             = user.id 
project.save!
projects.push(project)

project = Project.new
project.name                = 'High School Math Final Design'             
project.start_date          = Date.strptime('10/1/2009', '%m/%d/%Y')
project.end_date            = Date.strptime('5/1/2008', '%m/%d/%Y')
project.short_description   = 'TODO'
project.long_description    = SeedVariables::lorem_str(5)  
project.user_id             = user.id 
project.save!
projects.push(project)

# Posts
posts = []
post = Post.new
post.title      = 'Freshman Year'
post.text       = SeedVariables.bacon_str(4)
post.user_id    = user.id
post.save!
posts.push(post)

post = Post.new
post.title      = 'Sophmore Year'
post.text       = SeedVariables.lorem_str(2)
post.user_id    = user.id
post.save!
posts.push(post)

post = Post.new
post.title      = 'Junior Year'
post.text       = SeedVariables.bacon_str(3)
post.user_id    = user.id
post.save!
posts.push(post)

post = Post.new
post.title      = 'Senior Year'
post.text       = SeedVariables.lorem_str(4)
post.user_id    = user.id
post.save!
posts.push(post)

post = Post.new
post.title      = 'Beyond!!'
post.text       = SeedVariables.bacon_str(5)
post.user_id    = user.id
post.save!
posts.push(post)

# Links
links = []
link = Link.new
link.text     = 'My linkedin page'
link.url      = 'https://www.linkedin.com/in/ramblingreckhelluvaengineer'
link.type_of  = 'resume'
link.save!
links.push(link)

link = Link.new
link.text     = 'My github page'
link.url      = 'https://github.com/georgeburdell'
link.type_of  = 'resume'
link.save!
links.push(link)

link = Link.new
link.text     = 'My wikipedia page'
link.url      = 'https://en.wikipedia.org/wiki/George_P._Burdell'
link.type_of  = 'personal'
link.save!
links.push(link)

link = Link.new
link.text     = 'My twitter account'
link.url      = 'https://twitter.com/georgepburdell'
link.type_of  = 'personal'
link.save!
links.push(link)


# Jobs
jobs = []
job = Job.new
job.title         = 'Software Engineer'
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
job.title_long    = 'Middleware Software Engineer on Stack'
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
jobs.each do |job|
  task = Task.new
  task.description    = 'Create Python Flask web site for QA testing group.'
  task.job_id         = job.id
  task.save!
  tasks.push(task)

  task = Task.new
  task.description    = 'Designed and architected Java app for consumer electronics industry.'
  task.job_id         = job.id
  task.save!
  tasks.push(task)

  task = Task.new
  task.description    = 'Wrote bash scripts for system integration tests.'
  task.job_id         = job.id
  task.save!
  tasks.push(task)
end


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
photos = []
photo                   = Photo.new
photo.name              = 'alley_coast.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'bavarian_castle.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'bear_family.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'car_enter_tunnel.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'central_park_above.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'chicago_from_water.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'chicago_skyline.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'coast_n_dune.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'coast_village.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'continental_front.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'everest_base.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'girl_face.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'green_mountains.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'hipster_coffee_drip.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'lion_face.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'man_by_river.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'mountain_fog.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'mountain_into_ocean.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'mountain_sunrise.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'ole_notes.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'open_books.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'real_bambi.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'road_through_green_mountains.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'rocks_by_coast.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'sittin_in_grass.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'soccer_pitch_above.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'steering_junk.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'truck_n_wheat.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

photo                   = Photo.new
photo.name              = 'wave_close.jpg'   
photo.user_id           = user.id
photo.save!
photos.push(photo)

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
user_link_range = Array(0..3)

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
project_photos = []
project_photo_range = [2, 3, 4]

projects.each_with_index do |project, project_index|
  Array(0..project_photo_range.sample).each do |index|
    photo_index = index + project_index * project_photo_range.count
    photo = photos[photo_index]

    project_photo             = ProjectPhoto.new
    project_photo.title       = photo.readable_name
    project_photo.caption     = 'Look at ' + photo.readable_name
    project_photo.project_id  = project.id
    project_photo.photo_id    = photo.id
    project_photo.save!
    project_photos.push(project_photo)
  end
end

# PostPhoto
post_photos = []
post_photo_range = [2, 3, 4]

posts.each_with_index do |post, post_index|
  Array(0..post_photo_range.sample).each do |index|
    photo_index = index + post_index * post_photo_range.count
    photo = photos[photo_index]

    post_photo             = PostPhoto.new
    post_photo.title       = photo.readable_name
    post_photo.caption     = 'Look at ' + photo.readable_name
    post_photo.post_id     = post.id
    post_photo.photo_id    = photo.id
    post_photo.save!
    post_photos.push(post_photo)
  end
end
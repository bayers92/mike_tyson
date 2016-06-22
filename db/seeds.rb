# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



### For deseeding action
if ENV['deseed']

	Sex.delete_all
	State.delete_all
	Visa.delete_all
	Language.delete_all
	Demographic.delete_all
	Uconcentration.delete_all

	Industry.delete_all
	Mconcentration.delete_all
	Region.delete_all
	City.delete_all
	Size.delete_all
	Travel.delete_all
	Balance.delete_all


	# NOT deleted
	# Skill
	# Undergrad

	# No longer used
	# Career.delete_all


## Seeding action
else

# GENDER
	sex_list = ["Male", "Female", "Other"]

	sex_list.each do |tag|
		Sex.new(:name => tag).save
	end


# HOME STATE
	state_list = ["Alabama",
	"Alaska",
	"Arizona",
	"Arkansas",
	"California",
	"Colorado",
	"Connecticut",
	"Delaware",
	"Florida",
	"Georgia",
	"Hawaii",
	"Idaho",
	"Illinois",
	"Indiana",
	"Iowa",
	"Kansas",
	"Kentucky",
	"Louisiana",
	"Maine",
	"Maryland",
	"Massachusetts",
	"Michigan",
	"Minnesota",
	"Mississippi",
	"Missouri",
	"Montana",
	"Nebraska",
	"Nevada",
	"New Hampshire",
	"New Jersey",
	"New Mexico",
	"New York",
	"North Carolina",
	"North Dakota",
	"Ohio",
	"Oklahoma",
	"Oregon",
	"Pennsylvania",
	"Rhode Island",
	"South Carolina",
	"South Dakota",
	"Tennessee",
	"Texas",
	"Utah",
	"Vermont",
	"Virginia",
	"Washington",
	"West Virginia",
	"Wisconsin",
	"Wyoming"]

	state_list.each do |tag|
		State.new(:name => tag).save
	end


# Visa 
	visa_list = ["Yes", "No"]

	visa_list.each do |tag|
		Visa.new(:name => tag).save
	end


# LANGUAGES
	language_list = ["English",
"Spanish",
"Hindi/Urdu",
"Italian",
"French",
"Mandarin",
"Portugese",
"Bengali",
"Russian",
"Japanese",
"German",
"Italian"]

	language_list.each do |tag|
		Language.new(:name => tag).save
	end


# Demographics
	demographic_list = ["Asian (Not Indian/Pakistani)",
"Black",
"Indian/Pakistani",
"Hispanic/Latino",
"Native American",
"White",
"Other"]

	demographic_list.each do |tag|
		Demographic.new(:name => tag).save
	end


	#  Skills
	#  NO SEEDS


	#  Name of undergrad
	#  NO SEEDS


	# Undergrad Concentration
	# 'Uconcentration'
	uconc_list = ["Accounting",
"Business",
"Agricultural",
"Business Management",
"Agricultural Sciences",
"American Studies",
"Liberal Arts",
"Animal Sciences",
"Agricultural Sciences",
"Anthropology",
"Applied Visual Arts",
"Biochemistry and Biophysics",
"Bioengineering",
"BioHealth Science",
"Biology",
"Bioresource Research",
"Botany",
"Business Administration",
"Business Information Systems",
"Chemical Engineering",
"Chemistry",
"Civil Engineering",
"Computer Science",
"Construction Engineering Management",
"Crop Science and Soil Science",
"Digital Communication Arts",
"Earth Sciences",
"Ecological Engineering",
"Economics",
"Education",
"Electrical and Computer Engineering",
"Energy Systems Engineering",
"English",
"Environmental Economics and Policy",
"Environmental Engineering",
"Environmental Sciences",
"Ethnic Studies",
"Finance",
"Fisheries and Wildlife Science",
"Food Science and Technology",
"Forest Engineering",
"Forest Engineering/Civil Engineering",
"Forestry/Management Option",
"Forestry/Operations Option",
"French",
"General Agriculture",
"General Engineering",
"Graphic Design",
"German",
"History",
"Horticulture",
"Hospitality Management",
"Human Development and Family Sciences",
"Industrial Engineering",
"Innovation Management",
"Interior Design",
"Kinesiology",
"Liberal Studies.",
"Management",
"Manufacturing Engineering",
"Marketing",
"Mathematics",
"Mechanical Engineering",
"Merchandising Management",
"Microbiology",
"Music",
"Natural Resources",
"Nuclear Engineering",
"Nutrition",
"Philosophy",
"Physics",
"Political Science",
"Pre-Pharmacy",
"Psychology",
"Radiation Health Physics",
"Rangeland Sciences",
"Recreation Resource Management",
"Religious Studies",
"Renewable Materials",
"Social Science",
"Sociology",
"Spanish",
"Speech",
"Sustainability",
"Tourism and Outdoor Leadership",
"Women, Gender and Sexuality Studies",
"Zoology"]

	uconc_list.each do |tag|
		Uconcentration.new(:name => tag).save
	end


# DESIRED INDUSTRY
	industry_list = ["Accounting",
"Airline",
"Aviation",
"Alternative Dispute Resolution",
"Alternative Medicine",
"Animation",
"Apparel In Fashion",
"Architecture And Planning",
"Arts And Crafts",
"Automated",
"Aviation And Aerospace",
"Banking",
"Biotechnology",
"Broadcast Media",
"Building Materials",
"Business Supplies And Equipment",
"Capital Markets",
"Chemicals",
"Civic And Social Organization",
"Civil Engineering",
"Commercial Real Estate",
"Computer And Network Security",
"Computer Games",
"Computer Hardware",
"Computer Networking",
"Computer Software",
"Construction",
"Consumer Electronics",
"Consumer Goods",
"Consumer Services",
"Cosmetics",
"Dairy",
"Defense And Space",
"Design",
"Education Management",
"E-Learning",
"Electronic Manufacturing",
"Entertainment",
"Environmental Services",
"Events And Services",
"Executive Office Facilities Services",
"Farming",
"Financial Services",
"Fine Arts",
"Fishery",
"Food And Beverages",
"Food Production",
"Fundraising",
"Furniture",
"Gambling And Casinos",
"Glass Ceramics And Concrete",
"Government Administration",
"Government Relations",
"Graphic",
"Design",
"Health And Fitness",
"Healthcare",
"Hospitality",
"Human Resources",
"Import And Export",
"Individual And Family Services",
"Industrial Automation",
"Information Services",
"Information Technology And Services",
"Insurance Internal Affairs",
"International Trade And Development",
"Internet Investment Banking",
"Investment Management",
"Judiciary",
"Law Practice",
"Legal Services",
"Legislative Office",
"Leisure Travel And Tourism",
"Libraries",
"Logistics And Supply Chain",
"Luxury Goods And Jewelry",
"Machinery",
"Management Consulting",
"Maritime",
"Marketing And Advertising",
"Market Research",
"Mechanical Or Industrial Engineering",
"Media Production",
"Medical Devices",
"Medical Practice",
"Mental Health Care",
"Military",
"Mining And Metals",
"Motion Picture And Film",
"Museums And Institutions",
"Music",
"Nanotechnology",
"Newspapers",
"Nonprofit",
"Organizational Management",
"Oil And Energy",
"Online Media",
"Outsourcing",
"Off Shoring",
"Package Freight Delivery",
"Packaging In Containers",
"Paper And Forest Products",
"Performing Arts",
"Pharmaceuticals",
"Philanthropy",
"Photography",
"Plastics",
"Political Organizations",
"Primary Secondary Education",
"Printing",
"Professional Training And Coaching",
"Program Development",
"Public Policy ",
"Public Relations And Communications",
"Public Safety",
"Publishing",
"Real Estate",
"Recreational Facilities And Services",
"Religious Institutions",
"Renewables And Environment",
"Research",
"Restaurants",
"Retail Secretary And Investigations",
"Semi Conductors",
"Shipbuilding",
"Sporting Goods",
"Sports Staffing And Recruiting",
"Supermarkets",
"Telecommunications",
"Textiles",
"Think Tanks",
"Tobacco",
"Translation Of Localization",
"Transportation",
"Trucking & Railroad",
"Utilities",
"Venture Capital And Private Equity",
"Veterinary",
"Warehousing Wholesale",
"Wine And Spirits",
"Wireless",
"Writing And Editing"]

	industry_list.each do |tag|
		Industry.new(:name => tag).save
	end

# MBA concentration
# 'Mconcentration'
	mconc_list = ["Accounting",
"Asset Management / Private Equity",
"Brand Management",
"Economics",
"Entrepreneurship",
"Finance",
"General Management",
"Human Capital",
"Informational Technology",
"International Business",
"Marketing",
"Organizational Strategy",
"Real estate",
"Statistics",
"Supply Chain"]

	mconc_list.each do |tag|
		Mconcentration.new(:name => tag).save
	end

# REGION
# 'Region'
	region_list = ["Northeast",
"South",
"Southeast",
"West Coast",
"Midwest",
"Southwest",
"International"]

	region_list.each do |tag|
		Region.new(:name => tag).save
	end

	# City size preference
	# 'City'
	city_list = ["Small", "Mid-size", "Big"]
	city_list.each do |tag|
		City.new(:name => tag).save
	end


# Company size preference
# 'Size'
	size_list = ["Small (0-10 employees)", "Medium (11-500)", "Large (>500)"]

	size_list.each do |tag|
		Size.new(:name => tag).save
	end


# Willingness to travel
# 'Travel'

	t_list = ["<10%", "10-25%", "25-50%", ">50%"]
	t_list.each do |tag|
		Travel.new(:name => tag).save
	end

# Work/Life Balance
# Balance
	b_list = ["I highly value work life balance", "I value work life balance but don't mind sprinting for projects", "I like high intensity all the time"]
	b_list.each do |tag|
		Balance.new(:name => tag).save
	end


end

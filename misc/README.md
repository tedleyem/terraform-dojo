Please review what is below before your interview tomorrow. The main focus will be AWS, Terraform and making sure you have good communication. They could touch on PAAS and ISS (Internet Information Services) as well. The panel will more than likely not be on camera. They were not on camera for the interview this past Friday.

There will be some light Terraform coding you will share your screen for at the end of the interview. Previous consultants were not experienced with the nuance of shared service in an enterprise environment or able to keep pushing forward without direction.

Please be on 2-3 minutes early. They will want to see you in the room prior to them joining. If they have to wait on you to come on or you join right at 2pm or after it will count against you. Make sure there is nothing distracting in your background and you are dressed professionally.

Best,

Top Skills' Details

1. AWS DevOps Experience
2. Experience with Terraform
3. Understanding API's and how they are used
4. Solid CI/CD (automation) experience
5. Someone who understands SaaS, PaaS, IaaS offerings and how to select the best solutions. (understand cloud agnostic SaaS offering, Azure automation, etc)

Requirements:
• (1) Fully Terraformed environments (Eng + Dev)
Note: This one is required for ARC Approval only because it is the means by which we solve 2a, 2b, and 3.
• Need a person allocated 100% from PE to lead this

• Need dedication from development team to help anchor on GitFlow and automate branching strategy for code and IaC

• (2a) The Hub should be pulled out into its own VPC (Eng + Dev)

• (2b) The Test environment should NOT be using the Prod account. - show stopper (Eng + Dev)

• (3) Demonstration of proper handling of PII (data privacy sign off - need to have) - show stopper

• (4) Need to stand up AWS API gateway for inbound API calls. (Dev)

They are a shared service so there’s not 1 specific project they will support, but a  platform within EDGE business – Likely Payroll or Point of Sale.

# Understanding API's and how they are used
What is an API?

API, or an Application Program Interface is a structured set of code that is used to
pull or use specific data from an application to be used somewhere else.

An example would be using google's api to gather login information to be used on a
social media site like twitter. Twitter can now leverage login information from google to use
as a login method for access to a users account instead of creating their own CRUD algorithm.

AWS DEFINITION:
APIs are mechanisms that enable two software components to communicate with each other using a set of definitions and protocols. For example, the weather bureau’s software system contains daily weather data. The weather app on your phone “talks” to this system via APIs and shows you daily weather updates on your phone.

# BLog example:
AWS API Gateway with Terraform
https://medium.com/onfido-tech/aws-api-gateway-with-terraform-7a2bebe8b68f


# DOJO RESOURCES
https://registry.terraform.io/modules/terraform-aws-modules/apigateway-v2/aws/latest

## PII
Personal identification numbers: social security number (SSN), passport number, driver's license number, taxpayer identification number, patient identification number, financial account number, or credit card number. Personal address information: street address, or email address. Personal telephone numbers.


## AWS API GATEWAY
The pricing model for both Application Load Balancer and Network Load Balancer include an hourly price to keep the load balancers available for accepting incoming connections at all times. In contrast, API Gateway charges for each request separately. This has the effect that, if no requests come in, there are no charges. Under high traffic loads, an Application Load Balancer or Network Load Balancer can handle a greater volume of requests at a cheaper per-request price than API Gateway



# CHALLENGE
* Create an AWS API gateway for inbound API calls in dev env
* Create an AWS API gateway for inbound API calls in prod env
* Demonstration of proper handling of PII (data privacy sign off - need to have)
* Fully Terraformed environments (Eng + Dev) Note: This one is required for ARC Approval only because it is the means by which we solve 2a, 2b, and 3.
* Need a person allocated 100% from PE to lead this
* Need dedication from development team to help anchor on GitFlow and automate branching strategy for code and IaC
*  (2a) The Hub should be pulled out into its own VPC (Eng + Dev)

[x] Create project
[x] Create workspace for project (dev/prod)
[x] create variables for dev and prod if needed
[x] create .gitignore
[x] provide link in comments
[x] give example of PII data: Personally identifiable information (PII) is information that, when used alone or with other relevant data, can identify an individual.


Requirements:
[] • (1) Fully Terraformed environments (Eng + Dev)
Note: This one is required for ARC Approval only because it is the means by which we solve 2a, 2b, and 3.
[] • Need a person allocated 100% from PE to lead this
[] • Need dedication from development team to help anchor on GitFlow and automate branching strategy for code and IaC
[x] • (2a) The Hub should be pulled out into its own VPC (Eng + Dev)
[] • (2b) The Test environment should NOT be using the Prod account. - show stopper (Eng + Dev)
[] • (3) Demonstration of proper handling of PII (data privacy sign off - need to have) - show stopper

[] • (4) Need to stand up AWS API gateway for inbound API calls. (Dev)

They are a shared service so there’s not 1 specific project they will support, but a  platform within EDGE business – Likely Payroll or Point of Sale.

##
* https://registry.terraform.io/providers/hashicorp/aws/2.34.0/docs/resources/acm_certificate

* https://medium.com/onfido-tech/aws-api-gateway-with-terraform-7a2bebe8b68f

* https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop.html


DevOps Coding Test
==================

# Goal

Script the creation of a service, and a health check script to verify it is up and responding correctly.

# Prerequisites

You will need an AWS account. Create one if you don't own one already. You can use free-tier resources for this test.

# The Task

You are required to provision and deploy a new service in AWS. It must:

* Be publicly accessible.
* Run an web server, it can be an out of the box webserver (ie: Nginx, Apache) or any application acting as one.
* Deploy the content. This can be as simple as some static text representing a version number, for example:
3.0.1
or as complex as a full website. You choose. We will not provide the content.

# Mandatory Work

Fork this repository.

* Script your service using your configuration management and/or infrastructure-as-code tool of choice.
* Provision the service in your AWS account.
* Write a health check script that can be run externally
* Alter the README to contain instructions required to:
  * Provision the service.
  * Run the health check script.
* Provide us IAM credentials to log in to the AWS account. If you have other resources in it make sure we can only access what is related to this test.
  * Document each step.
  * Make it easy to install
  * Make it as Cloud provider agnostic as you can - i.e. can we repeat this in Azure or Google Cloud Platform
Once done, give us access to your fork. Feel free to ask questions as you go if anything is unclear, confusing, or just plain missing.

# Extra Credit

We know time is precious, we won't mark you down for not doing the extra credits, but if you want to give them a go...

* Run the service inside a Docker container.
* Make it highly available.
* We value Terraform and rely on it heavily. If you already know TF, we’d love to see you use it.

# Questions

#### What scripting languages can I use?

Anyone you like. You’ll have to justify your decision. We use CloudFormation, Puppet and Python internally. Please pick something you're familiar with, as you'll need to be able to discuss it.

#### Will I have to pay for the AWS charges?

No. You are expected to use free-tier resources only and not generate any charges. Please remember to delete your resources once the review process is over so you are not charged by AWS.

#### What will you be grading me on?

Scripting skills, security, elegance, understanding of the technologies you use, documentation.

#### What will you not take into account?

Brevity. We know there are very simple ways of solving this exercise, but we need to see your skills. We will not be able to evaluate you if you provide five lines of code.

#### Will I have a chance to explain my choices?

If we proceed to a technical interview, we’ll be asking questions about why you made the choices you made. Comments in the code are also very helpful.

#### Why doesn't the test include X?

Good question. Feel free to tell us how to make the test better. Or, you know, fork it and improve it!

#### How long should this take?
There are many ways to solve this problem so it may vary for each candidate and depends how far you want to take it but we are confident the basic requirements can be met with 2-3 hours work.

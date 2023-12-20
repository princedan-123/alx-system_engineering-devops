<h3><center>ALX software engineering task on Database replication and backup</center></h3>
<p>The Task was prepared by Sylvain Kalache, co-founder at Holberton School</p>
<p> The project has a grade weight of 1 and cut across DevOps, SysAdmin, Scripting, Debugging </p>
<p> The project was started by Dec 19, 2023 6:00 AM, must end by Dec 21, 2023 6:00 AM </p>
<h5> Resources </h5>
<p>Read or watch:</p>
<ul>
<li><a href="https://www.digitalocean.com/community/tutorials/how-to-choose-a-redundancy-plan-to-ensure-high-availability#sql-replication">What is a primary-replica cluster</a></li>
<li><a href="https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql">MySQL primary replica setup</a></li>
<li><a href="https://www.databasejournal.com/ms-sql/developing-a-sql-server-backup-strategy">Build a robust database backup strategy</a></li>
</ul>
<h5>Learning Objectives </h5>
<p>At the end of this project, you are expected to be able to explain to anyone, without the help of Google:</p>
<h5>General </h5>
<ul>
<li>What is the main role of a database</li>
<li>What is a database replica</li>
<li>What is the purpose of a database replica</li>
<li>Why database backups need to be stored in different physical locations</li>
<li>What operation should you regularly perform to make sure that your database backup strategy actually works</li>
<h5><strong>Copyright - Plagiarism</strong> </h5>
<ul>
<li>You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.</li>
<li>You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
</li>
<li>You are not allowed to publish any content of this project.</li>
<li>Any form of plagiarism is strictly forbidden and will result in removal from the program.</li>
</ul>
</ul>
<p><h5>Requirements</h5> </p>
<p><h5>General</h5>
<ul>
<li>All your files will be interpreted on Ubuntu 20.04 LTS</li>
<li>All your files should end with a new line</li>
<li>A README.md file at the root of the folder of the project is mandatory</li>
<li>All your Bash script files must be executable</li>
<li>Your Bash scripts must pass Shellcheck without any error</li>
<li>Your Bash scripts must run without error</li>
<li>The first line of all your Bash scripts should be exactly #!/usr/bin/env bash</li>
<li>The second line of all your Bash scripts should be a comment explaining what is the script doing</li>
</ul>
<ul>
<li>Tasks
0. Install MySQL
mandatory
First things first, let’s get MySQL installed on both your web-01 and web-02 servers.

MySQL distribution must be 5.7.x
Make sure that task #3 of your SSH project is completed for web-01 and web-02. The checker will connect to your servers to check MySQL status
Please make sure you have your README.md pushed to GitHub.</li>
<li>
1. Let us in!
In order for us to verify that your servers are properly configured, we need you to create a user and password for both MySQL databases which will allow the checker access to them.

Create a MySQL user named holberton_user on both web-01 and web-02 with the host name set to localhost and the password projectcorrection280hbtn. This will allow us to access the replication status on both servers.
Make sure that holberton_user has permission to check the primary/replica status of your databases.
In addition to that, make sure that task #3 of your SSH project is completed for web-01 and web-02. You will likely need to add the public key to web-02 as you only added it to web-01 for this project. The checker will connect to your servers to check MySQL status
</li>
<li>
2. If only you could see what I've seen with your eyes
In order for you to set up replication, you’ll need to have a database with at least one table and one row in your primary MySQL server (web-01) to replicate from.

Create a database named tyrell_corp.
Within the tyrell_corp database create a table named nexus6 and add at least one entry to it.
Make sure that holberton_user has SELECT permissions on your table so that we can check that the table exists and is not empty.
</li>
<li>3. Quite an experience to live in fear, isn't it?
Before you get started with your primary-replica synchronization, you need one more thing in place. On your primary MySQL server (web-01), create a new user for the replica server.

The name of the new user should be replica_user, with the host name set to %, and can have whatever password you’d like.
replica_user must have the appropriate permissions to replicate your primary MySQL server.
holberton_user will need SELECT privileges on the mysql.user table in order to check that replica_user was created with the correct permissions.
</li>
<li>4. Setup a Primary-Replica infrastructure using MySQL
Having a replica member on for your MySQL database has 2 advantages:

Redundancy: If you lose one of the database servers, you will still have another working one and a copy of your data
Load distribution: You can split the read operations between the 2 servers, reducing the load on the primary member and improving query response speed
Requirements:
MySQL primary must be hosted on web-01 - do not use the bind-address, just comment out this parameter
MySQL replica must be hosted on web-02
Setup replication for the MySQL database named tyrell_corp
Provide your MySQL primary configuration as answer file(my.cnf or mysqld.cnf) with the name 4-mysql_configuration_primary
Provide your MySQL replica configuration as an answer file with the name 4-mysql_configuration_replica
Tips:
Once MySQL replication is setup, add a new record in your table via MySQL on web-01 and check if the record has been replicated in MySQL web-02. If you see it, it means your replication is working!
Make sure that UFW is allowing connections on port 3306 (default MySQL port) otherwise replication will not work.
</li>
<li>5. MySQL backup
What if the data center where both your primary and replica database servers are hosted are down because of a power outage or even worse: flooding, fire? Then all your data would inaccessible or lost. That’s why you want to backup and store them in a different system in another physical location. This can be achieved by dumping your MySQL data, compressing them and storing them in a different data center.

Write a Bash script that generates a MySQL dump and creates a compressed archive out of it.

Requirements:

The MySQL dump must contain all your MySQL databases
The MySQL dump must be named backup.sql
The MySQL dump file has to be compressed to a tar.gz archive
This archive must have the following name format: day-month-year.tar.gz
The user to connect to the MySQL database must be root
The Bash script accepts one argument that is the password used to connect to the MySQL database
</li>
</ul>


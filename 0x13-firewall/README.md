<h3 align="center">Alx project (0x13 Firewall Devops/sys admin task) on ufw utility </h3>
<p>The project tutorial was put together by: Sylvain Kalache, co-founder at Holberton School</p>

<p>The project has a weight of 1 and took place between Dec 18, 2023 6:00 AM and ended before Dec 19, 2023 6:00 AM </p>
<ul>
 <p>Here are the resource(s) for the tasks: Read or watch the following </p>
<li><a href="https://en.wikipedia.org/wiki/Firewall_%28computing%29">What is a firewall</a></li>
</ul>
<p><em><h4>Learning Objectives</h4></em></p>
<p><h4><em>Copyright - Plagiarism</em></h4></p>
<ul>
<li>You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.</li>
<li>You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.</li>
<li>You are not allowed to publish any content of this project.</li>
</ul>
<strong>
<h4>- Any form of plagiarism is strictly forbidden and will result in removal from the program.</h4>
</strong>
<p>General Requirements:</p>
<ul>
<li>Allowed editors: vi, vim, emacs</li>
<li>A README.md file at the root of the repo, containing a description of the repository</li>
<li>A README.md file, at the root of the folder of this project, is mandatory</li>
</ul>
<p><strong>Warning!
Containers on demand cannot be used for this project (Docker container limitation)

Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.</strong></p>

<p>TASKS</>
<ul>
<li>
0. Block all incoming traffic but
mandatory
Let’s install the ufw firewall and setup a few rules on web-01.

Requirements:

The requirements below must be applied to web-01 (feel free to do it on lb-01 and web-02, but it won’t be checked)
Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
22 (SSH)
443 (HTTPS SSL)
80 (HTTP)
Share the ufw commands that you used in your answer file
 </li>
<p>Advanced task</p>
<li>1. Port forwarding
#advanced
Firewalls can not only filter requests, they can also forward them.

Requirements:

Configure web-01 so that its firewall redirects port 8080/TCP to port 80/TCP.
Your answer file should be a copy of the ufw configuration file that you modified to make this happen</li>
</ul>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mohit's Portfolio</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div id="header">
        <div class="container">
            <nav>
                <img src="image/logoPortflio.jpeg" alt="logo" class="logo">
                <ul id="sidemenu">
                    <li><a href="#header">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#portfolio">Portfolio</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><button onclick="window.location.href='login.jsp'">Admin</button></li>
                    <li><h2 onclick="closemenu()">✖</h2></li>
                </ul>
                <h2 onclick="openmenu()">➕</h2>
            </nav>
            <div class="head-text">
                <p>Java Developer</p>
                <h1>Hi, I'm <span>Mohit Singh Patel</span><br> Graduate from <span>Quantum University</span><br>Roorkee , India .
                </h1>
            </div>
        </div>
    </div>
    <!-- ---About Section------- -->
    <div id="about">
        <div class="container">
            <div class="row">
                <div class="about-col1">
                    <img src="image/mohit_img.jpg" alt="about-profie-img">
                </div>
                <div class="about-col2">
                    <h1 class="subtitle">About Me</h1>
                    <p>I’m a passionate web and Java developer with a focus on creating efficient, scalable, and user-friendly applications.I have experience building robust web solutions and optimizing backend systems. Always eager to learn and innovate, I strive to deliver impactful solutions. Let’s connect!</p>
                    <div class="tab-titles">
                        <p class="tab-links active" onclick="opentab('skills')">Skills</p>
                        <p class="tab-links" onclick="opentab('Experience')">Experience</p>
                        <p class="tab-links" onclick="opentab('Education')">Education</p>
                    </div>
                    <div class="tab-contents active-tab" id="skills">
                        <ul>
                           <li><span>Programming Language</span><br>Java</li>
	                       <li><span>Frontend</span><br>HTML5, CSS3, JavaScript</li>
                           <li><span>Backend</span><br>Servlet, JDBC</li>
                           <li><span>Database</span><br>MySQL, SQL</li>
                           <li><span>Tools</span><br>Eclipse, VS Code, Git, GitHub, Apache Tomcat (Basic), Docker (Basic)</li>
                           <li><span>Concepts</span><br>OOP, Collection, Exception Handling, DBMS, Data Structures</li>
                           <li><span>SDLC & Methodologies</span><br>Software Development Life Cycle (SDLC), Agile (Basic)</li>
                        </ul>
                    </div>
                    <div class="tab-contents" id="Experience">
                        <ul>
                            <li><span>January,2023-July-2023</span><br>Trainee at Jspider</li>
                        </ul>
                    </div>
                    <div class="tab-contents" id="Education">
                        <ul>
                            <li><span>2025</span><br>MCA from Quantum University</li>
                            <li><span>2023</span><br>Fullstack Training in JAVA Development</li>
                            <li><span>2023</span><br>BCA from Kanpur Institute Of Technology</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- -----Services----- -->
    <div id="services">
        <div class="container">
            <h1 class="subtitle">My Services</h1>
            <div class="services-list">
                <div>
                    <h2>Web Design</h2>
                    <p>Web development involves creating and maintaining websites, focusing on functionality, performance, and user experience. It combines coding, design, and problem-solving to build dynamic and responsive online platforms tailored to users' needs.</p>
                    <a href="">Learn more</a>
                </div>
                <div>
                    <h2>UI/UX Design</h2>
                    <p> UI design focuses on creating visually appealing and functional interfaces, while UX development ensures a seamless, intuitive experience. Both work together to enhance user satisfaction and engagement. The result is a user-friendly, efficient, and attractive digital product.</p>
                    <a href="">Learn more</a>
                </div>
                <div>
                    <h2>Desktop Application Development</h2>
                    <p>Desktop application development focuses on creating software for desktop computers, providing tailored functionalities. These applications offer fast, reliable performance and direct access to system resources. Ideal for productivity, business, and entertainment needs</p>
                    <a href="">Learn more</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ----Portfolio----- -->
    <div id="portfolio">
        <div class="container">
            <h1 class="subtitle">My Projects</h1>
            <div class="work-list">
                <div class="work">
                    <img src="image/mob img.jpg" alt="mob img">
                    <div class="layer">
                        <h3>Tic-Tac-Toe game</h3>
                        <p>Developed an interactive Tic Tac Toe game with responsive gameplay logic, win detection, and restart functionality to enhance user experience.
                            </p>
                        <a href="https://github.com/Mohitdevo/tic-tac-toe-js" target="_blank">🔗</a>
                    </div>
                </div>
                <div class="work">
                    <img src="image/dev img.jpg" alt="mob img">
                    <div class="layer">
                        <h3>Portfolio Website</h3>
                        <p>Designed and developed a personal portfolio website to showcase projects, technical skills, resume, and contact information with an interactive and responsive user interface.</p>
                        <a href="#">🔗</a>
                    </div>
                </div>
                <div class="work">
                    <img src="image/dev img2.jpg" alt="mob img">
                    <div class="layer">
                        <h3>Clinic BI</h3>
                        <p>Built a Clinic Billing System using Java, JSP, Servlets, JDBC, and MySQL for patient registration, bill management, and efficient inventory data handling.</p>
                        <a href="https://clinicbi-system.onrender.com" target="_blank">🔗</a>
                    </div>
                </div>
            </div>
            <a href="#" class="btn">See more</a>
        </div>
    </div>
    <!-- -------contact-------- -->
    <div id="contact">
        <div class="container">
            <div class="row">
                <div class="contact-left">
                    <h1 class="sub-title">Contact Me</h1>
                    <p><span>📧</span> mohitjdev@gmail.com</p>
                    <p><span>📞</span> +916306091860</p>
                    <div class="social-icon">
                        <a href="https://www.linkedin.com/in/mohit-singh-patel" target="_blank"><img src="image/linkedin.png" alt="linkedin-img"></a>
                        <a href="https://mail.google.com/mail/?view=cm&fs=1&to=mohitjdev@gmail.com" ><img src="image/mail.png" alt=""></a>
                        <a href="https://wa.me/916306091860"><img src="image/whatsapp.png" alt=""></a>
                         <a href="https://github.com/Mohitdevo"><img src="image/github.png" alt="github"></a>
                    </div>
                    <a href="image/newresume.pdf" class="btn btn2" target="_blank">Download CV</a>
                </div>
                <div class="contact-right">
                    <form action="sendMessage" method="post">
                        <input type="name" name="name" placeholder="Your Name" required>
                        <input type="email" name="email" placeholder="Your Email" required>
                        <textarea name="message" rows="6" placeholder="Your Message"></textarea>
                        <input type="submit" class="btn btn2" name="button" value="Submit">
                    </form>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p>Copyright © Mohit. Made with <span> ❤ </span>by Mohit Singh Patel</p>
        </div>
    </div>

    <script>
        var tablinks = document.getElementsByClassName("tab-links");
        var tabcontents = document.getElementsByClassName("tab-contents");
        function opentab(tabname) {
            for (tablink of tablinks) {
                tablink.classList.remove("active");
            }
            for (tabcontent of tabcontents) {
                tabcontent.classList.remove("active-tab");
            }
            event.currentTarget.classList.add("active");
            document.getElementById(tabname).classList.add("active-tab");
        }
    </script>
    <script>
        var sidemenu=document.getElementById("sidemenu");
        function openmenu() {
            sidemenu.style.right="0";
        }
        function closemenu() {
            sidemenu.style.right="-200px"
        }
    </script>
</body>

</html>
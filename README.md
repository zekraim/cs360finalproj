# cs360finalproj
To run this code, you must have Netbeans IDE installed. If you do not have it installed, follow this link: https://netbeans.apache.org/front/main/download/
You must also have XAMPP installed. If you do not have it installed, follow this link: https://www.apachefriends.org/
Then, download all of the files in the repository to your computer.
Inside of the NetBeans IDE, create a new HTML5/JavaScript project. Name it whatever you wish.
Navigate to the public_html folder in your file manager on your PC. The address path should look something like: C:\xampp\htdocs\project_name\public_html
Then paste all the files contained in this github repository that do not end with a .md or .sql tag into the public_html folder.
Then, open XAMPP. Click the start buttons next to the Apache and MySQL modules. You will see a port number in the MySQL row. Now take note of this port number. 
Press the stop button next to the MySQL module.
Open the connection.php file in NetBeans. On line 8, which should read, "if(!$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname, 3307)){" change the number 3307 to the port number listed in XAMPP. Then save the file.
Press the start button next tothe MySQL module.
Now go to your web browser, and type "localhost/phpmyadmin". Click on the "+New" button. Create a table and name it "cs360_project". (If you wish to name it something else, change the value of the variable called "$dbname" from "cs360_project to the name you desire in the connection.php file.)
Now select the table. Click the "Import" button. Click the "Choose File" button and select the "cs360_final_db.sql" file you downloaded from this repository. Then click the "IMPORT" button at the bottom of the page.
Now you can open a new tab and enter "localhost/name of your project". Once the page loads, click the "public_html/" option. 
Now the project should be open.

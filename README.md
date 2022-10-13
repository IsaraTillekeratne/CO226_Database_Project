# OnlineClassroom

How to Run?
-----------

   1. In phpMyAdmin create a database called "my_online_classroom" .
   2. Then import "my_online_classroom.sql" file from project folder and run it in phpMyAdmin.
   3. Place the "Online Class" folder inside htdocs folder. 
   4. Type the url "localhost/Online Class" in your web browser.
   5. Select "Home_Page/" and proceed.

   Note: "root" is the php username & a password is not set.


Funtionality:
-------------

  * When you select "Home_Page/" the home page of the website will appear.
  * In that home page you can select the below options.


  Click "Student Registration" button in home page
  ------------------------------------------------

  * If you are going to log in as a student 1st you need to register. According to your result & the applied stream, you will be registered to the system. If you're already registered you can directly login.

  Click "Login as a student" button in home page
  ----------------------------------------------
  * After registration go back and click "Login as a student" button. 

    Username : "Username" you have given.
    Password : "Password" you have given. 
  
  * Then you will be directed to your account home page.
  * Your personal information will appear & you can edit them if needed.
  * Your class and stream will also appear.
  * Assignments, questions, references & lecture hours posted by the subject teachers will also appear under each subject you follow.
  * Parent meeting links posted by the class teacher can also be seen & parents can join the meetings.

   Click "Login as a Teacher" button in home page
   ----------------------------------------------

  * Enter below fields in teacher login form. 

    Username 
    Password 
    Then select one of the three options class teacher, head teacher or subject teacher. For instance if the username & password you entered belong to a head teacehr, you can click "Login Here As a Head Teacher" button.

    Note that new teachers cannot be added to the system. You should check the functionality with the already entered list of teachers.

   Click "Login Here As a Head Teacher" button in teacher login page
   -----------------------------------------------------------------

  * Head teacher home page will appear.
  * Your personal information will appear & you can edit them if needed.
  * Your stream will also appear.
  * Classes in your stream, class teacher names and emails will appear & you can edit those if needed.
  
  Click "Login Here As a Class Teacher" button in teacher login page
   -----------------------------------------------------------------

  * Class teacher home page will appear.
  * Your personal information will appear & you can edit them if needed.
  * Your stream will also appear.
  * List of student names , their emails, parents and contact numbers will appear.
  * You can post a parent meetings link.

   Click "Login Here As a Subject Teacher" button in teacher login page
   -----------------------------------------------------------------

  * Subject teacher home page will appear.
  * Your personal information will appear & you can edit them if needed.
  * Your stream will also appear.
  * You can post questions, assignments, references & lecture hours.
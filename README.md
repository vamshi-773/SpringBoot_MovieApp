# SpringBoot_MovieApp

1. **Download and Extract the Project:**
   - Download the project ZIP file from the [GitHub repository](https://github.com/vamshi-773/SpringBoot_MovieApp/tree/main/demo).
   - Extract the contents of the ZIP file to your preferred workspace directory.

2. **Import the Project into Eclipse:**
   - Open Eclipse IDE.
   - Go to `File > Import > Existing Maven Projects`.
   - Browse to the directory where you extracted the project and select it.
   - Click `Finish` to import the project into Eclipse.

3. **Run the Application:**
   - After successfully importing the project, open the Boot Dashboard in Eclipse.
   - Find the imported project in the Boot Dashboard.
   - Right-click on the project and select `Run As > Spring Boot App`.

4. **Configuration (If Downloaded After 7 Days of This Post):**
   - If you downloaded the project after 7 days of this post, you may need to configure the following properties in the `application.properties` file located in the `src/main/resources` directory:
     ```
     spring.application.name=demo
     server.port=1818
     spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
     spring.datasource.url=jdbc:mysql://localhost:3306/[yourdb]
     spring.datasource.username=root
     spring.datasource.password=[your password]
     ```
   - Update `[yourdb]` with your MySQL database name and `[your password]` with your MySQL password.

5. **Run the Application:**
   - After making the necessary changes, rerun the application using the steps mentioned in Step 3.

By following these steps, you should be able to set up and run the SpringBoot_MovieApp project in your Eclipse IDE. If you encounter any issues or have any questions, feel free to reach out for assistance.

Thank you for your attention, and we hope you enjoy exploring the SpringBoot_MovieApp!

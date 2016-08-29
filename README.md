#[akaML] Powered by MEAN 
     1. Angular/Node/Express/MongoDB.
     2. [Toastr](https://github.com/CodeSeven/toastr) primarily for Popup Notifications.
     3. Passport - login, logout, signup.
     4. CRUD operations with Express JS and MongoDB.
     5. No Jade Templating, instead implemented html partilals via Angular template.
     6. Bower configuration to handle JS browser dependencies.
     7. RequireJS.
     8. Unit test base configuration with Jasmine and Karma.
     9. Twitter Bootstrap
     10. JQuery
     11. [Docker deploy tutorial](http://bogotobogo.com/MEAN-Stack/MEAN-Stack-NodeJS-Angular-Docker.php)
     12. To start application :
        npm install // to install node modules dependencies
        bower install // to install bower dependencies
        node server.js  
     13. To minify application:
        node_modules/requirejs/bin/r.js -o tools/app.build.js
     14. To run as daemon, we may want to use PM2:
     To install PM2: $ sudo npm install pm2 -g
     To run node app : $ pm2 start server.js
     Startup setup on reboot, specify the platform : $ pm2 startup ubuntu  
     15. Refs:
     [mancioshell/NEMTAB](https://github.com/mancioshell/NEMTAB.git) 
     [btford/angular-express-seed](https://github.com/btford/angular-express-seed).


## Directory Layout
    
    server.js             --> app config
    package.json          --> for npm
    nginx.conf            --> nginx reverse proxy configuration
    config/               --> contains mongoDB and passport configuration
        database.js
        passport.js
    models/               --> contains mongoDB simple user Schema
        users.js
        person.js
        thing.js
        models.js
    public/               --> all of the files to be used in on the client side
      css/                --> css files
        app.css           --> default stylesheet
      js/                 --> javascript files
        app.js            --> declare top-level app module
        controllers.js    --> application controllers
        directives.js     --> custom angular directives
        filters.js        --> custom angular filters
        services.js       --> custom angular services
        bower_components/ --> angular and 3rd party JavaScript libraries
          angular/
          angular-local-storage/
          angular-route/
          bootstrap/
          cryptojslib/
          jquery/
          noty/
    app/
      api.js              --> api definitions
      routes.js           --> route for serving HTML pages, JSON and partials
    views/
      index.html          --> main page for app
      partials/           --> angular view partials (partial jade templates)
        header.html
        nav.html
        register.html
        login.html
      auth/
        home.html
        person.html
        thing.html


# USP+ The university outside the classroom

[![Build Status](https://travis-ci.org/mrfelipenoronha/uspmais.svg?branch=master)](https://travis-ci.org/mrfelipenoronha/uspmais)
[![Coverage Status](https://coveralls.io/repos/github/mrfelipenoronha/uspmais/badge.svg?branch=master)](https://coveralls.io/github/mrfelipenoronha/uspmais?branch=master)
[![Heroku](https://heroku-badge.herokuapp.com/?app=uspmais&style=flat&svg=1)](https://uspmais.herokuapp.com)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


![logo](logo.png "USP+  The university outside the classroom")

---
This platform is being developed by Daniela Favero, Felipe Noronha and Rodrigo Vidotti as a project to the discipline MAC0218 - Programming Techniques II, from the Institute of Mathematics and Statistics @ University of Sao Paulo.


To visit the online version of the application, hosted at Heroku, access [this link](https://uspmais.herokuapp.com/).

# How to execute locally

1. `git clone https://github.com/mrfelipenoronha/uspmais.git` - Clones the GitHub repository

2. `sudo docker-compose build` - Builds the image of the current project

3. `sudo docker-compose up` - Upping the application

4. Access `http://localhost:3000`

5. `sudo docker-compose down` - Stops the execution

6. In order to execute our tests, just open the interative Docker terminal after building the project image and upping the application through the command `sudo docker exec -ti uspmais_web_1 /bin/bash`. At terminal, type `rspec` to test our models and controllers, and type `cucumber` to test our views.

> Sometimes the docker-compose up doesn't work at first try, so it's necessary to finish the container before initializing it again and, therefore, generating proper work.

## Next steps ?

By now, we can say that we're satisfied with our work, however we haven't achieved our subject. We've started with the ideia of distributing out application to solve a problem we found in our routine at the institute. Now it's up to us showing the results and give this feedback to IME, or even, the whole USP.

Here's a list with the next changes we'll make in the platform:

- Translation to error messages;
- Email validation of user creation;
- Link with Travis-CI;
- Use of the Google Maps API to event localization;
- Integration with Google API to save events in calendar.


## Special thanks

We'd like to thank the discipline's professor and monitor, that gave us the opportunity and the necessary support that allowed us to learn about the development of an application from scratch, and also letting us live agile methodology, team work and knowledge construction through practice.

It's also import to highlight the role of the University that offers us this environment of continuous learning. We are also grateful for the physical space and equipments provided so we could gather and work.

Finally, we thank the many tutorials, solutions and people that were able to help us, acquaintances or at internet, such as Stack Overflow.

Thank's a lot.

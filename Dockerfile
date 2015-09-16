FROM node

RUN npm i -g phantomjs
RUN curl https://install.meteor.com/ | sh
RUN PHANTOMJS_BIN=$(which phantomjs) JASMINE_BROWSER=PhantomJS

ADD . /
RUN cd sample && meteor run --test

CMD bash check.sh

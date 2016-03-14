FROM tomcat:7
MAINTAINER Ruben Silva <rubensilva84@gmail.com>

ENV TOMCAT_HOME /usr/local/tomcat
ENV BIMSERVER_APP $TOMCAT_HOME/webapps/bimserver

# Delete the example Tomcat app to speed up deployment.
RUN rm -rf $TOMCAT_HOME/webapps/examples

ADD https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/bimserver/bimserver-1.2.war $BIMSERVER_APP.war
RUN unzip $BIMSERVER_APP.war -d $BIMSERVER_APP && rm $BIMSERVER_APP.war
# nginx-sample

Sample nginx cookbook that installs nginx and serves simple web page. This was targeted for a Centos 7 machine and .kitchen.yml reflects this. A few inspec tests have been created to verify nginx installation as well as proper content being served from the static webpage.

Usage: kitchen test
This will create, configure, and test VM	
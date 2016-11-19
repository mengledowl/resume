#!/bin/bash

ruby lib/generate_html.rb
mkdir -p bin
wkhtmltopdf --margin-bottom 0mm --margin-left 0mm --margin-right 0mm --margin-top 0mm tmp/resume.html bin/resume.pdf
wkhtmltopdf --margin-bottom 0mm --margin-left 0mm --margin-right 0mm --margin-top 0mm tmp/public-resume.html bin/public-resume.pdf
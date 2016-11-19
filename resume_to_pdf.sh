#!/bin/bash

#while read a ; do echo ${a//abc/XYZ} ; done < /tmp/file.txt > /tmp/file.txt.t

wkhtmltopdf --margin-bottom 0mm --margin-left 0mm --margin-right 0mm --margin-top 0mm lib/resume.html bin/resume.pdf
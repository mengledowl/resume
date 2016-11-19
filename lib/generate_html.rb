#!/usr/bin/env ruby

template_file = File.open('lib/resume-template.html', 'rb')
template = template_file.read
template_file.close

footer_file = File.open('lib/_footer.html', 'rb')
footer = footer_file.read
footer_file.close

template.gsub!('{{footer}}', footer)

Dir.mkdir('tmp') unless File.exists?('tmp')
File.open('tmp/resume.html', 'w') { |file| file.write(template) }
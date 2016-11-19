#!/usr/bin/env ruby

def generate(footer, destination)
  template_file = File.open('lib/resume-template.html', 'rb')
  template = template_file.read
  template_file.close

  footer_file = File.open(footer, 'rb')
  footer = footer_file.read
  footer_file.close

  template.gsub!('{{footer}}', footer)

  Dir.mkdir('tmp') unless File.exists?('tmp')
  File.open(destination, 'w') { |file| file.write(template) }
end

generate('lib/_footer.html', 'tmp/resume.html')
generate('lib/_public_footer.html', 'tmp/public-resume.html')



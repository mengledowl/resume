# INSTRUCTIONS:

* Install ruby
* Install wkhtmltopdf
* cd into project directory
* Create `lib/_footer.html` with personal contact information if necessary (not checked into git)
* Run `sh generate.sh`

This generates two versions of the resume - one public, and one for "private" use (resume and public-resume respectively). The `public-resume` uses `_public_footer.html` to fill in the footer with specified "public-safe" contact details. `resume` on the other hand uses `_footer.html`, which is not checked into git and would contain private details like address, phone, etc. The temp file generated for the "private" version is not checked into git, and neither is the pdf that gets automatically generated. You can find the generated html files under the `tmp` directory. The pdf files are under `bin`. Running `generate` will replace all files in both `tmp` and `bin`.
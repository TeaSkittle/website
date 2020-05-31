# Website

Source code for my personal website at: https://teaskittle.neocities.org/ . All the website's code is written in Markdown and converted to HTML using pandoc.

* `md/` - The Markdown source code for the site
* `html/` - Placeholder directory for the converted HTML files
* `pics/` - Folder containing all the images for the site
* `cnv.pl` - Converts a Markdown file into HTML and adds CSS info and a few other things
* `make.sh` - This runs cnv.pl on all files in the md/ and creates the HTML files for the entire site

To buid site:  
```bash
git clone https://github.com/TeaSkittle/website
cd website
sh make.sh
```

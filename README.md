# Website

Source code for my personal website at: https://teaskittle.neocities.org/ . All the website's code is written in Markdown and converted to HTML using pandoc. The source code for the site is in the "md" folder. The other files are:

* `cnv.pl` - Converts a Markdown file into HTML and adds CSS info and a few other things
* `make.sh` - This runs cnv.pl on all files in the "md" folder and creates the HTML files for the entire site

To buid site:  
```bash
git clone https://github.com/TeaSkittle/website
cd website
sh make.sh
```

## Notes

This isn't all of the websites code, I stiull need to rewrite the other
pages in Markdown, and I also do not have the image files here either. (
will add them eventually ).  

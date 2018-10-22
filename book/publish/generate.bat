set PUB_DIR=%~dp0
set BUILD=%PUB_DIR%build\
set CONTENT_DIR=%PUB_DIR%..\

set TITLE=title.txt
set TOC=--toc --toc-depth=1
set COVER_IMAGE=cover.jpg
set STYLESHEET=stylesheet.css
set LATEX_CLASS=report
set METADATA=metadata.xml

set BOOKNAME=Levelup-your-Websites-using-Jekyll
set CHAPTERS=preface.md introduction.md setup.md create-website.md create-pages.md create-edit-posts.md

if exist %BUILD% rd /s /q %BUILD%
mkdir %BUILD%

cd %CONTENT_DIR%
pandoc -o %BUILD%%BOOKNAME%.epub %PUB_DIR%%TITLE% %CHAPTERS% %TOC% --epub-metadata=%PUB_DIR%%METADATA% --epub-cover-image=%PUB_DIR%%COVER_IMAGE%  --css=%PUB_DIR%stylesheet.css

pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% -t latex -V documentclass=%LATEX_CLASS% 

cd %PUB_DIR%
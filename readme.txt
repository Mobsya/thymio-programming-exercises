               Text Programming Projects 
                       for the 
                    Thymio-II Robot
                        in the 
                Aseba/Studio Environment

           Moti Ben-Ari and other contributors
              (see authors.txt for details)

    Copyright 2013-15 by Moti Ben-Ari and other contributors

    This work is licensed under the Creative Commons
    Attribution-ShareAlike 3.0 Unported License. To view a copy
    of this license, visit
    http://creativecommons.org/licenses/by-sa/3.0/
    or send a letter to Creative Commons, 444 Castro Street,
    Suite 900, Mountain View, California, 94041, USA.

Aseba Studio is a programming environment for the Thymio-II robot.
This archive contains the source code and documentation of projects
for the robot. These projects are designed to teach the basic concepts
of robotics algorithms. For more information on the Thymio-II and Aseba,
see: https://aseba.wikidot.com/.

There are four directories in this repository:

docs:     The text of the document
images:   The images used in the document
programs: The Aseba programs described in the document
readmes:  Language-specific readmes for the distribution archives

This document is written using LaTeX. To compile it, under unixes
with pdflatex installed, just type:

    make

If you want to build by hand, the files to compile are:

    docs/LL/vpl.tex

where LL is the language code (for instance "en").

If you have trouble compiling, or found errors in this document, please
fill an issue at https://github.com/aseba-community/thymio-programming-exercises
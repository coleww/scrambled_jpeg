# ScrambledJpeg

Super simple jpeg glitcher.

![example.jpg glitched at various granularities ranging from 5-75](./example.gif)

[Here is a pretty good tutorial](http://www.docpop.org/2014/01/a-glitch-primer-editing-image-files-with-text-editors/) that covers the logic behind this and [this looks like a good list](http://phillipstearns.wordpress.com/glitch-art-resources/) of resources for other forms of glitch art.

### SCRAMBLE ALGORITHM

0. Reads a .jpg/.jpeg file
0. Writes first line of original to new file to preserve headers
0. Stores last line of original to preserve EOF
0. Writes GRANULARITY lines of original to new file
0. Caches GRANULARITY lines of original
0. Writes GRANULARITY lines of original to new file
0. Writes the cache to new file
0. ETC.
0. When it runs out of lines to write, it writes the last line and closes the new file.

## GO TO THE GEM STORE

    $ gem install scrambled_jpeg

## ITS EASY LIKE SUNDAY MORNING

    # CLI USE
    $ scrambled_jpeg [FILENAME] ([GRANULARITY])

    # granularity defaults to 5.
    $ scrambled_jpeg example.jpg

    # numbers have differing effects depending on file size and stuff...
    $ scrambled_jpeg example.jpg 50
    # sometimes it breaks the image...

    # CAN BE USED IN RUBY TOOOOOOO
    IRB(...)> ScrambledJpeg.scramble FILENAME, GRANULARITY=5


## THE FUTURE

other potential glitch algorithms:

* Benedict
* Poach
* HardBoil
* Omelette

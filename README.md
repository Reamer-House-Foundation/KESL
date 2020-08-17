# KESL: Kesley's Embedded Systems Library

This project aims to be a common starting ground for all microcontrollers that
I play around with.  As of writing this, it only supports the STM32F0 board
(because thats what I'm using for my current project) but I plan to continually
append to this project, adding support for new MCUs as I use them.

Eventually I would like to write alot of my own library code, but for now I'm
just using the STM32 STD Periph Libraries provided by STM.  I am also using the
ARM CMSIS files.  The licenses for both of those projects are included here.

# Structure

## core/
    In this directory are KESL specific structures and functions.  Thigns like
    logging functionality, buffer implementations, a cli interface, etc are all
    implemented here.  Nothing here should be specific to any MCU

## cpu/
    Anything specific to a particular CPU that isn't specific to a particular
    MCU should go here.
    Right now, all that is in here are the CORTEX-M0 header files from CMSIS

## mcu/
    Anything specific to a particular MCU that wouldn't be considered a library
    should go here.  Things like startup files, interrupt vectors, systemcalls,
    preipherial maps (such as those provided by CMSIS) would all go here.


## lib/
    Any libraries for particular MCUs should go here.  Things to toggle GPIO,
    use UART or I2C or something like the firmware for the DMA controller would
    all go here.

## common/
    I haven't created this directory yet, but higher level functions that are
    implemented generically could go here.  For example, if there is some
    particular peripherial that I interface with GPIO (like a servo motor or
    somethign) I would throw that code here.  I still have to figure this out,
    because I would want that code to be able to work across any MCU.  That
    means that there would have to be a common library of some sort (or the
    common files would be littered with ifdef's to handle different functions)

## licenses/
    The licences of any software that I use will go here

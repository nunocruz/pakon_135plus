# Pakon 135+ software
This is a repository where I decided to store and share the original software and many community generated scripts to use with the Pakon 135 plus scanner. 

## Regedit
This folder contains 2 regedit files.

### PSI crop maximization
It maximizes the crop that PSI software applies on your frame.

### Fix for error 149
This is an error that will typically in virtualization environments and this regedit files tweaks the system in order to avoid it. 

## Scripts

### convert_bw_raw.bat
Converts pakon raw files into a grayscale tiff file

### convert_c41_raw.bat
Converts pakon raw files into a color tiff file

### TLX_Controller.au3
Creates several shortcuts in order to edit images in TLX software

### TLX_Falloff.bat
Allows you to set the falloff compensation in TLX.

### TLX_Finalize.bat
This script does a lot of nice finishing touches on your files. It's meant to be used after you have exported the files from TLX. By default TLX saves the files to C:/Temp, this script moves those files and renames them accordingly to your input. Given the film type it will also apply some operations to it, for example converting the BW film to grayscale, since TLX outputs a color film and the film will have a color cast. 

### TLX_Maximize.au3
Maximizes TLX window size and chooses the higher buffer, so that you can edit your files with a better view of what you are doing. 

### TLX_Reindex.au3
Reindexes the frame numbers of your roll.

### TLX_ScanEnable.au3
Because TLX is a demo software, some features, such as BW and E6 need to be unlocked for usage.

## Software
The official Pakon scanner software. 

### Noise reduction ON/OFF
To turn noise reduction off

## Support Software

### autoit-v3-setup.exe
Executable to allow you to run the scripts (.au3)

### ImageMagick-7.0.10-25-Q16-HDRI-x86-static.exe
Latest version of Image Magick compatible with Windows XP. Needed for converting Raws and other image transformation operations used in the scripts.

## Troubleshooting and guides
Many useful documents and guides of how to use, clean and maintain the scanner and scripts.

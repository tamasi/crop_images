# crop_images
This ruby scrip use imagemagick and minimagick to split a batch of images 
lote de ejemplo: https://drive.google.com/drive/u/0/folders/0B8PPVNrGNrb8ZnBURExyMlMzSkE

## **Digitization parameter**
 
#### Scope:

Start: 
First printed (written) page of a thesis
White pages in the middle of a thesis must also be scanned!
End: Last printed (written) page of a thesis
 
 
# **Image format:**

* Color Images, 300 dpi, 24 bit color depth, Tiff uncompressed
* Greyscale Images, 300 dpi, 8 bit color depth, Tiff uncompressed
* Bitonal Images (Black/white), 600 dpi, 1 bit color depth, TIFF uncompressed
* Bitonal Images (Black/white), 600 dpi, 1 bit color depth, TIFF compression CCITT G4
 
**The MPI recommends color or greyscale images**
**We will work whit the option 2, greyscale image**
 
 
### Image editing:
* Single pages (not double pages! – if you scan double pages they have to be separated) 

**masking **

straight alignment of the sentence mirror
* If necessary: correction of contrast, brightness, sharpness
* If necessary: delete duplicate images
* If necessary: correction of image order
 
# Directory structure and name:

* Store the image files of each thesis in a separate directory
* Each directory has an individual name

The MPI proposes a combination of 
* the institute´s name (acronym), 
* number of the physical volume (01 to 55), 
* hyphen,
* thesis number within the volume (01 to XX):
 
## Proposed directory names:
 
inhide01-01
…
inhide01-XX
to 
inhide55-01
…
inhide55-XX
 
 
# File name:

Each file has an individual name. This name is a combination of Directory name and Physical page number
Physical page number: three-digit, starting with 001
file extension: tif
 
e.g.: 
First Page: DirectoryName_001.tif
…
Page 10: DirectoryName_010.tif
…
Last page: DirectoryName_100.tif
 
Result:
inhide01-01_001.tif
	=
InstituteNameVolumeNumber-ThesisNumber_PhysicalPageNumber.tif

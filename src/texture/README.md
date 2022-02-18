# Texture

Images that change the appearance of an element in the game, like units,
player's HUD, main menu, ...

# Knowledge database

## DDS file

@todo

### DXT3 with mipmap

To create a DDS file containing two layers (image content + mask),
open the image in DXTBmp and add the mask as an alpha chanel.
You can also specify that there will be mipmaps in this image.
Then save the image as a DDS texture, in DXT3 format. To set the
texture in Eschaton, use the "Inject" button instead of "Import".

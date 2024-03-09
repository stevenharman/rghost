require "rghost/helpers"

module RGhost::Constants
  module HashKeyMethod # :nodoc:
    def method_missing(method, *args)
      self[method.to_sym]
    end
  end

  class HashKeyMethodClass < Hash # :nodoc:
    include RGhost::Constants::HashKeyMethod
  end

  module Devices
    # Standard Devices
    STANDARD = RGhost::Constants::HashKeyMethodClass[
      #-- MS-DOS displays",
      ega: "EGA (640x350, 16-color)",
      vga: "VGA (640x480, 16-color)",
      #-- Ms Windows => "",
      ali: "SuperVGA using Avance Logic Inc. chipset, 256-color modes",
      atiw: "ATI Wonder SuperVGA, 256-color modes",
      cirr: "SuperVGA using Cirrus Logic CL-GD54XX chips, 256-color modes",
      s3vga: "SuperVGA using S3 86C911 chip (e.g., Diamond Stealth board)",
      svga16: "Generic SuperVGA in 800x600, 16-color mode",
      tseng: "SuperVGA using Tseng Labs ET3000/4000 chips, 256-color modes",
      vesa: "SuperVGA with VESA standard API driver",
      mswindll: "Microsoft Windows 3.1 DLL => [MS Windows only]",
      mswinprn: "Microsoft Windows 3.0, 3.1 DDB printer => [MS Windows only]",
      mswinpr2: "Microsoft Windows 3.0, 3.1 DIB printer => [MS Windows only]",
      #-- Others Displays",
      os2pm: "OS/2 Presentation Manager => [OS/2 only]",
      os2dll: "OS/2 DLL bitmap::[OS/2 only]",
      os2prn: "OS/2 printer:: => [OS/2 only]",
      #-- Unix Displays",
      lvga256: "Linux vgalib, 256-color VGA modes => [Linux only]",
      vgalib: "Linux vgalib, 16-color VGA modes => [Linux only]",
      x11: "X Windows version 11, release >=4 => [Unix and VMS only]",
      x11alpha: "X Windows masquerading as a device with alpha capability",
      x11cmyk: "X Windows masquerading as a 1-bit-per-plane CMYK device",
      x11cmyk2: "X Windows as a 2-bit-per-plane CMYK device",
      x11cmyk4: "X Windows as a 4-bit-per-plane CMYK device",
      x11cmyk8: "X Windows as an 8-bit-per-plane CMYK device",
      x11gray2: "X Windows as a 2-bit gray-scale device",
      x11gray4: "X Windows as a 4-bit gray-scale device",
      x11mono: "X Windows masquerading as a black-and-white device",
      x11rg16x: "X Windows with G5/B5/R6 pixel layout for testing.",
      x11rg32x: "X Windows with G11/B10/R11 pixel layout for testing.",
      #-- Printers",
      epson: "Epson-compatible dot matrix printers (9- or 24-pin)",
      eps9mid: "Epson-compatible 9-pin, interleaved lines (intermediate resolution)",
      eps9high: "Epson-compatible 9-pin, interleaved lines (triple resolution)",
      atx23: "Practical Automation ATX-23 label printer",
      atx24: "Practical Automation ATX-24 label printer",
      atx38: "Practical Automation ATX-38 label printer",
      deskjet: "H-P DeskJet and DeskJet Plus",
      djet500: "H-P DeskJet 500; use -r600 for DJ 600 series",
      fs600: "Kyocera FS-600 (600 dpi)",
      laserjet: "H-P LaserJet",
      ljet2p: "H-P LaserJet IId/IIp/III* with TIFF compression",
      ljet3: "H-P LaserJet III* with Delta Row compression",
      ljet3d: "H-P LaserJet IIID with duplex capability",
      ljet4: "H-P LaserJet 4 (defaults to 600 dpi)",
      ljet4d: "H-P LaserJet 4 (defaults to 600 dpi) with duplex",
      ljetplus: "H-P LaserJet Plus",
      lj5mono: "H-P LaserJet 5 & 6 family (PCL XL), bitmap:",
      lj5gray: "H-P LaserJet 5 & 6 family, gray-scale bitmap;",
      lp2563: "H-P 2563B line printer",
      oce9050: "OCE 9050 printe",
      #-- Fax file format",
      faxg3: "Group 3 fax, with EOLs but no header or EOD",
      faxg32d: "Group 3 2-D fax, with EOLs but no header or EOD",
      faxg4: "Group 4 fax, with EOLs but no header or EOD",
      tiffcrle: "TIFF CCITT RLE 1-dim (= Group 3 fax with no EOLs)",
      tiffg3: "TIFF Group 3 fax (with EOLs)",
      tiffg32d: "TIFF Group 3 2-D fax",
      tiffg4: "TIFF Group 4 fax",
      #-- High-level (vector) file formats",
      eps2write: "EPS output (like PostScript Distillery)",
      pdfwrite: "PDF output (like Adobe Acrobat Distiller)",
      pswrite: "PostScript output (like PostScript Distillery)",
      pxlmono: "Black-and-white PCL XL",
      pxlcolor: "Color PCL XL",
      #-- Raster file formats and devices",
      bit: "Plain bits, monochrome",
      bitrgb: "Plain bits, RGB",
      bitcmyk: "Plain bits, CMYK",
      bmpmono: "Monochrome MS Windows .BMP file format",
      bmpgray: "8-bit gray .BMP file format",
      bmpsep1: "Separated 1-bit CMYK .BMP file format, primarily for testing",
      bmpsep8: "Separated 8-bit CMYK .BMP file format, primarily for testing",
      bmp16: "4-bit (EGA/VGA) .BMP file format",
      bmp256: "8-bit (256-color) .BMP file format",
      bmp16m: "24-bit .BMP file format",
      bmp32b: "32-bit pseudo-.BMP file format",
      cgmmono: "Monochrome (black-and-white) CGM -- LOW LEVEL OUTPUT ONLY",
      cgm8: "8-bit (256-color) CGM -- DITTO",
      cgm24: "24-bit color CGM -- DITTO",
      jpeg: "JPEG format, RGB output",
      jpeggray: "JPEG format, gray output",
      miff24: "ImageMagick MIFF format, 24-bit direct color, RLE compressed",
      pcxmono: "PCX file format, monochrome (1-bit black and white)",
      pcxgray: "PCX file format, 8-bit gray scale",
      pcx16: "PCX file format, 4-bit planar (EGA/VGA) color",
      pcx256: "PCX file format, 8-bit chunky color",
      pcx24b: "PCX file format, 24-bit color (3 8-bit planes)",
      pcxcmyk: "PCX file format, 4-bit chunky CMYK color",
      pbm: "Portable Bitmap (plain format)",
      pbmraw: "Portable Bitmap (raw format)",
      pgm: "Portable Graymap (plain format)",
      pgmraw: "Portable Graymap (raw format)",
      pgnm: "Portable Graymap (plain format), optimizing to PBM if possible",
      pgnmraw: "Portable Graymap (raw format), optimizing to PBM if possible",
      pnm: "Portable Pixmap (plain format) (RGB), optimizing to PGM or PBM",
      pnmraw: "Portable Pixmap (raw format) (RGB), optimizing to PGM or PBM",
      ppm: "Portable Pixmap (plain format) (RGB)",
      ppmraw: "Portable Pixmap (raw format) (RGB)",
      pkm: "Portable inKmap (plain format) (4-bit CMYK => RGB)",
      pkmraw: "Portable inKmap (raw format) (4-bit CMYK => RGB)",
      pksm: "Portable Separated map (plain format) (4-bit CMYK => 4 pages)",
      pksmraw: "Portable Separated map (raw format) (4-bit CMYK => 4 pages)",
      plan9bm: "Plan 9 bitmap format",
      pngmono: "Monochrome Portable Network Graphics (PNG)",
      pnggray: "8-bit gray Portable Network Graphics (PNG)",
      png16: "4-bit color Portable Network Graphics (PNG)",
      png256: "8-bit color Portable Network Graphics (PNG)",
      png16m: "24-bit color Portable Network Graphics (PNG)",
      psmono: "PostScript (Level 1) monochrome image",
      psgray: "PostScript (Level 1) 8-bit gray image",
      psrgb: "PostScript (Level 2) 24-bit color image",
      tiff12nc: "TIFF 12-bit RGB, no compression",
      tiff24nc: "TIFF 24-bit RGB, no compression (NeXT standard format)",
      tifflzw: "TIFF LZW (tag = 5) (monochrome)",
      tiffpack: "TIFF PackBits (tag = 32773) (monochrome)"
    ]
    DEVICES_ALIAS = {
      eps: :eps2write,
      pdf: :pdfwrite,
      ps: :ps2write,
      pcl: :pxlmono,
      tif: :tiffcrle,
      tiff: :tiffcrle,
      jpg: :jpeg,
      png: :png16m
    }
    # Load device by alias
    def device_for(dev)
      return DEVICES_ALIAS[dev] if DEVICES_ALIAS.key? dev
      return dev if STANDARD.key? dev
      raise "Undefined device: #{dev}"
    end
  end

  module Fonts
    # Standard Encodings
    ENCODINGS = ["ISOLatin1Encoding", "StandardEncoding "]
    # Standard Fonts
    STANDARD = {
      "AvantGarde-Book" => "Adobe-ITC Avant Garde Gothic-Book-R-Normal--*",
      "AvantGarde-BookOblique" => "Adobe-ITC Avant Garde Gothic-Book-O-Normal--*",
      "AvantGarde-Demi" => "Adobe-ITC Avant Garde Gothic-Demi-R-Normal--*",
      "AvantGarde-DemiOblique" => "Adobe-ITC Avant Garde Gothic-Demi-O-Normal--*",
      "Bookman-Demi" => "Adobe-ITC Bookman-Demi-R-Normal--*",
      "Bookman-DemiItalic" => "Adobe-ITC Bookman-Demi-I-Normal--*",
      "Bookman-Light" => "Adobe-ITC Bookman-Light-R-Normal--*",
      "Bookman-LightItalic" => "Adobe-ITC Bookman-Light-I-Normal--*",
      :Courier => "Adobe-Courier-Medium-R-Normal--*",
      "Courier-Bold" => "Adobe-Courier-Bold-R-Normal--*",
      "Courier-BoldOblique" => "Adobe-Courier-Bold-O-Normal--*",
      "Courier-Oblique" => "Adobe-Courier-Medium-O-Normal--*",
      :Helvetica => "Adobe-Helvetica-Medium-R-Normal--*",
      "Helvetica-Bold" => "Adobe-Helvetica-Bold-R-Normal--*",
      "Helvetica-BoldOblique" => "Adobe-Helvetica-Bold-O-Normal--*",
      "Helvetica-Narrow" => "Adobe-Helvetica-Medium-R-Narrow--*",
      "Helvetica-Narrow-Bold" => "Adobe-Helvetica-Bold-R-Narrow--*",
      "Helvetica-Narrow-BoldOblique" => "Adobe-Helvetica-Bold-O-Narrow--*",
      "Helvetica-Narrow-Oblique" => "Adobe-Helvetica-Medium-O-Narrow--*",
      "Helvetica-Oblique" => "Adobe-Helvetica-Medium-O-Normal--*",
      "NewCenturySchlbk-Bold" => "Adobe-New Century Schoolbook-Bold-R-Normal--*",
      "NewCenturySchlbk-BoldItalic" => "Adobe-New Century Schoolbook-Bold-I-Normal--*",
      "NewCenturySchlbk-Italic" => "Adobe-New Century Schoolbook-Medium-I-Normal--*",
      "NewCenturySchlbk-Roman" => "Adobe-New Century Schoolbook-Medium-R-Normal--*",
      "Palatino-Bold" => "Adobe-Palatino-Bold-R-Normal--*",
      "Palatino-BoldItalic" => "Adobe-Palatino-Bold-I-Normal--*",
      "Palatino-Italic" => "Adobe-Palatino-Medium-I-Normal--*",
      "Palatino-Roman" => "Adobe-Palatino-Medium-R-Normal--*",
      :Times => "Adobe-Times-Normal--*",
      "Times-Bold" => "Adobe-Times-Bold-R-Normal--*",
      "Times-BoldItalic" => "Adobe-Times-Bold-I-Normal--*",
      "Times-Italic" => "Adobe-Times-Medium-I-Normal--*",
      "Times-Roman" => "Adobe-Times-Medium-R-Normal--*",
      "ZapfChancery-MediumItalic" => "Adobe-ITC Zapf Chancery-Medium-I-Normal--",
      :Symbol => "Adobe-Symbol-Medium-R-Normal--",
      :ZapfDingbats => "Adobe-ITC Zapf Dingbats-Medium-R-Normal--"
    }
    SUNS = {
      "AvantGarde-Book" => "-itc-avantgarde-book-r-normal--*",
      "AvantGarde-BookOblique" => "-itc-avantgarde-book-o-normal--*",
      "AvantGarde-Demi" => "-itc-avantgarde-demi-r-normal--*",
      "AvantGarde-DemiOblique" => "-itc-avantgarde-demi-o-normal--*",
      "Bembo" => "-monotype-bembo-medium-r-normal--*",
      "Bembo-Bold" => "-monotype-bembo-bold-r-normal--*",
      "Bembo-BoldItalic" => "-monotype-bembo-bold-i-normal--*",
      "Bembo-Italic" => "-monotype-bembo-medium-i-normal--*",
      "Bookman-Demi" => "-itc-bookman-demi-r-normal--*",
      "Bookman-DemiItalic" => "-itc-bookman-demi-i-normal--*",
      "Bookman-Light" => "-itc-bookman-light-r-normal--*",
      "Bookman-LightItalic" => "-itc-bookman-light-i-normal--*",
      "Courier" => "-itc-courier-medium-r-normal--*",
      "Courier-Bold" => "-itc-courier-bold-r-normal--*",
      "Courier-BoldOblique" => "-itc-courier-bold-o-normal--*",
      "Courier-Oblique" => "-itc-courier-medium-o-normal--*",
      "GillSans" => "-monotype-gill-medium-r-normal-sans-*",
      "GillSans-Bold" => "-monotype-gill-bold-r-normal-sans-*",
      "GillSans-BoldItalic" => "-monotype-gill-bold-i-normal-sans-*",
      "GillSans-Italic" => "-monotype-gill-normal-i-normal-sans-*",
      "Helvetica" => "-linotype-helvetica-medium-r-normal--*",
      "Helvetica-Bold" => "-linotype-helvetica-bold-r-normal--*",
      "Helvetica-BoldOblique" => "-linotype-helvetica-bold-o-normal--*",
      "Helvetica-Narrow" => "-linotype-helvetica-medium-r-narrow--*",
      "Helvetica-Narrow-Bold" => "-linotype-helvetica-bold-r-narrow--*",
      "Helvetica-Narrow-BoldOblique" => "-linotype-helvetica-bold-o-narrow--*",
      "Helvetica-Narrow-Oblique" => "-linotype-helvetica-medium-o-narrow--*",
      "Helvetica-Oblique" => "-linotype-helvetica-medium-o-normal--*",
      "LucidaBright" => "-b&h-lucidabright-medium-r-normal--*",
      "LucidaBright-Demi" => "-b&h-lucidabright-demibold-r-normal--*",
      "LucidaBright-DemiItalic" => "-b&h-lucidabright-demibold-i-normal--*",
      "LucidaBright-Italic" => "-b&h-lucidabright-medium-i-normal--*",
      "LucidaSans" => "-b&h-lucida-medium-r-normal-sans-*",
      "LucidaSans-Bold" => "-b&h-lucida-bold-r-normal-sans-*",
      "LucidaSans-BoldItalic" => "-b&h-lucida-bold-i-normal-sans-*",
      "LucidaSans-Italic" => "-b&h-lucida-medium-i-normal-sans-*",
      "LucidaSans-Typewriter" => "-b&h-lucidatypewriter-medium-r-normal-sans-*",
      "LucidaSans-TypewriterBold" => "-b&h-lucidatypewriter-bold-r-normal-sans-*",
      "NewCenturySchlbk-BoldItalic" => "-linotype-new century schoolbook-bold-i-normal--*",
      "NewCenturySchlbk-Bold" => "-linotype-new century schoolbook-bold-r-normal--*",
      "NewCenturySchlbk-Italic" => "-linotype-new century schoolbook-medium-i-normal--*",
      "NewCenturySchlbk-Roman" => "-linotype-new century schoolbook-medium-r-normal--*",
      "Palatino-Bold" => "-linotype-palatino-bold-r-normal--*",
      "Palatino-BoldItalic" => "-linotype-palatino-bold-i-normal--*",
      "Palatino-Italic" => "-linotype-palatino-medium-i-normal--*",
      "Palatino-Roman" => "-linotype-palatino-medium-r-normal--*",
      "Rockwell" => "-monotype-rockwell-medium-r-normal--*",
      "Rockwell-Bold" => "-monotype-rockwell-bold-r-normal--*",
      "Rockwell-BoldItalic" => "-monotype-rockwell-bold-i-normal--*",
      "Rockwell-Italic" => "-monotype-rockwell-medium-i-normal--*",
      "Times-Bold" => "-linotype-times-bold-r-normal--*",
      "Times-BoldItalic" => "-linotype-times-bold-i-normal--*",
      "Times-Italic" => "-linotype-times-medium-i-normal--*",
      "Times-Roman" => "-linotype-times-medium-r-normal--*",
      "Utopia-Bold" => "-adobe-utopia-bold-r-normal--*",
      "Utopia-BoldItalic" => "-adobe-utopia-bold-i-normal--*",
      "Utopia-Italic" => "-adobe-utopia-regular-i-normal--*",
      "Utopia-Regular" => "-adobe-utopia-regular-r-normal--*",
      "ZapfChancery-MediumItalic" => "-itc-zapfchancery-medium-i-normal--",
      "ZapfDingbats" => "-itc-zapfdingbats-medium-r-normal--",
      "Symbol" => "--symbol-medium-r-normal--"
    }
  end

  # Color map
  module Colors
    RGB = RGhost::Constants::HashKeyMethodClass[
      aliceBlue: [0.941176470588235, 0.972549019607843, 1.0],
      antiqueWhite: [0.980392156862745, 0.92156862745098, 0.843137254901961],
      aqua: [0.0, 1.0, 1.0],
      aquamarine: [0.498039215686275, 1.0, 0.831372549019608],
      azure: [0.941176470588235, 1.0, 1.0],
      beige: [0.96078431372549, 0.96078431372549, 0.862745098039216],
      bisque: [1.0, 0.894117647058824, 0.768627450980392],
      black: [0.0, 0.0, 0.0],
      blanchedAlmond: [1.0, 0.92156862745098, 0.803921568627451],
      blue: [0.0, 0.0, 1.0],
      blueViolet: [0.541176470588235, 0.168627450980392, 0.886274509803922],
      brown: [0.647058823529412, 0.164705882352941, 0.164705882352941],
      burlyWood: [0.870588235294118, 0.72156862745098, 0.529411764705882],
      cadetBlue: [0.372549019607843, 0.619607843137255, 0.627450980392157],
      chartreuse: [0.498039215686275, 1.0, 0.0],
      chocolate: [0.823529411764706, 0.411764705882353, 0.117647058823529],
      coral: [1.0, 0.498039215686275, 0.313725490196078],
      cornflowerBlue: [0.392156862745098, 0.584313725490196, 0.929411764705882],
      cornsilk: [1.0, 0.972549019607843, 0.862745098039216],
      crimson: [0.862745098039216, 0.0784313725490196, 0.235294117647059],
      cyan: [0.0, 1.0, 1.0],
      darkBlue: [0.0, 0.0, 0.545098039215686],
      darkCyan: [0.0, 0.545098039215686, 0.545098039215686],
      darkGoldenRod: [0.72156862745098, 0.525490196078431, 0.0431372549019608],
      darkGray: [0.662745098039216, 0.662745098039216, 0.662745098039216],
      darkGreen: [0.0, 0.392156862745098, 0.0],
      darkGrey: [0.662745098039216, 0.662745098039216, 0.662745098039216],
      darkKhaki: [0.741176470588235, 0.717647058823529, 0.419607843137255],
      darkMagenta: [0.545098039215686, 0.0, 0.545098039215686],
      darkOliveGreen: [0.333333333333333, 0.419607843137255, 0.184313725490196],
      darkOrchid: [0.6, 0.196078431372549, 0.8],
      darkRed: [0.545098039215686, 0.0, 0.0],
      darkSalmon: [0.913725490196078, 0.588235294117647, 0.47843137254902],
      darkSeaGreen: [0.56078431372549, 0.737254901960784, 0.56078431372549],
      darkSlateBlue: [0.282352941176471, 0.23921568627451, 0.545098039215686],
      darkSlateGray: [0.184313725490196, 0.309803921568627, 0.309803921568627],
      darkSlateGrey: [0.184313725490196, 0.309803921568627, 0.309803921568627],
      darkTurquoise: [0.0, 0.807843137254902, 0.819607843137255],
      darkViolet: [0.580392156862745, 0.0, 0.827450980392157],
      darkorange: [1.0, 0.549019607843137, 0.0],
      deepPink: [1.0, 0.0784313725490196, 0.576470588235294],
      deepSkyBlue: [0.0, 0.749019607843137, 1.0],
      dimGray: [0.411764705882353, 0.411764705882353, 0.411764705882353],
      dimGrey: [0.411764705882353, 0.411764705882353, 0.411764705882353],
      dodgerBlue: [0.117647058823529, 0.564705882352941, 1.0],
      direBrick: [0.698039215686274, 0.133333333333333, 0.133333333333333],
      dloralWhite: [1.0, 0.980392156862745, 0.941176470588235],
      dorestGreen: [0.133333333333333, 0.545098039215686, 0.133333333333333],
      duchsia: [1.0, 0.0, 1.0],
      gainsboro: [0.862745098039216, 0.862745098039216, 0.862745098039216],
      ghostWhite: [0.972549019607843, 0.972549019607843, 1.0],
      gold: [1.0, 0.843137254901961, 0.0],
      goldenRod: [0.854901960784314, 0.647058823529412, 0.125490196078431],
      gray: [0.501960784313725, 0.501960784313725, 0.501960784313725],
      green: [0.0, 0.501960784313725, 0.0],
      greenYellow: [0.67843137254902, 1.0, 0.184313725490196],
      grey: [0.501960784313725, 0.501960784313725, 0.501960784313725],
      honeyDew: [0.941176470588235, 1.0, 0.941176470588235],
      hotPink: [1.0, 0.411764705882353, 0.705882352941177],
      indianRed: [0.803921568627451, 0.36078431372549, 0.36078431372549],
      indigo: [0.294117647058824, 0.0, 0.509803921568627],
      ivory: [1.0, 1.0, 0.941176470588235],
      khaki: [0.941176470588235, 0.901960784313726, 0.549019607843137],
      lavenderBlush: [1.0, 0.941176470588235, 0.96078431372549],
      lavender: [0.901960784313726, 0.901960784313726, 0.980392156862745],
      lawnGreen: [0.486274509803922, 0.988235294117647, 0.0],
      lemonChiffon: [1.0, 0.980392156862745, 0.803921568627451],
      lightBlue: [0.67843137254902, 0.847058823529412, 0.901960784313726],
      lightCoral: [0.941176470588235, 0.501960784313725, 0.501960784313725],
      lightCyan: [0.87843137254902, 1.0, 1.0],
      lightGoldenRodYellow: [0.980392156862745, 0.980392156862745, 0.823529411764706],
      lightGray: [0.827450980392157, 0.827450980392157, 0.827450980392157],
      lightGreen: [0.564705882352941, 0.933333333333333, 0.564705882352941],
      lightGrey: [0.827450980392157, 0.827450980392157, 0.827450980392157],
      lightPink: [1.0, 0.713725490196078, 0.756862745098039],
      lightSalmon: [1.0, 0.627450980392157, 0.47843137254902],
      lightSeaGreen: [0.125490196078431, 0.698039215686274, 0.666666666666667],
      lightSkyBlue: [0.529411764705882, 0.807843137254902, 0.980392156862745],
      lightSlateGray: [0.466666666666667, 0.533333333333333, 0.6],
      lightSlateGrey: [0.466666666666667, 0.533333333333333, 0.6],
      lightSteelBlue: [0.690196078431373, 0.768627450980392, 0.870588235294118],
      lightYellow: [1.0, 1.0, 0.87843137254902],
      lime: [0.0, 1.0, 0.0],
      limeGreen: [0.196078431372549, 0.803921568627451, 0.196078431372549],
      linen: [0.980392156862745, 0.941176470588235, 0.901960784313726],
      magenta: [1.0, 0.0, 1.0],
      maroon: [0.501960784313725, 0.0, 0.0],
      mediumAquaMarine: [0.4, 0.803921568627451, 0.666666666666667],
      mediumBlue: [0.0, 0.0, 0.803921568627451],
      mediumOrchid: [0.729411764705882, 0.333333333333333, 0.827450980392157],
      mediumPurple: [0.576470588235294, 0.43921568627451, 0.847058823529412],
      mediumSeaGreen: [0.235294117647059, 0.701960784313725, 0.443137254901961],
      mediumSlateBlue: [0.482352941176471, 0.407843137254902, 0.933333333333333],
      mediumSpringGreen: [0.0, 0.980392156862745, 0.603921568627451],
      mediumTurquoise: [0.282352941176471, 0.819607843137255, 0.8],
      mediumVioletRed: [0.780392156862745, 0.0823529411764706, 0.52156862745098],
      midnightBlue: [0.0980392156862745, 0.0980392156862745, 0.43921568627451],
      mintCream: [0.96078431372549, 1.0, 0.980392156862745],
      mistyRose: [1.0, 0.894117647058824, 0.882352941176471],
      moccasin: [1.0, 0.894117647058824, 0.709803921568627],
      navajoWhite: [1.0, 0.870588235294118, 0.67843137254902],
      navy: [0.0, 0.0, 0.501960784313725],
      oldLace: [0.992156862745098, 0.96078431372549, 0.901960784313726],
      olive: [0.501960784313725, 0.501960784313725, 0.0],
      oliveDrab: [0.419607843137255, 0.556862745098039, 0.137254901960784],
      orange: [1.0, 0.647058823529412, 0.0],
      orangeRed: [1.0, 0.270588235294118, 0.0],
      orchid: [0.854901960784314, 0.43921568627451, 0.83921568627451],
      paleGoldenRod: [0.933333333333333, 0.909803921568627, 0.666666666666667],
      paleGreen: [0.596078431372549, 0.984313725490196, 0.596078431372549],
      paleTurquoise: [0.686274509803922, 0.933333333333333, 0.933333333333333],
      paleVioletRed: [0.847058823529412, 0.43921568627451, 0.576470588235294],
      papayaWhip: [1.0, 0.937254901960784, 0.835294117647059],
      peachPuff: [1.0, 0.854901960784314, 0.725490196078431],
      peru: [0.803921568627451, 0.52156862745098, 0.247058823529412],
      pink: [1.0, 0.752941176470588, 0.796078431372549],
      plum: [0.866666666666667, 0.627450980392157, 0.866666666666667],
      powderBlue: [0.690196078431373, 0.87843137254902, 0.901960784313726],
      purple: [0.501960784313725, 0.0, 0.501960784313725],
      red: [1.0, 0.0, 0.0],
      rosyBrown: [0.737254901960784, 0.56078431372549, 0.56078431372549],
      royalBlue: [0.254901960784314, 0.411764705882353, 0.882352941176471],
      saddleBrown: [0.545098039215686, 0.270588235294118, 0.0745098039215686],
      salmon: [0.980392156862745, 0.501960784313725, 0.447058823529412],
      sandyBrown: [0.956862745098039, 0.643137254901961, 0.376470588235294],
      seaGreen: [0.180392156862745, 0.545098039215686, 0.341176470588235],
      seaShell: [1.0, 0.96078431372549, 0.933333333333333],
      sienna: [0.627450980392157, 0.32156862745098, 0.176470588235294],
      silver: [0.752941176470588, 0.752941176470588, 0.752941176470588],
      skyBlue: [0.529411764705882, 0.807843137254902, 0.92156862745098],
      slateBlue: [0.415686274509804, 0.352941176470588, 0.803921568627451],
      slateGray: [0.43921568627451, 0.501960784313725, 0.564705882352941],
      slateGrey: [0.43921568627451, 0.501960784313725, 0.564705882352941],
      snow: [1.0, 0.980392156862745, 0.980392156862745],
      springGreen: [0.0, 1.0, 0.498039215686275],
      steelBlue: [0.274509803921569, 0.509803921568627, 0.705882352941177],
      tan: [0.823529411764706, 0.705882352941177, 0.549019607843137],
      teal: [0.0, 0.501960784313725, 0.501960784313725],
      thistle: [0.847058823529412, 0.749019607843137, 0.847058823529412],
      tomato: [1.0, 0.388235294117647, 0.27843137254902],
      turquoise: [0.250980392156863, 0.87843137254902, 0.815686274509804],
      violet: [0.933333333333333, 0.509803921568627, 0.933333333333333],
      wheat: [0.96078431372549, 0.870588235294118, 0.701960784313725],
      white: [1.0, 1.0, 1.0],
      whiteSmoke: [0.96078431372549, 0.96078431372549, 0.96078431372549],
      yellow: [1.0, 1.0, 0.0],
      yellowGreen: [0.603921568627451, 0.803921568627451, 0.196078431372549]
    ]

    CMYK = RGhost::Constants::HashKeyMethodClass[
      AliceBlue: [0.0588235294117647, 0.0274509803921569, 0.0, 0.0],
      AntiqueWhite: [0.0, 0.06, 0.14, 0.0196078431372549],
      Aqua: [1.0, 0.0, 0.0, 0.0],
      Aquamarine: [0.501960784313725, 0.0, 0.168627450980392, 0.0],
      Azure: [0.0588235294117647, 0.0, 0.0, 0.0],
      Beige: [0.0, 0.0, 0.102040816326531, 0.0392156862745098],
      Bisque: [0.0, 0.105882352941176, 0.231372549019608, 0.0],
      Black: [0.0, 0.0, 0.0, 1.0],
      BlanchedAlmond: [0.0, 0.0784313725490197, 0.196078431372549, 0.0],
      Blue: [1.0, 1.0, 0.0, 0.0],
      BlueViolet: [0.389380530973451, 0.809734513274336, 0.0, 0.113725490196078],
      Brown: [0.0, 0.745454545454545, 0.745454545454545, 0.352941176470588],
      BurlyWood: [0.0, 0.171171171171171, 0.391891891891892, 0.129411764705882],
      CadetBlue: [0.40625, 0.0125, 0.0, 0.372549019607843],
      Chartreuse: [0.501960784313725, 0.0, 1.0, 0.0],
      Chocolate: [0.0, 0.5, 0.857142857142857, 0.176470588235294],
      Coral: [0.0, 0.501960784313725, 0.686274509803922, 0.0],
      CornflowerBlue: [0.578059071729958, 0.371308016877637, 0.0, 0.0705882352941176],
      Cornsilk: [0.0, 0.0274509803921569, 0.137254901960784, 0.0],
      Crimson: [0.0, 0.909090909090909, 0.727272727272727, 0.137254901960784],
      Cyan: [1.0, 0.0, 0.0, 0.0],
      DarkBlue: [1.0, 1.0, 0.0, 0.454901960784314],
      DarkCyan: [1.0, 0.0, 0.0, 0.454901960784314],
      DarkGoldenRod: [0.0, 0.271739130434783, 0.940217391304348, 0.27843137254902],
      DarkGray: [0.0, 0.0, 0.0, 0.337254901960784],
      DarkGreen: [1.0, 0.0, 1.0, 0.607843137254902],
      DarkGrey: [0.0, 0.0, 0.0, 0.337254901960784],
      DarkKhaki: [0.0, 0.0317460317460318, 0.433862433862434, 0.258823529411765],
      DarkMagenta: [0.0, 1.0, 0.0, 0.454901960784314],
      DarkOliveGreen: [0.205607476635514, 0.0, 0.560747663551402, 0.580392156862745],
      DarkOrchid: [0.25, 0.754901960784314, 0.0, 0.2],
      DarkRed: [0.0, 1.0, 1.0, 0.454901960784314],
      DarkSalmon: [0.0, 0.356223175965665, 0.476394849785408, 0.0862745098039216],
      DarkSeaGreen: [0.23936170212766, 0.0, 0.23936170212766, 0.262745098039216],
      DarkSlateBlue: [0.482014388489209, 0.56115107913669, 0.0, 0.454901960784314],
      DarkSlateGray: [0.405063291139241, 0.0, 0.0, 0.690196078431373],
      DarkSlateGrey: [0.405063291139241, 0.0, 0.0, 0.690196078431373],
      DarkTurquoise: [1.0, 0.0143540669856459, 0.0, 0.180392156862745],
      DarkViolet: [0.298578199052133, 1.0, 0.0, 0.172549019607843],
      Darkorange: [0.0, 0.450980392156863, 1.0, 0.0],
      DeepPink: [0.0, 0.92156862745098, 0.423529411764706, 0.0],
      DeepSkyBlue: [1.0, 0.250980392156863, 0.0, 0.0],
      DimGray: [0.0, 0.0, 0.0, 0.588235294117647],
      DimGrey: [0.0, 0.0, 0.0, 0.588235294117647],
      DodgerBlue: [0.882352941176471, 0.435294117647059, 0.0, 0.0],
      FireBrick: [0.0, 0.808988764044944, 0.808988764044944, 0.301960784313726],
      FloralWhite: [0.0, 0.0196078431372549, 0.0588235294117647, 0.0],
      ForestGreen: [0.755395683453237, 0.0, 0.755395683453237, 0.454901960784314],
      Fuchsia: [0.0, 1.0, 0.0, 0.0],
      Gainsboro: [0.0, 0.0, 0.0, 0.137254901960784],
      GhostWhite: [0.0274509803921569, 0.0274509803921569, 0.0, 0.0],
      Gold: [0.0, 0.156862745098039, 1.0, 0.0],
      GoldenRod: [0.0, 0.243119266055046, 0.853211009174312, 0.145098039215686],
      Gray: [0.0, 0.0, 0.0, 0.498039215686275],
      Green: [1.0, 0.0, 1.0, 0.498039215686275],
      GreenYellow: [0.32156862745098, 0.0, 0.815686274509804, 0.0],
      Grey: [0.0, 0.0, 0.0, 0.498039215686275],
      HoneyDew: [0.0588235294117647, 0.0, 0.0588235294117647, 0.0],
      HotPink: [0.0, 0.588235294117647, 0.294117647058823, 0.0],
      IndianRed: [0.0, 0.551219512195122, 0.551219512195122, 0.196078431372549],
      Indigo: [0.423076923076923, 1.0, 0.0, 0.490196078431373],
      Ivory: [0.0, 0.0, 0.0588235294117647, 0.0],
      Khaki: [0.0, 0.0416666666666666, 0.416666666666667, 0.0588235294117647],
      LavenderBlush: [0.0, 0.0588235294117647, 0.0392156862745098, 0.0],
      Lavender: [0.0799999999999999, 0.0799999999999999, 0.0, 0.0196078431372549],
      LawnGreen: [0.507936507936508, 0.0, 1.0, 0.0117647058823529],
      LemonChiffon: [0.0, 0.0196078431372549, 0.196078431372549, 0.0],
      LightBlue: [0.247826086956522, 0.0608695652173913, 0.0, 0.0980392156862745],
      LightCoral: [0.0, 0.466666666666667, 0.466666666666667, 0.0588235294117647],
      LightCyan: [0.12156862745098, 0.0, 0.0, 0.0],
      LightGoldenRodYellow: [0.0, 0.0, 0.16, 0.0196078431372549],
      LightGray: [0.0, 0.0, 0.0, 0.172549019607843],
      LightGreen: [0.394957983193277, 0.0, 0.394957983193277, 0.0666666666666667],
      LightGrey: [0.0, 0.0, 0.0, 0.172549019607843],
      LightPink: [0.0, 0.286274509803922, 0.243137254901961, 0.0],
      LightSalmon: [0.0, 0.372549019607843, 0.52156862745098, 0.0],
      LightSeaGreen: [0.820224719101124, 0.0, 0.0449438202247191, 0.301960784313726],
      LightSkyBlue: [0.46, 0.176, 0.0, 0.0196078431372549],
      LightSlateGray: [0.222222222222222, 0.111111111111111, 0.0, 0.4],
      LightSlateGrey: [0.222222222222222, 0.111111111111111, 0.0, 0.4],
      LightSteelBlue: [0.207207207207207, 0.117117117117117, 0.0, 0.129411764705882],
      LightYellow: [0.0, 0.0, 0.12156862745098, 0.0],
      Lime: [1.0, 0.0, 1.0, 0.0],
      LimeGreen: [0.75609756097561, 0.0, 0.75609756097561, 0.196078431372549],
      Linen: [0.0, 0.04, 0.0799999999999999, 0.0196078431372549],
      Magenta: [0.0, 1.0, 0.0, 0.0],
      Maroon: [0.0, 1.0, 1.0, 0.498039215686275],
      MediumAquaMarine: [0.502439024390244, 0.0, 0.170731707317073, 0.196078431372549],
      MediumBlue: [1.0, 1.0, 0.0, 0.196078431372549],
      MediumOrchid: [0.118483412322275, 0.597156398104265, 0.0, 0.172549019607843],
      MediumPurple: [0.319444444444444, 0.481481481481481, 0.0, 0.152941176470588],
      MediumSeaGreen: [0.664804469273743, 0.0, 0.368715083798883, 0.298039215686275],
      MediumSlateBlue: [0.483193277310924, 0.563025210084034, 0.0, 0.0666666666666667],
      MediumSpringGreen: [1.0, 0.0, 0.384, 0.0196078431372549],
      MediumTurquoise: [0.655502392344498, 0.0, 0.0239234449760765, 0.180392156862745],
      MediumVioletRed: [0.0, 0.894472361809045, 0.331658291457286, 0.219607843137255],
      MidnightBlue: [0.776785714285714, 0.776785714285714, 0.0, 0.56078431372549],
      MintCream: [0.0392156862745098, 0.0, 0.0196078431372549, 0.0],
      MistyRose: [0.0, 0.105882352941176, 0.117647058823529, 0.0],
      Moccasin: [0.0, 0.105882352941176, 0.290196078431373, 0.0],
      NavajoWhite: [0.0, 0.129411764705882, 0.32156862745098, 0.0],
      Navy: [1.0, 1.0, 0.0, 0.498039215686275],
      OldLace: [0.0, 0.0316205533596838, 0.0909090909090909, 0.00784313725490193],
      Olive: [0.0, 0.0, 1.0, 0.498039215686275],
      OliveDrab: [0.246478873239437, 0.0, 0.753521126760563, 0.443137254901961],
      Orange: [0.0, 0.352941176470588, 1.0, 0.0],
      OrangeRed: [0.0, 0.729411764705882, 1.0, 0.0],
      Orchid: [0.0, 0.486238532110092, 0.0183486238532109, 0.145098039215686],
      PaleGoldenRod: [0.0, 0.0252100840336135, 0.285714285714286, 0.0666666666666667],
      PaleGreen: [0.394422310756972, 0.0, 0.394422310756972, 0.015686274509804],
      PaleTurquoise: [0.264705882352941, 0.0, 0.0, 0.0666666666666667],
      PaleVioletRed: [0.0, 0.481481481481481, 0.319444444444444, 0.152941176470588],
      PapayaWhip: [0.0, 0.0627450980392157, 0.164705882352941, 0.0],
      PeachPuff: [0.0, 0.145098039215686, 0.274509803921569, 0.0],
      Peru: [0.0, 0.351219512195122, 0.692682926829268, 0.196078431372549],
      Pink: [0.0, 0.247058823529412, 0.203921568627451, 0.0],
      Plum: [0.0, 0.276018099547511, 0.0, 0.133333333333333],
      PowderBlue: [0.234782608695652, 0.0260869565217392, 0.0, 0.0980392156862745],
      Purple: [0.0, 1.0, 0.0, 0.498039215686275],
      Red: [0.0, 1.0, 1.0, 0.0],
      RosyBrown: [0.0, 0.23936170212766, 0.23936170212766, 0.262745098039216],
      RoyalBlue: [0.711111111111111, 0.533333333333333, 0.0, 0.117647058823529],
      SaddleBrown: [0.0, 0.503597122302158, 0.863309352517986, 0.454901960784314],
      Salmon: [0.0, 0.488, 0.544, 0.0196078431372549],
      SandyBrown: [0.0, 0.327868852459016, 0.60655737704918, 0.0431372549019607],
      SeaGreen: [0.669064748201439, 0.0, 0.37410071942446, 0.454901960784314],
      SeaShell: [0.0, 0.0392156862745098, 0.0666666666666667, 0.0],
      Sienna: [0.0, 0.4875, 0.71875, 0.372549019607843],
      Silver: [0.0, 0.0, 0.0, 0.247058823529412],
      SkyBlue: [0.425531914893617, 0.123404255319149, 0.0, 0.0784313725490197],
      SlateBlue: [0.482926829268293, 0.560975609756098, 0.0, 0.196078431372549],
      SlateGray: [0.222222222222222, 0.111111111111111, 0.0, 0.435294117647059],
      SlateGrey: [0.222222222222222, 0.111111111111111, 0.0, 0.435294117647059],
      Snow: [0.0, 0.0196078431372549, 0.0196078431372549, 0.0],
      SpringGreen: [1.0, 0.0, 0.501960784313725, 0.0],
      SteelBlue: [0.611111111111111, 0.277777777777778, 0.0, 0.294117647058823],
      Tan: [0.0, 0.142857142857143, 0.333333333333333, 0.176470588235294],
      Teal: [1.0, 0.0, 0.0, 0.498039215686275],
      Thistle: [0.0, 0.115740740740741, 0.0, 0.152941176470588],
      Tomato: [0.0, 0.611764705882353, 0.72156862745098, 0.0],
      Turquoise: [0.714285714285714, 0.0, 0.0714285714285714, 0.12156862745098],
      Violet: [0.0, 0.453781512605042, 0.0, 0.0666666666666667],
      Wheat: [0.0, 0.0938775510204082, 0.269387755102041, 0.0392156862745098],
      White: [0.0, 0.0, 0.0, 0.0],
      WhiteSmoke: [0.0, 0.0, 0.0, 0.0392156862745098],
      Yellow: [0.0, 0.0, 1.0, 0.0],
      YellowGreen: [0.248780487804878, 0.0, 0.75609756097561, 0.196078431372549]
    ]
  end

  # Standard papers
  module Papers
    STANDARD = {
      "11x17" => [792, 1224],
      :ledger => [1224, 792],
      :legal => [612, 1008],
      :letter => [612, 792],
      :lettersmall => [612, 792],
      :archE => [2592, 3456],
      :archD => [1728, 2592],
      :archC => [1296, 1728],
      :archB => [864, 1296],
      :archA => [648, 864],
      # ISO standard]
      :a0 => [2384, 3370],
      :a1 => [1684, 2384],
      :a2 => [1191, 1684],
      :a3 => [842, 1191],
      :a4 => [595, 842],
      :a4small => [595, 842],
      :a5 => [420, 595],
      :a6 => [297, 420],
      :a7 => [210, 297],
      :a8 => [148, 210],
      :a9 => [105, 148],
      :a10 => [73, 105],
      :isob0 => [2835, 4008],
      :isob1 => [2004, 2835],
      :isob2 => [1417, 2004],
      :isob3 => [1001, 1417],
      :isob4 => [709, 1001],
      :isob5 => [499, 709],
      :isob6 => [354, 499],
      :c0 => [2599, 3677],
      :c1 => [1837, 2599],
      :c2 => [1298, 1837],
      :c3 => [918, 1298],
      :c4 => [649, 918],
      :c5 => [459, 649],
      :c6 => [323, 459],
      # JIS standard
      :jisb0 => [1030, 1456],
      :jisb1 => [728, 1030],
      :jisb2 => [515, 728],
      :jisb3 => [364, 515],
      :jisb4 => [257, 364],
      :jisb5 => [182, 257],
      :jisb6 => [128, 182],
      # Other
      :flsa => [612, 936],
      :flse => [612, 936],
      :halfletter => [396, 612]
    }
  end
end

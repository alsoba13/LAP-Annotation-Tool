# LAP annotation-tool enviroment with vagrant

Here you will find the source code to install the LAP annotation-tool on your server. LAP annotation-tool is a specialized annotation tool with many keyboard shortcuts, which has been developed by adapting the web-based tool for image annotation known as [LabelMe](http://labelme.csail.mit.edu).

LAP annotation-tool can be used for any image annotation problem with multiple labels per image. Broadly speaking, it allows to load pictures and select N sets of labels, and then it creates an environment with N keys to easily switch between the target labels.

### CITATION:

P. Herruzo, L. Portell, A. Soto, B. Remeseiro (2017). Analyzing First-Person Stories Based on Socializing, Eating and Sedentary Patterns. In: Battiato S., Farinella G., Leo M., Gallo G. (eds) New Trends in Image Analysis and Processing – ICIAP 2017. Lecture Notes in Computer Science, vol. 10590, pp. 109-119, Springer.

### DOWNLOAD:

You can download a [zip file of the source code](https://github.com/alsoba13/LAP-Annotation-Tool/archive/master.zip) directly.

Alternatively, you can clone it from GitHub as follows:

``` sh
$ git clone https://github.com/alsoba13/LAP-Annotation-Tool.git
```

### INSTRUCTIONS:

First you will need to create the `datasets` folder in the following way. Those are added in the gitignore file, but you have to add manually:

```
LAP-Annotation-Tool
`--datasets
    `-- food
          |-- annotations
          `-- images    
```


After that, you are ready to set up Vagrant. To start the enviroment, go to `labelme` folder and do:
```
vagrant up
```

The images are ignored in the git, so you have to manually move images to some folder in `datasets/food/images`. After that, you have to create a folder with the same name in `datasets/food/annotations`.

For example: 
```
datasets
`-- food
      |-- annotations
      |     `-- 01_Crop_Crop
      `-- images
            `-- 01_Crop_Crop     
```

You can now label images through
```
http://localhost:8080/tool.html?mode=f&folder=food/01_Crop_Crop
```
Note that that works with `01_Crop_crop` folder, but you can make it work for any other.

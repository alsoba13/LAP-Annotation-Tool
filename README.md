# LAP Annotation Tool Enviroment with vagrant.

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

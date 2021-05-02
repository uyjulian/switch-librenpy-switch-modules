# pygame_sdl2 and Ren'Py modules for Nintendo Switch

This repository contains pygame_sdl2 and Ren'Py modules for Nintendo Switch.  
This repository is used in the build process for [Ren'Py for Nintendo Switch](https://github.com/uyjulian/renpy-switch).  

# Building

These steps are done on a Ubuntu 18.04 based image.  
Clone the repository.  
```bash
git clone https://github.com/uyjulian/switch-librenpy-switch-modules.git
```
Change directory to inside the repository.
```bash
cd switch-librenpy-switch-modules
```
Install prerequisites.
```bash
sudo bash setup.bash
```
Set up the docker environment.
```bash
sudo bash setup-docker.bash
```
Download and extract pygame_sdl2 and Ren'Py.
```bash
bash extract.bash
```
Generate the C sources with Cython.
```bash
sudo bash generate-sources-docker.bash
```
Configure, build, and archive prefix.
```bash
sudo bash build-switch-docker.bash
```
Package the pure python libraries into a zip file.
```bash
bash package-pylibs.bash
```
The resulting files are:  
* `renpy-switch-modules-pylibs.zip` - The pure python modules  
* `renpy-switch-modules.tar.gz` - The static library for native modules  
* `renpy.py` - The startup script for Ren'Py  

# License

This repository is licensed under the MIT license. For more information, see `LICENSE` file.

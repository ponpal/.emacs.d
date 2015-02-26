.emacs.d
========

My .emacs.d folder. Feel free to take anything you like.

### Precautions

If you already have your own emacs customizations, cloning my repository into your home folder might not be a good idea. In that case, it's probably better to take a look at the [Cask project][cask] and my init.el file. 

### Initial setup and Cask

After emacs is installed, clone this repository into your home folder:

```git clone https://github.com/ponpal/.emacs.d.git```

I use [cask][cask] for managing packages. To install it, follow [these instructions][cask-installation].

To install the packages listed in my Cask file, all you have to do is issue the following command inside .emacs.d:

```cask install```

[cask]: http://cask.readthedocs.org/en/latest/
[cask-installation]: http://cask.readthedocs.org/en/latest/guide/installation.html

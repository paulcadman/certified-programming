## Coq Tooling

I use spacemacs configured with the `coq` layer.

The clearest instructions on how to install spacemacs are in the [github README](https://github.com/syl20bnr/spacemacs). Highlights:

* You'll need a newish version of emacs. You can [install using homebrew](https://github.com/syl20bnr/spacemacs#macos).
* Follow the [default install instructions](https://github.com/syl20bnr/spacemacs#default-installation).
* **important** checkout the develop branch of spacemacs. (i.e run `git checkout develop` in the `~/.emacs.d` directory after you've cloned spacemacs there). This is because the spacemacs `coq` layer is not present in the `master` branch.
* When you run emacs you should now see the spacemacs splash screen.
* Install the [coq layer](http://develop.spacemacs.org/layers/+lang/coq/README.html).

Now when you load a Coq file (`.v` extension) spacemacs will open the file in three pane proof layout (similar to CoqIDE). You can then step through proofs and see goals etc.

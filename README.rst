Description
===========

salt-state-shorewall is a saltstack state to install and manage shorewall.

Usage
=====

salt-state-shorewall is designed to be used as a git submodule.
It's named salt-state-shorewall and not shorewall to avoid name collision.
It MUST be cloned as shorewall in your salt file_roots since all files are
referenced as salt://shorewall/.

::

    cd file_roots/
    git clone https://github.com/makinacorpus/salt-state-shorewall.git shorewall

Now you can use shorewall in your file_roots/top.sls

::

    base:
      '*':
          - shorewall

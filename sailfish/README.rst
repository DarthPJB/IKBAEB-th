===============================================================================
Keyboard layout for Sailfish OS
===============================================================================

.. image:: ./sailfish-layout.png
   :alt: Screenshot of Ikbaeb’s unshifted layout modified for Sailfish OS

.. note::

   Sailfish OS uses FOSS Maliit for its keyboards

Installation
===============================================================================

.. code:: sh-session

   $ cd /usr/share/maliit/plugins/com/jolla/layouts
   $ devel-su cp $IKBAEB/layouts_ikbaeb.conf $IKBAEB/th_ikbaeb.qml .
   $ devel-su chmod 644 layouts_ikbaeb.conf th_ikbaeb.qml
   $ killall maliit-server
   $ systemctl --user restart lipstick

Gentoo ebuild overlay for Synnefo
=================================

This overlay will (hopefully) provide all the ebuilds (server- and client-side)
required to setup and run the Synnefo IaaS cloud platform
(http://www.synnefo.org).

For more information about Synnefo, check out the docs
(http://www.synnefo.org/docs) and our free trial on https://www.okeanos.io.

Usage
-----
Set up layman (http://www.gentoo.org/proj/en/overlays/userguide.xml), and then
run:
<pre>
	layman -i synnefo
	layman -a synnefo
	layman -S 
</pre>

After that, you can emerge any of the ebuilds in the overlay.

About the ebuilds
-----------------
The overlay currently has ebuilds for kamaki (Synnefo CLI API client),
snf-image-creator (create snapshot / images and register them with Synnefo) and
a few Python packages they depend on.

Caveats / Known issues
----------------------
 * snf-image-creator depends on libguestfs python bindings. libguestfs's build
   system will only install the bindings for the 'current' Python version, and 
   that's why python bindings are disabled in the official Portage ebuild. The
   overlay includes a modified libguestfs ebuild, with support for python bindings,
   but it has the above limitation. Hopefully, there will be a workaround soon.

 * snf-image-creator is currently installed in /usr/bin, but it requires root
   privileges for various operations and invokes commands residing in /sbin.
   Therefore it won't work if run as a non-privileged user.

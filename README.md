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

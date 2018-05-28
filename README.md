ansible-locale
=============

Configure locale settings.

Requirements
------------

No special pre-requisites.

Role Variables
--------------

    - name: locale_lang
      default: "en_US.UTF-8"
	  description: default LANG
    - name: locale_lc_{{ item }}
	  with_items:
	    - "ctype"
	    - "numeric"
	    - "time"
	    - "collate"
	    - "monetary"
	    - "messages"
	    - "paper"
	    - "name"
	    - "address"
	    - "telephone"
		- "measurement"
		- "identification"
	  default: follows the given locale_lang
	  description: default for various LC_* variables

See [Debian](https://wiki.debian.org/Locale) and [Ubuntu](https://help.ubuntu.com/community/Locale) documentation for more information.

Dependencies
------------

None.

Example Playbook
----------------

Note that this role does not currently pre-generate the requested locale,
so if you use something other than en_US.UTF-8 please ensure it is available
on the server you configure.

    - hosts: servers
      roles:
        - role: ansible-locale
	      lang: en_US.UTF-8
		  lc_paper: id_ID.UTF-8


if [[ ${EBUILD_PHASE} == postinst ]]
then
	if [[ -e /etc/env.d/python/config ]]
	then
		if grep -q python2\.6 /etc/env.d/python/config ||
			grep -q python2\.5 /etc/env.d/python/config
		then
			if [[ -x /usr/bin/eselect ]]
			then
				eselect python set python2.7
			else
				echo python2.7 >/etc/env.d/python/config
			fi
		fi
	fi
fi

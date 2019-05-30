#/usr/bin/env bash

set -ex

case $1 in
	build|b)
		choco pack */main.nuspec
		;;
	install|i)
		package=${2:-'igdm'}
		choco install $package -dvs .
		;;
	push|p)
		nupkg=${2:-*.nupkg}
		choco push $nupkg
		;;
	*)
		echo "Unknown command: $1"
		exit 1
		;;
esac
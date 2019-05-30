#/usr/bin/env bash

set -ex

case $1 in
	build)
		choco pack */main.nuspec
		;;
	install)
		package=${2:-'igdm'}
		choco install $package -dvs .
		;;
	push)
		nupkg=${2:-*.nupkg}
		choco push $nupkg
		;;
	*)
		echo "Unknown command: $1"
		exit 1
		;;
esac
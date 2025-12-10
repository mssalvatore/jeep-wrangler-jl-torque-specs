#!/bin/bash

mkdir -p artifacts/
pandoc \
	--standalone \
	--section-divs \
	--css=./style.css \
	--from=markdown \
	--to=html \
	--lua-filter=remove-colgroups.lua \
	torque-specs.md >artifacts/torque-specs.html

cp style.css artifacts/

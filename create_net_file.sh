#!/bin/bash

echo "$0 <type_file> <osm_file> <output_file>"
echo "<type_file> (.typ.xml)"
echo "<osm_file> (.osm)"
echo "<output_file> (.net.xml)"

netconvert --lefthand --xml-type-files $1 --guess-ramps --remove-edges.by-vclass hov,taxi,bus,delivery,transport,lightrail,cityrail,rail_slow,rail_fast,motorcycle,bicycle,pedestrian --geometry.remove --remove-edges.isolated --try-join-tls --verbose --osm-files $2 --output-file $3

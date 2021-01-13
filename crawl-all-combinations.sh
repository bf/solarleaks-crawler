#!/bin/bash

(
  echo {a..z}{a..z}{a..z}{a..z}
  echo {a..z}{a..z}{a..z}
) | tr ' ' '\n' | egrep -iv "(csco|msft|feye|swi)" | while read candidate;
do
  echo $candidate;
  (wget -q "http://solarleaks.net/$candidate.tgz.enc" & );
done

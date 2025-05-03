#!/bin/bash

pushd /workspaces/zmk/app

west build -d build/left -p -b nice_nano_v2 -- -DSHIELD="little_wing_left nice_view" -DZMK_CONFIG="/workspaces/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-config" 
cp build/left/zephyr/zmk.uf2 /workspaces/zmk-config/build/left.uf2

west build -d build/right -p -b nice_nano_v2 -- -DSHIELD="little_wing_right nice_view" -DZMK_CONFIG="/workspaces/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-config;/workspaces/zmk-config/drivers/pmw3610" 
cp build/right/zephyr/zmk.uf2 /workspaces/zmk-config/build/right.uf2
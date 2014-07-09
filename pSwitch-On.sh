#!/bin/sh

echo "Powering On..."
curl https://agent.electricimp.com/wVpkH_DBGsjA -d '{ "type":"set_switch", "value":1 }'



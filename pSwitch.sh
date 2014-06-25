#!/bin/sh

echo "Powering Off..."
curl https://agent.electricimp.com/wVpkH_DBGsjA -d '{ "type":"set_switch", "value":0 }'

echo "Powering On..."
curl https://agent.electricimp.com/wVpkH_DBGsjA -d '{ "type":"set_switch", "value":1 }'



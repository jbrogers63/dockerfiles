#!/bin/sh

GF_ROOT=/opt/glassfish7
PATH=${PATH}:${GF_ROOT}/bin

asadmin start-domain --verbose domain1

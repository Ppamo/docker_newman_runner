#!/bin/sh


newman run /tests/Calculator.postman_collection.json \
	--bail \
	--reporters cli

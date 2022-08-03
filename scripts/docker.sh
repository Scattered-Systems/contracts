#!/usr/bin/env bash
docker build . --tag jo3mccain/contracts:next
docker run jo3mccain/contracts:next
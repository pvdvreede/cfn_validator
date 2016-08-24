[![Build Status](https://travis-ci.org/pvdvreede/cfn_validator.svg?branch=master)](https://travis-ci.org/pvdvreede/cfn_validator)

# Cloudformation JSON validator

A CLI tool and Ruby API to validate a Cloudformation file.

This tool uses contracts.ruby to hopefully build up and maintain a validation for Cloudformation that goes beyond simple key checks. It is the goal to build up a library of all resources, availability zones, regions, types as well as specific rules such as regexs to provide fast feedback to developers when developing a cloudformation so that they can quickly iterate without having to deploy the cloudformation constantly. It could also be used as a CI step in your pipeline.

#!/bin/bash

case $GITHUB_HEAD_REF in
                      feature/*)
                          if [[ ! ( "$GITHUB_BASE_REF" == "develop" ) ]];
                          then
                              echo "The $GITHUB_HEAD_REF branch is not mergeable to $GITHUB_BASE_REF"
                              exit 2
                          fi
                      ;;
                      release/*)
                          if [[ ! ( "$GITHUB_BASE_REF" == "develop" || "$GITHUB_BASE_REF" == "master" ) ]];
                          then
                              echo "The $GITHUB_HEAD_REF branch is not mergeable to $GITHUB_BASE_REF"
                              exit 2
                          fi
                      ;;
                      hotfix/*)
                          if [[ ! ( "$GITHUB_BASE_REF" == "develop" || "$GITHUB_BASE_REF" == "master" ) ]];
                          then
                              echo "The $GITHUB_HEAD_REF branch is not mergeable to $GITHUB_BASE_REF"
                              exit 2
                          fi
                      ;;
                      *)
                          echo "The branch $GITHUB_HEAD_REF cannot be merged to the branch $GITHUB_BASE_REF "
                          exit 2
                  esac

# islevi temel olarak calistiginiz branch adini kontrol ediyor ve belirtilen kurallara uymuyorsa master branch’e merge isleminin yapilmasini engelliyor.
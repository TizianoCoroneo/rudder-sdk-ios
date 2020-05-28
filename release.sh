read -p "Are you sure to release? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Remove all the symlinks in the SPM module include directory
  cd ./Sources/RudderObjC/include
  rm -f ./*.h
  # Regenerate all the symlinks from the header files in the project, placing them in the include folder to make SPM able to find them
  ln -s ../../**/*.h .
  git tag -a $1 -m "Release $1"
  git push origin $1
fi


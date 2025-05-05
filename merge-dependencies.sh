#!/bin/bash
# Check if pubspec.yaml exists
if [ ! -f "pubspec.yaml" ]; then
  echo "pubspec.yaml not found!"
  exit 1
fi

# Check if dependency_overrides section already exists
if grep -q "dependency_overrides:" pubspec.yaml; then
  echo "dependency_overrides section already exists in pubspec.yaml"
  # Append override content without the dependency_overrides: line
  grep -v "dependency_overrides:" dependency_overrides.yaml >> pubspec.yaml
else
  # Append entire content
  cat dependency_overrides.yaml >> pubspec.yaml
fi

echo "Updated pubspec.yaml content:"
cat pubspec.yaml
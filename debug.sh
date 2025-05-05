
#!/bin/bash
set -e  # Exit immediately if a command fails
echo "Current directory: $(pwd)"
echo "Directory contents: $(ls -la)"
echo "Flutter directory exists: $(test -d flutter && echo 'Yes' || echo 'No')"
echo "Flutter binary exists: $(test -f flutter/bin/flutter && echo 'Yes' || echo 'No')"
echo "Flutter binary is executable: $(test -x flutter/bin/flutter && echo 'Yes' || echo 'No')"

export PATH="$PATH:`pwd`/flutter/bin"
echo "Updated PATH: $PATH"
echo "Flutter version:"
./flutter/bin/flutter --version || echo "Could not run Flutter"

echo "Starting Flutter build in verbose mode..."
./flutter/bin/flutter build web --release --verbose || echo "Flutter build failed"
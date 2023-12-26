#!/bin/bash

LOG_FILE=/root/scripts/user_data/user_data.log
exec > "$LOG_FILE" 2>&1

echo "Starting user data script..."

USER_DATA_DIR="/root/scripts/user_data"
USER_DATA_SCRIPT="$USER_DATA_DIR/user_data.sh"

# Create the directory if it doesn't exist
mkdir -p "$USER_DATA_DIR"

# Create user data script
cat << 'EOF' > "$USER_DATA_SCRIPT"
#!/bin/bash
dnf clean all
dnf makecache
dnf upgrade -y
EOF

# Execute the user data script
bash "$USER_DATA_SCRIPT"

echo "User data script completed."


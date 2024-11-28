#!/bin/bash

# Function to copy .fig-export to ~/fig-export
copy_fig_export() {
    echo "Copying .fig-export directory to ~/fig-export..."
    cp -r .fig-export ~/fig-export
    echo ".fig-export directory copied successfully."
}

# Call the function
copy_fig_export

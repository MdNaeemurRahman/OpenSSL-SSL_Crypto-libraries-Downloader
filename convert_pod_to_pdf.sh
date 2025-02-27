#!/bin/bash

# Create the output directory
mkdir -p OpenSSL

# Loop through all .pod files in the man3 directory
for podfile in man3/*.pod; do
    filename=$(basename "$podfile" .pod)  # Get filename without extension
    manfile="OpenSSL/$filename.1"        # Convert to man format
    pdffile="OpenSSL/$filename.pdf"      # Output PDF file

    # Convert .pod to .man using pod2man
    pod2man "$podfile" > "$manfile"

    # Convert .man to PDF using groff
    groff -Tpdf -mandoc "$manfile" > "$pdffile"

    # Remove temporary .man file
    rm "$manfile"

    echo "Converted $podfile to $pdffile"
done

# Create a ZIP file containing all PDFs
zip -r OpenSSL_PDFs.zip OpenSSL/


echo "All PDFs are saved in the 'OpenSSL' folder and zipped as OpenSSL_PDFs.zip"

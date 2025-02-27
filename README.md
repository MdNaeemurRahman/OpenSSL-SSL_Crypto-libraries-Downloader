
# OpenSSL-SSL_Crypto-libraries-Downloader
Auto Download and Covert Script. OpenSSL API for the SSL and Crypto libraries Documentation
### Convert OpenSSL .pod Files to PDF and Create a ZIP PDF DOC

## Step 1: Clone OpenSSL Repository from GitHub
Clone the latest OpenSSL source code:

```bash
git clone https://github.com/openssl/openssl.git
```

After cloning, navigate into the OpenSSL directory:

```bash
cd ~/openssl_source
```

## Step 2: Install Required Dependencies
You'll need `pod2pdf` or an alternative way to convert `.pod` (Perl documentation) to PDF. You can use `pod2man` (to convert `.pod` to `man`) and `groff` (to convert `man` to `pdf`):

```bash
sudo apt update
sudo apt install groff zip perl
```

## Step 3: Convert `.pod` to PDF and Save in `OpenSSL` Folder
Copy the Bash script (`convert_pod_to_pdf.sh`) and keep it in the same directory

### Give Execute Permissions to the Script
```bash
chmod +x convert_pod_to_pdf.sh
```

### Run the Script
```bash
./convert_pod_to_pdf.sh
```

## How It Works
- Reads all `.pod` files from `man3/`
- Converts them to `man` format using `pod2man`
- Processes `man` files into `PDF` using `groff`
- Stores all PDFs in the `OpenSSL/` directory
- Compresses the `OpenSSL/` folder into a ZIP file named `OpenSSL_PDFs.zip`

## Final Output
✅ PDFs stored in `OpenSSL/`
✅ Zip file created

---

This script automates the process of converting OpenSSL `.pod` files into PDFs and packaging them into a zip file. 🚀
```

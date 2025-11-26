# WEBSITE_SPEC.md - Strongbox (Private Vault Platform)

> **NOTE:** This file is for the frontend developer. After the website is created, this file can be deleted from the repository.

## General Description

Strongbox is a vault platform for encrypted data storage. All stored data remains encrypted until decrypted by the owner.

## Website Structure

### Home Page (/)

**Header:**
- Logo "Strongbox" (click → home)
- Navigation:
  - "Vault" (click → /vault)
  - "Add Data" (click → /add-data)
  - "My Data" (click → /my-data)
  - "Share" (click → /share)
- "Connect Wallet" button

**Hero:**
- Title: "Private Data Vault"
- Subtitle: "Store your data with complete encryption"
- Button "View Vault" (click → /vault)

**Features:**
- "Encrypted Storage" - all data encrypted
- "Private Access" - only you can decrypt
- "Secure Sharing" - share data securely
- "Data Privacy" - complete data protection

### Page "Vault" (/vault)

**Vault Overview:**
- Total Items (encrypted count)
- Total Size (encrypted, shown as "***")
- Storage Used (encrypted percentage)
- Recent Items (encrypted list)

### Page "Add Data" (/add-data)

**Data Upload Form:**
- Field "Data Name" (text)
- Field "Data Type" (dropdown: Document, Image, Video, Text, Other)
- Field "File Upload" (file input)
- Field "Description" (textarea, will be encrypted)
- Field "Tags" (tags input)
- Button "Encrypt & Store"
  - On click: encrypts data and stores
  - Shows "Data stored successfully"
  - Redirects to /my-data

### Page "My Data" (/my-data)

**Data List:**
- Table of stored data:
  - Columns: Name, Type, Size (encrypted), Date, Actions
  - Button "View Data"
  - Button "Decrypt Data"
  - Button "Share Data"
  - Button "Delete Data"
- Filters: by type, by date, by tags

**Data Details:**
- Data information (encrypted, button "Decrypt")
- File info (encrypted)
- Description (encrypted, button "Decrypt")
- Button "Download Data"
- Button "Share Data"

### Page "Share" (/share)

**Share Interface:**
- Select data to share
- Field "Recipient Wallet Address" (address input)
- Permission Level (dropdown: View, Download, Full Access)
- Expiration Date (optional)
- Button "Grant Access"
  - On click: grants encrypted access
  - Shows "Access granted successfully"

**Access Management:**
- List of shared data
- Recipients (encrypted)
- Permission levels
- Button "Revoke Access"
- Button "Modify Permissions"

## Common UI Elements

### Modals

**Modal "Data Details":**
- Full data information
- Encrypted fields shown as "***"
- Button "Decrypt Data"
- Button "Download"
- Button "Share"
- Button "Close"

**Modal "Decrypt Data":**
- Warning: "Decrypting will reveal data content. Continue?"
- Buttons: "Cancel", "Confirm Decrypt"

**Modal "Share Data":**
- Recipient address input
- Permission level selector
- Button "Grant Access"
- Button "Cancel"

### Notifications

- "Data stored successfully" (green)
- "Access granted successfully" (green)
- "Data decrypted" (info)

### Loading

- "Encrypting data..."
- "Storing data..."
- "Decrypting data..."
- "Sharing data..."

## Navigation

- `/` - Home
- `/vault` - Vault overview
- `/add-data` - Add data
- `/my-data` - My data
- `/share` - Share data

## Design

- Vault/storage theme
- Secure, professional design
- File management interface
- Encrypted data as "***"
- Responsive design

## Technical Requirements

- Web3 wallet integration
- Zama FHEVM for data encryption
- Display encrypted data as "***"
- File upload and encryption
- Access control system
- Decryption on user request
- File download


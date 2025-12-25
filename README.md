# Host-a-Static-Website-In-AWS-S3-And-Cloudfront-using-terraform
## 🎯 Project Overview
This mini project demonstrates how I deployed a **static website on AWS** using **Terraform**. The goal was to build a **fully automated, secure, and performant static website hosting solution** leveraging **S3** and **CloudFront**.

The entire setup is managed via Terraform, ensuring reproducibility and version control for all infrastructure components.

---

## 🏗️ Architecture
```

Internet → CloudFront Distribution → Private S3 Bucket (Static Website)

```

### Components:
- **Private S3 Bucket**: Stores all static website files (HTML, CSS, JS, images). Kept private for security.
- **Origin Access Control (OAC)**: Ensures CloudFront can securely access the S3 bucket without making it public.
- **S3 Bucket Policy**: Grants CloudFront read permissions to fetch files.
- **CloudFront Distribution**: Serves content globally via edge locations with caching.
- **Terraform**: Automates the creation and management of all AWS resources.

---

## 📁 Project Structure
```

├── main.tf              # Terraform configuration for resources
├── variables.tf         # Input variables
├── outputs.tf           # Output values like CloudFront URL
├── README.md            # This file
└── www/                 # Website source files
├── index.html       # Main HTML page
├── style.css        # Stylesheet
└── script.js        # JavaScript functionality

````

---

## 🚀 Website Features
- **Modern Responsive Design**: Optimized for both desktop and mobile devices.
- **Dark/Light Theme Toggle**: User can switch themes, preference saved locally.
- **Interactive Elements**: Click counter and dynamic status updates.
- **AWS Branding**: Professional layout showcasing AWS services.
- **Animations**: Smooth transitions and loading effects for enhanced user experience.

---

## 🏗️ Infrastructure Features
- **S3 Static Website Hosting**: Secure, reliable, and scalable file hosting.
- **CloudFront CDN**: Global content delivery with caching for faster load times.
- **Origin Access Control**: Keeps the S3 bucket private, allowing only CloudFront to access content.
- **Proper MIME Types**: Ensures correct content-type headers for web files.
- **HTTPS Enabled**: CloudFront handles HTTPS, redirecting HTTP requests automatically.

---

## 🛠️ Prerequisites
- **AWS CLI** configured with proper credentials.
- **Terraform** installed (version 1.0+ recommended).
- **AWS Account** with permissions to:
  - Create S3 buckets and manage objects.
  - Create CloudFront distributions.
  - Configure IAM policies for S3 access.

---

## 📋 Deployment Steps
1. **Initialize Terraform**
```bash
terraform init
````

2. **Review the Execution Plan**

```bash
terraform plan
```

3. **Deploy Infrastructure**

```bash
terraform apply
```

Type `yes` when prompted to confirm deployment.

4. **Access Your Website**
   After deployment, Terraform outputs the CloudFront URL:

```
website_url = "https://d123xyz.cloudfront.net"
```

---

## 📊 Resources Created

| Resource Type           | Purpose                     | Count |
| ----------------------- | --------------------------- | ----- |
| S3 Bucket               | Stores website files        | 1     |
| S3 Bucket Policy        | Grants CloudFront access    | 1     |
| S3 Objects              | HTML, CSS, JS files         | 3+    |
| CloudFront Distribution | Global content delivery CDN | 1     |

---

## 🔧 Configuration Details

### S3 Bucket

* **Naming**: Auto-generated with prefix `my-static-website-`.
* **Website Hosting**: Enabled with `index.html` as default.
* **Access**: Private bucket with CloudFront access only.
* **Content Types**: Proper MIME types for all web assets.

### CloudFront

* **Origin**: S3 bucket with private access through OAC.
* **Caching**: Standard TTL of 1 hour for web files.
* **HTTPS**: Automatic HTTP → HTTPS redirection.
* **Global Distribution**: Edge locations worldwide (PriceClass_100).

### Terraform Features

* **for_each Loop**: Uploads multiple static files with automatic content hashing.
* **JSON Encoding**: Dynamically generates S3 bucket policy for CloudFront access.

---

## 🧹 Cleanup

To destroy all deployed resources and avoid AWS charges:

```bash
terraform destroy
```

Type `yes` when prompted to confirm destruction.

---

## 📚 Learning Outcomes

By completing this project, I gained hands-on experience in:

* Configuring **S3 buckets for static website hosting**.
* Setting up **CloudFront distributions** with private S3 origins.
* Managing **S3 bucket policies** and **Origin Access Control (OAC)**.
* Using Terraform `for_each` loops and `filemd5` for automated file uploads.
* Handling MIME types and caching strategies for web content.
* Understanding **AWS CDN concepts** and secure deployment best practices.

---

## 🔗 References & Useful Links

* [AWS S3 Static Website Hosting Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)
* [AWS CloudFront Documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html)
* [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
* Video Guide: *Host A Static Website In AWS S3 And CloudFront (Terraform)* – 30-day AWS Terraform series.

---

## ✅ Notes

* All configurations and file uploads were implemented using Terraform.
* CloudFront ensures fast, secure, and scalable global content delivery.
* This setup is production-ready for static websites with private S3 origins.


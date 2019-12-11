.. _s3:

AWS S3 Integration
******************

Foundry Virtual Tabletop features integrated support for AWS S3 file storage which lets you use an AWS account and S3 buckets as a built-in browseable and uploadable storage location for media assets that are used within Foundry VTT. To enable this functionality, you must include an entry in your ``options.json`` config file which points towards another JSON file that contains your AWS credentials. If such a file is correctly specified and the AWS user has permission to access S3 buckets, those buckets will be available for use in the File Browser for players who are allowed to use it. 

----------

How To Enable S3 Support
========================

Add an entry in the ``Config/options.json`` config file which exists in your user data location to include key "awsConfig" which provides a relative or absolute file path pointing to another JSON file contraining the following:

.. code-block::

	{
	  "accessKeyId": "YOUR_ACCESS_KEY_ID",
	  "secretAccessKey": "YOUR_SECRET_ACCESS_KEY",
	  "region": "YOUR_PREFERRED_REGION"
	}

----------

How To Restrict Bucket Permissions
==================================

You may not wish to allow your AWS account to access all S3 buckets from within Foundry VTT. To avoid this, you should create a specific IAM user whose access credentials are used by Foundry Virtual Tabletop. You can assign am IAM policy to this specific user which only permits access to certain buckets within your overall account. An example IAM policy which allows access to only the bucket named ``vtt-assets`` is shown below:

.. code-block::

	{
	    "Version": "2012-10-17",
	    "Statement": [
	        {
	            "Effect": "Allow",
	            "Action": [
	                "s3:ListBucket"
	            ],
	            "Resource": [
	                "arn:aws:s3:::vtt-assets"
	            ]
	        },
	        {
	            "Effect": "Allow",
	            "Action": [
	                "s3:PutObject",
	                "s3:GetObject"
	            ],
	            "Resource": [
	                "arn:aws:s3:::vtt-assets/*"
	            ]
	        }
	    ]
	}

For more information, see the following AWS support page: https://aws.amazon.com/premiumsupport/knowledge-center/s3-console-access-certain-bucket/

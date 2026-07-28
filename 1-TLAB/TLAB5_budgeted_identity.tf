 }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_budgets_budget",
      "name": "tlab_budget",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "account_id": "215682485373",
            "arn": "arn:aws:budgets::215682485373:budget/TLAB-Strict-Budget",
            "auto_adjust_data": [],
            "billing_view_arn": "",
            "budget_type": "COST",
            "cost_filter": [],
            "cost_types": [
              {
                "include_credit": true,
                "include_discount": true,
                "include_other_subscription": true,
                "include_recurring": true,
                "include_refund": true,
                "include_subscription": true,
                "include_support": true,
                "include_tax": true,
                "include_upfront": true,
                "use_amortized": false,
                "use_blended": false
              }
            ],
            "filter_expression": [],
            "id": "215682485373:TLAB-Strict-Budget",
            "limit_amount": "10.0",
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_instance",
      "name": "vault_server",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 2,
          "attributes": {
            "ami": "ami-0d001f8052688dc45",
            "arn": "arn:aws:ec2:us-east-1:215682485373:instance/i-05ebb2c860a1a8213",
            "associate_public_ip_address": true,
            "availability_zone": "us-east-1d",
            "capacity_reservation_specification": [
              {
                "capacity_reservation_preference": "open",
                "capacity_reservation_target": []
              }
            ],
            "cpu_options": [
              {
                "amd_sev_snp": "",
                "core_count": 1,
                "nested_virtualization": "",
                "threads_per_core": 2
              }
            ],
            "credit_specification": [
              {
                "cpu_credits": "unlimited"
              }
            ],
            "disable_api_stop": false,
            "disable_api_termination": false,
            "ebs_block_device": [],
            "ebs_optimized": false,
            "enable_primary_ipv6": null,
            "enclave_options": [
              {
                "enabled": false
              }
            ],
            "ephemeral_block_device": [],
            "force_destroy": false,
            "get_password_data": false,
            "hibernation": false,
            "host_id": "",
            "host_resource_group_arn": null,
            "iam_instance_profile": "Titan-EC2-Vault-Profile",
            "id": "i-05ebb2c860a1a8213",
            "instance_initiated_shutdown_behavior": "stop",
            "instance_lifecycle": "",
            "instance_market_options": [],
            "instance_state": "running",
            "instance_type": "t3.micro",
            "ipv6_address_count": 0,
            "ipv6_addresses": [],
            "key_name": "",
            "launch_template": [],
            "maintenance_options": [
              {
                "auto_recovery": "default"
              }
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_s3_bucket",
      "name": "vault",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "acceleration_status": "",
            "acl": null,
            "arn": "arn:aws:s3:::titan-fintech-vault-fg-e186270e",
            "bucket": "titan-fintech-vault-fg-e186270e",
            "bucket_domain_name": "titan-fintech-vault-fg-e186270e.s3.amazonaws.com",
            "bucket_namespace": "global",
            "bucket_prefix": "",
            "bucket_region": "us-east-1",
            "bucket_regional_domain_name": "titan-fintech-vault-fg-e186270e.s3.us-east-1.amazonaws.com",
            "cors_rule": [],
            "force_destroy": false,
            "grant": [
              {
                "id": "42b3d905aff31a293bc1a8d3d1761d49adad9f0783761bccd3e9ad067af08a93",
                "permissions": [
                  "FULL_CONTROL"
                ],
                "type": "CanonicalUser",
                "uri": ""
              }
            ],
            "hosted_zone_id": "Z3AQBSTGFYJSTF",
            "id": "titan-fintech-vault-fg-e186270e",
            "lifecycle_rule": [],
            "logging": [],
            "object_lock_configuration": [],
            "object_lock_enabled": false,
            "policy": "",
            "region": "us-east-1",
            "replication_configuration": [],
            "request_payer": "BucketOwner",
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "kms_master_key_id": "",
                        "sse_algorithm": "AES256"
                      }
                    ],
                    "bucket_key_enabled": false
                  }
                ]
              }
            ],
            "tags": {},
            "tags_all": {},
            "timeouts": null,
            "versioning": [
              {
                "enabled": false,
                "mfa_delete": false
              }
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_iam_role",
      "name": "vault_role",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:iam::215682485373:role/Titan-EC2-Vault-Role",
            "assume_role_policy": "{\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"}}],\"Version\":\"2012-10-17\"}",
            "create_date": "2026-07-27T00:42:22Z",
            "description": "",
            "force_detach_policies": false,
            "id": "Titan-EC2-Vault-Role",
            "inline_policy": [],
            "managed_policy_arns": [],
            "max_session_duration": 3600,
            "name": "Titan-EC2-Vault-Role",
            "name_prefix": "",
            "path": "/",
            "permissions_boundary": "",
            "tags": {},
            "tags_all": {},
            "unique_id": "AROATEN5NRR6QZB7J73GL"
          },
          "sensitive_attributes": [],
          "identity_schema_version": 0,
          "identity": {
            "account_id": "215682485373",
            "name": "Titan-EC2-Vault-Role"
          },
          "private": "bnVsbA=="
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_iam_user",
      "name": "tlab_user",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:iam::215682485373:user/tlab-service-account",
            "force_destroy": false,
            "id": "tlab-service-account",
            "name": "tlab-service-account",
            "path": "/",
            "permissions_boundary": "",
            "tags": {},
            "tags_all": {},
            "unique_id": "AIDATEN5NRR6XLUDGZCZC"
          },
          "sensitive_attributes": [],
          "identity_schema_version": 0,
          "identity": {
            "account_id": "215682485373",
            "name": "tlab-service-account"
          },
          "private": "bnVsbA=="
        }

# Create an ssl for this project
resource "aws_acm_certificate" "default" {
  domain_name = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]  # Setup wildcards

  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
    # Allows for creating a new cert without leaving you without one
  }
}
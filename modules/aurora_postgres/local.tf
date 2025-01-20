locals {
  name        = "${var.project_name}-${var.resource_type}-${var.environment}"
  team        = var.team_name
  environment = var.environment
}

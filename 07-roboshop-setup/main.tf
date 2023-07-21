module "frontend" {
    source      = "./ec2"
    COMPONENT   = each.key
    // APP_VERSION = "0.0.2"

}
module "frontend" {
    source      = "./ec2"
    COMPONENT   = each.key
    APP_VERSION = each.value.APP_VERSION

}
module "frontend" {
    source      = "./ec2"
    COMPONENT   = each.key
    APP_VERSION = eack.value.APP_VERSION

}
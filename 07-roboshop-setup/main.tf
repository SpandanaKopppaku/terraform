module "frontend" {
    source      = "./ec2"

    for_each    = toset( ["mongodb", "catalogue", "cart"] )
    COMPONENT   = each.key
     // APP_VERSION = each.value.APP_VERSION

}

# for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
#   name     = each.key
# }
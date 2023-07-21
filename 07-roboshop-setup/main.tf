module "server" {
    source      = "./ec2"

    for_each    = toset( ["mongodb", "catalogue", "redis","user","cart","mysql","shipping","rabbitmq","payment","frontend"] )
    COMPONENT   = each.key
     

}

# for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
#   name     = each.key
# }
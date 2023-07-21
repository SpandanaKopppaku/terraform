resource "aws_route53_record" "component" {
  zone_id = "Z0909398U99YUHS0RTOO"
  name    = var.COMPONENT
  type    = "A"
  ttl     = 10
  records = [aws_spot_instance_request.spot_worker.private_ip]
}
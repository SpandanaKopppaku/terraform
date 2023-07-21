resource "aws_route53_record" "www" {
  zone_id = "Z0909398U99YUHS0RTOO"
  name    = var.COMPONENT
  type    = "A"
  ttl     = 10
  records = [aws_eip.lb.public_ip]
}
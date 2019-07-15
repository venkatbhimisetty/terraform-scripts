resource "aws_route53_zone" "venkattutorials" {
   name = "venkattutorials.com"
}
resource "aws_route53_record" "server1-record" {
   zone_id = "${aws_route53_zone.venkattutorials.zone_id}"
   name = "www.venkattutorials.com"
   type = "A"
   ttl = "300"
   records = ["3.86.163.172"]
}

output "ns-servers" {
   value = "${aws_route53_zone.venkattutorials.name_servers}"
}

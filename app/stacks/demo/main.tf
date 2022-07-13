####################################################
# resource "random_pet"
# : 다른 리소스에 대한 고유 식별자로 사용하기 위한 임의의 애완 동물 이름을 생성
####################################################
resource "random_pet" "this" {
  length = 2
}

module "bucket" {
  source     = "../../modules/example"
  bucket     = "bucket-${random_pet.this.id}"
  acl        = var.acl
}

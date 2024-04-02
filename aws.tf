################################################################################
# AWS Regions

locals {
  aws_regions = {
    r0  = "us-east-1"      # 20060825 - N Virginia, USA
    r1  = "eu-west-1"      # 20081210 - Dublin, Ireland
    r2  = "us-west-1"      # 20091203 - N California, USA
    r3  = "ap-southeast-1" # 20100429 - Singapore
    r4  = "ap-northeast-1" # 20110302 - Tokyo, Japan
    r5  = "us-west-2"      # 20111109 - Oregon, USA
    r6  = "sa-east-1"      # 20111214 - São Paulo, Brazil
    r7  = "ap-southeast-2" # 20121112 - Sydney, Australia
    r8  = "eu-central-1"   # 20141023 - Frankfurt, Germany
    r9  = "ap-northeast-2" # 20160106 - Seoul, South Korea
    r10 = "ap-south-1"     # 20160627 - Mumbai, India
    r11 = "us-east-2"      # 20161017 - Ohio, USA
    r12 = "ca-central-1"   # 20161208 - Montréal, Canada
    r13 = "eu-west-2"      # 20161213 - London, UK
    r14 = "eu-west-3"      # 20171218 - Paris, France
    r15 = "eu-north-1"     # 20181212 - Stockholm, Sweden
    r16 = "ap-east-1"      # 20190425 - Hong Kong
    r17 = "me-south-1"     # 20190730 - Bahrain
    r18 = "af-south-1"     # 20200422 - Cape Town, South Africa
    r19 = "eu-south-1"     # 20200427 - Milan, Italy
    r20 = "ap-northeast-3" # 20210301 - Osaka, Japan
    r21 = "ap-southeast-3" # 20211213 - Jakarta, Indonesia
    r22 = "me-central-1"   # 20220829 - United Arab Emirates
    r23 = "eu-central-2"   # 20221108 - Zürich, Switzerland
    r24 = "eu-south-2"     # 20221115 - Aragón, Spain
    r25 = "ap-south-2"     # 20221121 - Hyderabad, India
    r26 = "ap-southeast-4" # 20230123 - Melbourne, Australia
    r27 = "il-central-1"   # 20230801 - Tel Aviv, Israel
  }
}
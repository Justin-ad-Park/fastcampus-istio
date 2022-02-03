#프록시 상태 확인
# 종류 
#   CDS : cluster Discovery Service
#   EDS : EndPoint Discovery Service
#   LDS : listener Discovery Service
#   RDS : Route Discovery Service
#상태 
# SYNCED : 동기화 완료
# STALE : 오래된 상태(상태 오래됨 - 네트워크 등에 문제가 있음)
istioctl proxy-status

# Usage python3.6 healthcheck.py 

import requests
from urllib.parse import urlparse
def main():
    url = "http://kubernetes-412530889.us-east-1.elb.amazonaws.com:30206"
    req = requests.get(url)
    if requests.get(url).status_code != 200:
        print("Endpoint is NOT working")
        print("HTTP Status Code: " + str(req.status_code))
        print(req.headers)
        main()
    else:
        print("Endpoint is working OK")
        print("HTTP Status Code: " + str(req.status_code))
        print(req.headers)
if __name__ == '__main__':
    main()

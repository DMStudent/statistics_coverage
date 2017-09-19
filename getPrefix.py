import urlparse
import sys
url = sys.argv[1]
if len(url)>2 and url.endswith("/") :
    url = url[:-1]
parsed_url = urlparse.urlparse(url)

path = parsed_url.path
pathList = path.split("/")
if len(pathList)>2:
    subpath = "/".join(pathList[:-1])
    prefix = parsed_url.scheme+"://"+parsed_url.netloc+subpath
    print prefix
else:
    prefix = parsed_url.scheme+"://"+parsed_url.netloc
    print prefix

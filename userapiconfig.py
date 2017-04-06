# Config
NODE_ID = 11


#hour,set 0 to disable
SPEEDTEST = 0
CLOUDSAFE = 1
ANTISSATTACK = 0
AUTOEXEC = 0
MULTI_THREAD = 0

SERVER_PUB_ADDR = '127.0.0.1' # mujson_mgr need this to generate ssr link
API_INTERFACE = 'modwebapi' #mudbjson, sspanelv2, sspanelv3, sspanelv3ssr, muapiv2(not support)

#mudb
MUDB_FILE = 'mudb.json'

# Mysql
MYSQL_HOST = ''
MYSQL_PORT = 3306
MYSQL_USER = 'ssmod'
MYSQL_PASS = ''
MYSQL_DB = 'ssmod'
MYSQL_UPDATE_TIME = 60

MYSQL_SSL_ENABLE = 0
MYSQL_SSL_CA = ''
MYSQL_SSL_CERT = ''
MYSQL_SSL_KEY = ''

# API
API_HOST = '127.0.0.1'
API_PORT = 80
API_PATH = '/mu/v2/'
API_TOKEN = 'abcdef'
API_UPDATE_TIME = 60

# Manager (ignore this)
MANAGE_PASS = 'ss233333333'
#if you want manage in other server you should set this value to global ip
MANAGE_BIND_IP = '127.0.0.1'
#make sure this port is idle
MANAGE_PORT = 23333
#Safety
IP_MD5_SALT = 'fuckidcf'

WEBAPI_URL = 'https://yun.i.ng'

WEBAPI_TOKEN = 'BT8Ul3hHF53VvjJG'

MU_SUFFIX = 'yun.i.ng'

MU_REGEX = '%5m%id.%suffix'
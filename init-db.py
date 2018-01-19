import traceback
import xmlrpclib

main_url = 'http://127.0.0.1'
demo = False
dbname = '127.0.0.1'
lang = 'en_US'
admin_password = 'admin'

rpc_db = xmlrpclib.ServerProxy('{}/xmlrpc/2/db'.format(main_url))

# create db if not exist
print 'create database via xmlrpc'
try:
    rpc_db.create_database('admin', dbname, demo, lang, admin_password)
except Exception, e:
    print 'xmlrpc database creation error: %s'%(e)

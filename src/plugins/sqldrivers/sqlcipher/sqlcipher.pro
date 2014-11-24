TARGET = qsqlcipher

SOURCES = smain.cpp
OTHER_FILES += sqlcipher.json
include(../../../sql/drivers/sqlcipher/qsql_sqlcipher.pri)

wince*: DEFINES += HAVE_LOCALTIME_S=0

PLUGIN_CLASS_NAME = QSQLCipherDriverPlugin
include(../qsqldriverbase.pri)

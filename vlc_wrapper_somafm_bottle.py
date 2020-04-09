#! /bin/python3
'''`vlc_wrapper_somafm_bottle` wraps VLC media player. User given choice of \
SomaFM links. Script made available under MIT license.'''
from csv import reader
from bottle import route
from bottle import SimpleTemplate
from bottle import run


DATA = {}
NAMES = []
PROJ_DIR = '/usr/local/lib/vlc_wrapper_somafm_bottle'
TPL = SimpleTemplate(name=f'{PROJ_DIR}/views/template.tpl')


@route('/')
def index():
    '''List SomaFM links, including alternate links.'''
    with open(f'{PROJ_DIR}/csv/stations.csv', 'r') as _file:
        _reader = reader(_file)
        for record in _reader:
            DATA[record[0]] = [record[1], record[2], record[3], record[4]]
            NAMES.append(record[0])
        _file.close()
    return TPL.render(data=DATA, names=NAMES)


run(host='localhost', port=8080)

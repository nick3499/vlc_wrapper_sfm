#! /bin/python3
'''`vlc_wrapper_somafm` wraps VLC media player. User given choice of \
Internet radio links. Script made available under MIT license.'''
from csv import reader
from flask import Flask
from flask import render_template


APP = Flask(__name__)
GENRES_URL = {}
STATION_NAMES = []


@APP.route('/')
def index():
    '''Display Internet radio links.'''
    with open('csv/stations.csv', 'r') as _file:
        _reader = reader(_file)
        for record in _reader:
            GENRES_URL[record[0]] = [record[1], record[2], record[3],
                                     record[4]]
            STATION_NAMES.append(record[0])
    return render_template('template.htm', GENRES_URL=GENRES_URL,
                           STATION_NAMES=STATION_NAMES)


if __name__ == '__main__':
    APP.run()

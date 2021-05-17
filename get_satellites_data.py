import requests
import re


API_KEY = '4B8ZWL-HJSXLE-B2SB7L-4PZZ'

GPS_SATELLITE_OPERATIONAL_CATEGORY = 20
GPS_SATELLITE_CONSTELATION_CATEGORY = 50
GPS_CATEGORIES = [
    GPS_SATELLITE_OPERATIONAL_CATEGORY,
    GPS_SATELLITE_CONSTELATION_CATEGORY
]

      
def get_satellites_above(latitude, longitude, altitude, api_key):
    above_satellites = []

    for gps_category in GPS_CATEGORIES:
        response = requests.get('https://api.n2yo.com/rest/v1/satellite/above/{}/{}/{}/90/{}/&apiKey={}'.format(latitude, longitude, altitude, gps_category, api_key)).json()
        
        satellites_data = response['above']
        for satellite_data in satellites_data:
            above_satellites.append({
                'ID': satellite_data['satid'],
                'Name': satellite_data['satname'],
                'Latitude': satellite_data['satlat'],
                'Longitude': satellite_data['satlng'],
                'Altitude': satellite_data['satalt']
            })
            
    return above_satellites
    
above_satellites_map = {}
for latitude, longitude in [(-90, 0), (0, 0), (0, 45), (0, 90), (0, 135), (0, 180), (90, 0)]:
    above_satellites = get_satellites_above(latitude, longitude, 0, API_KEY)
    for above_satellite in above_satellites:
        if above_satellite['ID'] in above_satellites_map:
            continue
        above_satellites_map[above_satellite['ID']] = above_satellite
     
with open('satellites_data.sml', 'w') as satellites_data_file:
    print('fun get_satellites_data() =', file=satellites_data_file)
    print('let', file=satellites_data_file)
    print('\tval satellites_data = [', file=satellites_data_file)
    
    keys = list(above_satellites_map.keys())
    for i in range(len(keys)):
        key = keys[i]
        entry = above_satellites_map[key]
        
        id_str = int(entry['ID'])
        name = entry['Name']
        latitude = float(entry['Latitude'])
        latitude_str = str(latitude).replace('-', '~')
        longitude = float(entry['Longitude'])
        longitude_str = str(longitude).replace('-', '~')
        altitude = float(entry['Altitude'])
        altitude_str = str(altitude).replace('-', '~')
        
        print('\t\t{', file=satellites_data_file)
        print('\t\t\tid=({}),'.format(id_str), file=satellites_data_file)
        print('\t\t\tname="{}",'.format(name), file=satellites_data_file)
        print('\t\t\tlatitude=({}),'.format(latitude_str), file=satellites_data_file)
        print('\t\t\tlongitude=({}),'.format(longitude_str), file=satellites_data_file)
        print('\t\t\taltitude=({})'.format(altitude_str), file=satellites_data_file)
        print('\t\t}', end='', file=satellites_data_file)
        
        if i < len(keys) - 1:
            print(',', file=satellites_data_file)
        else:
            print('', file=satellites_data_file)
        
    print('\t]', file=satellites_data_file)
    print('in', file=satellites_data_file)
    print('\tsatellites_data', file=satellites_data_file)
    print('end;', file=satellites_data_file)
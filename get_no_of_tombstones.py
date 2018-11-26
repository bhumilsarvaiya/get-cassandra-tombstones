# get the file to read from
tombstone_file = open('tombstones_tmp', 'r')

# let the magic happen
tombstones = [ int((line.split('live rows and ')[1]).split(' ')[0]) for line in tombstone_file ]

# of course, close the file
tombstone_file.close()

# print the magic number, Voila! ;)
print(max(tombstones))

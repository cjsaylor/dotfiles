Path = require 'path'
Fs = require 'fs'

ignore = [
  '.git',
  '.gitmodules'
]

target = process.env['HOME']

for file in Fs.readdirSync '.'
  if ignore.indexOf(file) is -1 and Path.extname(file) is '.symlink'
    source = Path.join __dirname, file
    destination = Path.join(target, '.' + Path.basename(file, '.symlink'))
    console.log 'Linking ' + destination
    Fs.symlinkSync source, destination

console.log 'Done'

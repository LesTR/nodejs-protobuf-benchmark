fs           = require 'fs'
Protobufjs   = require 'protobufjs'
NodeProtobuf = require 'node-protobuf'
data         = require 'data.json'
microtime    = require 'microtime'

iterationCount = process.argv[2] or 10000



#====================================== JSON =============================================
d = JSON.stringify data
s = microtime.now()
for i in [0..iterationCount]
	t = JSON.parse d
console.log "JSON parse:\t#{microtime.now()-s} μs."

s = microtime.now()
for i in [0..iterationCount]
	t = JSON.stringify data
console.log "JSON stringify:\t#{microtime.now()-s} μs."



#====================================== Protobufjs ========================================
builder = Protobufjs.loadProtoFile './tweet.proto'
Tweet = builder.result.Tweet
s = microtime.now()
for i in [0..iterationCount]
	tweet = new Tweet data
console.log "Protobufjs encode:\t#{microtime.now()-s} μs."

buff = tweet.toBuffer()
s = microtime.now()
for i in [0..iterationCount]
	Tweet.decode(buff)
console.log "Protobufjs decode:\t#{microtime.now()-s} μs."


#====================================== node-protobuf ====================================

builder = new NodeProtobuf fs.readFileSync "./tweet.desc"

s = microtime.now()
for i in [0..iterationCount]
	buf = builder.serialize data, "Tweet"
console.log "Node-protobuf encode:\t#{microtime.now()-s} μs."

s = microtime.now()
for i in [0..iterationCount]
	tweet = builder.parse buf, "Tweet"
console.log "Node-protobuf decode:\t#{microtime.now()-s} μs."

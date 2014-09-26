nodejs-protobuf-benchmark
=========================
Node.js protobuf libs compare.

My results:
===========
JSON parse:     94968 μs.<br/>
JSON stringify: 111746 μs.<br/>
[Protobufjs](https://www.npmjs.org/package/protobufjs) encode:      1182212 μs.<br/>
[Protobufjs](https://www.npmjs.org/package/protobufjs) decode:      343350 μs.<br/>
[Node-protobuf](https://www.npmjs.org/package/node-protobuf) encode:   463131 μs.<br/>
[Node-protobuf](https://www.npmjs.org/package/node-protobuf) decode:   290689 μs.<br/>
[protocol-buffers](https://www.npmjs.org/package/protocol-buffers) encode:   377298 μs.<br/>
[protocol-buffers](https://www.npmjs.org/package/protocol-buffers) decode:   73355 μs.<br/>


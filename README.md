nodejs-protobuf-benchmark
=========================
Node.js protobuf libs compare.

My results:
===========
JSON parse:     144976 μs.<br/>
JSON stringify: 152368 μs.<br/>
[Protobufjs](https://www.npmjs.org/package/protobufjs) encode:      1456827 μs.<br/>
[Protobufjs](https://www.npmjs.org/package/protobufjs) decode:      418814 μs.<br/>
[Node-protobuf](https://www.npmjs.org/package/node-protobuf) encode:   548612 μs.<br/>
[Node-protobuf](https://www.npmjs.org/package/node-protobuf) decode:   340724 μs.<br/>
[protocol-buffers](https://www.npmjs.org/package/protocol-buffers) encode:   456768 μs.<br/>
[protocol-buffers](https://www.npmjs.org/package/protocol-buffers) decode:   76421 μs.<br/>


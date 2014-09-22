nodejs-protobuf-benchmark
=========================
Node.js protobuf libs compare.

My results:
===========
<pre>
JSON parse:     88791 μs.
JSON stringify: 111917 μs.
[Protobufjs](https://www.npmjs.org/package/protobufjs) encode:      1154012 μs.
[Protobufjs](https://www.npmjs.org/package/protobufjs) decode:      427042 μs.
[Node-protobuf](https://www.npmjs.org/package/node-protobuf) encode:   474148 μs.
[Node-protobuf](https://www.npmjs.org/package/node-protobuf) decode:   360930 μs.
</pre>

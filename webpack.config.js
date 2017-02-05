const path = require("path")
const CopyWebpackPlugin = require("copy-webpack-plugin");

module.exports = {
  entry: ["./web/static/js/app.js"],
  output: {
    path: "./priv/static/js",
    filename: "app.js"
  },
  resolve: {
    modules: [path.resolve(__dirname, "web/static/js"), "node_modules"]
  },
  module: {
    rules: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: "babel-loader",
      query: {
        presets: ["es2015"]
      }
    }, {
      test: /\.css$/,
      use: [ 'style-loader', 'css-loader' ]
    }]
  },
  plugins: [
    new CopyWebpackPlugin([{ from: "./web/static/assets" }])
  ]
};

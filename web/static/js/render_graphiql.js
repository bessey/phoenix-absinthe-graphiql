import React from 'react';
import ReactDOM from 'react-dom';
import GraphiQL from 'graphiql';
import fetch from 'isomorphic-fetch';

import "styles/layout.css"
import "graphiql/graphiql.css"

function graphQLFetcher(graphQLParams) {
  return fetch(window.location.origin + '/graphql', {
    method: 'post',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(graphQLParams),
  }).then(response => response.json());
}

const root = document.getElementById("graphiql")
ReactDOM.render(<GraphiQL fetcher={graphQLFetcher} />, root);

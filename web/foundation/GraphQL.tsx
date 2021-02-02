import React from 'react';
import {createGraphQLClient, createGraphQLFetch} from '@shopify/alpaql';
import {GraphQLUniversalProvider} from '@shopify/alpaql/ssr';
import {useRequestHeader} from '@shopify/react-network';
import '@shopify/polyfills/fetch';

export function GraphQL({
  url,
  children,
}: {
  url: URL;
  children?: React.ReactNode;
}) {
  const cookie = useRequestHeader('cookie')!;

  const fetch = createGraphQLFetch({
    uri: `${url.origin}/graphql`,
    headers: {
      cookie,
    },
  });

  const client = createGraphQLClient({fetch});

  return (
    <GraphQLUniversalProvider client={client}>
      {children}
    </GraphQLUniversalProvider>
  );
}

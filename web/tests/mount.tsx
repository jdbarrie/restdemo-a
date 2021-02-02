import React from 'react';
import {createMount} from '@shopify/react-testing';
import {GraphQLTestClient} from '@shopify/alpaql/testing';

import {AppContext} from './AppContext';
import {createGraphQL} from './graphql';

interface Options {
  graphQL?: GraphQLTestClient;
  skipInitialGraphQL?: boolean;
  locale?: string;
}

interface Context {
  graphQL: GraphQLTestClient;
}

export const mountWithAppContext = createMount<Options, Context, false>({
  context({graphQL = createGraphQL()}) {
    return {graphQL};
  },
  render(element, {graphQL}) {
    return <AppContext graphQL={graphQL}>{element}</AppContext>;
  },
  async afterMount(root, options) {
    const {graphQL} = root.context;

    if (options.skipInitialGraphQL) {
      return;
    }

    await root.act(() => graphQL.resolveAll());
  },
});

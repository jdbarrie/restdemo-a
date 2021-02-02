import {readFileSync} from 'fs';
import {resolve} from 'path';

// eslint-disable-next-line import/no-extraneous-dependencies
import {buildSchema} from 'graphql';
import {createFiller} from 'graphql-fixtures';
import {createGraphQLTestClient} from '@shopify/alpaql/testing';

const basePath = resolve(__dirname, '../../build/graphql');

export const schema = buildSchema(
  readFileSync(resolve(basePath, 'schema.graphql'), 'utf8'),
);

export const fillGraphQL = createFiller(schema);

export const createGraphQL = createGraphQLTestClient;

'use strict';

/**
 * object-zone service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::object-zone.object-zone');

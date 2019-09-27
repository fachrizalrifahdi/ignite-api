"use strict";

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use("Model");

class Ignite extends Model {
  static get table() {
    return "ignites";
  }

  static get primaryKey() {
    return "id";
  }
}

module.exports = Ignite;

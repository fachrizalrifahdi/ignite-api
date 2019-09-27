"use strict";

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use("Schema");

class IgniteSchema extends Schema {
  up() {
    this.create("ignites", table => {
      table.increments();
      table.string("location");
      table.float("t_today");
      table.float("r_today");
      table.float("a_today");
      table.float("t_month");
      table.float("r_month");
      table.float("a_month");
      table.float("t_year");
      table.float("r_year");
      table.float("a_year");
      table.string("region");
      table.timestamps();
    });
  }

  down() {
    this.drop("ignites");
  }
}

module.exports = IgniteSchema;

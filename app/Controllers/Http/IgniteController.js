// ===========================================================
// Sample Controller
// ===========================================================

"use strict";

const Ignite = use("App/Models/Ignite");

class IgniteController {
  async index({ response }) {
    const ignites = await Ignite.all();
    return response.json(ignites);
  }
  async show({ params, response }) {
    const ignite = await Ignite.find(params.id);
    return response.json(ignite);
  }
  async store({ request, response }) {
    const igniteInfo = request.only([
      "location",
      "t_today",
      "r_today",
      "a_today",
      "t_month",
      "r_month",
      "a_month",
      "t_year",
      "r_year",
      "a_year",
      "region"
    ]);
    const ignite = new Ignite();
    ignite.location = igniteInfo.location;
    ignite.t_today = igniteInfo.t_today;
    ignite.r_today = igniteInfo.r_today;
    ignite.a_today = igniteInfo.a_today;
    ignite.t_month = igniteInfo.t_month;
    ignite.r_month = igniteInfo.r_month;
    ignite.a_month = igniteInfo.a_month;
    ignite.t_year = igniteInfo.t_year;
    ignite.r_year = igniteInfo.r_year;
    ignite.a_year = igniteInfo.a_year;
    ignite.region = igniteInfo.region;
    await ignite.save();
    return response.status(201).json(ignite);
  }
  async update({ params, request, response }) {
    const igniteInfo = request.only([
      "location",
      "t_today",
      "r_today",
      "a_today",
      "t_month",
      "r_month",
      "a_month",
      "t_year",
      "r_year",
      "a_year",
      "region"
    ]);
    const ignite = await Ignite.find(params.id);
    if (!ignite) {
      return response.status(404).json({ data: "Resource not found" });
    }
    ignite.location = igniteInfo.location;
    ignite.t_today = igniteInfo.t_today;
    ignite.r_today = igniteInfo.r_today;
    ignite.a_today = igniteInfo.a_today;
    ignite.t_month = igniteInfo.t_month;
    ignite.r_month = igniteInfo.r_month;
    ignite.a_month = igniteInfo.a_month;
    ignite.t_year = igniteInfo.t_year;
    ignite.r_year = igniteInfo.r_year;
    ignite.a_year = igniteInfo.a_year;
    ignite.region = igniteInfo.region;
    await ignite.save();
    return response.status(200).json(ignite);
  }
  async delete({ params, response }) {
    const ignite = await Ignite.find(params.id);
    if (!ignite) {
      return response.status(404).json({ data: "Resource not found" });
    }
    await Ignite.delete();
    return response.status(204).json(null);
  }
}

module.exports = IgniteController;

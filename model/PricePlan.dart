// To parse this JSON data, do
//
//     final pricePlan = pricePlanFromJson(jsonString);

import 'dart:convert';

PricePlan pricePlanFromJson(String str) => PricePlan.fromJson(json.decode(str));

String pricePlanToJson(PricePlan data) => json.encode(data.toJson());

class PricePlan {
  PricePlan({
    this.plans,
    this.planPricing,
  });

  List<Plan>? plans;
  List<PlanPricing>? planPricing;

  factory PricePlan.fromJson(Map<String, dynamic> json) => PricePlan(
    plans: List<Plan>.from(json["plans"].map((x) => Plan.fromJson(x))),
    planPricing: List<PlanPricing>.from(json["plan_pricing"].map((x) => PlanPricing.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "plans": List<dynamic>.from(plans!.map((x) => x.toJson())),
    "plan_pricing": List<dynamic>.from(planPricing!.map((x) => x.toJson())),
  };

  @override
  String toString() {
    return 'PricePlan{plans: $plans, planPricing: $planPricing}';
  }
}

class PlanPricing {
  PlanPricing({
    this.id,
    this.name,
    this.slug,
    this.starter,
    this.standard,
    this.premium,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? slug;
  String? starter;
  String? standard;
  String? premium;
  String? createdAt;
  String? updatedAt;

  factory PlanPricing.fromJson(Map<String, dynamic> json) => PlanPricing(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    starter: json["starter"],
    standard: json["standard"],
    premium: json["premium"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "starter": starter,
    "standard": standard,
    "premium": premium,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };

  @override
  String toString() {
    return 'PlanPricing{id: $id, name: $name, slug: $slug, starter: $starter, standard: $standard, premium: $premium, createdAt: $createdAt, updatedAt: $updatedAt}';
  }
}

class Plan {
  Plan({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.isActive,
    this.price,
    this.currency,
    this.features,
  });

  int? id;
  String? name;
  String? slug;
  String? description;
  String? isActive;
  String? price;
  String? currency;
  List<Feature>? features;

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    isActive: json["is_active"],
    price: json["price"],
    currency: json["currency"],
    features: List<Feature>.from(json["features"].map((x) => Feature.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "description": description,
    "is_active": isActive,
    "price": price,
    "currency": currency,
    "features": List<dynamic>.from(features!.map((x) => x.toJson())),
  };

  @override
  String toString() {
    return 'Plan{id: $id, name: $name, slug: $slug, description: $description, isActive: $isActive, price: $price, currency: $currency, features: $features}';
  }
}

class Feature {
  Feature({
    this.id,
    this.planId,
    this.slug,
    this.name,
    this.description,
    this.isAvailable,
  });

  int? id;
  int? planId;
  String? slug;
  String? name;
  String? description;
  bool? isAvailable;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
    id: json["id"],
    planId: json["plan_id"],
    slug: json["slug"],
    name: json["name"],
    description: json["description"],
    isAvailable: json["is_available"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "plan_id": planId,
    "slug": slug,
    "name": name,
    "description": description,
    "is_available": isAvailable,
  };

  @override
  String toString() {
    return 'Feature{id: $id, planId: $planId, slug: $slug, name: $name, description: $description, isAvailable: $isAvailable}';
  }
}

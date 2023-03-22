class OrderModel {
  bool? status;
  String? msg;
  List<Data>? data;

  OrderModel({this.status, this.msg, this.data});

  OrderModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  Null? orderNumber;
  String? buyerId;
  String? addressId;
  String? status;
  String? isPaid;
  String? paymentMethod;
  Null? notes;
  String? createdAt;
  String? updatedAt;
  Address? address;

  Data(
      {this.id,
        this.orderNumber,
        this.buyerId,
        this.addressId,
        this.status,
        this.isPaid,
        this.paymentMethod,
        this.notes,
        this.createdAt,
        this.updatedAt,
        this.address});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderNumber = json['order_number'];
    buyerId = json['buyerId'];
    addressId = json['addressId'];
    status = json['status'];
    isPaid = json['is_paid'];
    paymentMethod = json['payment_method'];
    notes = json['notes'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_number'] = this.orderNumber;
    data['buyerId'] = this.buyerId;
    data['addressId'] = this.addressId;
    data['status'] = this.status;
    data['is_paid'] = this.isPaid;
    data['payment_method'] = this.paymentMethod;
    data['notes'] = this.notes;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    return data;
  }
}

class Address {
  int? id;
  String? buyerId;
  String? addressName;
  String? fullName;
  String? email;
  String? phone;
  String? city;
  String? state;
  String? fullAddress;
  String? createdAt;
  String? updatedAt;

  Address(
      {this.id,
        this.buyerId,
        this.addressName,
        this.fullName,
        this.email,
        this.phone,
        this.city,
        this.state,
        this.fullAddress,
        this.createdAt,
        this.updatedAt});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    buyerId = json['buyerId'];
    addressName = json['address_name'];
    fullName = json['full_name'];
    email = json['email'];
    phone = json['phone'];
    city = json['city'];
    state = json['state'];
    fullAddress = json['full_address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['buyerId'] = this.buyerId;
    data['address_name'] = this.addressName;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['city'] = this.city;
    data['state'] = this.state;
    data['full_address'] = this.fullAddress;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
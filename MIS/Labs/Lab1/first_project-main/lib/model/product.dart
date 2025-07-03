import 'package:flutter/material.dart';

class Product {
  String title;
  String description;
  String imageUrl;
  String price;

  Product(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.price});
}

List<Product> productList = [
  Product(
      title: 'Horseshoe Logo T-Shirt',
      description:
          'This short sleeve t-shirt is crafted from a 100% cotton jersey fabric and has a relaxed fit for all-day comfort.',
      price: '27.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p9_i1_w2000.jpeg?width=640'),
  Product(
      title: 'Aitkin Sweatshirt',
      description:
          'Make this your go-to style for cool weather. The mens Aitkin crewneck sweatshirt features a comfortable, cotton-blend fabric and collegiate-style logo across the chest for a casual look.',
      price: '74.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p11_i1_w2000.jpeg?width=640'),
  Product(
      title: 'Cooling Short Sleeve Pocket T-Shirt',
      description:
          'Pick up your productivity levels even when temperatures are on the rise. This Mens Cooling Short Sleeve Pocket T-Shirt keeps it simple and comfy, with practical solutions that help you stay comfortable from sunrise to sunset. ',
      price: '24.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p4_i3_w740.jpeg?width=640'),
  Product(
      title: 'Heavyweight Short Sleeve Pocket T-Shirt',
      description:
          'Few t-shirts work as hard as this Mens Heavyweight Short Sleeve Pocket T-Shirt. No wonder its our bestselling t-shirt–and our bestselling big and tall item, in sizes up to 5XL.',
      price: '14.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p5_i2_w740.jpeg?width=640'),
  Product(
      title: 'Water Repellent Logo Hoodie',
      description:
          'Our Mens Water Repellent Logo Hoodie is a soft, comfortable fleece. Yet it has a Durable Water Repellent (DWR) finish, so you can work in wet conditions.',
      price: '49.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p12_i1_w2000.jpeg?width=640'),
  Product(
      title: 'Monterey Long Sleeve Shirt',
      description:
          'Make sure your fit is on point with the Monterey Buttondown Long Sleeve Shirt.',
      price: '60.00€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p23_i1_w1600.jpeg?width=640'),
  Product(
      title: 'Men’s Antora Jacket',
      description:
          'When the weather turns, we turn to the Antora. With practical design elements inspired by our iconic Mountain Jacket, this highly versatile rain shell sets the new standard for everyday reliability. ',
      price: '110.00€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p61_i1_w1300.jpeg?width=640'),
  Product(
      title: 'Dickies 1922 Duck Chore Coat',
      description:
          'Constructed with authentic vintage style and purpose, the Duck Chore Coat replicates the hardworking pieces of the past. ',
      price: '250.00€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p62_i1_w740.jpeg?width=640'),
  Product(
      title: 'Dickies Skateboarding Loose Fit Cargo Pants',
      description:
          'These Dickies Skateboarding cargo pants feature a loose fit, oversized cargo pockets, and double knee reinforcements for an authentic, heritage-inspired look. ',
      price: '69.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p65_i1_w740.jpeg?width=640'),
  Product(
      title: 'Diamond Quilted Vest',
      description:
          'Need to stay warm and dry? No problem. The Dickies Diamond Quilted Vest features a water-resistant fabric. ',
      price: '52.99€',
      imageUrl:
          'https://onlinestorethrifter.weebly.com/uploads/1/5/1/1/151153539/s409311634709017634_p25_i1_w740.jpeg?width=640'),
];

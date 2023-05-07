/*
 Navicat Premium Data Transfer

 Source Server         : localhost_27017
 Source Server Type    : MongoDB
 Source Server Version : 40201
 Source Host           : localhost:27017
 Source Schema         : orderSYS

 Target Server Type    : MongoDB
 Target Server Version : 40201
 File Encoding         : 65001

 Date: 20/08/2020 15:05:59
*/


// ----------------------------
// Collection structure for categories
// ----------------------------
db.getCollection("categories").drop();
db.createCollection("categories");

// ----------------------------
// Documents of categories
// ----------------------------
db.getCollection("categories").insert([ {
    _id: ObjectId("5f3d6d805209f1593c24ac8a"),
    cName: "炒菜类",
    no: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5f3e192394cc82204477a9b9"),
    cName: "烧菜类",
    no: NumberInt("2"),
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5f3e192c94cc82204477a9ba"),
    cName: "小吃类",
    no: NumberInt("3"),
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5f3e193494cc82204477a9bb"),
    cName: "酒水类",
    no: NumberInt("4"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for chartsdatas
// ----------------------------
db.getCollection("chartsdatas").drop();
db.createCollection("chartsdatas");

// ----------------------------
// Documents of chartsdatas
// ----------------------------
db.getCollection("chartsdatas").insert([ {
    _id: ObjectId("5f3e1d19f0e3a33b3f6c9b7b"),
    date: "2020-08-20",
    __v: NumberInt("0"),
    income: NumberInt("28"),
    order: NumberInt("1")
} ]);

// ----------------------------
// Collection structure for commodities
// ----------------------------
db.getCollection("commodities").drop();
db.createCollection("commodities");

// ----------------------------
// Documents of commodities
// ----------------------------
db.getCollection("commodities").insert([ {
    _id: ObjectId("5f3d6e7c94cc82204477a9b8"),
    onSale: NumberInt("25"),
    img: "http://localhost:3000/goods/qingjiao.jpg",
    name: "青椒肉丝",
    describe: "很好吃的一款肉丝",
    category: "炒菜类",
    price: NumberInt("22"),
    isDiscount: true,
    soldOut: false,
    __v: NumberInt("0")
} ]);
db.getCollection("commodities").insert([ {
    _id: ObjectId("5f3e198094cc82204477a9bc"),
    onSale: NumberInt("0"),
    img: "http://localhost:3000/goods/yuxiangqiezi.jpg",
    name: "鱼香茄子",
    describe: "精品四川特色菜，麻辣味",
    category: "炒菜类",
    price: NumberInt("15"),
    isDiscount: false,
    soldOut: false,
    __v: NumberInt("0")
} ]);
db.getCollection("commodities").insert([ {
    _id: ObjectId("5f3e1ada94cc82204477a9be"),
    onSale: NumberInt("0"),
    img: "http://localhost:3000/goods/yuerji.jpg",
    name: "芋儿鸡",
    describe: "精选上等鸡肉，来点吧",
    category: "烧菜类",
    price: NumberInt("25"),
    isDiscount: false,
    soldOut: false,
    __v: NumberInt("0")
} ]);
db.getCollection("commodities").insert([ {
    _id: ObjectId("5f3e1bbc94cc82204477a9bf"),
    onSale: NumberInt("0"),
    img: "http://localhost:3000/goods/mianbaodianxin.jpg",
    name: "面包点心",
    describe: "饭后来一点点心，更有生活味道",
    category: "小吃类",
    price: NumberInt("10"),
    isDiscount: false,
    soldOut: false,
    __v: NumberInt("0")
} ]);
db.getCollection("commodities").insert([ {
    _id: ObjectId("5f3e1c1194cc82204477a9c0"),
    onSale: NumberInt("0"),
    img: "http://localhost:3000/goods/yongchuangpijiu.jpg",
    name: "勇闯啤酒",
    describe: "吃肉不来点酒吗",
    category: "酒水类",
    price: NumberInt("6"),
    isDiscount: false,
    soldOut: false,
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for inits
// ----------------------------
db.getCollection("inits").drop();
db.createCollection("inits");

// ----------------------------
// Documents of inits
// ----------------------------
db.getCollection("inits").insert([ {
    _id: ObjectId("5f3d6153d612525654e36614"),
    admin: true,
    shop: true,
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for orders
// ----------------------------
db.getCollection("orders").drop();
db.createCollection("orders");

// ----------------------------
// Documents of orders
// ----------------------------
db.getCollection("orders").insert([ {
    _id: ObjectId("5f3e1caf94cc82204477a9c1"),
    order: [
        {
            onSale: NumberInt("25"),
            _id: "5f3d6e7c94cc82204477a9b8",
            img: "http://localhost:3000/goods/qingjiao.jpg",
            name: "青椒肉丝",
            describe: "很好吃的一款肉丝",
            category: "炒菜类",
            price: NumberInt("22"),
            isDiscount: true,
            soldOut: false,
            __v: NumberInt("0"),
            count: NumberInt("1")
        },
        {
            onSale: NumberInt("0"),
            _id: "5f3e1c1194cc82204477a9c0",
            img: "http://localhost:3000/goods/yongchuangpijiu.jpg",
            name: "勇闯啤酒",
            describe: "吃肉不来点酒吗",
            category: "酒水类",
            price: NumberInt("6"),
            isDiscount: false,
            soldOut: false,
            __v: NumberInt("0"),
            count: NumberInt("1")
        }
    ],
    state: NumberInt("1"),
    deskNo: NumberInt("1"),
    totalPrice: NumberInt("28"),
    remark: "肚子饿死了！",
    orderNo: "202008201448151924",
    date: ISODate("2020-08-20T06:48:15.297Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for qrcodes
// ----------------------------
db.getCollection("qrcodes").drop();
db.createCollection("qrcodes");

// ----------------------------
// Documents of qrcodes
// ----------------------------
db.getCollection("qrcodes").insert([ {
    _id: ObjectId("5f3d6d8a5209f1593c24ac8b"),
    url: "http://localhost:8080/index/1",
    no: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("qrcodes").insert([ {
    _id: ObjectId("5f3e1a3194cc82204477a9bd"),
    url: "http://localhost:8080/index/2",
    no: NumberInt("2"),
    __v: NumberInt("0")
} ]);
db.getCollection("qrcodes").insert([ {
    _id: ObjectId("5f3e1d2794cc82204477a9c2"),
    url: "http://localhost:8080/index/3",
    no: NumberInt("3"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for shops
// ----------------------------
db.getCollection("shops").drop();
db.createCollection("shops");

// ----------------------------
// Documents of shops
// ----------------------------
db.getCollection("shops").insert([ {
    _id: ObjectId("5f3d6c6d5209f1593c24ac89"),
    shopImg: "http://localhost:3000/shop/18.jpg",
    shopName: "天天餐饮店",
    shopIntro: "每天都有好吃的，不要错过哦",
    shopNotice: "大家都来点餐吧，味道很好哦！",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("5f3d617ad612525654e36615"),
    username: "manage",
    password: "$2a$10$Y4mYRvZ0Arnp3dS2SR6fc.nujjxxw2q.3qx0VaUhjzp9z/1A.Qxxq",
    email: "254540457@qq.com",
    avatar: "//www.gravatar.com/avatar/fe93ce0e6db695cec5cee8796c4d3b65?s=200&r=pg&d=mm",
    date: ISODate("2020-08-19T17:29:30.891Z"),
    __v: NumberInt("0")
} ]);

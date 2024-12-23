import 'package:flutter/material.dart';

class Teater {
  String title;
  String location;
  String description;
  String showDays;
  String showTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  Teater({
    required this.title,
    required this.location,
    required this.description,
    required this.showDays,
    required this.showTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

final List<Teater> teaterList = [
  Teater(
    title: 'Ameng',
    location: 'Museum Timah Indonesia, Pangkalpinang, Bangka Belitung',
    description:
        '“Ameng” adalah pertunjukan tari yang dibawakan oleh Sanggar Pelita Budaya, yang menggali kisah-kisah historis dan budaya dari Suku Sawang, sebuah suku yang memiliki peran penting dalam sejarah peradaban di Kepulauan Bangka Belitung. Tari ini terinspirasi dari perjalanan perjuangan suku Sawang yang mempertahankan warisan budaya mereka di tengah perubahan zaman. Penonton akan diajak menyaksikan gerakan tari yang penuh makna dan simbolisme, yang menggambarkan keteguhan dan semangat juang suku Sawang dalam melestarikan tradisi mereka.',
    showDays: '27 Oktober 2024',
    showTime: '19:00 - 22:00',
    ticketPrice: 'Rp 300,000',
    imageAsset: 'images/ameng.jpeg',
    imageUrls: [
      'https://akcdn.detik.net.id/community/media/visual/2024/10/27/galeri-indonesia-kaya_169.jpeg?w=700&q=90',
      'https://akcdn.detik.net.id/community/media/visual/2024/11/04/mengenang-urang-laut-di-pertunjukan-ameng-dan-pagelaran-tari-belitung-2024-5_169.jpeg?w=700&q=90',
      'https://akcdn.detik.net.id/community/media/visual/2024/11/04/mengenang-urang-laut-di-pertunjukan-ameng-dan-pagelaran-tari-belitung-2024-4_169.jpeg?w=700&q=90',
      'https://akcdn.detik.net.id/community/media/visual/2024/11/04/mengenang-urang-laut-di-pertunjukan-ameng-dan-pagelaran-tari-belitung-2024-2_169.jpeg?w=700&q=90',
      'https://akcdn.detik.net.id/community/media/visual/2024/11/04/mengenang-urang-laut-di-pertunjukan-ameng-dan-pagelaran-tari-belitung-2024-1_169.jpeg?w=700&q=90',
    ],
  ),
  Teater(
    title: 'Tolire Ma Jojoho',
    location: 'Benteng Oranje, Ternate, Maluku Utara',
    description:
        '“Tolire Ma Jojoho” merupakan pertunjukan tarian yang dibawakan oleh Sanggar Bengkel Seni Baskara. Pertunjukan ini terinspirasi oleh legenda rakyat tentang Danau Tolire di Ternate, yang dikenal sebagai rumah bagi buaya-buaya mistis. Tari ini menggambarkan interaksi antara manusia dan alam, dengan nuansa mistik yang kental. Para penari akan menghidupkan cerita rakyat yang telah ada selama berabad-abad, membawa penonton untuk merasakan ketegangan dan keajaiban dari mitos yang melibatkan alam dan kekuatan tak terlihat.',
    showDays: '26 Oktober 2024',
    showTime: '18:00 - 21:00',
    ticketPrice: 'Rp 450,000',
    imageAsset: 'images/Tolire Ma Jojoho.jpeg',
    imageUrls: [
      'https://akcdn.detik.net.id/community/media/visual/2024/10/26/tolire-ma-jojoho.jpeg?w=800',
      'https://awsimages.detik.net.id/community/media/visual/2024/10/26/tolire-ma-jojoho-1.jpeg?w=1200',
      'https://cdn.antaranews.com/cache/1200x800/2024/10/07/Kam1-Menar1-Drama-Tari-Tau-Nuhu-n-Jejak-Ksatria-Krowe_-Tarian-Kejayaan-Kehormatan-4.jpg',
    ],
  ),
   Teater(
    title: 'Bakar Batu',
    location: 'Wamena Cultural Center, Wamena, Papua',
    description:
        '“Bakar Batu” adalah sebuah pertunjukan tari yang dibawakan oleh Indonesia Art Movement. Pertunjukan ini mengangkat tradisi ritual masyarakat Suku Dani, yang dikenal dengan tradisi bakar batu sebagai simbol rasa syukur atas hasil bumi. Dalam tarian ini, penonton akan diajak untuk merasakan kekuatan dan kedamaian yang tercipta melalui kebersamaan dalam melaksanakan ritual ini. Gerakan tari yang dinamis menggambarkan proses saling berbagi dan kebersamaan yang mendalam dalam masyarakat adat Wamena, di mana setiap individu turut berkontribusi dalam kehidupan sosial dan budaya mereka.',
    showDays: '20 Oktober 2024',
    showTime: '17:00 - 21:00',
    ticketPrice: 'Rp 500,000',
    imageAsset: 'images/Bakar Batu.jpeg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHOBl6XPw440aHCR5f5VVXXb0etfmwgHlyVw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3XEGVv1dUz5I7M7KDwqsLZi2PjKGhAHcq5Q&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnoi3OZ17shw85r0PHh0OJDt0YAIy0WoSZxXnIcGR0lefRzWWtVc934OgKP7GO0vFoxCI&usqp=CAU',
    ],
  ),
   Teater(
    title: 'Renggana',
    location: 'Taman Budaya Jawa Barat, Bandung',
    description:
        '"Renggana" adalah sebuah pertunjukan tari yang terinspirasi oleh kesenian ronggeng gunung yang berasal dari Pangandaran, Jawa Barat. Dikisahkan dalam pertunjukan ini, Dewi Siti Samboja menyamar demi mencari suaminya yang hilang. Tarian ini memadukan elemen-elemen tradisional dengan cerita rakyat yang kaya akan nilai-nilai moral dan spiritual. Melalui gerakan tari yang elegan dan penuh makna, penonton akan dibawa masuk ke dalam kisah cinta dan pengorbanan yang mengharukan. Keindahan tari ronggeng gunung yang sarat dengan simbolisme spiritual juga menghidupkan suasana yang magis dan misterius.',
    showDays: '19 Oktober 2024',
    showTime: '20:00 - 22:00',
    ticketPrice: 'Rp 600,000',
    imageAsset: 'images/Renggana.jpeg',
    imageUrls: [
      'https://asset.kompas.com/crops/e72_L0ktmqX2FGTRjQwQoF_4ftc=/0x0:780x520/1200x800/data/photo/2023/11/08/654b0cdc56fb9.png',
      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/134/2023/10/27/WhatsApp-Image-2023-10-27-at-192133-1-1914451258.jpeg',
      'https://akcdn.detik.net.id/community/media/visual/2024/11/05/membawa-ronggeng-gunung-ke-jakarta-lewat-pertunjukan-tari-renggana-3_43.jpeg?w=400&q=90',
    ],
  ),
];
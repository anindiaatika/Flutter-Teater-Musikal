import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:teatermusik/main.dart';  // Corrected import path
import 'package:teatermusik/models/daftar_teater.dart';  // Corrected import path
import 'package:teatermusik/teater_detail.dart';  // Corrected import path

void main() {
  // Test for the theater list page
  testWidgets('Teater list displays properly', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(TeaterListScreen());  // Using TeaterApp as it's the actual root widget

    // Ensure the main title appears.
    expect(find.text('Daftar Musik Teater'), findsOneWidget);


    // Ensure images are displayed (if applicable).
    expect(find.byType(Image), findsWidgets);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });

  testWidgets('Teater Detail page displays properly', (WidgetTester tester) async {
    // Create a dummy data for testing the theater detail page.
    final teater = Teater(
      title: 'Phantom of the Opera',  // Corrected the field name from 'name' to 'title'
      location: 'Broadway Theater',
      description: 'Musikal ini adalah salah satu pertunjukan paling populer di dunia yang mengisahkan cerita cinta dan misteri dengan latar opera.',
      showDays: 'Everyday',  // Corrected field names
      showTime: '19:00 - 22:00',
      ticketPrice: 'Rp 500,000',
      imageAsset: 'assets/phantom.jpg',
      imageUrls: [],  // For simplicity, kept it empty
    );

    // Build the theater detail page.
    await tester.pumpWidget(
      MaterialApp(
        home: TeaterDetail(teater: teater),  // Corrected constructor usage
      ),
    );

    // Ensure the theater details are displayed correctly.
    expect(find.text('Phantom of the Opera'), findsOneWidget);
    expect(find.text('Broadway Theater'), findsOneWidget);
    expect(find.text('Musikal ini adalah salah satu pertunjukan paling populer di dunia yang mengisahkan cerita cinta dan misteri dengan latar opera.'), findsOneWidget);
    expect(find.text('Everyday'), findsOneWidget);
    expect(find.text('19:00 - 22:00'), findsOneWidget);
    expect(find.text('Rp 500,000'), findsOneWidget);

    // Ensure the image is also displayed.
    expect(find.byType(Image), findsOneWidget);
  });
}

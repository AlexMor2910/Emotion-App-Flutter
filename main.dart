import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_gui_practice/providers/providers.dart';

void main() {
  runApp(const EmotionColorApp());
}

class EmotionColorApp extends StatelessWidget {
  const EmotionColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderHappy()),
        ChangeNotifierProvider(create: (_) => ProviderSad()),
        ChangeNotifierProvider(create: (_) => ProviderNeutral()),
        ChangeNotifierProvider(create: (_) => ProviderAngry()),
        ChangeNotifierProvider(create: (_) => ProviderWorried()),
        ChangeNotifierProvider(create: (_) => ProviderPageColor()),
        ChangeNotifierProvider(create: (_) => ProviderEmoji()),
        ChangeNotifierProvider(create: (_) => ProviderTextEmotion())
      ],
      child: const MaterialApp(
        home: EmotionHomePage(),
      ),
    );
  }
}

class EmotionHomePage extends StatelessWidget {
  const EmotionHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageColor = context.watch<ProviderPageColor>().backgroundColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emotions app",
          style: TextStyle(fontSize: 32),),
        backgroundColor: pageColor,
      ),
      backgroundColor: pageColor,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 170,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ProviderHappy>().changeMainColor();
                      context.read<ProviderPageColor>().setColor(Colors.yellow);
                      context.read<ProviderEmoji>().setEmoji(Icons.sentiment_satisfied_alt_rounded);
                      context.read<ProviderTextEmotion>().setEmotionString("Happy");
                    },
                    child: Text("Happy", style: TextStyle(fontSize: 32)),
                  ),
                ),
              ),
              Text('${context.watch<ProviderHappy>().countEmotion}',
                  style: TextStyle(fontSize: 32))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 170,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ProviderSad>().changeMainColor();
                      context.read<ProviderPageColor>().setColor(Colors.blue);
                      context.read<ProviderEmoji>().setEmoji(Icons.sentiment_dissatisfied_outlined);
                      context.read<ProviderTextEmotion>().setEmotionString("Sad");
                    },
                    child: Text("Sad", style: TextStyle(fontSize: 32)),
                  ),
                ),
              ),
              Text('${context.watch<ProviderSad>().countEmotion}',
                  style: TextStyle(fontSize: 32))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 170,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ProviderNeutral>().changeMainColor();
                      context.read<ProviderPageColor>().setColor(Colors.grey);
                      context.read<ProviderEmoji>().setEmoji(Icons.sentiment_neutral_outlined);
                      context.read<ProviderTextEmotion>().setEmotionString("Neutral");
                    },
                    child: Text("Neutral", style: TextStyle(fontSize: 32)),
                  ),
                ),
              ),
              Text('${context.watch<ProviderNeutral>().countEmotion}',
                  style: TextStyle(fontSize: 32))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 170,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ProviderAngry>().changeMainColor();
                      context.read<ProviderPageColor>().setColor(Colors.red);
                      context.read<ProviderEmoji>().setEmoji(Icons.sentiment_very_dissatisfied_outlined);
                      context.read<ProviderTextEmotion>().setEmotionString("Angry");
                    },
                    child: Text("Angry", style: TextStyle(fontSize: 32)),
                  ),
                ),
              ),
              Text('${context.watch<ProviderAngry>().countEmotion}',
                  style: TextStyle(fontSize: 32))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 170,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ProviderWorried>().changeMainColor();
                      context.read<ProviderPageColor>().setColor(Colors.purple);
                      context.read<ProviderEmoji>().setEmoji(Icons.mood_bad_outlined);
                      context.read<ProviderTextEmotion>().setEmotionString("Worried");
                    },
                    child: Text("Worried", style: TextStyle(fontSize: 32)),
                  ),
                ),
              ),
              Text('${context.watch<ProviderWorried>().countEmotion}',
                  style: TextStyle(fontSize: 32))
            ],
          ),
          SizedBox(
            height: 100,
            child: Icon(context.watch<ProviderEmoji>().emoji, size: 60),
          ),
          SizedBox(
              height: 40,
              child: Text(
                context.watch<ProviderTextEmotion>().emotionString,
                style: TextStyle(fontSize: 32),
              )
          )
        ],
      ),
    );
  }
}

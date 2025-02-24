import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Text('''Netflix Content Overview 🎬🍿
      Netflix offers a vast collection of content across multiple genres, including movies, TV shows, documentaries, and anime. Here’s a detailed breakdown of what you can find on Netflix:
      
      1️⃣ Netflix Originals 🎥
      Netflix produces original content in various languages, including English, Hindi, and regional languages.
      ✅ Popular Netflix Originals:
      
      Stranger Things (Sci-Fi, Thriller)
      Squid Game (Thriller, Drama)
      Wednesday (Mystery, Comedy)
      Money Heist (Crime, Drama)
      The Witcher (Fantasy, Action)
      Lupin (Crime, Mystery)
      Delhi Crime (Indian Crime Series)
      2️⃣ Movies 🎞️
      Netflix has a massive library of Hollywood, Bollywood, and international movies.
      ✅ Popular Movies on Netflix:
      
      Inception (Sci-Fi, Thriller)
      Interstellar (Sci-Fi, Drama)
      The Dark Knight (Action, Crime)
      RRR (Indian Action-Drama)
      Dangal (Bollywood, Sports Drama)
      Extraction (Action, Thriller)
      The Irishman (Crime, Drama)
      3️⃣ TV Shows & Series 📺
      Netflix features global and regional series, including crime, drama, comedy, and fantasy genres.
      ✅ Popular TV Shows:
      
      Breaking Bad (Crime, Drama)
      Friends (Comedy, Sitcom)
      The Office (Comedy)
      Dark (Sci-Fi, Mystery)
      Sacred Games (Indian Crime Series)
      Bridgerton (Romance, Drama)
      4️⃣ Documentaries 🎬
      Netflix offers award-winning documentaries and docuseries that cover various real-life topics.
      ✅ Must-Watch Documentaries:
      
      Our Planet (Nature, Wildlife)
      The Social Dilemma (Tech & Society)
      The Tinder Swindler (Crime)
      Making a Murderer (Crime, Investigation)
      Bad Boy Billionaires: India (Business, Crime)
      5️⃣ Anime & Animated Shows 🎭
      Netflix has a growing library of anime and animated content for all age groups.
      ✅ Popular Anime on Netflix:
      
      Attack on Titan
      One Piece
      Naruto
      Demon Slayer
      Death Note
      Castlevania (Netflix Original Anime)
      6️⃣ Kids & Family Content 👶🎈
      Netflix provides a safe Kids Mode with content suitable for children.
      ✅ Popular Kids Shows & Movies:
      
      Cocomelon (Nursery Rhymes)
      Peppa Pig (Cartoon)
      Minions & Despicable Me (Animated Movies)
      The Boss Baby (Animated Comedy)
      Kung Fu Panda (Action-Adventure)
      7️⃣ Regional & Indian Content 🇮🇳
      Netflix offers Bollywood movies, regional films, and web series in Hindi, Tamil, Telugu, Malayalam, and other languages.
      ✅ Popular Indian Web Series & Movies:
      
      Sacred Games (Thriller, Crime)
      Delhi Crime (Crime, Drama)
      Lust Stories (Anthology, Drama)
      Monica, O My Darling (Mystery, Thriller)
      Jaane Jaan (Crime, Thriller)
      🔴 Conclusion:
      Netflix offers a huge variety of content for all types of audiences, including movies, TV series, anime, documentaries, and kids' content. It is a great streaming platform, but content availability may vary by region.
      
      Would you like me to suggest something specific based on your preferences? 😊
      
      
      
      
      
      
      
      ''',style:TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.w800,
          color: Colors.white),),
          ],),
        ),
      ),
    );
  }
}
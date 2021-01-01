import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  final imgPath;

  ///For hero tagging and showing relative image

  DetailScreen(this.imgPath);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            ///First show the image in background
            Hero(
              child: Container(
                height: size.height * 0.55,
                child: Image.asset(
                  widget.imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              tag: widget.imgPath,
            ),

            ///Container for more content
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Cheese Grill Sandwich",
                              style: GoogleFonts.roboto(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Colors.redAccent,
                              iconSize: 30,
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text(
                          "By Sarah Ahmed",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey[400],
                              size: 15,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        ///Container for food information
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Color(0xFFFE8A7E))),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Calories",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "174KCal",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Color(0xFFFE8A7E))),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Ingredients",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "06",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Color(0xFFFE8A7E))),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Time",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "3 Hours",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 24,
                        ),
                        Divider(thickness: 3.0,  color:  Color(0xFFFE8A7E),),

                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "المكونات :",
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(color:  Color(0xFFFE8A7E)),

                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "5 ملاعق كبيرة من الدقيق",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),

                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                "ملعقة كبيرة من السمن",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "1/2 كيلو مكرونة قلم",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "1/4 كيلو من اللحم المفروم",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "كوب من الشوربة",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),

                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "1 بيضة",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ), Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "ملح",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ), Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "بصل",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ), Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  " لبن",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),

                            ],
                          )
                        ),

                        SizedBox(
                          height: 4,
                        ),
                        Divider(thickness: 3.0,  color:  Color(0xFFFE8A7E),),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "طريقة عمل المكرونة بالبشاميل:",
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(color:  Color(0xFFFE8A7E)),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
"1-قومى بتقطيع البصل إلى قطع صغيرة جداً، ثم ضعيه فى المقلاة بعد وضع ملعقة كبيرة من السمن، ثم ضعى اللحم المفروم إلى المقلاة بعد تحول لون البصل إلى الأصفر، ومن الممكن أن تضيفى هنا قليل من الملح حسب الحاجة، واتركى الخليط حتى ينضج.\n"
    "2-أما الخطوة التالية، قومى بوضع كمية من الماء فى وعاء واتركيه حتى يصل إلى الغليان، قومى بوضع المكرونة، ويفضل تقليبها من فترة لأخرى حتى تنضج المكرونة تماماً، قومى بعد ذلك بتصفيتها وغسلها بالماء البارد.\n"
    "3- احضرى صينية وضعى بها ملعقة السمن فيها إلى أن يذوب تماماً، وبعد ذلك ضيفى الدقيق وابدأى فى التقليب حتى تمتزج المكونات مع بعضها بشكل جيد، وهنا يضاف اللبن بشكل تدريجى حتى تحصلى على القوام المناسب.\n"
    "4-تخلط المكرونة بعد ذلك مع نصف كمية البشاميل فى إناء واسع، وهنا تقسم المكرونة إلى قسمين، يوضع الجزء الأول فى الصينية المخصصة للتسوية، ثم وضع اللحم المفروم وفرده على المكرونة بطريقة متساوية، ومن بعده كمية المكرونة المتبقية.\n"
    "5-الخطوة الأخيرة تعد هى الأهم، حيث توضع الكمية المتبقية من البشاميل ويفضل هنا خفق بيضة على البشاميل قبل وضعه على وجه الصينية، حتى تحصلى على مذاق رائع، وتترك فى فرن درجة حرارته متوسطة لمدة ساعة إلا ربع تقريباً.",
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

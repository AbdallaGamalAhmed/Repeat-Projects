//
//  Simple DataBase.swift
//  TableViewNew
//
//  Created by Abdalla on 10/3/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import Foundation

class Simple_DataBase {
    
    static var Language_Array : [Programming_Language_Object] = []
    
    static func AddingToArray()  {
        
        let SwiftAbout = """
Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, macOS, watchOS, tvOS, and Linux. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of existing Objective-C code written for Apple products. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6. On platforms other than Linux,[10] it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program.Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, macOS, watchOS, tvOS, and Linux. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of existing Objective-C code written for Apple products. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6. On platforms other than Linux,[10] it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program.
"""
        Language_Array.append(Programming_Language_Object(Name: "Swift", Information: SwiftAbout, Image: #imageLiteral(resourceName: "Swift4")))
        
        let JSAbout = """
JavaScript (/ˈdʒɑːvəˌskrɪpt/),[7] often abbreviated as JS, is a high-level, interpreted programming language. It is a language which is also characterized as dynamic, weakly typed, prototype-based and multi-paradigm.

Alongside HTML and CSS, JavaScript is one of the three core technologies of the World Wide Web.[8] JavaScript enables interactive web pages and thus is an essential part of web applications. The vast majority of websites use it,[9] and all major web browsers have a dedicated JavaScript engine to execute it.JavaScript (/ˈdʒɑːvəˌskrɪpt/),[7] often abbreviated as JS, is a high-level, interpreted programming language. It is a language which is also characterized as dynamic, weakly typed, prototype-based and multi-paradigm.

Alongside HTML and CSS, JavaScript is one of the three core technologies of the World Wide Web.[8] JavaScript enables interactive web pages and thus is an essential part of web applications. The vast majority of websites use it,[9] and all major web browsers have a dedicated JavaScript engine to execute it.

"""
        Language_Array.append(Programming_Language_Object(Name: "JavaScript", Information: JSAbout, Image: #imageLiteral(resourceName: "JS")))
        
        
        
        
        let PythonAbout = """
Python
Python logo and wordmark.svg
Paradigm    Object-oriented, imperative, functional, procedural, reflective
Designed by    Guido van Rossum
Developer    Python Software Foundation
First appeared    1990; 28 years ago[1]
Stable release
3.7.0 / 27 June 2018; 61 days ago[2]
2.7.15 / 1 May 2018; 3 months ago[3]
Typing discipline
Duck, dynamic, strong since version 3.5:Python
Python logo and wordmark.svg
Paradigm    Object-oriented, imperative, functional, procedural, reflective
Designed by    Guido van Rossum
Developer    Python Software Foundation
First appeared    1990; 28 years ago[1]
Stable release
3.7.0 / 27 June 2018; 61 days ago[2]
2.7.15 / 1 May 2018; 3 months ago[3]
Typing discipline
Duck, dynamic, strong since version 3.5:
"""
        Language_Array.append(Programming_Language_Object(Name: "Python", Information: PythonAbout, Image: #imageLiteral(resourceName: "Python")))
        
        
        let CPluseAbout = """
C++
ISO C++ Logo.svg
Paradigm    Multi-paradigm: procedural, functional, object-oriented, generic[1]
Designed by    Bjarne Stroustrup
First appeared    1985; 33 years ago
Stable release
ISO/IEC 14882:2017 / 1 December 2017; 8 months ago
Typing discipline    Static, nominative, partially inferred
Implementation language    C++ or C
Filename extensions    .C .cc .cpp .cxx .c++ .h .hh .hpp .hxx .h++
Website    isocpp.org
Major implementations
LLVM Clang, GCC, Microsoft Visual C++, Embarcadero C++Builder, Intel C++ Compiler, IBM XL C++, EDG C++
ISO C++ Logo.svg
Paradigm    Multi-paradigm: procedural, functional, object-oriented, generic[1]
Designed by    Bjarne Stroustrup
First appeared    1985; 33 years ago
Stable release
ISO/IEC 14882:2017 / 1 December 2017; 8 months ago
Typing discipline    Static, nominative, partially inferred
Implementation language    C++ or C
Filename extensions    .C .cc .cpp .cxx .c++ .h .hh .hpp .hxx .h++
Website    isocpp.org
Major implementations
LLVM Clang, GCC, Microsoft Visual C++, Embarcadero C++Builder, Intel C++ Compiler, IBM XL C++, EDG
"""
        Language_Array.append(Programming_Language_Object(Name: "C++", Information: CPluseAbout, Image: #imageLiteral(resourceName: "C++")))
        
        
        
        
        let JavaAbout = """
Java language: redirects here. For the natural language from the Indonesian island of Java, see Javanese language.
This article is about a programming language. For the software package downloaded from java.com, see Java SE.
Not to be confused with JavaScript.
Java
Java programming language logo.svg
Paradigm    Multi-paradigm: object-oriented (class-based), structured, imperative, generic, reflective, concurrent
Designed by    James Gosling
Developer    Sun Microsystems (now owned by Oracle Corporation)
First appeared    May 23, 1995; 23 years ago[1]
Typing discipline    Static, strong, safe, nominative, manifest
License    GNU General Public License, Java Community Process
Filename extensions    .java, .class, .jar Java language: redirects here. For the natural language from the Indonesian island of Java, see Javanese language.
This article is about a programming language. For the software package downloaded from java.com, see Java SE.
Not to be confused with JavaScript.
Java
Java programming language logo.svg
Paradigm    Multi-paradigm: object-oriented (class-based), structured, imperative, generic, reflective, concurrent
Designed by    James Gosling
Developer    Sun Microsystems (now owned by Oracle Corporation)
First appeared    May 23, 1995; 23 years ago[1]
Typing discipline    Static, strong, safe, nominative, manifest
License    GNU General Public License, Java Community Process
Filename extensions    .java, .class, .jar
"""
        Language_Array.append(Programming_Language_Object(Name: "Java", Information: JavaAbout, Image: #imageLiteral(resourceName: "Java")))
        
        
        let PHPAbout = """
PHP
PHP-logo.svg
Paradigm    Imperative, functional, object-oriented, procedural, reflective
Designed by    Rasmus Lerdorf
Developer    Zend Technologies
First appeared    1995; 23 years ago[1]
Stable release
7.2.9[2] / August 16, 2018; 10 days ago
Preview release
7.3.0 beta 2[3] / August 16, 2018; 10 days ago
Typing discipline
Dynamic, weak
 


PHP
PHP-logo.svg
Paradigm    Imperative, functional, object-oriented, procedural, reflective
Designed by    Rasmus Lerdorf
Developer    Zend Technologies
First appeared    1995; 23 years ago[1]
Stable release
7.2.9[2] / August 16, 2018; 10 days ago
Preview release
7.3.0 beta 2[3] / August 16, 2018; 10 days ago
Typing discipline
Dynamic, weak
"""
        Language_Array.append(Programming_Language_Object(Name: "PHP", Information: PHPAbout, Image: #imageLiteral(resourceName: "PHP")))
        
        
        
        let EnglishAbout = """
English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[4][5] Named after the Angles, one of the Germanic tribes that migrated to the area of Britain that would later take their name, England, both names ultimately deriving from the Anglia peninsula in the Baltic Sea. It is closely related to the Frisian languages, but its vocabulary has been significantly influenced by other Germanic languages, particularly Norse (a North Germanic language), as well as by Latin and French.[6]

English has developed over the course of more than 1,400 years. The earliest forms of English, a set of Anglo-Frisian dialects brought to Great Britain by Anglo-Saxon settlers in the 5th century, are called Old English. Middle English began in the late 11th century with the Norman conquest of England and was a period in which the language was influenced by French.[7] Early Modern English began in the late 15th century with the introduction of the printing press to London, the printing of the King James Bible and the start of the Great Vowel Shift.[8]

Through the worldwide influence of the British Empire, modern English spread around the world from the 17th to mid-20th centuries. Through all types of printed and electronic media, and spurred by the emergence of the United States as a global superpower, English has become the leading language of international discourse and the lingua franca in many regions and professional contexts such as science, navigation and law.[9]
"""
        Language_Array.append(Programming_Language_Object(Name: "English", Information: EnglishAbout, Image: #imageLiteral(resourceName: "English")))
        
        
        
        let FrenchAbout = """
French (le français [lə fʁɑ̃sɛ] (About this sound listen) or la langue française [la lɑ̃ɡ fʁɑ̃sɛz]) is a Romance language of the Indo-European family. It descended from the Vulgar Latin of the Roman Empire, as did all Romance languages. French has evolved from Gallo-Romance, the spoken Latin in Gaul, and more specifically in Northern Gaul. Its closest relatives are the other langues d'oïl—languages historically spoken in northern France and in southern Belgium, which French (Francien) has largely supplanted. French was also influenced by native Celtic languages of Northern Roman Gaul like Gallia Belgica and by the (Germanic) Frankish language of the post-Roman Frankish invaders. Today, owing to France's past overseas expansion, there are numerous French-based creole languages, most notably Haitian Creole. A French-speaking person or nation may be referred to as Francophone in both English and French.

French is an official language in 29 countries across five different continents,[4] most of which are members of the Organisation internationale de la Francophonie (OIF), the community of 84 countries which share the official use or teaching of French. It is spoken as a first language (in descending order of the number of speakers) in France, Canadian provinces of Quebec, Ontario and New Brunswick as well as other Francophone regions, Belgium (Wallonia and Brussels), western Switzerland (cantons of Bern, Fribourg, Geneva, Jura, Neuchâtel, Vaud, Valais), Monaco, parts of the United States (Louisiana, Maine, New Hampshire, and Vermont), and by various communities elsewhere.[5] In 2015, approximately 40% of the francophone population (including L2 and partial speakers) lived in Europe, 35% in sub-Saharan Africa, 15% in North Africa and the Middle East, 8% in the Americas, and 1% in Asia and Oceania.[6]
"""
        Language_Array.append(Programming_Language_Object(Name: "French", Information: FrenchAbout, Image: #imageLiteral(resourceName: "French")))
        
        
        
        let GermanAbout = """
German (Deutsch [dɔʏtʃ] (About this sound listen)) is a West Germanic language that is mainly spoken in Central Europe. It is the most widely spoken and official or co-official language in Germany, Austria, Switzerland, South Tyrol (Italy), the German-speaking Community of Belgium, and Liechtenstein. It is also one of the three official languages of Luxembourg. The languages which are most similar to German are the other members of the West Germanic language branch: Afrikaans, Dutch, English, the Frisian languages, Low German/Low Saxon, Luxembourgish, and Yiddish. German is the second most widely spoken Germanic language, after English.

One of the major languages of the world, German is the first language of almost 100 million people worldwide and the most widely spoken native language in the European Union.[2][8] Together with French, German is the second most commonly spoken foreign language in the EU after English, making it the second biggest language in the EU in terms of overall speakers.[9] German is also the second most widely taught foreign language in the EU after English at primary school level (but third after English and French at lower secondary level),[10] the fourth most widely taught non-English language in the US[11] (after Spanish, French and American Sign Language), and the second most commonly used scientific language[12] as well as the second most widely used language on websites after English.[13] The German-speaking countries are ranked fifth in terms of annual publication of new books, with one tenth of all books (including e-books) in the world being published in the German language.[14] In the United Kingdom, German and French are the most-sought after foreign languages for businesses (with 49% and 50% of businesses identifying these two languages as the most useful, respectively).[15]
"""
        Language_Array.append(Programming_Language_Object(Name: "German", Information: GermanAbout, Image: #imageLiteral(resourceName: "German")))
        
        
        let SpanishAbout = """
Spanish (/ˈspænɪʃ/ (About this sound listen); About this sound español (help·info)) or Castilian[4] (/kæˈstɪliən/ (About this sound listen), About this sound castellano (help·info)), is a Western Romance language that originated in the Castile region of Spain and today has hundreds of millions of native speakers in the Americas and Spain. It is usually considered a global language and the world's second-most spoken native language, after Mandarin Chinese.[5][6][7][8][9]

Spanish is a part of the Ibero-Romance group of languages, which evolved from several dialects of Vulgar Latin in Iberia after the collapse of the Western Roman Empire in the 5th century. The oldest Latin texts with traces of Spanish come from mid-northern Iberia in the 9th century,[10] and the first systematic written use of the language happened in Toledo, then capital of the Kingdom of Castile, in the 13th century. Beginning in the early 16th century, Spanish was taken to the viceroyalties of the Spanish Empire, most notably to the Americas, as well as territories in Africa, Oceania and the Philippines.[11]

Around 75% of modern Spanish vocabulary is derived from Latin. Ancient Greek has also contributed substantially to Spanish vocabulary, especially through Latin, where it had a great impact.[12][13] Spanish vocabulary has been in contact with Arabic from an early date, having developed during the Al-Andalus era in the Iberian Peninsula.[14][15][16][17] With around 8% of its vocabulary being Arabic in origin, this language is the second most important influence after Latin.[14][18][19] It has also been influenced by Basque, Iberian, Celtiberian, Visigothic, and by neighboring Ibero-Romance languages.[20][14].
"""
        Language_Array.append(Programming_Language_Object(Name: "Spanish", Information: SpanishAbout, Image: #imageLiteral(resourceName: "Spanish")))
    }
    
    
    
}

package si.feri.praktikum.model;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.Random;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

public class RSSKino {

    static ArrayList <Dogodek> kino  = new ArrayList<Dogodek>();

    public  ArrayList <Dogodek> rssKino (){

        try{
            URL rssurl = new URL("https://www.kolosej.si/spored/xml/2.0/");
           // File inputFile = new File("kolosej.txt");
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = (Document) dBuilder.parse(String.valueOf(rssurl));
            doc.getDocumentElement().normalize();



          //  System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
            NodeList nList = doc.getElementsByTagName("movie");


         //   System.out.println("----------------------------");
            for (int i = 0; i < nList.getLength(); i++) {
                Node nNode = nList.item(i);



                if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                    Element eElement = (Element) nNode;


                   // System.out.println("Film : " + eElement.getElementsByTagName("title").item(0).getTextContent());

                  //  System.out.println("Izvajalci : " + eElement.getElementsByTagName("cast").item(0).getTextContent());

                  //  System.out.println("Opis : " + eElement.getElementsByTagName("plot_outline").item(0).getTextContent());



                    NodeList nLshows = doc.getElementsByTagName("shows");
                    Node nShows= nLshows.item(i);
                    Element eShows = (Element) nShows;


                    NodeList nlShow= doc.getElementsByTagName("show");
                    Node nShow=nlShow.item((int)Math.floor(Math.random() *nlShow.getLength()-1));
                    Element eShow= (Element) nShow;



                 //   System.out.println("Lokacija : " + eShow.getElementsByTagName("city").item(0).getTextContent());


                 //   System.out.println("Datum : " + eShow.getElementsByTagName("date").item(0).getTextContent());

                //    System.out.println("Dvorana : " + eShow.getElementsByTagName("theater").item(0).getTextContent());

                    String opis=eElement.getElementsByTagName("plot_outline").item(0).getTextContent();
                    String opis1;

                    if(opis.length()>100){

                      opis1=opis.substring(0,100);
                    }else{

                        opis1=opis;
                    }


                   Dogodek dogodek = new Dogodek(eElement.getElementsByTagName("title").item(0).getTextContent(),
                            eShow.getElementsByTagName("city").item(0).getTextContent(),
                            eShow.getElementsByTagName("date").item(0).getTextContent(),
                           eShow.getElementsByTagName("time").item(0).getTextContent(),
                            eElement.getElementsByTagName("director").item(0).getTextContent(),
                            eShow.getElementsByTagName("theater").item(0).getTextContent(),
                            (int)(Math.random() * 2 + 4),
                            opis1,
                            eElement.getElementsByTagName("poster").item(0).getTextContent(),
                            "kino");



                    kino.add(dogodek);


                }


            }
        }catch(Exception e ){

            e.printStackTrace();
        }



        return kino;

    }

}

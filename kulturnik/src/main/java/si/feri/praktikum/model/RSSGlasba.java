package si.feri.praktikum.model;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;

public class RSSGlasba {

    static ArrayList<Dogodek> glasba  = new ArrayList<Dogodek>();

    public  ArrayList <Dogodek> glasbaRSS (){
        File inputFile = new File("glasba.txt");


        try {
            URL rssurl = new URL("https://www.eventim.si/si/rss/top10.xml");
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = (Document) dBuilder.parse(String.valueOf(rssurl));
            doc.getDocumentElement().normalize();

            System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
            NodeList nList = doc.getElementsByTagName("item");

            for (int i = 0; i < nList.getLength(); i++) {
                Node nNode = nList.item(i);



                if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                    Element eElement = (Element) nNode;

                    System.out.println("naslov: "+ eElement.getElementsByTagName("title").item(0).getTextContent());
                    String opis=eElement.getElementsByTagName("link").item(0).getTextContent();

                    Dogodek dogodek = new Dogodek(eElement.getElementsByTagName("title").item(0).getTextContent(),
                            "",
                            "",
                            "",
                            "",
                            "",
                            0,
                            opis,
                            "https://www.mearto.com/assets/no-image-83a2b680abc7af87cfff7777d0756fadb9f9aecd5ebda5d34f8139668e0fc842.png",
                            "glasba");

                    glasba.add(dogodek);


                }

            }

        }catch(Exception e){

            e.toString();
        }
        return glasba;
    }
}

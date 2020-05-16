package si.feri.praktikum.model;

import si.feri.praktikum.controller.MainController;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Izvozxml {
MainController aray = new MainController();





    public void dat(){

try {
    FileWriter fw = new FileWriter("izvoz.txt");
    PrintWriter pw = new PrintWriter(fw, true);


    pw.println("<kulturnik>");

    for (int i = 0; i < aray.arayIzvoz().size(); i++) {


    pw.println("<dogodek>");
        pw.println("<ime>");
        pw.println(aray.arayIzvoz().get(i).getIme());
        pw.println("/<ime>");

        pw.println("<kraj>");
        pw.println(aray.arayIzvoz().get(i).getKraj());
        pw.println("/<kraj>");

        pw.println("<datum>");
        pw.println(aray.arayIzvoz().get(i).getDatum());
        pw.println("/<datum>");

        pw.println("<cas>");
        pw.println(aray.arayIzvoz().get(i).getCas());
        pw.println("/<cas>");

        pw.println("<izvajalec>");
        pw.println(aray.arayIzvoz().get(i).getIzvajalec());
        pw.println("/<izvajalec>");

        pw.println("<dvorana>");
        pw.println(aray.arayIzvoz().get(i).getDvorana());
        pw.println("/<dvorana>");

        pw.println("<cena>");
        pw.println(aray.arayIzvoz().get(i).getCena());
        pw.println("/<cena>");

        pw.println("<opis>");
        pw.println(aray.arayIzvoz().get(i).getOpis());
        pw.println("/<opis>");

        pw.println("<slika>");
        pw.println(aray.arayIzvoz().get(i).getSlika());
        pw.println("/<slika>");

        pw.println("<tip>");
        pw.println(aray.arayIzvoz().get(i).getTip());
        pw.println("/<tip>");



    pw.println("</dogodek>");

}

    pw.println("</kulturnik>");


    pw.flush();
    pw.close();


}catch(Exception e){

    e.printStackTrace();
}


    }


}

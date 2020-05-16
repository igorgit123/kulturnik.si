package si.feri.praktikum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import si.feri.praktikum.dao.AdminDao;
import si.feri.praktikum.dao.DogodkiDao;
import si.feri.praktikum.model.*;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.time.LocalDate;
import java.util.Collections;

@Controller
public class MainController {

    @Autowired
    DogodkiDao dogodkiDao;
    @Autowired
    AdminDao adminDao;

    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("indeks", dogodkiDao.findAll());
        return "index";
    }


    @RequestMapping(value = {"/danasnji"}, method = RequestMethod.GET)
    public String danasnji(Model model) {

        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter_2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String format_2 = (currentDate).format(formatter_2);
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d : dogodkiDao.findAll()) {
            System.out.println(d.getIme() + " " + d.getDatum() + " " + format_2);
            if (d.getDatum().equals(format_2)) {
                System.out.println(d.getIme() + "----");
                dogodki.add(d);
            }
        }

        if (!dogodki.isEmpty())
            System.out.println(dogodki.get(0).getIme());


        model.addAttribute("dogodki", dogodki);
        return "danasnji";
    }




        @RequestMapping(value = {"/glasba"}, method = RequestMethod.GET)
    public String glasba(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getTip().equals("glasba")){
                dogodki.add(d);
            }
        }
        model.addAttribute("dogodki", dogodki);

        return "glasba";
    }

    @RequestMapping(value = {"/gledalisce"}, method = RequestMethod.GET)
    public String gledalisce(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getTip().equals("gledalisce")){
                dogodki.add(d);
            }
        }
        model.addAttribute("dogodki", dogodki);

        return "gledalisce";
    }

    @RequestMapping(value = {"/kino"}, method = RequestMethod.GET)
    public String kino(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getTip().equals("kino")){
                dogodki.add(d);
            }
        }
        model.addAttribute("dogodki", dogodki);
        return "kino";
    }
    @RequestMapping(value = {"/razstave"}, method = RequestMethod.GET)
    public String razstave(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getTip().equals("razstave")){
                dogodki.add(d);
            }
        }
        model.addAttribute("dogodki", dogodki);
        return "razstave";
    }
    @RequestMapping(value = {"/sport"}, method = RequestMethod.GET)
    public String sport(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getTip().equals("sport")){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "sport";
    }


    @RequestMapping(value = {"/vsi_dogodki"}, method = RequestMethod.GET)
    public String vsidogodki(Model model) {

        model.addAttribute("dogodki", dogodkiDao.findAll());

        return "vsi_dogodki";
    }



    @RequestMapping(value = {"/maribor"}, method = RequestMethod.GET)
    public String maribor(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getKraj().equals("Maribor")){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "maribor";
    }



    @RequestMapping(value = {"/ljubljana"}, method = RequestMethod.GET)
    public String ljubljana(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getKraj().equals("Ljubljana")){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "ljubljana";
    }

    @RequestMapping(value = {"/celje"}, method = RequestMethod.GET)
    public String celje(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getKraj().equals("Celje")){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "celje";
    }


    @RequestMapping(value = {"/nizka_cena"}, method = RequestMethod.GET)
    public String nizkacena(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getCena() <= 10){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "nizka_cena";
    }


    @RequestMapping(value = {"/srednja_cena"}, method = RequestMethod.GET)
    public String srednjacena(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getCena() <= 20 && d.getCena() > 10){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "srednja_cena";
    }



    @RequestMapping(value = {"/visoka_cena"}, method = RequestMethod.GET)
    public String visokacena(Model model) {
        ArrayList<Dogodek> dogodki = new ArrayList<>();
        for (Dogodek d:dogodkiDao.findAll()) {
            if (d.getCena() > 20){
                dogodki.add(d);
            }
        }

        model.addAttribute("dogodki", dogodki);
        return "visoka_cena";
    }



    @RequestMapping(value = {"/o_nas"}, method = RequestMethod.GET)
    public String onas(Model model) {
        return "o_nas";
    }

    @RequestMapping(value = {"/prijava"}, method = RequestMethod.GET)
    public String prijava(Model model) {
        return "prijava";
    }



    @RequestMapping(value = {"/registracija"}, method = RequestMethod.GET)
    public String registracija(Model model) {
        return "registracija";
    }



    @RequestMapping(value = {"/seznamadmin"}, method = RequestMethod.GET)
    public String seznamadmin(Model model) {

        model.addAttribute("dogodki", dogodkiDao.findAll());
        return "dogodki";

    }

    @RequestMapping(value = {"/index"}, method = RequestMethod.GET)
    public String dodajanje(Model model) {


        return "dodajanjeDogodkov";
    }

    @RequestMapping(value = {"/addDogodek"}, method = RequestMethod.POST)
    public String dodajOsebo(Model model,
                             @RequestParam(value = "ime") String ime,
                             @RequestParam(value = "kraj") String kraj,
                             @RequestParam(value = "datum") String datum,
                             @RequestParam(value = "cas") String cas,
                             @RequestParam(value = "izvajalec") String izvajalec,
                             @RequestParam(value = "dvorana") String dvorana,
                             @RequestParam(value = "cena") double cena,
                             @RequestParam(value = "opis") String opis,
                             @RequestParam(value = "slika") String slika,
                             @RequestParam(value = "tip") String tip

    ) {





        dogodkiDao.save(new Dogodek(ime, kraj, datum, cas, izvajalec, dvorana,  cena,  opis, slika, tip));

        model.addAttribute("dogodki", dogodkiDao.findAll());

        return "dogodki";
    }

    @RequestMapping (value ={"/dodajRSS"}, method = RequestMethod.GET)
    public String RSS(Model model) {
        RSSKino kino = new RSSKino();
        RSSGlasba glasba = new RSSGlasba();

        for(int i=0; i<10; i++){
            dogodkiDao.save(kino.rssKino().get(i));

        }
        for(int i=0; i<10; i++){
            dogodkiDao.save(glasba.glasbaRSS().get(i));

        }
        model.addAttribute("dogodki", dogodkiDao.findAll());

        return "dogodki";
    }


    @RequestMapping (value ={"dogodekIzbrisi"}, method = RequestMethod.GET)
    public String izbrisi(Model model, @RequestParam(value = "odstrani") long izbrisi) {
        for (long i = 0; i < dogodkiDao.count(); i++) {
                dogodkiDao.deleteById(izbrisi);
                break;

        }
        model.addAttribute("dogodki", dogodkiDao.findAll());
        return "dogodki";
    }

    @RequestMapping (value ={"urejanje"}, method = RequestMethod.GET)
    public String uredi(Model model, @RequestParam(value = "odstrani") long izbrisi) {

        String ime = dogodkiDao.findById(izbrisi).get().getIme();
        String kraj = dogodkiDao.findById(izbrisi).get().getKraj();
        String datum = dogodkiDao.findById(izbrisi).get().getDatum();
        String cas = dogodkiDao.findById(izbrisi).get().getCas();
        String izvajalec = dogodkiDao.findById(izbrisi).get().getIzvajalec();
        String dvorana = dogodkiDao.findById(izbrisi).get().getDvorana();
        double cena = dogodkiDao.findById(izbrisi).get().getCena();
        String opis = dogodkiDao.findById(izbrisi).get().getOpis();
        String slika = dogodkiDao.findById(izbrisi).get().getSlika();
        String tip = dogodkiDao.findById(izbrisi).get().getTip();
        model.addAttribute("imedogodka", ime);
        model.addAttribute("krajdogodka", kraj);
        model.addAttribute("datumdogodka", datum);
        model.addAttribute("casdogodka", cas);
        model.addAttribute("izvajalecdogodka", izvajalec);
        model.addAttribute("dvoranadogodka", dvorana);
        model.addAttribute("cenadogodka", cena);
        model.addAttribute("opisdogodka", opis);
        model.addAttribute("slikadogodka", slika);

        dogodkiDao.deleteById(izbrisi);
        return "urejanje";
    }


    @RequestMapping(value = {"/addAdmin"}, method = RequestMethod.POST)
    public String dodajAdmina(Model model,
                              @RequestParam(value = "ime") String ime,
                              @RequestParam(value = "priimek") String priimek,
                              @RequestParam(value = "email") String email,
                              @RequestParam(value = "geslo") String geslo,
                              @RequestParam(value = "admingeslo") String admingeslo
    ) {
        boolean preveri=false;

        if (admingeslo.equals("zeloskrivnostnogeslo")) {
            adminDao.save(new Admin(ime, priimek, email, geslo));
            model.addAttribute("admin", adminDao.findAll());
            preveri=true;
            return "admin";
        }else{
            model.addAttribute("preveri",preveri);
            return "registracija";
        }
    }

    @RequestMapping(value = {"/preveri"}, method = RequestMethod.GET)
    public String preveriAdmina(Model model,
                                @RequestParam(value = "email") String email,
                                @RequestParam(value = "geslo") String geslo
    ) {
        boolean preveri = false;


            if (adminDao.findAll().iterator().next().getEmail().equals(email) && adminDao.findAll().iterator().next().getGeslo().equals(geslo)) {
                preveri = true;
            }
        if (preveri == true) {
            return "dodajanjeDogodkov";
        } else {
            model.addAttribute("preveri", preveri);
            return "prijava";
        }
    }
    long globalIzvoz=3;
    @RequestMapping(value = {"/izvoziXml"}, method = RequestMethod.POST)
    public String izvozXML(Model model,
                             @RequestParam(value = "izvoz") long izvoz) {

         globalIzvoz=izvoz;

        Izvozxml izvozxml = new Izvozxml();
        izvozxml.dat();



        return "izvozxml";
    }

    public  ArrayList <Dogodek> arayIzvoz (){
        ArrayList <Dogodek> izvozlist  = new ArrayList<Dogodek>();

        if(globalIzvoz>dogodkiDao.count()){
            globalIzvoz=dogodkiDao.count()-1;

        }

        for(long i=0; i<globalIzvoz; i++){

            Dogodek dogodek = new Dogodek(
                    dogodkiDao.findById(i).get().getIme(),
                    dogodkiDao.findById(i).get().getKraj(),
                    dogodkiDao.findById(i).get().getDatum(),
                    dogodkiDao.findById(i).get().getCas(),
                    dogodkiDao.findById(i).get().getIzvajalec(),
                    dogodkiDao.findById(i).get().getDvorana(),
                    dogodkiDao.findById(i).get().getCena(),
                    dogodkiDao.findById(i).get().getOpis(),
                    dogodkiDao.findById(i).get().getSlika(),
                    dogodkiDao.findById(i).get().getTip()
            );

            izvozlist.add(dogodek);


        }

        return izvozlist;
    }


}


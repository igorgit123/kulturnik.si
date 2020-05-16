package si.feri.praktikum.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
public class Dogodek {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String ime;
    private String kraj;
    private String datum;
    private String cas;
    private String izvajalec;
    private String dvorana;
    private double cena;
    private String opis;
    private String slika;
    private String tip;

    public String getSlika() {
        return slika;
    }

    public void setSlika(String slika) {
        this.slika = slika;
    }

    // Obvezen prazen konstruktor!
    public Dogodek() {
    }


    // Ne nastavljamo id nikoli sami!
    public Dogodek(String ime, String kraj, String datum, String cas, String izvajalec, String dvorana, double cena, String opis, String slika, String tip) {
        this.ime = ime;
        this.kraj = kraj;
        this.datum=datum;
        this.cas=cas;
        this.izvajalec=izvajalec;
        this.dvorana=dvorana;
        this.cena=cena;
        this.opis=opis;
        this.slika=slika;
        this.tip=tip;
    }

    public String getCas() {
        return cas;
    }

    public void setCas(String cas) {
        this.cas = cas;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getKraj() {
        return kraj;
    }

    public void setKraj(String kraj) {
        this.kraj = kraj;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public String getIzvajalec() {
        return izvajalec;
    }

    public void setIzvajalec(String izvajalec) {
        this.izvajalec = izvajalec;
    }

    public String getDvorana() {
        return dvorana;
    }

    public void setDvorana(String dvorana) {
        this.dvorana = dvorana;
    }

    public double getCena() {
        return cena;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }
}

package si.feri.praktikum.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;



@Entity
public class Admin {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String ime;
    private String priimek;
    private String email;
    private String geslo;
 //   private String  koda ="A123";;



    public Admin(){

    }
  //  public boolean preveriKodo(String koda){
   //     if (this.koda != koda){
    //        return false;
     //   }else
      //      return true;
    //      }

    public Admin(String ime, String priimek,String email, String geslo){
        this.ime=ime;
        this.priimek=priimek;
        this.email=email;
        this.geslo=geslo;


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

    public String getPriimek() {
        return priimek;
    }

    public void setPriimek(String priimek) {
        this.priimek = priimek;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGeslo() {
        return geslo;
    }

    public void setGeslo(String geslo) {
        this.geslo = geslo;
    }

   // public String getKoda() {
   //     return koda;
   // }

   // public void setKoda(String koda) {
   //     this.koda = koda;
   // }



}

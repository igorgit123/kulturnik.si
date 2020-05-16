package si.feri.praktikum.dao;

import org.springframework.data.repository.CrudRepository;
import si.feri.praktikum.model.Dogodek;


import java.util.List;

public interface DogodkiDao extends CrudRepository<Dogodek, Long> {

}

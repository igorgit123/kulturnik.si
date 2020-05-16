package si.feri.praktikum.dao;
import org.springframework.data.repository.CrudRepository;
import si.feri.praktikum.model.Admin;
import si.feri.praktikum.model.Dogodek;

public interface AdminDao extends CrudRepository<Admin, Long> {


}

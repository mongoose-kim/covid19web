import com.ddwuproj.dto.CarTriage;
import com.ddwuproj.service.SearchService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:web/WEB-INF/**/*t.xml"})
public class test {
    @Autowired
    SearchService searchService;

    @Test
    public void getAllCarTriage(){
        List<CarTriage> list = searchService.getAllCarTriage();

        for (CarTriage a : list) {
            System.out.println(a.getAddr());
        }
    }
}

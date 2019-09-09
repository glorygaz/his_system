import com.neu.dao.UserMapper;
import com.neu.model.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class UserDaoTest extends BaseTest {
    @Autowired
    private UserMapper userMapper;

    @Test
    public void testQueryById(){
//        int userId = 1;
//        User user = userMapper.selectByPrimaryKey(userId);
//        System.out.println(user);
        System.out.println(new Date().toString());
    }
}

import junit.framework.Assert;
import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * User: zannino
 * Date: 29/05/2015
 * Time: 15:22
 */
public class PasswordHashTest {

    @Test
    public void calculatePasswordHash() throws Exception {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String hash1 = bCryptPasswordEncoder.encode("$SimplePassword123");
        System.out.println(hash1);
        String hash2 = bCryptPasswordEncoder.encode("$SimplePassword123");
        System.out.println(hash2);
        Assert.assertFalse(hash1.equals(hash2));

        String johnPassword = bCryptPasswordEncoder.encode("john");
        System.out.println(johnPassword);
        String alexPassword = bCryptPasswordEncoder.encode("alex");
        System.out.println(alexPassword);
    }

}

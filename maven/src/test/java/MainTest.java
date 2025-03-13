package speedracer;

import org.junit.Assert;
import org.junit.Test;

public class MainTest { 

    @Test
    public void testPass() {
        Assert.assertEquals(1, 1);
    }

    @Test
    public void testNotPass() {
        Assert.assertEquals(100, 1);
    }    
}
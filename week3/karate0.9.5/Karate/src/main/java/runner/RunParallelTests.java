package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.*;
import org.junit.Test;

public class RunParallelTests {

	@Test
    public void testParallel() {
        Results results = Runner.path("classpath:karate").parallel(5);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
	
}
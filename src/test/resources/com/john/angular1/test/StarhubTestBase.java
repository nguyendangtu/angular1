package com.john.angular1.test;

import org.junit.After;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.powermock.modules.junit4.PowerMockRunner;
import org.springframework.test.context.ContextConfiguration;

@RunWith(PowerMockRunner.class)
@ContextConfiguration(locations = {
		"classpath:META-INF/server/TestDatasource_h2.xml",
		"classpath:META-INF/server/TestApplicationContext.xml",
		"classpath:META-INF/server/TestSecurity-context.xml" })
public abstract class StarhubTestBase extends PrivateMethodTestBase {

	@Before
	public void setUp() throws Exception {
		//TODO
	}

	@After
	public void tearDown() {
		//TODO
	}

	protected void replayAll(Object... args) {
		//TODO
	}

}

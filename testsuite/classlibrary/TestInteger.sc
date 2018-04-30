TestInteger : UnitTest {

	// ----------- scaleneg ---------------------------------------------------------------------

	// basic tests
	test_scaleneg_positiveA_positiveB {
		this.assertEquals(scaleneg(1, 2), 1)
	}

	test_scaleneg_zeroA_positiveB {
		this.assertEquals(scaleneg(0, 2), 0)
	}

	test_scaleneg_negativeA_positiveB {
		this.assertEquals(scaleneg(-1, 2), -2)
	}

	test_scaleneg_negativeA_negativeB {
		this.assertEquals(scaleneg(-1, -2), 2)
	}

	test_scaleneg_negativeA_zeroB {
		this.assertEquals(scaleneg(-1, 0), 0)
	}

}

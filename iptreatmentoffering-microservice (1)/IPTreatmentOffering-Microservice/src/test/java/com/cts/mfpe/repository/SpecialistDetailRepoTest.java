package com.cts.mfpe.repository;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.junit4.SpringRunner;

import com.cts.mfpe.model.AilmentCategory;
import com.cts.mfpe.model.SpecialistDetail;

@ExtendWith(SpringExtension.class)
@RunWith(SpringRunner.class)
@DataJpaTest(showSql = true)
//@AutoConfigureTestDatabase
@AutoConfigureTestDatabase(replace = Replace.NONE)
class SpecialistDetailRepoTest {
	//testCompile('com.h2database:h2')
	
	@Autowired
	SpecialistDetailRepository specialistRepository;

//	private SpecialistDetail specialist1;
//	private SpecialistDetail specialist2;


//	@BeforeEach
//	public void setup() {
//		
//		SpecialistDetail specialist1 = new SpecialistDetail(205, "Dr Raj", AilmentCategory.ORTHOPAIDICS, 10, 9876543210L);
//		SpecialistDetail specialist2 = new SpecialistDetail(206, "Dr Kunal", AilmentCategory.UROLOGY, 8, 9223344556L);
//		specialistRepository.save(specialist1);
//		specialistRepository.save(specialist2);
//	}	

	@Test
	@DisplayName("Test findAll() of SpecialistDetailRepo")
	public void testfindAll() {
		System.out.println("Specialist aarray size      "+specialistRepository.findAll().size());
		assertThat(specialistRepository.findAll()).hasSize(5);
	}	
}

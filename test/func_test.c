#include <ctest.h>
#include <func.h>

CTEST(FUNC_TEST, COMMON){
	// Given
	/*int a[] = {5,4,3,2};
	int b[] = {5,6,7,8};
	*/
	int a = 5;
	int b = 5;
	
	// When
	int result;
	result = func(a,b);
	
	// Then
	//int expected[] = {10,10,10,10};
	int expected = 10;
	//int i;
	//for (i = 0; i < 4; i++){
	ASSERT_EQUAL(expected,result);
	}

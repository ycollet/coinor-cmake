#include "OsiSolverInterface.hpp"
#include "OsiClpSolverInterface.hpp"
#include "OsiCbcSolverInterface.hpp"
#include "OsiXprSolverInterface.hpp"

#include <string>
#include <list>

std::string const Test_Path ="..\\..\\..\\Test\\";

template <class Osi_I> void MyTest(std::string const & fileName){
	std::string const full_path(Test_Path+fileName+".mps");
	OsiSolverInterface * ptr = new Osi_I;
	ptr->readMps(full_path.c_str(), "mps");
	ptr->messageHandler()->setLogLevel(4);
	ptr->branchAndBound();
	delete ptr;
}

int main(){
	typedef std::list<std::string> Instances;
	Instances instances;
	instances.push_back("p0033");
	// instances.push_back("exmip1");
	//instances.push_back("exmip1.5");
	for(Instances::const_iterator it(instances.begin());
		it!=instances.end(); ++it){
			//MyTest<OsiClpSolverInterface>(*it);
			MyTest<OsiCbcSolverInterface>(*it);
			MyTest<OsiXprSolverInterface>(*it);
	}
	return 0;
}
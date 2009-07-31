%module bpptest
%{
#include "MiyataAAChemicalDistance.h"
using namespace bpp;
%}
%include "std_string.i"
using namespace std;
%include "AlphabetIndex2.i"
%include "ProteicAlphabet.i"
%include "AlphabetExceptions.i"
%include "Exceptions.i"
%include "Matrix.i"

class MiyataAAChemicalDistance:public AlphabetIndex2<double>
{
	public:
		MiyataAAChemicalDistance();
		virtual ~MiyataAAChemicalDistance();

		double getIndex(int state1, int state2) const throw (BadIntException);
		double getIndex(const string & state1, const string & state2) const throw (BadCharException);
		const Alphabet * getAlphabet() const;
		MiyataAAChemicalDistance * clone() const;
		Matrix<double> * getIndexMatrix() const;

		void setSymmetric(bool yn);
		bool isSymmetric() const;
};
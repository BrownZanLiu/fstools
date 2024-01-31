#include<iostream>

#include "demo.h"

namespace liuzan {
namespace demo {

template<typename CharT, typename Char_Traits = std::char_traits<CharT>>
std::basic_ostream<CharT, Char_Traits>& operator <<(
		std::basic_ostream<CharT, Char_Traits> &os,
		const CmakeDemo & obj
		)
{
	os << obj.Major()
	   << '.'
	   << obj.Minor()
	   << '.'
	   << obj.Patch()
	   << '.'
	   << obj.Tweak();

	return os;
}

class NonvirtualBase {
private:
	int mId;

public:
	NonvirtualBase()
	{
		SetId(999);
		std::cout << "Non-virtual base constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "NonvirtualBase.mId: " << reinterpret_cast<unsigned long long>(&mId) << std::endl;
		std::cout << "mId = " << GetId() << std::endl;
	}

	~NonvirtualBase()
	{
		std::cout << "Non-virtual base destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "NonvirtualBase.mId: " << reinterpret_cast<unsigned long long>(&mId) << std::endl;
		std::cout << "mId = " << GetId() << std::endl;
	}

public:
	void SetId(int val) { mId = val; }
	int GetId() { return mId; }
};

class VirtualBase {
private:
	int mVal;

public:
	VirtualBase()
	{
		SetValue(0);
		std::cout << "Virtual base constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "VirtualBase.mVal: " << reinterpret_cast<unsigned long long>(&mVal) << std::endl;
		std::cout << "mVal = " << GetValue() << std::endl;
	}

	virtual ~VirtualBase()
	{
		std::cout << "Virtual base destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "VirtualBase.mVal: " << reinterpret_cast<unsigned long long>(&mVal) << std::endl;
		std::cout << "mVal = " << GetValue() << std::endl;
	}

public:
	void SetValue(int val) { mVal = val; }
	int GetValue() const { return mVal; }
};

class IntermediateA: public VirtualBase {
private:
	int mIntA;

public:
	IntermediateA()
	{
		SetValue(1);
		SetIntA(1);
		std::cout << "IntermediateA constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateA.mIntA: " << reinterpret_cast<unsigned long long>(&mIntA) << std::endl;
		std::cout << "mIntA = " << GetIntA() << std::endl;
	}

	~IntermediateA() override
	{
		std::cout << "IntermediateA destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateA.mIntA: " << reinterpret_cast<unsigned long long>(&mIntA) << std::endl;
		std::cout << "mIntA = " << GetIntA() << std::endl;
	}

public:
	void SetIntA(int val) { mIntA = val; }
	int GetIntA() { return mIntA; }
};

class IntermediateB: public VirtualBase {
private:
	int mIntB;

public:
	IntermediateB()
	{
		SetValue(2);
		SetIntB(2);
		std::cout << "IntermediateB constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateB.mIntB: " << reinterpret_cast<unsigned long long>(&mIntB) << std::endl;
		std::cout << "mIntB = " << GetIntB() << std::endl;
	}

	~IntermediateB() override
	{
		std::cout << "IntermediateB destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateB.mIntB: " << reinterpret_cast<unsigned long long>(&mIntB) << std::endl;
		std::cout << "mIntB = " << GetIntB() << std::endl;
	}

public:
	void SetIntB(int val) { mIntB = val; }
	int GetIntB() { return mIntB; }
};

class IntermediateC: virtual public VirtualBase {
private:
	int mIntC;

public:
	IntermediateC()
	{
		mIntC = 3;
		SetValue(3);
		std::cout << "IntermediateC constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateC.mIntC: " << reinterpret_cast<unsigned long long>(&mIntC) << std::endl;
		std::cout << "mIntC = " << GetIntC() << std::endl;
	}

	~IntermediateC() override
	{
		std::cout << "IntermediateC destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateC.mIntC: " << reinterpret_cast<unsigned long long>(&mIntC) << std::endl;
		std::cout << "mIntC = " << GetIntC() << std::endl;
	}

public:
	void SetIntC(int val) { mIntC = val; }
	int GetIntC() { return mIntC; }
};

class IntermediateD: virtual public VirtualBase {
private:
	int mIntD;

public:
	IntermediateD()
	{
		SetValue(4);
		SetIntD(4);
		std::cout << "IntermediateD constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "IntermediateD.mIntD: " << reinterpret_cast<unsigned long long>(&mIntD) << std::endl;
		std::cout << "mIntD = " << GetIntD() << std::endl;
	}

	~IntermediateD() override
	{
		std::cout << "IntermediateD destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "mIntD = " << GetIntD() << std::endl;
	}

public:
	void SetIntD(int val) { mIntD = val; }
	int GetIntD() { return mIntD; }
};

class TopA: public IntermediateA, public IntermediateB, public NonvirtualBase {
private:
	int mTopA;

public:
	TopA()
	{
		IntermediateA::SetValue(51);
		IntermediateB::SetValue(52);
		SetIntA(5);
		SetIntB(5);
		SetTopA(5);
		SetId(5);
		std::cout << "TopA constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "TopA.mTopA: " << reinterpret_cast<unsigned long long>(&mTopA) << std::endl;
		std::cout << "mTopA = " << GetTopA() << std::endl;
	}

	~TopA() override
	{
		std::cout << "TopA destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "TopA.mTopA: " << reinterpret_cast<unsigned long long>(&mTopA) << std::endl;
		std::cout << "mTopA = " << GetTopA() << std::endl;
	}

public:
	void SetTopA(int val) { mTopA = val; }
	int GetTopA() { return mTopA; }
};

class TopB: public IntermediateC, public IntermediateD, public NonvirtualBase  {
private:
	int mTopB;

public:
	TopB()
	{
		SetValue(6);
		SetIntC(6);
		SetIntD(6);
		SetTopB(6);
		SetId(6);
		std::cout << "TopB constructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "TopB.mTopB: " << reinterpret_cast<unsigned long long>(&mTopB) << std::endl;
		std::cout << "mTopB = " << GetTopB() << std::endl;
	}

	~TopB() override
	{
		std::cout << "TopB destructor: " << reinterpret_cast<unsigned long long>(this) << std::endl;
		std::cout << "TopB.mTopB: " << reinterpret_cast<unsigned long long>(&mTopB) << std::endl;
		std::cout << "mTopB = " << GetTopB() << std::endl;
	}

public:
	void SetTopB(int val) { mTopB = val; }
	int GetTopB() { return mTopB; }
};

}  // namespace demo
}  // namespace liuzan

int main(int argc, char **argv)
{
	using namespace liuzan::demo;

	CmakeDemo vCMakeDemo{3, 26, 3};

	std::cout << "cmake version: " << vCMakeDemo << std::endl;
	std::cout << "C++ version: " << __cplusplus << std::endl;

	std::cout << std::endl;
	{
		TopA vTopA;
		std::cout << "TopA bytes: " << sizeof(vTopA) << std::endl;
		std::cout << "TopA values: "
			      << static_cast<IntermediateA>(vTopA).GetValue() << ", "
			      << vTopA.IntermediateB::GetValue() << ", "
				  << vTopA.GetIntA() << ", "
				  << vTopA.GetIntB() << ", "
				  << vTopA.GetTopA()
				  << std::endl;
	}

	std::cout << std::endl;
	{
		TopB vTopB;
		std::cout << "TopB bytes: " << sizeof(vTopB) << std::endl;
		std::cout << "TopB values: "
			      << vTopB.GetValue() << ", "
				  << vTopB.GetIntC() << ", "
				  << vTopB.GetIntD() << ", "
				  << vTopB.GetTopB()
				  << std::endl;
	}

	return 0;
}

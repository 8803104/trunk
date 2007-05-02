/*************************************************************************
*  Copyright (C) 2004 by Olivier Galizzi                                 *
*  olivier.galizzi@imag.fr                                               *
*                                                                        *
*  This program is free software; it is licensed under the terms of the  *
*  GNU General Public License v2 or later. See file LICENSE for details. *
*************************************************************************/

#ifndef GLDRAWGEOMETRICALMODELFUNCTOR_HPP
#define GLDRAWGEOMETRICALMODELFUNCTOR_HPP

#include<yade/core/EngineUnit1D.hpp>
#include<yade/lib-multimethods/FunctorWrapper.hpp>
#include<yade/core/GeometricalModel.hpp>
#include<yade/core/PhysicalParameters.hpp>


#define RENDERS(name) 							\
	public : virtual string renders() const { return #name; };

class GLDrawGeometricalModelFunctor : 	public EngineUnit1D
					<
		 				void ,
		 				TYPELIST_3(const shared_ptr<GeometricalModel>&, const shared_ptr<PhysicalParameters>&,bool) 
					>
{
	public : 
		virtual ~GLDrawGeometricalModelFunctor() {};
		virtual string renders() const { std::cerr << "unregistered gldraw class.\n"; throw; }; // FIXME - replace that with a nice exception
	
	REGISTER_CLASS_NAME(GLDrawGeometricalModelFunctor);
	REGISTER_BASE_CLASS_NAME(EngineUnit1D);
};

REGISTER_SERIALIZABLE(GLDrawGeometricalModelFunctor,false);

#endif //  GLDRAWGEOMETRICALMODELFUNCTOR_HPP


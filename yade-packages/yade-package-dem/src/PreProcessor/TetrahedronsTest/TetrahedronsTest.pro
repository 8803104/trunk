isEmpty ( YADE_QMAKE_PATH ) {
error( "YADE_QMAKE_PATH internal qmake variable is not set, you should run for example qmake YADE_QMAKE_PATH=/usr/local, this will not work from inside kdevelop (when they will fix it?)" )
}


LIBS += -lPolyhedralSweptSphere \
        -lSDECLinkGeometry \
        -lElasticContactLaw \
        -lSwiftPolyhedronProximityModeler \
        -lMacroMicroElasticRelationships \
        -lElasticCriterionTimeStepper \
        -lPhysicalActionVectorVector \
        -lInteractionVecSet \
        -lBodyRedirectionVector \
        -lInteractingSphere \
        -lInteractingBox \
        -lCundallNonViscousMomentumDamping \
        -lCundallNonViscousForceDamping \
        -lMetaInteractingGeometry \
        -lGravityEngine \
        -lPhysicalActionContainerInitializer \
        -lPhysicalActionContainerReseter \
        -lInteractionGeometryMetaEngine \
        -lInteractionPhysicsMetaEngine \
        -lPhysicalActionApplier \
        -lPhysicalParametersMetaEngine \
        -lBoundingVolumeMetaEngine \
        -lBox \
        -lSphere \
        -lAABB \
        -lPersistentSAPCollider \
        -lParticleParameters \
        -lSAPCollider \
        -lMetaInteractingGeometry2AABB \
        -lTetrahedron \
        -lyade-lib-serialization \
        -lyade-lib-wm3-math \
        -lyade-lib-multimethods \
        -rdynamic 
INCLUDEPATH += $${YADE_QMAKE_PATH}/include/ \
               ../../Engine/StandAloneEngine/ElasticCriterionTimeStepper \
               ../../Engine/StandAloneEngine/SwiftPolyhedronProximityModeler \
               ../../Engine/StandAloneEngine/ElasticContactLaw \
               ../../Engine/EngineUnit/MacroMicroElasticRelationships \
               ../../DataClass/InteractionGeometry/SDECLinkGeometry \
               ../../DataClass/PhysicalParameters/BodyMacroParameters \
               ../../DataClass/InteractingGeometry/PolyhedralSweptSphere 
QMAKE_LIBDIR = ../../../bin \
               ../../../bin \
               ../../../bin \
               ../../../bin \
               ../../../bin \
               ../../../bin \
               $${YADE_QMAKE_PATH}/lib/yade/yade-package-common/ \
               $${YADE_QMAKE_PATH}/lib/yade/yade-libs/ 
QMAKE_CXXFLAGS_RELEASE += -lpthread \
                          -pthread 
QMAKE_CXXFLAGS_DEBUG += -lpthread \
                        -pthread 
DESTDIR = ../../../bin 
CONFIG += debug \
          thread \
          warn_on \
          dll 
TEMPLATE = lib 
HEADERS += TetrahedronsTest.hpp 
SOURCES += TetrahedronsTest.cpp 
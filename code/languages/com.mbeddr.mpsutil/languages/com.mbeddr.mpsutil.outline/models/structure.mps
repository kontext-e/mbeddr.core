<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4b7ce1fd-f467-4769-b407-6954cfbe3622(com.mbeddr.mpsutil.outline.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="5PyBcyXwaWz">
    <property role="TrG5h" value="IOutlineRoot" />
    <property role="3GE5qa" value="outline" />
  </node>
  <node concept="PlHQZ" id="5PyBcyXwaW$">
    <property role="TrG5h" value="IShowUpInOutline" />
    <property role="3GE5qa" value="outline" />
  </node>
  <node concept="PlHQZ" id="5PyBcyXwaW_">
    <property role="TrG5h" value="IHideFromOutline" />
    <property role="3GE5qa" value="outline" />
  </node>
</model>

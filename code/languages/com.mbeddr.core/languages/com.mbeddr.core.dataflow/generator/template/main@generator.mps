<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9b321937-2c75-4a0f-bdcd-7e11b589a894(com.mbeddr.core.dataflow.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="101be20f-3e59-4ebb-abcc-1448ce15a064" name="com.mbeddr.core.dataflow" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="1fjm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework()" />
    <import index="f696" ref="r:271faa63-aadd-42b6-8614-2695f6f55e2a(com.mbeddr.core.dataflow.runtime.plugin)" />
    <import index="8ov6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow(MPS.Core/)" />
    <import index="ybok" ref="r:7dfcfa6f-9a28-4f89-a6e9-aef71c0e4ab5(com.mbeddr.core.dataflow.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mu20" ref="r:fc94574f-a075-45e6-9927-48e7e87153e6(jetbrains.mps.analyzers.runtime.framework)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="bj1v" ref="r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)" />
    <import index="dau9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework.instructions(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ty9a" ref="r:a906d1cd-0886-4e6d-bb7e-484119b7a54f(jetbrains.mps.lang.dataFlow.analyzers.generator.template.main@generator)" />
    <import index="tp41" ref="r:00000000-0000-4000-0000-011c8959037d(jetbrains.mps.lang.dataFlow.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1194989344771" name="alternativeConsequence" index="UU_$l" />
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
      </concept>
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="bUwia" id="_oDvx5U49O">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="_oDvx5UVPt" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="ybok:_oDvx5U51b" resolve="EmitInlineStatement" />
      <node concept="j$656" id="2U8JvBXrxJ8" role="1lVwrX">
        <ref role="v9R2y" node="2U8JvBXrt3E" resolve="reduce_EmitInlineStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="2U8JvBXrxJc" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="ybok:2U8JvBXrt1f" resolve="EmitEntryPointStatement" />
      <node concept="j$656" id="2U8JvBXrxJm" role="1lVwrX">
        <ref role="v9R2y" node="hzArv$P" resolve="reduce_EmitEntryPointStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="44cpf2ozwdo" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="ybok:2cV6Bp1Wn8h" resolve="EmitMapStatement" />
      <node concept="j$656" id="3u8ubzKo1RK" role="1lVwrX">
        <ref role="v9R2y" node="3u8ubzKo17W" resolve="reduce_EmitMapStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="2cV6Bp1WPH_" role="3acgRq">
      <ref role="30HIoZ" to="ybok:2cV6Bp1Wvtp" resolve="EmitUnmapStatement" />
      <node concept="j$656" id="2cV6Bp1WQO7" role="1lVwrX">
        <ref role="v9R2y" node="2cV6Bp1WOeL" resolve="reduce_EmitUnmapStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="1O3WvD8NQ36" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="ybok:1O3WvD8NPAO" resolve="IsContextSensitiveExpression" />
      <node concept="j$656" id="1O3WvD8NQ37" role="1lVwrX">
        <ref role="v9R2y" node="1O3WvD8NQ34" resolve="reduce_IsContextSensitiveExpression" />
      </node>
    </node>
    <node concept="3aamgX" id="6ddb09ajomf" role="3acgRq">
      <ref role="30HIoZ" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      <node concept="j$656" id="6ddb09ajCUs" role="1lVwrX">
        <ref role="v9R2y" node="6ddb09ahiMK" resolve="reduce_CustomDataFlowRule" />
      </node>
      <node concept="30G5F_" id="6ddb09ajpti" role="30HLyM">
        <node concept="3clFbS" id="6ddb09ajptj" role="2VODD2">
          <node concept="3cpWs8" id="6ddb09alE3V" role="3cqZAp">
            <node concept="3cpWsn" id="6ddb09alE3W" role="3cpWs9">
              <property role="TrG5h" value="clazz" />
              <node concept="3Tqbb2" id="6ddb09alE3S" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
              <node concept="2OqwBi" id="6ddb09alE3X" role="33vP2m">
                <node concept="30H73N" id="6ddb09alE3Y" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6ddb09alE3Z" role="2OqNvi">
                  <node concept="1xMEDy" id="6ddb09alE40" role="1xVPHs">
                    <node concept="chp4Y" id="6ddb09alE41" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6ddb09al$Xf" role="3cqZAp">
            <node concept="3cpWsn" id="6ddb09al$Xi" role="3cpWs9">
              <property role="TrG5h" value="c1" />
              <node concept="10P_77" id="6ddb09al$Xd" role="1tU5fm" />
              <node concept="2OqwBi" id="6ddb09alBrg" role="33vP2m">
                <node concept="Xl_RD" id="6ddb09alAIZ" role="2Oq$k0">
                  <property role="Xl_RC" value="performActions" />
                </node>
                <node concept="liA8E" id="6ddb09alBI3" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="6ddb09al_Gl" role="37wK5m">
                    <node concept="30H73N" id="6ddb09al_pr" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6ddb09alAhY" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6ddb09alCk1" role="3cqZAp">
            <node concept="3cpWsn" id="6ddb09alCk4" role="3cpWs9">
              <property role="TrG5h" value="c2" />
              <node concept="10P_77" id="6ddb09alCjZ" role="1tU5fm" />
              <node concept="2OqwBi" id="6ddb09alCMb" role="33vP2m">
                <node concept="2OqwBi" id="6ddb09alCMc" role="2Oq$k0">
                  <node concept="37vLTw" id="6ddb09alE42" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ddb09alE3W" resolve="clazz" />
                  </node>
                  <node concept="3Tsc0h" id="6ddb09alCMi" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fWEKbgp" />
                  </node>
                </node>
                <node concept="2HwmR7" id="6ddb09alCMj" role="2OqNvi">
                  <node concept="1bVj0M" id="6ddb09alCMk" role="23t8la">
                    <node concept="3clFbS" id="6ddb09alCMl" role="1bW5cS">
                      <node concept="3clFbF" id="6ddb09alCMm" role="3cqZAp">
                        <node concept="3clFbC" id="6ddb09alCMn" role="3clFbG">
                          <node concept="3B5_sB" id="6ddb09alCMo" role="3uHU7w">
                            <ref role="3B5MYn" to="1fjm:~DataFlowConstructor" resolve="DataFlowConstructor" />
                          </node>
                          <node concept="2OqwBi" id="6ddb09alCMp" role="3uHU7B">
                            <node concept="37vLTw" id="6ddb09alCMq" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ddb09alCMs" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="6ddb09alCMr" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:g7uigIF" />
                            </node>
                          </node>
                        </node>
                        <node concept="15s5l7" id="6ddb09alRoh" role="lGtFl" />
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6ddb09alCMs" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6ddb09alCMt" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6ddb09alDn7" role="3cqZAp">
            <node concept="3cpWsn" id="6ddb09alDna" role="3cpWs9">
              <property role="TrG5h" value="c3" />
              <node concept="10P_77" id="6ddb09alDn5" role="1tU5fm" />
              <node concept="3fqX7Q" id="6ddb09alPwj" role="33vP2m">
                <node concept="2OqwBi" id="6ddb09alPwl" role="3fr31v">
                  <node concept="2OqwBi" id="6ddb09alPwm" role="2Oq$k0">
                    <node concept="2OqwBi" id="6ddb09alPwn" role="2Oq$k0">
                      <node concept="37vLTw" id="6ddb09alPwo" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ddb09alE3W" resolve="clazz" />
                      </node>
                      <node concept="3Tsc0h" id="6ddb09alPwp" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" />
                      </node>
                    </node>
                    <node concept="v3k3i" id="6ddb09alPwq" role="2OqNvi">
                      <node concept="chp4Y" id="6ddb09alPwr" role="v3oSu">
                        <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="2HwmR7" id="6ddb09alPws" role="2OqNvi">
                    <node concept="1bVj0M" id="6ddb09alPwt" role="23t8la">
                      <node concept="3clFbS" id="6ddb09alPwu" role="1bW5cS">
                        <node concept="3clFbF" id="6ddb09alPwv" role="3cqZAp">
                          <node concept="2OqwBi" id="6ddb09alPww" role="3clFbG">
                            <node concept="Xl_RD" id="6ddb09alPwx" role="2Oq$k0">
                              <property role="Xl_RC" value="performActions0" />
                            </node>
                            <node concept="liA8E" id="6ddb09alPwy" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                              <node concept="2OqwBi" id="6ddb09alPwz" role="37wK5m">
                                <node concept="37vLTw" id="6ddb09alPw$" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6ddb09alPwA" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="6ddb09alPw_" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6ddb09alPwA" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6ddb09alPwB" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6ddb09alQdt" role="3cqZAp">
            <node concept="1Wc70l" id="6ddb09alR09" role="3cqZAk">
              <node concept="37vLTw" id="6ddb09alR8d" role="3uHU7w">
                <ref role="3cqZAo" node="6ddb09alDna" resolve="c3" />
              </node>
              <node concept="1Wc70l" id="6ddb09alQB6" role="3uHU7B">
                <node concept="37vLTw" id="6ddb09alQm0" role="3uHU7B">
                  <ref role="3cqZAo" node="6ddb09al$Xi" resolve="c1" />
                </node>
                <node concept="37vLTw" id="6ddb09alQQD" role="3uHU7w">
                  <ref role="3cqZAo" node="6ddb09alCk4" resolve="c2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzArv$P">
    <property role="TrG5h" value="reduce_EmitEntryPointStatement" />
    <property role="3GE5qa" value="templates" />
    <ref role="3gUMe" to="ybok:2U8JvBXrt1f" resolve="EmitEntryPointStatement" />
    <node concept="3clFb_" id="hzArCky" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzArCkz" role="1B3o_S" />
      <node concept="3cqZAl" id="hzArCk$" role="3clF45" />
      <node concept="37vLTG" id="hzArCk_" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzArCkA" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzArCkB" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="2Rrads0ftmm" role="1tU5fm">
          <ref role="3uigEE" to="8ov6:~DataFlowBuilderContext" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzArD_Q" role="3clF47">
        <node concept="9aQIb" id="1xH3giefJTC" role="3cqZAp">
          <node concept="3clFbS" id="1xH3giefJTE" role="9aQI4">
            <node concept="3cpWs8" id="1xH3giefKvL" role="3cqZAp">
              <node concept="3cpWsn" id="1xH3giefKvM" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="1xH3giefKvN" role="1tU5fm">
                  <ref role="3uigEE" to="f696:5caPF5jMOpx" resolve="InterProceduralDataFlowGraphBuilderContext" />
                </node>
                <node concept="10QFUN" id="1xH3giefKvO" role="33vP2m">
                  <node concept="3uibUv" id="1xH3giefKvP" role="10QFUM">
                    <ref role="3uigEE" to="f696:5caPF5jMOpx" resolve="InterProceduralDataFlowGraphBuilderContext" />
                  </node>
                  <node concept="37vLTw" id="1xH3giefKvQ" role="10QFUP">
                    <ref role="3cqZAo" node="hzArCkB" resolve="_context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xH3giefKvR" role="3cqZAp">
              <node concept="3cpWsn" id="1xH3giefKvS" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="1xH3giefKvT" role="1tU5fm">
                  <ref role="3uigEE" to="f696:1NMTjOJ0bjY" resolve="InterProceduralDataFlowGraphBuilder" />
                </node>
                <node concept="10QFUN" id="1xH3giefKvU" role="33vP2m">
                  <node concept="3uibUv" id="1xH3giefKvV" role="10QFUM">
                    <ref role="3uigEE" to="f696:1NMTjOJ0bjY" resolve="InterProceduralDataFlowGraphBuilder" />
                  </node>
                  <node concept="2OqwBi" id="1xH3giefKvW" role="10QFUP">
                    <node concept="37vLTw" id="1xH3giefKvX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1xH3giefKvM" resolve="context" />
                    </node>
                    <node concept="liA8E" id="1xH3giefKvY" role="2OqNvi">
                      <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getBuilder():jetbrains.mps.lang.dataFlow.MPSProgramBuilder" resolve="getBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xH3giefKB_" role="3cqZAp">
              <node concept="3cpWsn" id="1xH3giefKBA" role="3cpWs9">
                <property role="TrG5h" value="point" />
                <node concept="3Tqbb2" id="1xH3giefKML" role="1tU5fm" />
                <node concept="10Nm6u" id="1xH3giefKBB" role="33vP2m">
                  <node concept="29HgVG" id="1xH3giefKBC" role="lGtFl">
                    <node concept="3NFfHV" id="1xH3giefKBD" role="3NFExx">
                      <node concept="3clFbS" id="1xH3giefKBE" role="2VODD2">
                        <node concept="3cpWs6" id="1xH3giefKBF" role="3cqZAp">
                          <node concept="2OqwBi" id="1xH3giefKBG" role="3cqZAk">
                            <node concept="3TrEf2" id="1xH3giefKBH" role="2OqNvi">
                              <ref role="3Tt5mk" to="ybok:2U8JvBXrt1g" />
                            </node>
                            <node concept="30H73N" id="1xH3giefKBI" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xH3giefKXZ" role="3cqZAp">
              <node concept="3cpWsn" id="1xH3giefKY0" role="3cpWs9">
                <property role="TrG5h" value="entryPointInstruction" />
                <node concept="3uibUv" id="1xH3giefKXQ" role="1tU5fm">
                  <ref role="3uigEE" to="f696:_oDvx5Vmkk" resolve="EntryPointInstruction" />
                </node>
                <node concept="2ShNRf" id="1xH3giefKY1" role="33vP2m">
                  <node concept="1pGfFk" id="1xH3giefKY2" role="2ShVmc">
                    <ref role="37wK5l" to="f696:3yfIX0JGyv3" resolve="EntryPointInstruction" />
                    <node concept="37vLTw" id="1xH3giefKY3" role="37wK5m">
                      <ref role="3cqZAo" node="1xH3giefKBA" resolve="point" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xH3giefLUM" role="3cqZAp">
              <node concept="3cpWsn" id="1xH3giefLUP" role="3cpWs9">
                <property role="TrG5h" value="label" />
                <node concept="17QB3L" id="1xH3giefLUK" role="1tU5fm" />
                <node concept="2OqwBi" id="1xH3giefM0T" role="33vP2m">
                  <node concept="37vLTw" id="1xH3giefM00" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xH3giefKY0" resolve="entryPointInstruction" />
                  </node>
                  <node concept="liA8E" id="1xH3giefNGg" role="2OqNvi">
                    <ref role="37wK5l" to="f696:1xH3giefMTQ" resolve="getLabel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xH3giefLzM" role="3cqZAp">
              <node concept="3cpWsn" id="1xH3giefLzN" role="3cpWs9">
                <property role="TrG5h" value="program" />
                <node concept="3uibUv" id="1xH3giefLzK" role="1tU5fm">
                  <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
                </node>
                <node concept="2OqwBi" id="1xH3giefLzO" role="33vP2m">
                  <node concept="37vLTw" id="1xH3giefLzP" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xH3giefKvS" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="1xH3giefLzQ" role="2OqNvi">
                    <ref role="37wK5l" to="f696:2Rrads05T6J" resolve="getProgram" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1xH3giefLbm" role="3cqZAp" />
            <node concept="3clFbF" id="2U8JvBXqOYe" role="3cqZAp">
              <node concept="2OqwBi" id="2U8JvBXqP6v" role="3clFbG">
                <node concept="37vLTw" id="1HZs_ofAE5Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xH3giefKvS" resolve="builder" />
                </node>
                <node concept="liA8E" id="2U8JvBXqPc2" role="2OqNvi">
                  <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.addInstruction(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction,jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position):void" resolve="addInstruction" />
                  <node concept="37vLTw" id="1xH3giefKY4" role="37wK5m">
                    <ref role="3cqZAo" node="1xH3giefKY0" resolve="entryPointInstruction" />
                  </node>
                  <node concept="10Nm6u" id="2U8JvBXqRy0" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1xH3giefLH2" role="3cqZAp">
              <node concept="2OqwBi" id="1xH3giefLL6" role="3clFbG">
                <node concept="37vLTw" id="1xH3giefLH0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1xH3giefLzN" resolve="program" />
                </node>
                <node concept="liA8E" id="1xH3giefLQF" role="2OqNvi">
                  <ref role="37wK5l" to="f696:5caPF5jNwOk" resolve="addEntryPoint" />
                  <node concept="37vLTw" id="1xH3giefNG$" role="37wK5m">
                    <ref role="3cqZAo" node="1xH3giefLUP" resolve="label" />
                  </node>
                  <node concept="37vLTw" id="1xH3giefNHj" role="37wK5m">
                    <ref role="3cqZAo" node="1xH3giefKY0" resolve="entryPointInstruction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1xH3giefKcd" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2U8JvBXrt3E">
    <property role="TrG5h" value="reduce_EmitInlineStatement" />
    <property role="3GE5qa" value="templates" />
    <ref role="3gUMe" to="ybok:_oDvx5U51b" resolve="EmitInlineStatement" />
    <node concept="3clFb_" id="2U8JvBXrt3F" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="2U8JvBXrt3G" role="1B3o_S" />
      <node concept="3cqZAl" id="2U8JvBXrt3H" role="3clF45" />
      <node concept="37vLTG" id="2U8JvBXrt3I" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="2U8JvBXrt3J" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2U8JvBXrt3K" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="2Rrads0ftF7" role="1tU5fm">
          <ref role="3uigEE" to="8ov6:~DataFlowBuilderContext" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2U8JvBXrt3M" role="3clF47">
        <node concept="9aQIb" id="2U8JvBXrt3N" role="3cqZAp">
          <node concept="3clFbS" id="2U8JvBXrt3O" role="9aQI4">
            <node concept="3cpWs8" id="5caPF5jNguq" role="3cqZAp">
              <node concept="3cpWsn" id="5caPF5jNgur" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="5caPF5jNgus" role="1tU5fm">
                  <ref role="3uigEE" to="f696:5caPF5jMOpx" resolve="InterProceduralDataFlowGraphBuilderContext" />
                </node>
                <node concept="10QFUN" id="5caPF5jNg$w" role="33vP2m">
                  <node concept="3uibUv" id="5caPF5jNg$u" role="10QFUM">
                    <ref role="3uigEE" to="f696:5caPF5jMOpx" resolve="InterProceduralDataFlowGraphBuilderContext" />
                  </node>
                  <node concept="37vLTw" id="5caPF5jNg$H" role="10QFUP">
                    <ref role="3cqZAo" node="2U8JvBXrt3K" resolve="_context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5caPF5jNrUx" role="3cqZAp">
              <node concept="3cpWsn" id="5caPF5jNrUy" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="5caPF5jNrUz" role="1tU5fm">
                  <ref role="3uigEE" to="f696:1NMTjOJ0bjY" resolve="InterProceduralDataFlowGraphBuilder" />
                </node>
                <node concept="10QFUN" id="5caPF5jNs1F" role="33vP2m">
                  <node concept="3uibUv" id="5caPF5jNs1D" role="10QFUM">
                    <ref role="3uigEE" to="f696:1NMTjOJ0bjY" resolve="InterProceduralDataFlowGraphBuilder" />
                  </node>
                  <node concept="2OqwBi" id="5caPF5jNs2B" role="10QFUP">
                    <node concept="37vLTw" id="5caPF5jNs1U" role="2Oq$k0">
                      <ref role="3cqZAo" node="5caPF5jNgur" resolve="context" />
                    </node>
                    <node concept="liA8E" id="5caPF5jNs4q" role="2OqNvi">
                      <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getBuilder():jetbrains.mps.lang.dataFlow.MPSProgramBuilder" resolve="getBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5caPF5jNdpJ" role="3cqZAp">
              <node concept="3cpWsn" id="5caPF5jNdpM" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="5caPF5jNdpH" role="1tU5fm" />
                <node concept="10Nm6u" id="5caPF5jNdtB" role="33vP2m">
                  <node concept="29HgVG" id="5caPF5jNdtC" role="lGtFl">
                    <node concept="3NFfHV" id="5caPF5jNdtD" role="3NFExx">
                      <node concept="3clFbS" id="5caPF5jNdtE" role="2VODD2">
                        <node concept="3cpWs6" id="5caPF5jNdtF" role="3cqZAp">
                          <node concept="2OqwBi" id="5caPF5jNdtG" role="3cqZAk">
                            <node concept="3TrEf2" id="5caPF5jNdtH" role="2OqNvi">
                              <ref role="3Tt5mk" to="ybok:_oDvx5U56o" />
                            </node>
                            <node concept="30H73N" id="5caPF5jNdtI" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="18PvkuO$NN4" role="3cqZAp">
              <node concept="3cpWsn" id="18PvkuO$NN7" role="3cpWs9">
                <property role="TrG5h" value="point" />
                <node concept="3Tqbb2" id="18PvkuO$NN2" role="1tU5fm" />
                <node concept="10Nm6u" id="18PvkuO$NUw" role="33vP2m">
                  <node concept="29HgVG" id="18PvkuO$NUx" role="lGtFl">
                    <node concept="3NFfHV" id="18PvkuO$NUy" role="3NFExx">
                      <node concept="3clFbS" id="18PvkuO$NUz" role="2VODD2">
                        <node concept="3cpWs6" id="18PvkuO$NU$" role="3cqZAp">
                          <node concept="2OqwBi" id="18PvkuO$NU_" role="3cqZAk">
                            <node concept="3TrEf2" id="18PvkuO$NUA" role="2OqNvi">
                              <ref role="3Tt5mk" to="ybok:_oDvx5U7$y" />
                            </node>
                            <node concept="30H73N" id="18PvkuO$NUB" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5caPF5jNgJs" role="3cqZAp">
              <node concept="3cpWsn" id="5caPF5jNgJt" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3uibUv" id="5caPF5jNmVp" role="1tU5fm">
                  <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
                </node>
                <node concept="2OqwBi" id="5caPF5jNsuN" role="33vP2m">
                  <node concept="37vLTw" id="5caPF5jNstg" role="2Oq$k0">
                    <ref role="3cqZAo" node="5caPF5jNrUy" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="2Rrads0ftVC" role="2OqNvi">
                    <ref role="37wK5l" to="f696:2Rrads05T6J" resolve="getProgram" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6ddb09aaJPV" role="3cqZAp">
              <node concept="3cpWsn" id="6ddb09aaJPW" role="3cpWs9">
                <property role="TrG5h" value="entryPointInstruction" />
                <node concept="3uibUv" id="6ddb09aaJPX" role="1tU5fm">
                  <ref role="3uigEE" to="f696:_oDvx5Vmkk" resolve="EntryPointInstruction" />
                </node>
                <node concept="10Nm6u" id="6ddb09aaJWE" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbJ" id="6ddb09aaJ5m" role="3cqZAp">
              <node concept="3clFbS" id="6ddb09aaJ5o" role="3clFbx">
                <node concept="3clFbF" id="6ddb09aaK2P" role="3cqZAp">
                  <node concept="37vLTI" id="6ddb09aaK58" role="3clFbG">
                    <node concept="37vLTw" id="6ddb09aaK2O" role="37vLTJ">
                      <ref role="3cqZAo" node="6ddb09aaJPW" resolve="entryPointInstruction" />
                    </node>
                    <node concept="2OqwBi" id="1xH3giefD9_" role="37vLTx">
                      <node concept="37vLTw" id="1xH3giefE3C" role="2Oq$k0">
                        <ref role="3cqZAo" node="5caPF5jNgJt" resolve="parent" />
                      </node>
                      <node concept="liA8E" id="1xH3giefD9D" role="2OqNvi">
                        <ref role="37wK5l" to="f696:1xH3giefwXd" resolve="getEntryPoint" />
                        <node concept="37vLTw" id="1xH3giefD9E" role="37wK5m">
                          <ref role="3cqZAo" node="18PvkuO$NN7" resolve="point" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6ddb09aaJhS" role="3clFbw">
                <node concept="10Nm6u" id="6ddb09aaJlN" role="3uHU7w" />
                <node concept="37vLTw" id="6ddb09aaJd8" role="3uHU7B">
                  <ref role="3cqZAo" node="18PvkuO$NN7" resolve="point" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1xH3giefDyz" role="3cqZAp" />
            <node concept="3clFbJ" id="2U8JvBXrt4o" role="3cqZAp">
              <node concept="3clFbS" id="2U8JvBXrt4p" role="3clFbx">
                <node concept="3cpWs8" id="1xH3giefGNd" role="3cqZAp">
                  <node concept="3cpWsn" id="1xH3giefGNe" role="3cpWs9">
                    <property role="TrG5h" value="functionCallInstruction" />
                    <node concept="3uibUv" id="1xH3giefGN0" role="1tU5fm">
                      <ref role="3uigEE" to="f696:18PvkuOobH3" resolve="FunctionCallInstruction" />
                    </node>
                    <node concept="2ShNRf" id="1xH3giefGNf" role="33vP2m">
                      <node concept="1pGfFk" id="1xH3giefGNg" role="2ShVmc">
                        <ref role="37wK5l" to="f696:18PvkuOobR0" resolve="FunctionCallInstruction" />
                        <node concept="37vLTw" id="1xH3giefGNi" role="37wK5m">
                          <ref role="3cqZAo" node="6ddb09aaJPW" resolve="entryPointInstruction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="18PvkuOodtF" role="3cqZAp">
                  <node concept="2OqwBi" id="18PvkuOodvr" role="3clFbG">
                    <node concept="37vLTw" id="18PvkuOodtD" role="2Oq$k0">
                      <ref role="3cqZAo" node="5caPF5jNrUy" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="18PvkuOodFe" role="2OqNvi">
                      <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.addInstruction(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction,jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position):void" resolve="addInstruction" />
                      <node concept="37vLTw" id="1xH3giefGNj" role="37wK5m">
                        <ref role="3cqZAo" node="1xH3giefGNe" resolve="functionCallInstruction" />
                      </node>
                      <node concept="10Nm6u" id="18PvkuOogkn" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1xH3giefE8d" role="3cqZAp">
                  <node concept="2OqwBi" id="1xH3giefEc2" role="3clFbG">
                    <node concept="37vLTw" id="1xH3giefE8b" role="2Oq$k0">
                      <ref role="3cqZAo" node="5caPF5jNgJt" resolve="parent" />
                    </node>
                    <node concept="liA8E" id="1xH3giefEf6" role="2OqNvi">
                      <ref role="37wK5l" to="f696:1xH3gief6Le" resolve="addFunctionCall" />
                      <node concept="37vLTw" id="1xH3giefH0W" role="37wK5m">
                        <ref role="3cqZAo" node="1xH3giefGNe" resolve="functionCallInstruction" />
                      </node>
                      <node concept="37vLTw" id="1xH3giefH1J" role="37wK5m">
                        <ref role="3cqZAo" node="6ddb09aaJPW" resolve="entryPointInstruction" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1HZs_ofCpN9" role="3cqZAp">
                  <node concept="2OqwBi" id="1HZs_ofCpPI" role="3clFbG">
                    <node concept="37vLTw" id="1HZs_ofCpN7" role="2Oq$k0">
                      <ref role="3cqZAo" node="5caPF5jNgJt" resolve="parent" />
                    </node>
                    <node concept="liA8E" id="1HZs_ofCpST" role="2OqNvi">
                      <ref role="37wK5l" to="f696:1HZs_ofC3cw" resolve="addTraceInformation" />
                      <node concept="2OqwBi" id="1HZs_ofCpU0" role="37wK5m">
                        <node concept="37vLTw" id="1HZs_ofCpTc" role="2Oq$k0">
                          <ref role="3cqZAo" node="2U8JvBXrt3K" resolve="_context" />
                        </node>
                        <node concept="liA8E" id="1HZs_ofCpWi" role="2OqNvi">
                          <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getNode():org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1HZs_ofCpZm" role="37wK5m">
                        <node concept="37vLTw" id="1HZs_ofCpXE" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ddb09aaJPW" resolve="entryPointInstruction" />
                        </node>
                        <node concept="liA8E" id="1HZs_ofCq3s" role="2OqNvi">
                          <ref role="37wK5l" to="f696:nj3EPh5Nck" resolve="getOwnProgram" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2U8JvBXrt4v" role="3clFbw">
                <node concept="10Nm6u" id="2U8JvBXrt4w" role="3uHU7w" />
                <node concept="37vLTw" id="2U8JvBXrt4x" role="3uHU7B">
                  <ref role="3cqZAo" node="6ddb09aaJPW" resolve="entryPointInstruction" />
                </node>
              </node>
              <node concept="9aQIb" id="2U8JvBXrt4y" role="9aQIa">
                <node concept="3clFbS" id="2U8JvBXrt4z" role="9aQI4">
                  <node concept="3cpWs8" id="1xH3giefGCa" role="3cqZAp">
                    <node concept="3cpWsn" id="1xH3giefGCb" role="3cpWs9">
                      <property role="TrG5h" value="nestedProgramInstruction" />
                      <node concept="3uibUv" id="1xH3giefGBB" role="1tU5fm">
                        <ref role="3uigEE" to="f696:5caPF5jN5j6" resolve="NestedProgramInstruction" />
                      </node>
                      <node concept="2ShNRf" id="1xH3giefGCc" role="33vP2m">
                        <node concept="1pGfFk" id="1xH3giefGCd" role="2ShVmc">
                          <ref role="37wK5l" to="f696:183c22F75Fi" resolve="NestedProgramInstruction" />
                          <node concept="37vLTw" id="1xH3giefGCe" role="37wK5m">
                            <ref role="3cqZAo" node="18PvkuO$NN7" resolve="point" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="183c22F78v0" role="3cqZAp">
                    <node concept="3SKdUq" id="183c22F78v2" role="3SKWNk">
                      <property role="3SKdUp" value="the instruction must be added before the current program is set" />
                    </node>
                  </node>
                  <node concept="3SKdUt" id="183c22F78_0" role="3cqZAp">
                    <node concept="3SKdUq" id="183c22F78_2" role="3SKWNk">
                      <property role="3SKdUp" value="in order for the context sensitive program instruction lookups to work correctly" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="5caPF5jNb2r" role="3cqZAp">
                    <node concept="2OqwBi" id="5caPF5jNb4N" role="3clFbG">
                      <node concept="37vLTw" id="5caPF5jNb2p" role="2Oq$k0">
                        <ref role="3cqZAo" node="5caPF5jNrUy" resolve="builder" />
                      </node>
                      <node concept="liA8E" id="5caPF5jNbaW" role="2OqNvi">
                        <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.addInstruction(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction,jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position):void" resolve="addInstruction" />
                        <node concept="37vLTw" id="1xH3giefGCg" role="37wK5m">
                          <ref role="3cqZAo" node="1xH3giefGCb" resolve="nestedProgramInstruction" />
                        </node>
                        <node concept="10Nm6u" id="5caPF5jNh77" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5caPF5jNdCy" role="3cqZAp">
                    <node concept="3cpWsn" id="5caPF5jNdCz" role="3cpWs9">
                      <property role="TrG5h" value="current" />
                      <node concept="3uibUv" id="5caPF5jNkMS" role="1tU5fm">
                        <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
                      </node>
                      <node concept="2OqwBi" id="4fUrRtGGsWQ" role="33vP2m">
                        <node concept="2ShNRf" id="4fUrRtGGsWR" role="2Oq$k0">
                          <node concept="1pGfFk" id="4fUrRtGGsWS" role="2ShVmc">
                            <ref role="37wK5l" to="f696:1EPwOZKjpjg" resolve="InterProceduralDataFlowGraphBuilder" />
                            <node concept="37vLTw" id="4fUrRtGGsWT" role="37wK5m">
                              <ref role="3cqZAo" node="5caPF5jNgJt" resolve="parent" />
                            </node>
                            <node concept="37vLTw" id="4fUrRtGGsWU" role="37wK5m">
                              <ref role="3cqZAo" node="1xH3giefGCb" resolve="nestedProgramInstruction" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4fUrRtGGsWV" role="2OqNvi">
                          <ref role="37wK5l" to="f696:3Q7jEGyjPDu" resolve="buildProgram" />
                          <node concept="37vLTw" id="4fUrRtGGsWW" role="37wK5m">
                            <ref role="3cqZAo" node="5caPF5jNdpM" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3K8JqUjVDk1" role="3cqZAp">
                    <node concept="2OqwBi" id="3K8JqUjVDmM" role="3clFbG">
                      <node concept="37vLTw" id="3K8JqUjVDjZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5caPF5jNdCz" resolve="current" />
                      </node>
                      <node concept="liA8E" id="3K8JqUjVDpQ" role="2OqNvi">
                        <ref role="37wK5l" to="f696:3K8JqUjVxyz" resolve="setTriggeringInstruction" />
                        <node concept="37vLTw" id="3K8JqUjVDq9" role="37wK5m">
                          <ref role="3cqZAo" node="1xH3giefGCb" resolve="nestedProgramInstruction" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1HZs_ofCq74" role="3cqZAp">
                    <node concept="2OqwBi" id="1HZs_ofCq9o" role="3clFbG">
                      <node concept="37vLTw" id="1HZs_ofCq72" role="2Oq$k0">
                        <ref role="3cqZAo" node="5caPF5jNgJt" resolve="parent" />
                      </node>
                      <node concept="liA8E" id="1HZs_ofCqdm" role="2OqNvi">
                        <ref role="37wK5l" to="f696:1HZs_ofC3cw" resolve="addTraceInformation" />
                        <node concept="2OqwBi" id="1HZs_ofCqeS" role="37wK5m">
                          <node concept="37vLTw" id="1HZs_ofCqe3" role="2Oq$k0">
                            <ref role="3cqZAo" node="2U8JvBXrt3K" resolve="_context" />
                          </node>
                          <node concept="liA8E" id="1HZs_ofCqha" role="2OqNvi">
                            <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getNode():org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1HZs_ofCqiw" role="37wK5m">
                          <ref role="3cqZAo" node="5caPF5jNdCz" resolve="current" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="2U8JvBXrt5c" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1O3WvD8NQ34">
    <property role="TrG5h" value="reduce_IsContextSensitiveExpression" />
    <property role="3GE5qa" value="templates" />
    <ref role="3gUMe" to="ybok:1O3WvD8NPAO" resolve="IsContextSensitiveExpression" />
    <node concept="3clFb_" id="1O3WvD8NQ6g" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="1O3WvD8NQ6h" role="1B3o_S" />
      <node concept="3cqZAl" id="1O3WvD8NQ6i" role="3clF45" />
      <node concept="37vLTG" id="1O3WvD8NQ6j" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="1O3WvD8NQ6k" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1O3WvD8NQ6l" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="2Rrads0ftYa" role="1tU5fm">
          <ref role="3uigEE" to="8ov6:~DataFlowBuilderContext" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1O3WvD8NQ6n" role="3clF47">
        <node concept="3cpWs8" id="1O3WvD8NRjr" role="3cqZAp">
          <node concept="3cpWsn" id="1O3WvD8NRju" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10P_77" id="1O3WvD8NRjp" role="1tU5fm" />
            <node concept="1eOMI4" id="1O3WvD8NRrs" role="33vP2m">
              <node concept="2ZW3vV" id="1O3WvD8NRrt" role="1eOMHV">
                <node concept="3uibUv" id="3yfIX0JFsGl" role="2ZW6by">
                  <ref role="3uigEE" to="f696:1NMTjOJ0bjY" resolve="InterProceduralDataFlowGraphBuilder" />
                </node>
                <node concept="2OqwBi" id="1O3WvD8NRrv" role="2ZW6bz">
                  <node concept="37vLTw" id="1O3WvD8NRrw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O3WvD8NQ6l" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="1O3WvD8NRrx" role="2OqNvi">
                    <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getBuilder():jetbrains.mps.lang.dataFlow.MPSProgramBuilder" resolve="getBuilder" />
                  </node>
                </node>
              </node>
              <node concept="raruj" id="3yfIX0JFs0R" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3u8ubzKo17W">
    <property role="TrG5h" value="reduce_EmitMapStatement" />
    <property role="3GE5qa" value="templates" />
    <ref role="3gUMe" to="ybok:2cV6Bp1Wn8h" resolve="EmitMapStatement" />
    <node concept="3clFb_" id="3u8ubzKo17X" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="3u8ubzKo17Y" role="1B3o_S" />
      <node concept="3cqZAl" id="3u8ubzKo17Z" role="3clF45" />
      <node concept="37vLTG" id="3u8ubzKo180" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="3u8ubzKo181" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="3u8ubzKo182" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="3u8ubzKo183" role="1tU5fm">
          <ref role="3uigEE" to="8ov6:~DataFlowBuilderContext" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="3u8ubzKo184" role="3clF47">
        <node concept="9aQIb" id="3u8ubzKo185" role="3cqZAp">
          <node concept="3clFbS" id="3u8ubzKo186" role="9aQI4">
            <node concept="3cpWs8" id="3u8ubzKo2eF" role="3cqZAp">
              <node concept="3cpWsn" id="3u8ubzKo2eG" role="3cpWs9">
                <property role="TrG5h" value="instruction" />
                <node concept="3uibUv" id="2cV6Bp1WLWG" role="1tU5fm">
                  <ref role="3uigEE" to="f696:2cV6Bp1WvIh" resolve="InterProcAwareMapInstruction" />
                </node>
                <node concept="2ShNRf" id="3u8ubzKo2kr" role="33vP2m">
                  <node concept="1pGfFk" id="3u8ubzKo2kq" role="2ShVmc">
                    <ref role="37wK5l" to="f696:2cV6Bp1WvIv" resolve="InterProcAwareMapInstruction" />
                    <node concept="Xl_RD" id="1$NEetdWLsQ" role="37wK5m">
                      <property role="Xl_RC" value="" />
                      <node concept="17Uvod" id="1$NEetdWLsR" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="1$NEetdWLsS" role="3zH0cK">
                          <node concept="3clFbS" id="1$NEetdWLsT" role="2VODD2">
                            <node concept="3cpWs6" id="3u8ubzKo31$" role="3cqZAp">
                              <node concept="2OqwBi" id="3u8ubzKo31_" role="3cqZAk">
                                <node concept="2OqwBi" id="3u8ubzKo31A" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="3u8ubzKo31B" role="2Oq$k0">
                                    <node concept="2OqwBi" id="3u8ubzKo31C" role="2JrQYb">
                                      <node concept="1iwH7S" id="3u8ubzKo31D" role="2Oq$k0" />
                                      <node concept="12$id9" id="3u8ubzKo31E" role="2OqNvi">
                                        <node concept="30H73N" id="3u8ubzKo31F" role="12$y8L" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3u8ubzKo31G" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3u8ubzKo31H" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="hzAslgD" role="37wK5m">
                      <node concept="29HgVG" id="hzAslgE" role="lGtFl">
                        <node concept="3NFfHV" id="hzAslgF" role="3NFExx">
                          <node concept="3clFbS" id="hzAslgG" role="2VODD2">
                            <node concept="3cpWs6" id="3u8ubzKo36e" role="3cqZAp">
                              <node concept="2OqwBi" id="3u8ubzKo36f" role="3cqZAk">
                                <node concept="3TrEf2" id="3u8ubzKo36g" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp41:hz_H1WB" />
                                </node>
                                <node concept="30H73N" id="3u8ubzKo36h" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="hTZhTCn" role="37wK5m">
                      <node concept="29HgVG" id="hU2pt4e" role="lGtFl">
                        <node concept="3NFfHV" id="hU2pt4f" role="3NFExx">
                          <node concept="3clFbS" id="hU2pt4g" role="2VODD2">
                            <node concept="3cpWs6" id="3u8ubzKo39j" role="3cqZAp">
                              <node concept="2OqwBi" id="3u8ubzKo39k" role="3cqZAk">
                                <node concept="30H73N" id="3u8ubzKo39l" role="2Oq$k0" />
                                <node concept="3TrEf2" id="3u8ubzKo39m" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp41:hTXBRKV" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3u8ubzKo3jM" role="3cqZAp">
              <node concept="2OqwBi" id="3u8ubzKo3xN" role="3clFbG">
                <node concept="2OqwBi" id="3u8ubzKo3sM" role="2Oq$k0">
                  <node concept="37vLTw" id="3u8ubzKo3jK" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u8ubzKo182" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="3u8ubzKo3wz" role="2OqNvi">
                    <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getBuilder():jetbrains.mps.lang.dataFlow.MPSProgramBuilder" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="3u8ubzKo3D6" role="2OqNvi">
                  <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.addInstruction(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction,jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position):void" resolve="addInstruction" />
                  <node concept="37vLTw" id="3u8ubzKo3El" role="37wK5m">
                    <ref role="3cqZAo" node="3u8ubzKo2eG" resolve="instruction" />
                  </node>
                  <node concept="10Nm6u" id="3u8ubzKo3He" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3u8ubzKrguQ" role="3cqZAp">
              <node concept="3cpWsn" id="3u8ubzKrguT" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="3u8ubzKrguO" role="1tU5fm" />
                <node concept="10Nm6u" id="3u8ubzKrgD1" role="33vP2m">
                  <node concept="29HgVG" id="3u8ubzKrgDc" role="lGtFl">
                    <node concept="3NFfHV" id="3u8ubzKrgDd" role="3NFExx">
                      <node concept="3clFbS" id="3u8ubzKrgDe" role="2VODD2">
                        <node concept="3cpWs6" id="3u8ubzKrhjs" role="3cqZAp">
                          <node concept="2OqwBi" id="6ddb09ab1Ov" role="3cqZAk">
                            <node concept="30H73N" id="6ddb09ab1JA" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6ddb09ab2cZ" role="2OqNvi">
                              <ref role="3Tt5mk" to="ybok:6ddb09ab16u" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17Uvod" id="578hHfFwUr0" role="lGtFl">
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <property role="2qtEX9" value="name" />
                  <node concept="3zFVjK" id="578hHfFwUr1" role="3zH0cK">
                    <node concept="3clFbS" id="578hHfFwUr2" role="2VODD2">
                      <node concept="3cpWs6" id="578hHfFwVaq" role="3cqZAp">
                        <node concept="2OqwBi" id="578hHfFwVdz" role="3cqZAk">
                          <node concept="1iwH7S" id="578hHfFwVbI" role="2Oq$k0" />
                          <node concept="2piZGk" id="578hHfFwVft" role="2OqNvi">
                            <node concept="Xl_RD" id="578hHfFwVgT" role="2piZGb">
                              <property role="Xl_RC" value="source" />
                            </node>
                            <node concept="2OqwBi" id="578hHfFwVnD" role="2pr8EU">
                              <node concept="30H73N" id="578hHfFwVjo" role="2Oq$k0" />
                              <node concept="2Xjw5R" id="578hHfFwVyX" role="2OqNvi">
                                <node concept="1xMEDy" id="578hHfFwVyZ" role="1xVPHs">
                                  <node concept="chp4Y" id="578hHfFwVzw" role="ri$Ld">
                                    <ref role="cht4Q" to="tpee:6LFqxSRBTg8" resolve="MethodDeclaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2cV6Bp1Wv4N" role="3cqZAp">
              <node concept="3clFbS" id="2cV6Bp1Wv4P" role="3clFbx">
                <node concept="3clFbF" id="3u8ubzKrho6" role="3cqZAp">
                  <node concept="37vLTI" id="3u8ubzKrhBk" role="3clFbG">
                    <node concept="2ShNRf" id="3u8ubzKrhDi" role="37vLTx">
                      <node concept="3zrR0B" id="3u8ubzKrhD2" role="2ShVmc">
                        <node concept="3Tqbb2" id="3u8ubzKrhD3" role="3zrR0E">
                          <ref role="ehGHo" to="ybok:3u8ubzKrgBU" resolve="VirtualAttribute" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3u8ubzKrhuo" role="37vLTJ">
                      <node concept="37vLTw" id="3u8ubzKrho4" role="2Oq$k0">
                        <ref role="3cqZAo" node="3u8ubzKrguT" resolve="source" />
                      </node>
                      <node concept="3CFZ6_" id="3u8ubzKrh$$" role="2OqNvi">
                        <node concept="3CFYIy" id="3u8ubzKrh_1" role="3CFYIz">
                          <ref role="3CFYIx" to="ybok:3u8ubzKrgBU" resolve="VirtualAttribute" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3u8ubzKpsJR" role="3cqZAp">
                  <node concept="2OqwBi" id="3u8ubzKpsJS" role="3clFbG">
                    <node concept="37vLTw" id="3u8ubzKpsJT" role="2Oq$k0">
                      <ref role="3cqZAo" node="3u8ubzKo2eG" resolve="instruction" />
                    </node>
                    <node concept="liA8E" id="3u8ubzKpsJU" role="2OqNvi">
                      <ref role="37wK5l" to="dau9:~Instruction.setSource(java.lang.Object):void" resolve="setSource" />
                      <node concept="37vLTw" id="3u8ubzKrhWr" role="37wK5m">
                        <ref role="3cqZAo" node="3u8ubzKrguT" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2cV6Bp1Wvgz" role="3clFbw">
                <node concept="10Nm6u" id="2cV6Bp1Wvk1" role="3uHU7w" />
                <node concept="37vLTw" id="2cV6Bp1Wv9A" role="3uHU7B">
                  <ref role="3cqZAo" node="3u8ubzKrguT" resolve="source" />
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="3u8ubzKo191" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2cV6Bp1WOeL">
    <property role="TrG5h" value="reduce_EmitUnmapStatement" />
    <property role="3GE5qa" value="templates" />
    <ref role="3gUMe" to="ybok:2cV6Bp1Wvtp" resolve="EmitUnmapStatement" />
    <node concept="3clFb_" id="2cV6Bp1WOeM" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="2cV6Bp1WOeN" role="1B3o_S" />
      <node concept="3cqZAl" id="2cV6Bp1WOeO" role="3clF45" />
      <node concept="37vLTG" id="2cV6Bp1WOeP" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="2cV6Bp1WOeQ" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2cV6Bp1WOeR" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="2cV6Bp1WOeS" role="1tU5fm">
          <ref role="3uigEE" to="8ov6:~DataFlowBuilderContext" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2cV6Bp1WOeT" role="3clF47">
        <node concept="9aQIb" id="2cV6Bp1WOeU" role="3cqZAp">
          <node concept="3clFbS" id="2cV6Bp1WOeV" role="9aQI4">
            <node concept="3cpWs8" id="2cV6Bp1WOeW" role="3cqZAp">
              <node concept="3cpWsn" id="2cV6Bp1WOeX" role="3cpWs9">
                <property role="TrG5h" value="instruction" />
                <node concept="3uibUv" id="2cV6Bp1WODU" role="1tU5fm">
                  <ref role="3uigEE" to="f696:2cV6Bp1WBvB" resolve="InterProcAwareUnmapInstruction" />
                </node>
                <node concept="2ShNRf" id="2cV6Bp1WOeZ" role="33vP2m">
                  <node concept="1pGfFk" id="2cV6Bp1WOf0" role="2ShVmc">
                    <ref role="37wK5l" to="f696:2cV6Bp1WBOa" resolve="InterProcAwareUnmapInstruction" />
                    <node concept="Xl_RD" id="2cV6Bp1WOf1" role="37wK5m">
                      <property role="Xl_RC" value="" />
                      <node concept="17Uvod" id="2cV6Bp1WOf2" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="2cV6Bp1WOf3" role="3zH0cK">
                          <node concept="3clFbS" id="2cV6Bp1WOf4" role="2VODD2">
                            <node concept="3cpWs6" id="2cV6Bp1WOf5" role="3cqZAp">
                              <node concept="2OqwBi" id="2cV6Bp1WOf6" role="3cqZAk">
                                <node concept="2OqwBi" id="2cV6Bp1WOf7" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="2cV6Bp1WOf8" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2cV6Bp1WOf9" role="2JrQYb">
                                      <node concept="1iwH7S" id="2cV6Bp1WOfa" role="2Oq$k0" />
                                      <node concept="12$id9" id="2cV6Bp1WOfb" role="2OqNvi">
                                        <node concept="30H73N" id="2cV6Bp1WOfc" role="12$y8L" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2cV6Bp1WOfd" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2cV6Bp1WOfe" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2cV6Bp1WOff" role="37wK5m">
                      <node concept="29HgVG" id="2cV6Bp1WOfg" role="lGtFl">
                        <node concept="3NFfHV" id="2cV6Bp1WOfh" role="3NFExx">
                          <node concept="3clFbS" id="2cV6Bp1WOfi" role="2VODD2">
                            <node concept="3cpWs6" id="2cV6Bp1WOfj" role="3cqZAp">
                              <node concept="2OqwBi" id="2cV6Bp1WOfk" role="3cqZAk">
                                <node concept="3TrEf2" id="2cV6Bp1WOfl" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp41:hz_H1WB" />
                                </node>
                                <node concept="30H73N" id="2cV6Bp1WOfm" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2cV6Bp1WOfv" role="3cqZAp">
              <node concept="2OqwBi" id="2cV6Bp1WOfw" role="3clFbG">
                <node concept="2OqwBi" id="2cV6Bp1WOfx" role="2Oq$k0">
                  <node concept="37vLTw" id="2cV6Bp1WOfy" role="2Oq$k0">
                    <ref role="3cqZAo" node="2cV6Bp1WOeR" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="2cV6Bp1WOfz" role="2OqNvi">
                    <ref role="37wK5l" to="8ov6:~DataFlowBuilderContext.getBuilder():jetbrains.mps.lang.dataFlow.MPSProgramBuilder" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="2cV6Bp1WOf$" role="2OqNvi">
                  <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.addInstruction(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction,jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position):void" resolve="addInstruction" />
                  <node concept="37vLTw" id="2cV6Bp1WOf_" role="37wK5m">
                    <ref role="3cqZAo" node="2cV6Bp1WOeX" resolve="instruction" />
                  </node>
                  <node concept="10Nm6u" id="2cV6Bp1WOfA" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="2cV6Bp1WOgl" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6ddb09ahiMK">
    <property role="3GE5qa" value="templates" />
    <property role="TrG5h" value="reduce_CustomDataFlowRule" />
    <ref role="3gUMe" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    <node concept="312cEu" id="6ddb09ahiN7" role="13RCb5">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDataFlowConstructor" />
      <node concept="2tJIrI" id="6ddb09ahiNO" role="jymVt" />
      <node concept="3clFb_" id="6ddb09ahiTN" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isApplicable" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6ddb09ahiTO" role="1B3o_S" />
        <node concept="10P_77" id="6ddb09ahiTQ" role="3clF45" />
        <node concept="37vLTG" id="6ddb09ahiTR" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6ddb09ahiTS" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="6ddb09ahiTT" role="3clF47">
          <node concept="3cpWs6" id="6ddb09am6Uy" role="3cqZAp">
            <node concept="3clFbT" id="6ddb09am6Uz" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3DHs9S8jpDp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6ddb09ahiVR" role="jymVt" />
      <node concept="3clFb_" id="6ddb09ahiOB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="performActions" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6ddb09ahiOC" role="1B3o_S" />
        <node concept="3cqZAl" id="6ddb09ahiOE" role="3clF45" />
        <node concept="37vLTG" id="6ddb09ahiOF" role="3clF46">
          <property role="TrG5h" value="_program" />
          <node concept="3uibUv" id="6ddb09ahiOG" role="1tU5fm">
            <ref role="3uigEE" to="1fjm:~Program" resolve="Program" />
          </node>
        </node>
        <node concept="37vLTG" id="6ddb09ahiOH" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6ddb09ahiOI" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="6ddb09ahiOJ" role="3clF47">
          <node concept="3clFbJ" id="6ddb09ajqkI" role="3cqZAp">
            <node concept="3clFbS" id="6ddb09ajqkK" role="3clFbx">
              <node concept="3cpWs8" id="1HZs_oftVry" role="3cqZAp">
                <node concept="3cpWsn" id="1HZs_oftVr_" role="3cpWs9">
                  <property role="TrG5h" value="before" />
                  <node concept="10P_77" id="1HZs_oftVrw" role="1tU5fm" />
                  <node concept="3clFbT" id="1HZs_ofuaiA" role="33vP2m">
                    <property role="3clFbU" value="true" />
                    <node concept="1W57fq" id="1HZs_ofuaiN" role="lGtFl">
                      <node concept="3IZrLx" id="1HZs_ofuaiQ" role="3IZSJc">
                        <node concept="3clFbS" id="1HZs_ofuaiR" role="2VODD2">
                          <node concept="3cpWs6" id="1HZs_ofum3d" role="3cqZAp">
                            <node concept="2OqwBi" id="1HZs_ofum3e" role="3cqZAk">
                              <node concept="1PxgMI" id="1HZs_ofum3f" role="2Oq$k0">
                                <ref role="1PxNhF" to="tpee:fzclF81" resolve="BooleanConstant" />
                                <node concept="2OqwBi" id="1HZs_ofum3g" role="1PxMeX">
                                  <node concept="2OqwBi" id="1HZs_ofum3h" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1HZs_ofum3i" role="2Oq$k0">
                                      <node concept="30H73N" id="1HZs_ofum3j" role="2Oq$k0" />
                                      <node concept="2Rf3mk" id="1HZs_ofum3k" role="2OqNvi">
                                        <node concept="1xMEDy" id="1HZs_ofum3l" role="1xVPHs">
                                          <node concept="chp4Y" id="1HZs_ofum3m" role="ri$Ld">
                                            <ref role="cht4Q" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1z4cxt" id="1HZs_ofum3n" role="2OqNvi">
                                      <node concept="1bVj0M" id="1HZs_ofum3o" role="23t8la">
                                        <node concept="3clFbS" id="1HZs_ofum3p" role="1bW5cS">
                                          <node concept="3clFbF" id="1HZs_ofum3q" role="3cqZAp">
                                            <node concept="2OqwBi" id="1HZs_ofum3r" role="3clFbG">
                                              <node concept="Xl_RD" id="1HZs_ofum3s" role="2Oq$k0">
                                                <property role="Xl_RC" value="before" />
                                              </node>
                                              <node concept="liA8E" id="1HZs_ofum3t" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                                <node concept="2OqwBi" id="1HZs_ofum3u" role="37wK5m">
                                                  <node concept="37vLTw" id="1HZs_ofum3v" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1HZs_ofum3x" resolve="it" />
                                                  </node>
                                                  <node concept="3TrcHB" id="1HZs_ofum3w" role="2OqNvi">
                                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="1HZs_ofum3x" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="1HZs_ofum3y" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1HZs_ofum3z" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrcHB" id="1HZs_ofum3$" role="2OqNvi">
                                <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gft3U" id="1HZs_ofumjg" role="UU_$l">
                        <node concept="3clFbT" id="1HZs_ofumqi" role="gfFT$" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6ddb09ahqXf" role="3cqZAp">
                <node concept="3cpWsn" id="6ddb09ahqXg" role="3cpWs9">
                  <property role="TrG5h" value="program" />
                  <node concept="3uibUv" id="6ddb09ahqXh" role="1tU5fm">
                    <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
                  </node>
                  <node concept="10QFUN" id="6ddb09ahryt" role="33vP2m">
                    <node concept="3uibUv" id="6ddb09ahryr" role="10QFUM">
                      <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
                    </node>
                    <node concept="37vLTw" id="6ddb09ahyOW" role="10QFUP">
                      <ref role="3cqZAo" node="6ddb09ahiOF" resolve="_program" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1HZs_ofumzZ" role="3cqZAp">
                <node concept="3clFbS" id="1HZs_ofum$1" role="3clFbx">
                  <node concept="3clFbF" id="6ddb09ajm_2" role="3cqZAp">
                    <node concept="2OqwBi" id="6ddb09ajmNh" role="3clFbG">
                      <node concept="37vLTw" id="6ddb09ajm_0" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ddb09ahqXg" resolve="program" />
                      </node>
                      <node concept="liA8E" id="6ddb09ajn6G" role="2OqNvi">
                        <ref role="37wK5l" to="f696:6ddb09aihMi" resolve="forEachProgramPath_Start" />
                        <node concept="37vLTw" id="6ddb09ajn7n" role="37wK5m">
                          <ref role="3cqZAo" node="6ddb09ahiOH" resolve="node" />
                        </node>
                        <node concept="1bVj0M" id="6ddb09ajnb6" role="37wK5m">
                          <node concept="3clFbS" id="6ddb09ajnb8" role="1bW5cS">
                            <node concept="3clFbF" id="6ddb09ajne$" role="3cqZAp">
                              <node concept="1rXfSq" id="6ddb09ajney" role="3clFbG">
                                <ref role="37wK5l" node="6ddb09aiU8g" resolve="performActions0" />
                                <node concept="37vLTw" id="6ddb09ajngn" role="37wK5m">
                                  <ref role="3cqZAo" node="6ddb09ahiOF" resolve="_program" />
                                </node>
                                <node concept="37vLTw" id="6ddb09ajnjp" role="37wK5m">
                                  <ref role="3cqZAo" node="6ddb09ahiOH" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1HZs_ofumDC" role="3clFbw">
                  <ref role="3cqZAo" node="1HZs_oftVr_" resolve="before" />
                </node>
                <node concept="9aQIb" id="1HZs_ofumHu" role="9aQIa">
                  <node concept="3clFbS" id="1HZs_ofumHv" role="9aQI4">
                    <node concept="3clFbF" id="1HZs_ofuofs" role="3cqZAp">
                      <node concept="2OqwBi" id="1HZs_ofuohp" role="3clFbG">
                        <node concept="37vLTw" id="1HZs_ofuofq" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ddb09ahqXg" resolve="program" />
                        </node>
                        <node concept="liA8E" id="1HZs_ofuosc" role="2OqNvi">
                          <ref role="37wK5l" to="f696:6ddb09alcHJ" resolve="forEachProgramPath_End" />
                          <node concept="37vLTw" id="1HZs_ofuotB" role="37wK5m">
                            <ref role="3cqZAo" node="6ddb09ahiOH" resolve="node" />
                          </node>
                          <node concept="1bVj0M" id="1HZs_ofuovR" role="37wK5m">
                            <node concept="3clFbS" id="1HZs_ofuovS" role="1bW5cS">
                              <node concept="3clFbF" id="1HZs_ofuovT" role="3cqZAp">
                                <node concept="1rXfSq" id="1HZs_ofuovU" role="3clFbG">
                                  <ref role="37wK5l" node="6ddb09aiU8g" resolve="performActions0" />
                                  <node concept="37vLTw" id="1HZs_ofuovV" role="37wK5m">
                                    <ref role="3cqZAo" node="6ddb09ahiOF" resolve="_program" />
                                  </node>
                                  <node concept="37vLTw" id="1HZs_ofuovW" role="37wK5m">
                                    <ref role="3cqZAo" node="6ddb09ahiOH" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6ddb09ajqqj" role="3clFbw">
              <node concept="3uibUv" id="6ddb09ajqsM" role="2ZW6by">
                <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
              </node>
              <node concept="37vLTw" id="6ddb09ajqn7" role="2ZW6bz">
                <ref role="3cqZAo" node="6ddb09ahiOF" resolve="_program" />
              </node>
            </node>
            <node concept="9aQIb" id="6ddb09ajqUa" role="9aQIa">
              <node concept="3clFbS" id="6ddb09ajqUb" role="9aQI4">
                <node concept="3clFbF" id="6ddb09ajqVz" role="3cqZAp">
                  <node concept="1rXfSq" id="6ddb09ajqV$" role="3clFbG">
                    <ref role="37wK5l" node="6ddb09aiU8g" resolve="performActions0" />
                    <node concept="37vLTw" id="6ddb09ajqV_" role="37wK5m">
                      <ref role="3cqZAo" node="6ddb09ahiOF" resolve="_program" />
                    </node>
                    <node concept="37vLTw" id="6ddb09ajqVA" role="37wK5m">
                      <ref role="3cqZAo" node="6ddb09ahiOH" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6ddb09ahiR0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="raruj" id="6ddb09aiT37" role="lGtFl" />
      </node>
      <node concept="3clFb_" id="6ddb09aiU8g" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="performActions0" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6ddb09aiU8h" role="1B3o_S" />
        <node concept="3cqZAl" id="6ddb09aiU8i" role="3clF45" />
        <node concept="37vLTG" id="6ddb09aiU8j" role="3clF46">
          <property role="TrG5h" value="program" />
          <node concept="3uibUv" id="6ddb09aiU8k" role="1tU5fm">
            <ref role="3uigEE" to="1fjm:~Program" resolve="Program" />
          </node>
        </node>
        <node concept="37vLTG" id="6ddb09aiU8l" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6ddb09aiU8m" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="6ddb09aiU8n" role="3clF47" />
        <node concept="raruj" id="6ddb09aiUbB" role="lGtFl" />
        <node concept="29HgVG" id="6ddb09akhzX" role="lGtFl">
          <node concept="3NFfHV" id="6ddb09akhBT" role="3NFExx">
            <node concept="3clFbS" id="6ddb09akhBU" role="2VODD2">
              <node concept="3cpWs8" id="6ddb09akisX" role="3cqZAp">
                <node concept="3cpWsn" id="6ddb09akisY" role="3cpWs9">
                  <property role="TrG5h" value="method" />
                  <node concept="3Tqbb2" id="6ddb09akisW" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="6ddb09akisZ" role="33vP2m">
                    <node concept="30H73N" id="6ddb09akit0" role="2Oq$k0" />
                    <node concept="1$rogu" id="6ddb09akit1" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6ddb09akixg" role="3cqZAp">
                <node concept="d57v9" id="6ddb09akkoC" role="3clFbG">
                  <node concept="Xl_RD" id="6ddb09akktx" role="37vLTx">
                    <property role="Xl_RC" value="0" />
                  </node>
                  <node concept="2OqwBi" id="6ddb09akiH9" role="37vLTJ">
                    <node concept="37vLTw" id="6ddb09akixe" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ddb09akisY" resolve="method" />
                    </node>
                    <node concept="3TrcHB" id="6ddb09akjdy" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6ddb09alSQg" role="3cqZAp">
                <node concept="37vLTw" id="6ddb09alSQh" role="3cqZAk">
                  <ref role="3cqZAo" node="6ddb09akisY" resolve="method" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6ddb09ahiNT" role="jymVt" />
      <node concept="3Tm1VV" id="6ddb09ahiN8" role="1B3o_S" />
      <node concept="3uibUv" id="6ddb09ahiND" role="EKbjA">
        <ref role="3uigEE" to="1fjm:~DataFlowConstructor" resolve="DataFlowConstructor" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4fUrRtGFws_">
    <property role="3GE5qa" value="templates" />
    <property role="TrG5h" value="template_CreateInterProceduralProgram" />
    <ref role="phYkn" to="ty9a:5hM31D8xS9z" resolve="template_CreateProgram" />
    <node concept="3aamgX" id="4fUrRtGFwxO" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="bj1v:5JpT3MjX6u9" resolve="Analyzer" />
      <node concept="1Koe21" id="4fUrRtGFLQ3" role="1lVwrX">
        <node concept="312cEu" id="5hM31D8xS9A" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="CustomAnalyzer" />
          <node concept="312cEg" id="5hM31D8xS9B" role="jymVt">
            <property role="TrG5h" value="myNode" />
            <node concept="3Tm6S6" id="5hM31D8xS9C" role="1B3o_S" />
            <node concept="3Tqbb2" id="5hM31D8xS9D" role="1tU5fm" />
          </node>
          <node concept="3clFb_" id="5hM31D8xUZu" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="createProgram" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <property role="2aFKle" value="false" />
            <node concept="3clFbS" id="5hM31D8xUZv" role="3clF47">
              <node concept="3cpWs6" id="4fUrRtGGmgE" role="3cqZAp">
                <node concept="2OqwBi" id="4fUrRtGGmgF" role="3cqZAk">
                  <node concept="2ShNRf" id="4fUrRtGGmgG" role="2Oq$k0">
                    <node concept="1pGfFk" id="4fUrRtGGmgH" role="2ShVmc">
                      <ref role="37wK5l" to="f696:1NMTjOJ0cqd" resolve="InterProceduralDataFlowGraphBuilder" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4fUrRtGGmgI" role="2OqNvi">
                    <ref role="37wK5l" to="f696:3Q7jEGyjPDu" resolve="buildProgram" />
                    <node concept="37vLTw" id="4fUrRtGGmgJ" role="37wK5m">
                      <ref role="3cqZAo" node="5hM31D8xS9B" resolve="myNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm6S6" id="5hM31D8xUZA" role="1B3o_S" />
            <node concept="3uibUv" id="5hM31D8xUZB" role="3clF45">
              <ref role="3uigEE" to="1fjm:~Program" resolve="Program" />
            </node>
            <node concept="raruj" id="5hM31D8xV29" role="lGtFl" />
          </node>
          <node concept="3Tm1VV" id="5hM31D8xSa1" role="1B3o_S" />
          <node concept="3uibUv" id="5hM31D8xSa2" role="1zkMxy">
            <ref role="3uigEE" to="mu20:9V7Nft_x9B" resolve="CustomAnalyzerRunner" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4fUrRtGFwy$" role="30HLyM">
        <node concept="3clFbS" id="4fUrRtGFwy_" role="2VODD2">
          <node concept="3cpWs6" id="4fUrRtGFLwm" role="3cqZAp">
            <node concept="2OqwBi" id="4fUrRtGFLwn" role="3cqZAk">
              <node concept="2OqwBi" id="4fUrRtGFLwo" role="2Oq$k0">
                <node concept="30H73N" id="4fUrRtGFLwp" role="2Oq$k0" />
                <node concept="3CFZ6_" id="4fUrRtGFLwq" role="2OqNvi">
                  <node concept="3CFYIy" id="4fUrRtGFLwr" role="3CFYIz">
                    <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="4fUrRtGFLws" role="2OqNvi">
                <node concept="1bVj0M" id="4fUrRtGFLwt" role="23t8la">
                  <node concept="3clFbS" id="4fUrRtGFLwu" role="1bW5cS">
                    <node concept="3clFbF" id="4fUrRtGFLwv" role="3cqZAp">
                      <node concept="2OqwBi" id="4fUrRtGFLww" role="3clFbG">
                        <node concept="37vLTw" id="4fUrRtGFLwx" role="2Oq$k0">
                          <ref role="3cqZAo" node="4fUrRtGFLw$" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="4fUrRtGFLwy" role="2OqNvi">
                          <node concept="chp4Y" id="4fUrRtGFLwz" role="cj9EA">
                            <ref role="cht4Q" to="ybok:7TdqwvhyxII" resolve="InterProceduralProgramAttribute" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4fUrRtGFLw$" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4fUrRtGFLw_" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4fUrRtGGnCF">
    <property role="3GE5qa" value="templates" />
    <property role="TrG5h" value="template_PrepareInterProceduralProgram" />
    <ref role="phYkn" to="ty9a:7NG3AjJ7Aoa" resolve="template_PrepareProgram" />
    <node concept="3aamgX" id="4fUrRtGGnJk" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="bj1v:5JpT3MjX6u9" resolve="Analyzer" />
      <node concept="1Koe21" id="4fUrRtGGnRe" role="1lVwrX">
        <node concept="312cEu" id="7NG3AjJ7B$i" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="CustomAnalyzer" />
          <node concept="312cEg" id="7NG3AjJ7BBK" role="jymVt">
            <property role="TrG5h" value="myNode" />
            <node concept="3Tm6S6" id="7NG3AjJ7BBL" role="1B3o_S" />
            <node concept="3Tqbb2" id="7NG3AjJ7BBM" role="1tU5fm" />
          </node>
          <node concept="3clFb_" id="7NG3AjJ7BCd" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="prepareProgram" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <property role="2aFKle" value="false" />
            <node concept="3clFbS" id="7NG3AjJ7BCg" role="3clF47">
              <node concept="3cpWs8" id="4fUrRtGGo$Z" role="3cqZAp">
                <node concept="3cpWsn" id="4fUrRtGGo_0" role="3cpWs9">
                  <property role="TrG5h" value="nodes" />
                  <node concept="3uibUv" id="4fUrRtGGo_1" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                    <node concept="3Tqbb2" id="4fUrRtGGo_2" role="11_B2D" />
                  </node>
                  <node concept="2ShNRf" id="4fUrRtGGo_3" role="33vP2m">
                    <node concept="1pGfFk" id="4fUrRtGGo_4" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                      <node concept="3Tqbb2" id="4fUrRtGGo_5" role="1pMfVU" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4fUrRtGGo_6" role="3cqZAp">
                <node concept="2OqwBi" id="4fUrRtGGo_7" role="3clFbG">
                  <node concept="37vLTw" id="4fUrRtGGo_8" role="2Oq$k0">
                    <ref role="3cqZAo" node="4fUrRtGGo_0" resolve="nodes" />
                  </node>
                  <node concept="liA8E" id="4fUrRtGGo_9" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="37vLTw" id="4fUrRtGGo_a" role="37wK5m">
                      <ref role="3cqZAo" node="7NG3AjJ7BBK" resolve="myNode" />
                      <node concept="1ZhdrF" id="4fUrRtGGo_b" role="lGtFl">
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <property role="2qtEX8" value="variableDeclaration" />
                        <node concept="3$xsQk" id="4fUrRtGGo_c" role="3$ytzL">
                          <node concept="3clFbS" id="4fUrRtGGo_d" role="2VODD2">
                            <node concept="3cpWs6" id="4fUrRtGGo_e" role="3cqZAp">
                              <node concept="Xl_RD" id="4fUrRtGGo_f" role="3cqZAk">
                                <property role="Xl_RC" value="myNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4fUrRtGGo_g" role="3cqZAp">
                <node concept="2OqwBi" id="4fUrRtGGo_h" role="3clFbG">
                  <node concept="37vLTw" id="4fUrRtGGo_i" role="2Oq$k0">
                    <ref role="3cqZAo" node="4fUrRtGGo_0" resolve="nodes" />
                  </node>
                  <node concept="liA8E" id="4fUrRtGGo_j" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection):boolean" resolve="addAll" />
                    <node concept="2OqwBi" id="4fUrRtGGo_k" role="37wK5m">
                      <node concept="1eOMI4" id="4fUrRtGGo_l" role="2Oq$k0">
                        <node concept="10QFUN" id="4fUrRtGGo_m" role="1eOMHV">
                          <node concept="37vLTw" id="4fUrRtGGo_n" role="10QFUP">
                            <ref role="3cqZAo" to="1fjm:~AnalyzerRunner.myProgram" resolve="myProgram" />
                            <node concept="1ZhdrF" id="4fUrRtGGo_o" role="lGtFl">
                              <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                              <property role="2qtEX8" value="variableDeclaration" />
                              <node concept="3$xsQk" id="4fUrRtGGo_p" role="3$ytzL">
                                <node concept="3clFbS" id="4fUrRtGGo_q" role="2VODD2">
                                  <node concept="3cpWs6" id="4fUrRtGGo_r" role="3cqZAp">
                                    <node concept="Xl_RD" id="4fUrRtGGo_s" role="3cqZAk">
                                      <property role="Xl_RC" value="myProgram" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="4fUrRtGGo_t" role="10QFUM">
                            <ref role="3uigEE" to="f696:5caPF5jNioP" resolve="InterProceduralDataFlowGraph" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4fUrRtGGo_u" role="2OqNvi">
                        <ref role="37wK5l" to="f696:7Xx$srVVOmd" resolve="getAllEntryPoints" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7NG3AjJ7CQ4" role="3cqZAp">
                <node concept="2OqwBi" id="7NG3AjJ7CQ5" role="3clFbG">
                  <node concept="2ShNRf" id="7NG3AjJ7CQ6" role="2Oq$k0">
                    <node concept="1pGfFk" id="7NG3AjJ7CQ7" role="2ShVmc">
                      <ref role="37wK5l" to="1fjm:~AnalyzerRules.&lt;init&gt;(java.lang.String,java.util.Collection,jetbrains.mps.lang.dataFlow.framework.Program)" resolve="AnalyzerRules" />
                      <node concept="Xl_RD" id="7NG3AjJ7CQ8" role="37wK5m">
                        <property role="Xl_RC" value="" />
                        <node concept="17Uvod" id="7NG3AjJ7CQ9" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="7NG3AjJ7CQa" role="3zH0cK">
                            <node concept="3clFbS" id="7NG3AjJ7CQb" role="2VODD2">
                              <node concept="3clFbF" id="7NG3AjJ7CQc" role="3cqZAp">
                                <node concept="2OqwBi" id="7NG3AjJ7CQd" role="3clFbG">
                                  <node concept="2qgKlT" id="63QuB1F3S6w" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                  </node>
                                  <node concept="30H73N" id="63QuB1F3Rdt" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4fUrRtGGpaI" role="37wK5m">
                        <ref role="3cqZAo" node="4fUrRtGGo_0" resolve="nodes" />
                      </node>
                      <node concept="37vLTw" id="7NG3AjJ7CQh" role="37wK5m">
                        <ref role="3cqZAo" to="1fjm:~AnalyzerRunner.myProgram" resolve="myProgram" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7NG3AjJ7CQi" role="2OqNvi">
                    <ref role="37wK5l" to="1fjm:~AnalyzerRules.apply():void" resolve="apply" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm6S6" id="7NG3AjJ7BC3" role="1B3o_S" />
            <node concept="3cqZAl" id="7NG3AjJ7BCb" role="3clF45" />
            <node concept="raruj" id="7NG3AjJ7Dbw" role="lGtFl" />
          </node>
          <node concept="3Tm1VV" id="7NG3AjJ7B$j" role="1B3o_S" />
          <node concept="3uibUv" id="7NG3AjJ7BC1" role="1zkMxy">
            <ref role="3uigEE" to="mu20:9V7Nft_x9B" resolve="CustomAnalyzerRunner" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4fUrRtGGnJo" role="30HLyM">
        <node concept="3clFbS" id="4fUrRtGGnJp" role="2VODD2">
          <node concept="3cpWs6" id="4fUrRtGGnLD" role="3cqZAp">
            <node concept="2OqwBi" id="4fUrRtGGnLE" role="3cqZAk">
              <node concept="2OqwBi" id="4fUrRtGGnLF" role="2Oq$k0">
                <node concept="30H73N" id="4fUrRtGGnLG" role="2Oq$k0" />
                <node concept="3CFZ6_" id="4fUrRtGGnLH" role="2OqNvi">
                  <node concept="3CFYIy" id="4fUrRtGGnLI" role="3CFYIz">
                    <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="4fUrRtGGnLJ" role="2OqNvi">
                <node concept="1bVj0M" id="4fUrRtGGnLK" role="23t8la">
                  <node concept="3clFbS" id="4fUrRtGGnLL" role="1bW5cS">
                    <node concept="3clFbF" id="4fUrRtGGnLM" role="3cqZAp">
                      <node concept="2OqwBi" id="4fUrRtGGnLN" role="3clFbG">
                        <node concept="37vLTw" id="4fUrRtGGnLO" role="2Oq$k0">
                          <ref role="3cqZAo" node="4fUrRtGGnLR" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="4fUrRtGGnLP" role="2OqNvi">
                          <node concept="chp4Y" id="4fUrRtGGnLQ" role="cj9EA">
                            <ref role="cht4Q" to="ybok:7TdqwvhyxII" resolve="InterProceduralProgramAttribute" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4fUrRtGGnLR" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4fUrRtGGnLS" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4fUrRtGGtCH">
    <property role="3GE5qa" value="templates" />
    <property role="TrG5h" value="template_ConceptRule_performInterProceduralActions" />
    <ref role="phYkn" to="ty9a:5hM31D8xVMm" resolve="switch_ConceptRule_performActions" />
    <node concept="3aamgX" id="4fUrRtGGtCI" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="bj1v:nUEAIXlVr8" resolve="Rule" />
      <node concept="1Koe21" id="4fUrRtGGw2t" role="1lVwrX">
        <node concept="312cEu" id="3ri$iz_vfYr" role="1Koe22">
          <property role="TrG5h" value="ConceptRule_custom" />
          <node concept="3uibUv" id="3ri$iz_vfYs" role="EKbjA">
            <ref role="3uigEE" to="1fjm:~DataFlowConstructor" resolve="DataFlowConstructor" />
          </node>
          <node concept="3Tm1VV" id="3ri$iz_vfYt" role="1B3o_S" />
          <node concept="3clFb_" id="3ri$iz_vfZg" role="jymVt">
            <property role="TrG5h" value="performActions" />
            <node concept="3cqZAl" id="3ri$iz_vfZh" role="3clF45" />
            <node concept="3Tm1VV" id="3ri$iz_vfZi" role="1B3o_S" />
            <node concept="37vLTG" id="3ri$iz_vfZj" role="3clF46">
              <property role="TrG5h" value="o" />
              <node concept="3uibUv" id="3ri$iz_vfZk" role="1tU5fm">
                <ref role="3uigEE" to="1fjm:~Program" resolve="Program" />
              </node>
            </node>
            <node concept="37vLTG" id="3ri$iz_vfZl" role="3clF46">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="3ri$iz_vfZm" role="1tU5fm" />
            </node>
            <node concept="3clFbS" id="3ri$iz_vfZn" role="3clF47">
              <node concept="29HgVG" id="3ri$iz_vfZo" role="lGtFl">
                <node concept="3NFfHV" id="3ri$iz_vfZp" role="3NFExx">
                  <node concept="3clFbS" id="3ri$iz_vfZq" role="2VODD2">
                    <node concept="3clFbF" id="3ri$iz_vfZr" role="3cqZAp">
                      <node concept="2OqwBi" id="3ri$iz_vfZs" role="3clFbG">
                        <node concept="3TrEf2" id="3ri$iz_vfZt" role="2OqNvi">
                          <ref role="3Tt5mk" to="bj1v:4ipeeu8Vzea" />
                        </node>
                        <node concept="30H73N" id="3ri$iz_vfZu" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="3ri$iz_vgyj" role="lGtFl" />
          </node>
          <node concept="3clFb_" id="3ri$iz_vgC_" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="isApplicable" />
            <property role="DiZV1" value="false" />
            <property role="od$2w" value="false" />
            <node concept="3Tm1VV" id="3ri$iz_vgCA" role="1B3o_S" />
            <node concept="10P_77" id="3ri$iz_vgCC" role="3clF45" />
            <node concept="37vLTG" id="3ri$iz_vgCD" role="3clF46">
              <property role="TrG5h" value="node" />
              <node concept="3uibUv" id="3ri$iz_vgCE" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="3clFbS" id="3ri$iz_vgCF" role="3clF47">
              <node concept="3clFbF" id="3ri$iz_vgCH" role="3cqZAp">
                <node concept="3clFbT" id="3ri$iz_vgCG" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4fUrRtGGtCM" role="30HLyM">
        <node concept="3clFbS" id="4fUrRtGGtCN" role="2VODD2">
          <node concept="3cpWs6" id="4fUrRtGGtDR" role="3cqZAp">
            <node concept="1Wc70l" id="4fUrRtGGK5g" role="3cqZAk">
              <node concept="3clFbT" id="4fUrRtGGKbB" role="3uHU7B">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="4fUrRtGGuof" role="3uHU7w">
                <node concept="2OqwBi" id="4fUrRtGGtHg" role="2Oq$k0">
                  <node concept="2OqwBi" id="4fUrRtGGJIx" role="2Oq$k0">
                    <node concept="30H73N" id="4fUrRtGGtEB" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4fUrRtGGJRo" role="2OqNvi">
                      <ref role="3Tt5mk" to="bj1v:3_iNRJnrAh0" />
                    </node>
                  </node>
                  <node concept="3CFZ6_" id="4fUrRtGGtMb" role="2OqNvi">
                    <node concept="3CFYIy" id="4fUrRtGGtOh" role="3CFYIz">
                      <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                    </node>
                  </node>
                </node>
                <node concept="2HwmR7" id="4fUrRtGGvyj" role="2OqNvi">
                  <node concept="1bVj0M" id="4fUrRtGGvyl" role="23t8la">
                    <node concept="3clFbS" id="4fUrRtGGvym" role="1bW5cS">
                      <node concept="3clFbF" id="4fUrRtGGvA2" role="3cqZAp">
                        <node concept="2OqwBi" id="4fUrRtGGvED" role="3clFbG">
                          <node concept="37vLTw" id="4fUrRtGGvA1" role="2Oq$k0">
                            <ref role="3cqZAo" node="4fUrRtGGvyn" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="4fUrRtGGvSg" role="2OqNvi">
                            <node concept="chp4Y" id="4fUrRtGGvX0" role="cj9EA">
                              <ref role="cht4Q" to="ybok:7TdqwvhyxII" resolve="InterProceduralProgramAttribute" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4fUrRtGGvyn" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4fUrRtGGvyo" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5hM31D8xWe9" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="bj1v:nUEAIXlVr8" resolve="Rule" />
      <node concept="30G5F_" id="5hM31D8xWB5" role="30HLyM">
        <node concept="3clFbS" id="5hM31D8xWB6" role="2VODD2">
          <node concept="3cpWs6" id="3DHs9S8jJo6" role="3cqZAp">
            <node concept="2OqwBi" id="3DHs9S8jJo9" role="3cqZAk">
              <node concept="2OqwBi" id="3DHs9S8jJoa" role="2Oq$k0">
                <node concept="2OqwBi" id="3DHs9S8jJob" role="2Oq$k0">
                  <node concept="30H73N" id="3DHs9S8jJoc" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3DHs9S8jJod" role="2OqNvi">
                    <ref role="3Tt5mk" to="bj1v:3_iNRJnrAh0" />
                  </node>
                </node>
                <node concept="3CFZ6_" id="3DHs9S8jJoe" role="2OqNvi">
                  <node concept="3CFYIy" id="3DHs9S8jJof" role="3CFYIz">
                    <ref role="3CFYIx" to="bj1v:5hM31D8wMnE" resolve="AnalyzerTypeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="3DHs9S8jJog" role="2OqNvi">
                <node concept="1bVj0M" id="3DHs9S8jJoh" role="23t8la">
                  <node concept="3clFbS" id="3DHs9S8jJoi" role="1bW5cS">
                    <node concept="3clFbF" id="3DHs9S8jJoj" role="3cqZAp">
                      <node concept="2OqwBi" id="3DHs9S8jJok" role="3clFbG">
                        <node concept="37vLTw" id="3DHs9S8jJol" role="2Oq$k0">
                          <ref role="3cqZAo" node="3DHs9S8jJoo" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="3DHs9S8jJom" role="2OqNvi">
                          <node concept="chp4Y" id="3DHs9S8jJon" role="cj9EA">
                            <ref role="cht4Q" to="ybok:7TdqwvhyxII" resolve="InterProceduralProgramAttribute" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3DHs9S8jJoo" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3DHs9S8jJop" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="3ri$iz_vfX$" role="1lVwrX">
        <node concept="312cEu" id="3DHs9S8jGtX" role="1Koe22">
          <property role="TrG5h" value="ConceptRule_custom" />
          <node concept="3uibUv" id="3DHs9S8jGtY" role="EKbjA">
            <ref role="3uigEE" to="1fjm:~DataFlowConstructor" resolve="DataFlowConstructor" />
          </node>
          <node concept="3Tm1VV" id="3DHs9S8jGtZ" role="1B3o_S" />
          <node concept="3clFb_" id="3DHs9S8jGu0" role="jymVt">
            <property role="TrG5h" value="performActions" />
            <node concept="3cqZAl" id="3DHs9S8jGu1" role="3clF45" />
            <node concept="3Tm1VV" id="3DHs9S8jGu2" role="1B3o_S" />
            <node concept="37vLTG" id="3DHs9S8jGu3" role="3clF46">
              <property role="TrG5h" value="o" />
              <node concept="3uibUv" id="3DHs9S8jGu4" role="1tU5fm">
                <ref role="3uigEE" to="1fjm:~Program" resolve="Program" />
              </node>
            </node>
            <node concept="37vLTG" id="3DHs9S8jGu5" role="3clF46">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="3DHs9S8jGu6" role="1tU5fm" />
            </node>
            <node concept="3clFbS" id="3DHs9S8jGu7" role="3clF47">
              <node concept="29HgVG" id="3DHs9S8jGu8" role="lGtFl">
                <node concept="3NFfHV" id="3DHs9S8jGu9" role="3NFExx">
                  <node concept="3clFbS" id="3DHs9S8jGua" role="2VODD2">
                    <node concept="3clFbF" id="3DHs9S8jGub" role="3cqZAp">
                      <node concept="2OqwBi" id="3DHs9S8jGuc" role="3clFbG">
                        <node concept="3TrEf2" id="3DHs9S8jGud" role="2OqNvi">
                          <ref role="3Tt5mk" to="bj1v:4ipeeu8Vzea" />
                        </node>
                        <node concept="30H73N" id="3DHs9S8jGue" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="3DHs9S8jGuf" role="lGtFl" />
          </node>
          <node concept="3clFb_" id="3DHs9S8jGug" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="isApplicable" />
            <property role="DiZV1" value="false" />
            <property role="od$2w" value="false" />
            <node concept="3Tm1VV" id="3DHs9S8jGuh" role="1B3o_S" />
            <node concept="10P_77" id="3DHs9S8jGui" role="3clF45" />
            <node concept="37vLTG" id="3DHs9S8jGuj" role="3clF46">
              <property role="TrG5h" value="node" />
              <node concept="3uibUv" id="3DHs9S8jGuk" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="3clFbS" id="3DHs9S8jGul" role="3clF47">
              <node concept="3clFbF" id="3DHs9S8jGum" role="3cqZAp">
                <node concept="3clFbT" id="3DHs9S8jGun" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

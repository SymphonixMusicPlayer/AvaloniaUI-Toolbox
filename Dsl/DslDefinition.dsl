<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="ecfd3978-b63c-4798-98a4-90ec2fe4986e" Description="Description for VELDDev.AvaloniaDSL.Avalonia" Name="Avalonia" DisplayName="Avalonia" Namespace="VELDDev.AvaloniaDSL" ProductName="AvaloniaDSL" CompanyName="VELD-Dev" PackageGuid="fa635a4a-e87f-4f3f-9a43-80320b8afd22" PackageNamespace="VELDDev.AvaloniaDSL" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="8f0b62c8-b9e5-4d3e-b6b5-96818a67ed76" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="VELDDev.AvaloniaDSL">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Button" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f93673b7-f387-405a-b8e9-3d5f2669b75f" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Button" DisplayName="Button" Namespace="VELDDev.AvaloniaDSL">
      <Properties>
        <DomainProperty Id="75c03c6d-dc81-43c0-b8ca-23944eb8c178" Description="Description for VELDDev.AvaloniaDSL.Button.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="616d4c25-d9c6-4d2d-af2d-091a3f612754" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="VELDDev.AvaloniaDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="2f4dd64b-93df-443e-be2b-834b19a06b36" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="318a8023-717c-41ca-88e0-8e76c03d4e56" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Button" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="61e1fa3e-efa6-4672-a03f-fe7ea377cb84" Description="Reference relationship between Elements." Name="ButtonReferencesTargets" DisplayName="Button References Targets" Namespace="VELDDev.AvaloniaDSL">
      <Source>
        <DomainRole Id="ecbbe6e1-1955-4e64-9332-f444ff50a8e3" Description="Description for VELDDev.AvaloniaDSL.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="Button" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="151442f4-bb90-4944-bde7-5039a2497eaf" Description="Description for VELDDev.AvaloniaDSL.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="Button" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="c64fefec-abde-48dd-956b-19fba8bbcc61" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="VELDDev.AvaloniaDSL" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <Properties>
        <DomainProperty Id="efa893c7-1b70-48c2-84d0-faab0382db4b" Description="Description for VELDDev.AvaloniaDSL.ExampleShape.Thing" Name="Thing" DisplayName="Thing">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="6257df32-abe1-488d-9ecf-b3a106ef4c33" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="VELDDev.AvaloniaDSL" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="AvaloniaSerializationBehavior" Namespace="VELDDev.AvaloniaDSL">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Button" MonikerAttributeName="name" SerializeId="true" MonikerElementName="buttonMoniker" ElementName="button" MonikerTypeName="ButtonMoniker">
        <DomainClassMoniker Name="Button" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Button/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="ButtonReferencesTargets" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="ButtonReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="buttonReferencesTargetsMoniker" ElementName="buttonReferencesTargets" MonikerTypeName="ButtonReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="ButtonReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
        <ElementData>
          <XmlPropertyData XmlName="thing">
            <DomainPropertyMoniker Name="ExampleShape/Thing" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AvaloniaDSLDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="avaloniaDSLDiagramMoniker" ElementName="avaloniaDSLDiagram" MonikerTypeName="AvaloniaDSLDiagramMoniker">
        <DiagramMoniker Name="AvaloniaDSLDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="AvaloniaDSLExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ButtonReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ButtonReferencesTargets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Button" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Button" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="9924833a-f909-45d3-a104-259dd85af8ba" Description="Description for VELDDev.AvaloniaDSL.AvaloniaDSLDiagram" Name="AvaloniaDSLDiagram" DisplayName="Minimal Language Diagram" Namespace="VELDDev.AvaloniaDSL">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Button" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Button/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="ButtonReferencesTargets" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="axaml" EditorGuid="08f825ea-7672-4d83-8742-cbcc92123e86">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="AvaloniaSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="AvaloniaDSL">
      <ElementTool Name="Button" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Button" Tooltip="Button" HelpKeyword="Button">
        <DomainClassMoniker Name="Button" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="AvaloniaDSLDiagram" />
  </Designer>
  <Explorer ExplorerGuid="1e142df1-d3c8-48ba-b092-20bbb4c3c522" Title="AvaloniaDSL Explorer">
    <ExplorerBehaviorMoniker Name="Avalonia/AvaloniaDSLExplorer" />
  </Explorer>
</Dsl>
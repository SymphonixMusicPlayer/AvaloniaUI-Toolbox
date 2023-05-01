#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"VELD-Dev")]
[assembly: AssemblyProduct(@"AvaloniaDSL")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"VELDDev.AvaloniaDSL.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100A5D65E947FA9828479986720CBF26C2F4713CF4F8D7515F05CC5836C949400067DE90936428A23D185B5748114F204796BA3D4F1390CEA7A425167D902EDA432675855C3F4E5005A03C3C5681F2BBB3EBE3B559B506829ED60D151342249A95D7F67EF30FC7FC04E9F10F431B7DE9BCB81B4C0ECAC7FA8518D9B3D775E55C2D6")]
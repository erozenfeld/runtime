// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

.assembly extern System.Console { }
/* RDawson - 11/2/200

   Check that a field is allowed to specify fdLiteral or fdInitOnly
*/

.assembly Bob{}
.assembly extern mscorlib {}

.class Foo{
	.field literal int32 bar
	.field initonly int32 bar2

.method public specialname void .ctor(){
	ldarg.0
	call	instance void [mscorlib]System.Object::.ctor()
	ret
}

.method public static int32 main(){
	.entrypoint
	.maxstack 8
	newobj instance	void Foo::.ctor()
	pop
	ldstr	"PASS - 2.11.6 - Was allowed to have a field specified as fdLiteral and one specified as fdInitOnly"
	call	void [System.Console]System.Console::WriteLine(class [mscorlib]System.String)
	ldc.i4	100
	ret
}
}

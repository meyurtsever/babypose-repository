№І/
џђ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8єЩ-
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:  *
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
: *
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:  *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
: *
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
С
lstm_3/lstm_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	$А*+
shared_namelstm_3/lstm_cell_10/kernel
К
.lstm_3/lstm_cell_10/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_10/kernel*
_output_shapes
:	$А*
dtype0
•
$lstm_3/lstm_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*5
shared_name&$lstm_3/lstm_cell_10/recurrent_kernel
Ю
8lstm_3/lstm_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_3/lstm_cell_10/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Й
lstm_3/lstm_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_namelstm_3/lstm_cell_10/bias
В
,lstm_3/lstm_cell_10/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_10/bias*
_output_shapes	
:А*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_9/kernel/m
u
$dense_9/kernel/m/Read/ReadVariableOpReadVariableOpdense_9/kernel/m*
_output_shapes

:  *
dtype0
t
dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_9/bias/m
m
"dense_9/bias/m/Read/ReadVariableOpReadVariableOpdense_9/bias/m*
_output_shapes
: *
dtype0
~
dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *"
shared_namedense_10/kernel/m
w
%dense_10/kernel/m/Read/ReadVariableOpReadVariableOpdense_10/kernel/m*
_output_shapes

:  *
dtype0
v
dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_10/bias/m
o
#dense_10/bias/m/Read/ReadVariableOpReadVariableOpdense_10/bias/m*
_output_shapes
: *
dtype0
~
dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_11/kernel/m
w
%dense_11/kernel/m/Read/ReadVariableOpReadVariableOpdense_11/kernel/m*
_output_shapes

: *
dtype0
v
dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_11/bias/m
o
#dense_11/bias/m/Read/ReadVariableOpReadVariableOpdense_11/bias/m*
_output_shapes
:*
dtype0
Х
lstm_3/lstm_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	$А*-
shared_namelstm_3/lstm_cell_10/kernel/m
О
0lstm_3/lstm_cell_10/kernel/m/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_10/kernel/m*
_output_shapes
:	$А*
dtype0
©
&lstm_3/lstm_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&lstm_3/lstm_cell_10/recurrent_kernel/m
Ґ
:lstm_3/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&lstm_3/lstm_cell_10/recurrent_kernel/m*
_output_shapes
:	 А*
dtype0
Н
lstm_3/lstm_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namelstm_3/lstm_cell_10/bias/m
Ж
.lstm_3/lstm_cell_10/bias/m/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_10/bias/m*
_output_shapes	
:А*
dtype0
|
dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_9/kernel/v
u
$dense_9/kernel/v/Read/ReadVariableOpReadVariableOpdense_9/kernel/v*
_output_shapes

:  *
dtype0
t
dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_9/bias/v
m
"dense_9/bias/v/Read/ReadVariableOpReadVariableOpdense_9/bias/v*
_output_shapes
: *
dtype0
~
dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *"
shared_namedense_10/kernel/v
w
%dense_10/kernel/v/Read/ReadVariableOpReadVariableOpdense_10/kernel/v*
_output_shapes

:  *
dtype0
v
dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_10/bias/v
o
#dense_10/bias/v/Read/ReadVariableOpReadVariableOpdense_10/bias/v*
_output_shapes
: *
dtype0
~
dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_11/kernel/v
w
%dense_11/kernel/v/Read/ReadVariableOpReadVariableOpdense_11/kernel/v*
_output_shapes

: *
dtype0
v
dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_11/bias/v
o
#dense_11/bias/v/Read/ReadVariableOpReadVariableOpdense_11/bias/v*
_output_shapes
:*
dtype0
Х
lstm_3/lstm_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	$А*-
shared_namelstm_3/lstm_cell_10/kernel/v
О
0lstm_3/lstm_cell_10/kernel/v/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_10/kernel/v*
_output_shapes
:	$А*
dtype0
©
&lstm_3/lstm_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&lstm_3/lstm_cell_10/recurrent_kernel/v
Ґ
:lstm_3/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&lstm_3/lstm_cell_10/recurrent_kernel/v*
_output_shapes
:	 А*
dtype0
Н
lstm_3/lstm_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namelstm_3/lstm_cell_10/bias/v
Ж
.lstm_3/lstm_cell_10/bias/v/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_10/bias/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
і5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*п4
valueе4Bв4 Bџ4
Ъ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
в
(iter

)beta_1

*beta_2
	+decay
,learning_ratemcmdmemf"mg#mh-mi.mj/mkvlvmvnvo"vp#vq-vr.vs/vt
?
-0
.1
/2
3
4
5
6
"7
#8
?
-0
.1
/2
3
4
5
6
"7
#8
 
≠

0layers
1metrics
	variables
trainable_variables
2non_trainable_variables
	regularization_losses
3layer_regularization_losses
4layer_metrics
 
~

-kernel
.recurrent_kernel
/bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
 

-0
.1
/2

-0
.1
/2
 
є

9layers
	variables
:metrics
trainable_variables
;non_trainable_variables
regularization_losses
<layer_regularization_losses
=layer_metrics

>states
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠

?layers
@metrics
	variables
trainable_variables
Anon_trainable_variables
regularization_losses
Blayer_regularization_losses
Clayer_metrics
 
 
 
≠

Dlayers
Emetrics
	variables
trainable_variables
Fnon_trainable_variables
regularization_losses
Glayer_regularization_losses
Hlayer_metrics
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠

Ilayers
Jmetrics
	variables
trainable_variables
Knon_trainable_variables
 regularization_losses
Llayer_regularization_losses
Mlayer_metrics
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
≠

Nlayers
Ometrics
$	variables
%trainable_variables
Pnon_trainable_variables
&regularization_losses
Qlayer_regularization_losses
Rlayer_metrics
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElstm_3/lstm_cell_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE$lstm_3/lstm_cell_10/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUElstm_3/lstm_cell_10/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4

S0
T1
 
 
 

-0
.1
/2

-0
.1
/2
 
≠

Ulayers
Vmetrics
5	variables
6trainable_variables
Wnon_trainable_variables
7regularization_losses
Xlayer_regularization_losses
Ylayer_metrics

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ztotal
	[count
\	variables
]	keras_api
D
	^total
	_count
`
_fn_kwargs
a	variables
b	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

\	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

a	variables
xv
VARIABLE_VALUEdense_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_11/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUElstm_3/lstm_cell_10/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&lstm_3/lstm_cell_10/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUElstm_3/lstm_cell_10/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_11/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUElstm_3/lstm_cell_10/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&lstm_3/lstm_cell_10/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUElstm_3/lstm_cell_10/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
З
serving_default_lstm_3_inputPlaceholder*+
_output_shapes
:€€€€€€€€€$*
dtype0* 
shape:€€€€€€€€€$
Г
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_3_inputlstm_3/lstm_cell_10/kernellstm_3/lstm_cell_10/bias$lstm_3/lstm_cell_10/recurrent_kerneldense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_175313
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
≠
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpiter/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp.lstm_3/lstm_cell_10/kernel/Read/ReadVariableOp8lstm_3/lstm_cell_10/recurrent_kernel/Read/ReadVariableOp,lstm_3/lstm_cell_10/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp$dense_9/kernel/m/Read/ReadVariableOp"dense_9/bias/m/Read/ReadVariableOp%dense_10/kernel/m/Read/ReadVariableOp#dense_10/bias/m/Read/ReadVariableOp%dense_11/kernel/m/Read/ReadVariableOp#dense_11/bias/m/Read/ReadVariableOp0lstm_3/lstm_cell_10/kernel/m/Read/ReadVariableOp:lstm_3/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOp.lstm_3/lstm_cell_10/bias/m/Read/ReadVariableOp$dense_9/kernel/v/Read/ReadVariableOp"dense_9/bias/v/Read/ReadVariableOp%dense_10/kernel/v/Read/ReadVariableOp#dense_10/bias/v/Read/ReadVariableOp%dense_11/kernel/v/Read/ReadVariableOp#dense_11/bias/v/Read/ReadVariableOp0lstm_3/lstm_cell_10/kernel/v/Read/ReadVariableOp:lstm_3/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOp.lstm_3/lstm_cell_10/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_177994
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/biasiterbeta_1beta_2decaylearning_ratelstm_3/lstm_cell_10/kernel$lstm_3/lstm_cell_10/recurrent_kernellstm_3/lstm_cell_10/biastotalcounttotal_1count_1dense_9/kernel/mdense_9/bias/mdense_10/kernel/mdense_10/bias/mdense_11/kernel/mdense_11/bias/mlstm_3/lstm_cell_10/kernel/m&lstm_3/lstm_cell_10/recurrent_kernel/mlstm_3/lstm_cell_10/bias/mdense_9/kernel/vdense_9/bias/vdense_10/kernel/vdense_10/bias/vdense_11/kernel/vdense_11/bias/vlstm_3/lstm_cell_10/kernel/v&lstm_3/lstm_cell_10/recurrent_kernel/vlstm_3/lstm_cell_10/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_178112эД,
в1
≈
H__inference_sequential_3_layer_call_and_return_conditional_losses_175185

inputs
lstm_3_175149
lstm_3_175151
lstm_3_175153
dense_9_175156
dense_9_175158
dense_10_175162
dense_10_175164
dense_11_175167
dense_11_175169
identityИҐ dense_10/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallҐlstm_3/StatefulPartitionedCallҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЫ
lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputslstm_3_175149lstm_3_175151lstm_3_175153*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1746832 
lstm_3/StatefulPartitionedCall∞
dense_9/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_9_175156dense_9_175158*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1749912!
dense_9/StatefulPartitionedCallС
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1750192#
!dropout_3/StatefulPartitionedCallЄ
 dense_10/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_10_175162dense_10_175164*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1750482"
 dense_10/StatefulPartitionedCallЈ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_175167dense_11_175169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1750752"
 dense_11/StatefulPartitionedCallЋ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_175149*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul√
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_175151*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul¶
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
ї
Ќ
-__inference_lstm_cell_10_layer_call_fn_177824

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1736372
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:€€€€€€€€€$:€€€€€€€€€ :€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Ф
F
*__inference_dropout_3_layer_call_fn_177499

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1750242
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
тш
“
while_body_176267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_10_split_readvariableop_resource_08
4while_lstm_cell_10_split_1_readvariableop_resource_00
,while_lstm_cell_10_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_10_split_readvariableop_resource6
2while_lstm_cell_10_split_1_readvariableop_resource.
*while_lstm_cell_10_readvariableop_resourceИҐ!while/lstm_cell_10/ReadVariableOpҐ#while/lstm_cell_10/ReadVariableOp_1Ґ#while/lstm_cell_10/ReadVariableOp_2Ґ#while/lstm_cell_10/ReadVariableOp_3Ґ'while/lstm_cell_10/split/ReadVariableOpҐ)while/lstm_cell_10/split_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
"while/lstm_cell_10/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/ShapeН
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"while/lstm_cell_10/ones_like/Const–
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/ones_likeЙ
 while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2"
 while/lstm_cell_10/dropout/ConstЋ
while/lstm_cell_10/dropout/MulMul%while/lstm_cell_10/ones_like:output:0)while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2 
while/lstm_cell_10/dropout/MulЩ
 while/lstm_cell_10/dropout/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_10/dropout/ShapeМ
7while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2§†‘29
7while/lstm_cell_10/dropout/random_uniform/RandomUniformЫ
)while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2+
)while/lstm_cell_10/dropout/GreaterEqual/yК
'while/lstm_cell_10/dropout/GreaterEqualGreaterEqual@while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'while/lstm_cell_10/dropout/GreaterEqualЄ
while/lstm_cell_10/dropout/CastCast+while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2!
while/lstm_cell_10/dropout/Cast∆
 while/lstm_cell_10/dropout/Mul_1Mul"while/lstm_cell_10/dropout/Mul:z:0#while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout/Mul_1Н
"while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_1/Const—
 while/lstm_cell_10/dropout_1/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_1/MulЭ
"while/lstm_cell_10/dropout_1/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_1/ShapeТ
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2м≈•2;
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_1/GreaterEqual/yТ
)while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_1/GreaterEqualЊ
!while/lstm_cell_10/dropout_1/CastCast-while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_1/Castќ
"while/lstm_cell_10/dropout_1/Mul_1Mul$while/lstm_cell_10/dropout_1/Mul:z:0%while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_1/Mul_1Н
"while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_2/Const—
 while/lstm_cell_10/dropout_2/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_2/MulЭ
"while/lstm_cell_10/dropout_2/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_2/ShapeТ
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2таю2;
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_2/GreaterEqual/yТ
)while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_2/GreaterEqualЊ
!while/lstm_cell_10/dropout_2/CastCast-while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_2/Castќ
"while/lstm_cell_10/dropout_2/Mul_1Mul$while/lstm_cell_10/dropout_2/Mul:z:0%while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_2/Mul_1Н
"while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_3/Const—
 while/lstm_cell_10/dropout_3/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_3/MulЭ
"while/lstm_cell_10/dropout_3/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_3/ShapeТ
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Ѓ≥й2;
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_3/GreaterEqual/yТ
)while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_3/GreaterEqualЊ
!while/lstm_cell_10/dropout_3/CastCast-while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_3/Castќ
"while/lstm_cell_10/dropout_3/Mul_1Mul$while/lstm_cell_10/dropout_3/Mul:z:0%while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_3/Mul_1П
$while/lstm_cell_10/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_10/ones_like_1/ShapeС
$while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$while/lstm_cell_10/ones_like_1/ConstЎ
while/lstm_cell_10/ones_like_1Fill-while/lstm_cell_10/ones_like_1/Shape:output:0-while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/lstm_cell_10/ones_like_1Н
"while/lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_4/Const”
 while/lstm_cell_10/dropout_4/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_4/MulЯ
"while/lstm_cell_10/dropout_4/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_4/ShapeС
9while/lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2Јоi2;
9while/lstm_cell_10/dropout_4/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_4/GreaterEqual/yТ
)while/lstm_cell_10/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_4/GreaterEqualЊ
!while/lstm_cell_10/dropout_4/CastCast-while/lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_4/Castќ
"while/lstm_cell_10/dropout_4/Mul_1Mul$while/lstm_cell_10/dropout_4/Mul:z:0%while/lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_4/Mul_1Н
"while/lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_5/Const”
 while/lstm_cell_10/dropout_5/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_5/MulЯ
"while/lstm_cell_10/dropout_5/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_5/ShapeТ
9while/lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ЪЪј2;
9while/lstm_cell_10/dropout_5/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_5/GreaterEqual/yТ
)while/lstm_cell_10/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_5/GreaterEqualЊ
!while/lstm_cell_10/dropout_5/CastCast-while/lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_5/Castќ
"while/lstm_cell_10/dropout_5/Mul_1Mul$while/lstm_cell_10/dropout_5/Mul:z:0%while/lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_5/Mul_1Н
"while/lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_6/Const”
 while/lstm_cell_10/dropout_6/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_6/MulЯ
"while/lstm_cell_10/dropout_6/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_6/ShapeТ
9while/lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ПБо2;
9while/lstm_cell_10/dropout_6/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_6/GreaterEqual/yТ
)while/lstm_cell_10/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_6/GreaterEqualЊ
!while/lstm_cell_10/dropout_6/CastCast-while/lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_6/Castќ
"while/lstm_cell_10/dropout_6/Mul_1Mul$while/lstm_cell_10/dropout_6/Mul:z:0%while/lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_6/Mul_1Н
"while/lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_7/Const”
 while/lstm_cell_10/dropout_7/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_7/MulЯ
"while/lstm_cell_10/dropout_7/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_7/ShapeТ
9while/lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2дРД2;
9while/lstm_cell_10/dropout_7/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_7/GreaterEqual/yТ
)while/lstm_cell_10/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_7/GreaterEqualЊ
!while/lstm_cell_10/dropout_7/CastCast-while/lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_7/Castќ
"while/lstm_cell_10/dropout_7/Mul_1Mul$while/lstm_cell_10/dropout_7/Mul:z:0%while/lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_7/Mul_1Ѕ
while/lstm_cell_10/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul«
while/lstm_cell_10/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_1«
while/lstm_cell_10/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_2«
while/lstm_cell_10/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_3v
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/ConstК
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim∆
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpу
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
while/lstm_cell_10/split±
while/lstm_cell_10/MatMulMatMulwhile/lstm_cell_10/mul:z:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMulЈ
while/lstm_cell_10/MatMul_1MatMulwhile/lstm_cell_10/mul_1:z:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_1Ј
while/lstm_cell_10/MatMul_2MatMulwhile/lstm_cell_10/mul_2:z:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_2Ј
while/lstm_cell_10/MatMul_3MatMulwhile/lstm_cell_10/mul_3:z:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_3z
while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const_1О
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dim»
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpл
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1њ
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd≈
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_1≈
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_2≈
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_3™
while/lstm_cell_10/mul_4Mulwhile_placeholder_2&while/lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_4™
while/lstm_cell_10/mul_5Mulwhile_placeholder_2&while/lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_5™
while/lstm_cell_10/mul_6Mulwhile_placeholder_2&while/lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_6™
while/lstm_cell_10/mul_7Mulwhile_placeholder_2&while/lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_7і
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02#
!while/lstm_cell_10/ReadVariableOp°
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack•
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1•
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2о
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_sliceњ
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul_4:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_4Ј
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/addС
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/SigmoidЄ
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_1•
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ъ
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Ѕ
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_5:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_5љ
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_1Ч
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_1§
while/lstm_cell_10/mul_8Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_8Є
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_2•
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ъ
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Ѕ
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_6:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_6љ
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_2К
while/lstm_cell_10/TanhTanhwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh™
while/lstm_cell_10/mul_9Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_9Ђ
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_8:z:0while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_3Є
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_3•
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ъ
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Ѕ
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_7:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_7љ
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_4Ч
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_2О
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh_1∞
while/lstm_cell_10/mul_10Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_10б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3н
while/Identity_4Identitywhile/lstm_cell_10/mul_10:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4м
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ф1
Ћ
H__inference_sequential_3_layer_call_and_return_conditional_losses_175104
lstm_3_input
lstm_3_174973
lstm_3_174975
lstm_3_174977
dense_9_175002
dense_9_175004
dense_10_175059
dense_10_175061
dense_11_175086
dense_11_175088
identityИҐ dense_10/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallҐlstm_3/StatefulPartitionedCallҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp°
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_174973lstm_3_174975lstm_3_174977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1746832 
lstm_3/StatefulPartitionedCall∞
dense_9/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_9_175002dense_9_175004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1749912!
dense_9/StatefulPartitionedCallС
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1750192#
!dropout_3/StatefulPartitionedCallЄ
 dense_10/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_10_175059dense_10_175061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1750482"
 dense_10/StatefulPartitionedCallЈ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_175086dense_11_175088*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1750752"
 dense_11/StatefulPartitionedCallЋ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_174973*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul√
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_174975*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul¶
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:Y U
+
_output_shapes
:€€€€€€€€€$
&
_user_specified_namelstm_3_input
сш
“
while_body_174471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_10_split_readvariableop_resource_08
4while_lstm_cell_10_split_1_readvariableop_resource_00
,while_lstm_cell_10_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_10_split_readvariableop_resource6
2while_lstm_cell_10_split_1_readvariableop_resource.
*while_lstm_cell_10_readvariableop_resourceИҐ!while/lstm_cell_10/ReadVariableOpҐ#while/lstm_cell_10/ReadVariableOp_1Ґ#while/lstm_cell_10/ReadVariableOp_2Ґ#while/lstm_cell_10/ReadVariableOp_3Ґ'while/lstm_cell_10/split/ReadVariableOpҐ)while/lstm_cell_10/split_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
"while/lstm_cell_10/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/ShapeН
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"while/lstm_cell_10/ones_like/Const–
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/ones_likeЙ
 while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2"
 while/lstm_cell_10/dropout/ConstЋ
while/lstm_cell_10/dropout/MulMul%while/lstm_cell_10/ones_like:output:0)while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2 
while/lstm_cell_10/dropout/MulЩ
 while/lstm_cell_10/dropout/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_10/dropout/ShapeМ
7while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2я©ю29
7while/lstm_cell_10/dropout/random_uniform/RandomUniformЫ
)while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2+
)while/lstm_cell_10/dropout/GreaterEqual/yК
'while/lstm_cell_10/dropout/GreaterEqualGreaterEqual@while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'while/lstm_cell_10/dropout/GreaterEqualЄ
while/lstm_cell_10/dropout/CastCast+while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2!
while/lstm_cell_10/dropout/Cast∆
 while/lstm_cell_10/dropout/Mul_1Mul"while/lstm_cell_10/dropout/Mul:z:0#while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout/Mul_1Н
"while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_1/Const—
 while/lstm_cell_10/dropout_1/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_1/MulЭ
"while/lstm_cell_10/dropout_1/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_1/ShapeС
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2щс2;
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_1/GreaterEqual/yТ
)while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_1/GreaterEqualЊ
!while/lstm_cell_10/dropout_1/CastCast-while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_1/Castќ
"while/lstm_cell_10/dropout_1/Mul_1Mul$while/lstm_cell_10/dropout_1/Mul:z:0%while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_1/Mul_1Н
"while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_2/Const—
 while/lstm_cell_10/dropout_2/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_2/MulЭ
"while/lstm_cell_10/dropout_2/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_2/ShapeС
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2дИ?2;
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_2/GreaterEqual/yТ
)while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_2/GreaterEqualЊ
!while/lstm_cell_10/dropout_2/CastCast-while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_2/Castќ
"while/lstm_cell_10/dropout_2/Mul_1Mul$while/lstm_cell_10/dropout_2/Mul:z:0%while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_2/Mul_1Н
"while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_3/Const—
 while/lstm_cell_10/dropout_3/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_3/MulЭ
"while/lstm_cell_10/dropout_3/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_3/ShapeТ
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Џ€°2;
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_3/GreaterEqual/yТ
)while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_3/GreaterEqualЊ
!while/lstm_cell_10/dropout_3/CastCast-while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_3/Castќ
"while/lstm_cell_10/dropout_3/Mul_1Mul$while/lstm_cell_10/dropout_3/Mul:z:0%while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_3/Mul_1П
$while/lstm_cell_10/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_10/ones_like_1/ShapeС
$while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$while/lstm_cell_10/ones_like_1/ConstЎ
while/lstm_cell_10/ones_like_1Fill-while/lstm_cell_10/ones_like_1/Shape:output:0-while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/lstm_cell_10/ones_like_1Н
"while/lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_4/Const”
 while/lstm_cell_10/dropout_4/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_4/MulЯ
"while/lstm_cell_10/dropout_4/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_4/ShapeТ
9while/lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2„÷с2;
9while/lstm_cell_10/dropout_4/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_4/GreaterEqual/yТ
)while/lstm_cell_10/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_4/GreaterEqualЊ
!while/lstm_cell_10/dropout_4/CastCast-while/lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_4/Castќ
"while/lstm_cell_10/dropout_4/Mul_1Mul$while/lstm_cell_10/dropout_4/Mul:z:0%while/lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_4/Mul_1Н
"while/lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_5/Const”
 while/lstm_cell_10/dropout_5/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_5/MulЯ
"while/lstm_cell_10/dropout_5/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_5/ShapeТ
9while/lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ряѓ2;
9while/lstm_cell_10/dropout_5/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_5/GreaterEqual/yТ
)while/lstm_cell_10/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_5/GreaterEqualЊ
!while/lstm_cell_10/dropout_5/CastCast-while/lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_5/Castќ
"while/lstm_cell_10/dropout_5/Mul_1Mul$while/lstm_cell_10/dropout_5/Mul:z:0%while/lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_5/Mul_1Н
"while/lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_6/Const”
 while/lstm_cell_10/dropout_6/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_6/MulЯ
"while/lstm_cell_10/dropout_6/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_6/ShapeТ
9while/lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2∞√Н2;
9while/lstm_cell_10/dropout_6/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_6/GreaterEqual/yТ
)while/lstm_cell_10/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_6/GreaterEqualЊ
!while/lstm_cell_10/dropout_6/CastCast-while/lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_6/Castќ
"while/lstm_cell_10/dropout_6/Mul_1Mul$while/lstm_cell_10/dropout_6/Mul:z:0%while/lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_6/Mul_1Н
"while/lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_7/Const”
 while/lstm_cell_10/dropout_7/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_7/MulЯ
"while/lstm_cell_10/dropout_7/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_7/ShapeТ
9while/lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2юЈј2;
9while/lstm_cell_10/dropout_7/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_7/GreaterEqual/yТ
)while/lstm_cell_10/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_7/GreaterEqualЊ
!while/lstm_cell_10/dropout_7/CastCast-while/lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_7/Castќ
"while/lstm_cell_10/dropout_7/Mul_1Mul$while/lstm_cell_10/dropout_7/Mul:z:0%while/lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_7/Mul_1Ѕ
while/lstm_cell_10/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul«
while/lstm_cell_10/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_1«
while/lstm_cell_10/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_2«
while/lstm_cell_10/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_3v
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/ConstК
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim∆
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpу
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
while/lstm_cell_10/split±
while/lstm_cell_10/MatMulMatMulwhile/lstm_cell_10/mul:z:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMulЈ
while/lstm_cell_10/MatMul_1MatMulwhile/lstm_cell_10/mul_1:z:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_1Ј
while/lstm_cell_10/MatMul_2MatMulwhile/lstm_cell_10/mul_2:z:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_2Ј
while/lstm_cell_10/MatMul_3MatMulwhile/lstm_cell_10/mul_3:z:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_3z
while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const_1О
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dim»
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpл
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1њ
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd≈
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_1≈
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_2≈
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_3™
while/lstm_cell_10/mul_4Mulwhile_placeholder_2&while/lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_4™
while/lstm_cell_10/mul_5Mulwhile_placeholder_2&while/lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_5™
while/lstm_cell_10/mul_6Mulwhile_placeholder_2&while/lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_6™
while/lstm_cell_10/mul_7Mulwhile_placeholder_2&while/lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_7і
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02#
!while/lstm_cell_10/ReadVariableOp°
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack•
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1•
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2о
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_sliceњ
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul_4:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_4Ј
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/addС
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/SigmoidЄ
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_1•
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ъ
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Ѕ
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_5:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_5љ
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_1Ч
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_1§
while/lstm_cell_10/mul_8Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_8Є
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_2•
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ъ
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Ѕ
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_6:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_6љ
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_2К
while/lstm_cell_10/TanhTanhwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh™
while/lstm_cell_10/mul_9Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_9Ђ
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_8:z:0while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_3Є
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_3•
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ъ
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Ѕ
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_7:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_7љ
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_4Ч
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_2О
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh_1∞
while/lstm_cell_10/mul_10Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_10б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3н
while/Identity_4Identitywhile/lstm_cell_10/mul_10:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4м
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
„[
„
B__inference_lstm_3_layer_call_and_return_conditional_losses_174132

inputs
lstm_cell_10_174038
lstm_cell_10_174040
lstm_cell_10_174042
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐ$lstm_cell_10/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_174038lstm_cell_10_174040lstm_cell_10_174042*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1736372&
$lstm_cell_10/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_174038lstm_cell_10_174040lstm_cell_10_174042*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174051*
condR
while_cond_174050*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime—
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_10_174038*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul…
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_10_174040*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЧ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_10/StatefulPartitionedCall^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$
 
_user_specified_nameinputs
„[
„
B__inference_lstm_3_layer_call_and_return_conditional_losses_174276

inputs
lstm_cell_10_174182
lstm_cell_10_174184
lstm_cell_10_174186
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐ$lstm_cell_10/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_174182lstm_cell_10_174184lstm_cell_10_174186*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1737332&
$lstm_cell_10/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_174182lstm_cell_10_174184lstm_cell_10_174186*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174195*
condR
while_cond_174194*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime—
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_10_174182*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul…
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_10_174184*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЧ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_10/StatefulPartitionedCall^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$
 
_user_specified_nameinputs
ц	
Ё
D__inference_dense_11_layer_call_and_return_conditional_losses_177530

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
љg
ь
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_173733

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐsplit/ReadVariableOpҐsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstМ
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЛ
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02
split/ReadVariableOpІ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dimН
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
split_1/ReadVariableOpЯ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2И
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_10џ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul’
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul‘
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityЎ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1„

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:€€€€€€€€€$:€€€€€€€€€ :€€€€€€€€€ :::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
†
c
*__inference_dropout_3_layer_call_fn_177494

inputs
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1750192
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
тІ
«

lstm_3_while_body_175856*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_3_while_lstm_cell_10_split_readvariableop_resource_0?
;lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_07
3lstm_3_while_lstm_cell_10_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor;
7lstm_3_while_lstm_cell_10_split_readvariableop_resource=
9lstm_3_while_lstm_cell_10_split_1_readvariableop_resource5
1lstm_3_while_lstm_cell_10_readvariableop_resourceИҐ(lstm_3/while/lstm_cell_10/ReadVariableOpҐ*lstm_3/while/lstm_cell_10/ReadVariableOp_1Ґ*lstm_3/while/lstm_cell_10/ReadVariableOp_2Ґ*lstm_3/while/lstm_cell_10/ReadVariableOp_3Ґ.lstm_3/while/lstm_cell_10/split/ReadVariableOpҐ0lstm_3/while/lstm_cell_10/split_1/ReadVariableOp—
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeэ
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItemљ
)lstm_3/while/lstm_cell_10/ones_like/ShapeShape7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/ones_like/ShapeЫ
)lstm_3/while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)lstm_3/while/lstm_cell_10/ones_like/Constм
#lstm_3/while/lstm_cell_10/ones_likeFill2lstm_3/while/lstm_cell_10/ones_like/Shape:output:02lstm_3/while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_3/while/lstm_cell_10/ones_like§
+lstm_3/while/lstm_cell_10/ones_like_1/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2-
+lstm_3/while/lstm_cell_10/ones_like_1/ShapeЯ
+lstm_3/while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2-
+lstm_3/while/lstm_cell_10/ones_like_1/Constф
%lstm_3/while/lstm_cell_10/ones_like_1Fill4lstm_3/while/lstm_cell_10/ones_like_1/Shape:output:04lstm_3/while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%lstm_3/while/lstm_cell_10/ones_like_1ё
lstm_3/while/lstm_cell_10/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/while/lstm_cell_10/mulв
lstm_3/while/lstm_cell_10/mul_1Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/while/lstm_cell_10/mul_1в
lstm_3/while/lstm_cell_10/mul_2Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/while/lstm_cell_10/mul_2в
lstm_3/while/lstm_cell_10/mul_3Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/while/lstm_cell_10/mul_3Д
lstm_3/while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2!
lstm_3/while/lstm_cell_10/ConstШ
)lstm_3/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_3/while/lstm_cell_10/split/split_dimџ
.lstm_3/while/lstm_cell_10/split/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype020
.lstm_3/while/lstm_cell_10/split/ReadVariableOpП
lstm_3/while/lstm_cell_10/splitSplit2lstm_3/while/lstm_cell_10/split/split_dim:output:06lstm_3/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2!
lstm_3/while/lstm_cell_10/splitЌ
 lstm_3/while/lstm_cell_10/MatMulMatMul!lstm_3/while/lstm_cell_10/mul:z:0(lstm_3/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 lstm_3/while/lstm_cell_10/MatMul”
"lstm_3/while/lstm_cell_10/MatMul_1MatMul#lstm_3/while/lstm_cell_10/mul_1:z:0(lstm_3/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_1”
"lstm_3/while/lstm_cell_10/MatMul_2MatMul#lstm_3/while/lstm_cell_10/mul_2:z:0(lstm_3/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_2”
"lstm_3/while/lstm_cell_10/MatMul_3MatMul#lstm_3/while/lstm_cell_10/mul_3:z:0(lstm_3/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_3И
!lstm_3/while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2#
!lstm_3/while/lstm_cell_10/Const_1Ь
+lstm_3/while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+lstm_3/while/lstm_cell_10/split_1/split_dimЁ
0lstm_3/while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_3/while/lstm_cell_10/split_1/ReadVariableOpЗ
!lstm_3/while/lstm_cell_10/split_1Split4lstm_3/while/lstm_cell_10/split_1/split_dim:output:08lstm_3/while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2#
!lstm_3/while/lstm_cell_10/split_1џ
!lstm_3/while/lstm_cell_10/BiasAddBiasAdd*lstm_3/while/lstm_cell_10/MatMul:product:0*lstm_3/while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/while/lstm_cell_10/BiasAddб
#lstm_3/while/lstm_cell_10/BiasAdd_1BiasAdd,lstm_3/while/lstm_cell_10/MatMul_1:product:0*lstm_3/while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/BiasAdd_1б
#lstm_3/while/lstm_cell_10/BiasAdd_2BiasAdd,lstm_3/while/lstm_cell_10/MatMul_2:product:0*lstm_3/while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/BiasAdd_2б
#lstm_3/while/lstm_cell_10/BiasAdd_3BiasAdd,lstm_3/while/lstm_cell_10/MatMul_3:product:0*lstm_3/while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/BiasAdd_3«
lstm_3/while/lstm_cell_10/mul_4Mullstm_3_while_placeholder_2.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_4«
lstm_3/while/lstm_cell_10/mul_5Mullstm_3_while_placeholder_2.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_5«
lstm_3/while/lstm_cell_10/mul_6Mullstm_3_while_placeholder_2.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_6«
lstm_3/while/lstm_cell_10/mul_7Mullstm_3_while_placeholder_2.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_7…
(lstm_3/while/lstm_cell_10/ReadVariableOpReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(lstm_3/while/lstm_cell_10/ReadVariableOpѓ
-lstm_3/while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-lstm_3/while/lstm_cell_10/strided_slice/stack≥
/lstm_3/while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/lstm_3/while/lstm_cell_10/strided_slice/stack_1≥
/lstm_3/while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm_3/while/lstm_cell_10/strided_slice/stack_2Ш
'lstm_3/while/lstm_cell_10/strided_sliceStridedSlice0lstm_3/while/lstm_cell_10/ReadVariableOp:value:06lstm_3/while/lstm_cell_10/strided_slice/stack:output:08lstm_3/while/lstm_cell_10/strided_slice/stack_1:output:08lstm_3/while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2)
'lstm_3/while/lstm_cell_10/strided_sliceџ
"lstm_3/while/lstm_cell_10/MatMul_4MatMul#lstm_3/while/lstm_cell_10/mul_4:z:00lstm_3/while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_4”
lstm_3/while/lstm_cell_10/addAddV2*lstm_3/while/lstm_cell_10/BiasAdd:output:0,lstm_3/while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/while/lstm_cell_10/add¶
!lstm_3/while/lstm_cell_10/SigmoidSigmoid!lstm_3/while/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/while/lstm_cell_10/SigmoidЌ
*lstm_3/while/lstm_cell_10/ReadVariableOp_1ReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*lstm_3/while/lstm_cell_10/ReadVariableOp_1≥
/lstm_3/while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/lstm_3/while/lstm_cell_10/strided_slice_1/stackЈ
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   23
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_1Ј
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_2§
)lstm_3/while/lstm_cell_10/strided_slice_1StridedSlice2lstm_3/while/lstm_cell_10/ReadVariableOp_1:value:08lstm_3/while/lstm_cell_10/strided_slice_1/stack:output:0:lstm_3/while/lstm_cell_10/strided_slice_1/stack_1:output:0:lstm_3/while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)lstm_3/while/lstm_cell_10/strided_slice_1Ё
"lstm_3/while/lstm_cell_10/MatMul_5MatMul#lstm_3/while/lstm_cell_10/mul_5:z:02lstm_3/while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_5ў
lstm_3/while/lstm_cell_10/add_1AddV2,lstm_3/while/lstm_cell_10/BiasAdd_1:output:0,lstm_3/while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_1ђ
#lstm_3/while/lstm_cell_10/Sigmoid_1Sigmoid#lstm_3/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/Sigmoid_1ј
lstm_3/while/lstm_cell_10/mul_8Mul'lstm_3/while/lstm_cell_10/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_8Ќ
*lstm_3/while/lstm_cell_10/ReadVariableOp_2ReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*lstm_3/while/lstm_cell_10/ReadVariableOp_2≥
/lstm_3/while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   21
/lstm_3/while/lstm_cell_10/strided_slice_2/stackЈ
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   23
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_1Ј
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_2§
)lstm_3/while/lstm_cell_10/strided_slice_2StridedSlice2lstm_3/while/lstm_cell_10/ReadVariableOp_2:value:08lstm_3/while/lstm_cell_10/strided_slice_2/stack:output:0:lstm_3/while/lstm_cell_10/strided_slice_2/stack_1:output:0:lstm_3/while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)lstm_3/while/lstm_cell_10/strided_slice_2Ё
"lstm_3/while/lstm_cell_10/MatMul_6MatMul#lstm_3/while/lstm_cell_10/mul_6:z:02lstm_3/while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_6ў
lstm_3/while/lstm_cell_10/add_2AddV2,lstm_3/while/lstm_cell_10/BiasAdd_2:output:0,lstm_3/while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_2Я
lstm_3/while/lstm_cell_10/TanhTanh#lstm_3/while/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
lstm_3/while/lstm_cell_10/Tanh∆
lstm_3/while/lstm_cell_10/mul_9Mul%lstm_3/while/lstm_cell_10/Sigmoid:y:0"lstm_3/while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_9«
lstm_3/while/lstm_cell_10/add_3AddV2#lstm_3/while/lstm_cell_10/mul_8:z:0#lstm_3/while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_3Ќ
*lstm_3/while/lstm_cell_10/ReadVariableOp_3ReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*lstm_3/while/lstm_cell_10/ReadVariableOp_3≥
/lstm_3/while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   21
/lstm_3/while/lstm_cell_10/strided_slice_3/stackЈ
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_1Ј
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_2§
)lstm_3/while/lstm_cell_10/strided_slice_3StridedSlice2lstm_3/while/lstm_cell_10/ReadVariableOp_3:value:08lstm_3/while/lstm_cell_10/strided_slice_3/stack:output:0:lstm_3/while/lstm_cell_10/strided_slice_3/stack_1:output:0:lstm_3/while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)lstm_3/while/lstm_cell_10/strided_slice_3Ё
"lstm_3/while/lstm_cell_10/MatMul_7MatMul#lstm_3/while/lstm_cell_10/mul_7:z:02lstm_3/while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_7ў
lstm_3/while/lstm_cell_10/add_4AddV2,lstm_3/while/lstm_cell_10/BiasAdd_3:output:0,lstm_3/while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_4ђ
#lstm_3/while/lstm_cell_10/Sigmoid_2Sigmoid#lstm_3/while/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/Sigmoid_2£
 lstm_3/while/lstm_cell_10/Tanh_1Tanh#lstm_3/while/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 lstm_3/while/lstm_cell_10/Tanh_1ћ
 lstm_3/while/lstm_cell_10/mul_10Mul'lstm_3/while/lstm_cell_10/Sigmoid_2:y:0$lstm_3/while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 lstm_3/while/lstm_cell_10/mul_10Д
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder$lstm_3/while/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/yЕ
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/yЩ
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1Й
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity£
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1Л
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2Є
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3ђ
lstm_3/while/Identity_4Identity$lstm_3/while/lstm_cell_10/mul_10:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/while/Identity_4Ђ
lstm_3/while/Identity_5Identity#lstm_3/while/lstm_cell_10/add_3:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"h
1lstm_3_while_lstm_cell_10_readvariableop_resource3lstm_3_while_lstm_cell_10_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_10_split_1_readvariableop_resource;lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_10_split_readvariableop_resource9lstm_3_while_lstm_cell_10_split_readvariableop_resource_0"ƒ
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2T
(lstm_3/while/lstm_cell_10/ReadVariableOp(lstm_3/while/lstm_cell_10/ReadVariableOp2X
*lstm_3/while/lstm_cell_10/ReadVariableOp_1*lstm_3/while/lstm_cell_10/ReadVariableOp_12X
*lstm_3/while/lstm_cell_10/ReadVariableOp_2*lstm_3/while/lstm_cell_10/ReadVariableOp_22X
*lstm_3/while/lstm_cell_10/ReadVariableOp_3*lstm_3/while/lstm_cell_10/ReadVariableOp_32`
.lstm_3/while/lstm_cell_10/split/ReadVariableOp.lstm_3/while/lstm_cell_10/split/ReadVariableOp2d
0lstm_3/while/lstm_cell_10/split_1/ReadVariableOp0lstm_3/while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
№
~
)__inference_dense_11_layer_call_fn_177539

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1750752
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ЙL
ж
__inference__traced_save_177994
file_prefix-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop#
savev2_iter_read_readvariableop	%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop9
5savev2_lstm_3_lstm_cell_10_kernel_read_readvariableopC
?savev2_lstm_3_lstm_cell_10_recurrent_kernel_read_readvariableop7
3savev2_lstm_3_lstm_cell_10_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop/
+savev2_dense_9_kernel_m_read_readvariableop-
)savev2_dense_9_bias_m_read_readvariableop0
,savev2_dense_10_kernel_m_read_readvariableop.
*savev2_dense_10_bias_m_read_readvariableop0
,savev2_dense_11_kernel_m_read_readvariableop.
*savev2_dense_11_bias_m_read_readvariableop;
7savev2_lstm_3_lstm_cell_10_kernel_m_read_readvariableopE
Asavev2_lstm_3_lstm_cell_10_recurrent_kernel_m_read_readvariableop9
5savev2_lstm_3_lstm_cell_10_bias_m_read_readvariableop/
+savev2_dense_9_kernel_v_read_readvariableop-
)savev2_dense_9_bias_v_read_readvariableop0
,savev2_dense_10_kernel_v_read_readvariableop.
*savev2_dense_10_bias_v_read_readvariableop0
,savev2_dense_11_kernel_v_read_readvariableop.
*savev2_dense_11_bias_v_read_readvariableop;
7savev2_lstm_3_lstm_cell_10_kernel_v_read_readvariableopE
Asavev2_lstm_3_lstm_cell_10_recurrent_kernel_v_read_readvariableop9
5savev2_lstm_3_lstm_cell_10_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЬ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ѓ
value§B°%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names“
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices»
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableopsavev2_iter_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop5savev2_lstm_3_lstm_cell_10_kernel_read_readvariableop?savev2_lstm_3_lstm_cell_10_recurrent_kernel_read_readvariableop3savev2_lstm_3_lstm_cell_10_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop+savev2_dense_9_kernel_m_read_readvariableop)savev2_dense_9_bias_m_read_readvariableop,savev2_dense_10_kernel_m_read_readvariableop*savev2_dense_10_bias_m_read_readvariableop,savev2_dense_11_kernel_m_read_readvariableop*savev2_dense_11_bias_m_read_readvariableop7savev2_lstm_3_lstm_cell_10_kernel_m_read_readvariableopAsavev2_lstm_3_lstm_cell_10_recurrent_kernel_m_read_readvariableop5savev2_lstm_3_lstm_cell_10_bias_m_read_readvariableop+savev2_dense_9_kernel_v_read_readvariableop)savev2_dense_9_bias_v_read_readvariableop,savev2_dense_10_kernel_v_read_readvariableop*savev2_dense_10_bias_v_read_readvariableop,savev2_dense_11_kernel_v_read_readvariableop*savev2_dense_11_bias_v_read_readvariableop7savev2_lstm_3_lstm_cell_10_kernel_v_read_readvariableopAsavev2_lstm_3_lstm_cell_10_recurrent_kernel_v_read_readvariableop5savev2_lstm_3_lstm_cell_10_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Т
_input_shapesА
э: :  : :  : : :: : : : : :	$А:	 А:А: : : : :  : :  : : ::	$А:	 А:А:  : :  : : ::	$А:	 А:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	$А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	$А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::%"!

_output_shapes
:	$А:%#!

_output_shapes
:	 А:!$

_output_shapes	
:А:%

_output_shapes
: 
Ђ
√
while_cond_174801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174801___redundant_placeholder04
0while_while_cond_174801___redundant_placeholder14
0while_while_cond_174801___redundant_placeholder24
0while_while_cond_174801___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ќg
ю
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_177807

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐsplit/ReadVariableOpҐsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstМ
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЛ
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02
split/ReadVariableOpІ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dimН
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
split_1/ReadVariableOpЯ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2И
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_10џ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul’
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul‘
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityЎ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1„

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:€€€€€€€€€$:€€€€€€€€€ :€€€€€€€€€ :::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Б
Л
'__inference_lstm_3_layer_call_fn_177452

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1749502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€$:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Ђ
√
while_cond_176266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176266___redundant_placeholder04
0while_while_cond_176266___redundant_placeholder14
0while_while_cond_176266___redundant_placeholder24
0while_while_cond_176266___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ђ
√
while_cond_174194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174194___redundant_placeholder04
0while_while_cond_174194___redundant_placeholder14
0while_while_cond_174194___redundant_placeholder24
0while_while_cond_174194___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Б
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_175019

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ГУ
“
while_body_177282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_10_split_readvariableop_resource_08
4while_lstm_cell_10_split_1_readvariableop_resource_00
,while_lstm_cell_10_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_10_split_readvariableop_resource6
2while_lstm_cell_10_split_1_readvariableop_resource.
*while_lstm_cell_10_readvariableop_resourceИҐ!while/lstm_cell_10/ReadVariableOpҐ#while/lstm_cell_10/ReadVariableOp_1Ґ#while/lstm_cell_10/ReadVariableOp_2Ґ#while/lstm_cell_10/ReadVariableOp_3Ґ'while/lstm_cell_10/split/ReadVariableOpҐ)while/lstm_cell_10/split_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
"while/lstm_cell_10/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/ShapeН
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"while/lstm_cell_10/ones_like/Const–
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/ones_likeП
$while/lstm_cell_10/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_10/ones_like_1/ShapeС
$while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$while/lstm_cell_10/ones_like_1/ConstЎ
while/lstm_cell_10/ones_like_1Fill-while/lstm_cell_10/ones_like_1/Shape:output:0-while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/lstm_cell_10/ones_like_1¬
while/lstm_cell_10/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul∆
while/lstm_cell_10/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_1∆
while/lstm_cell_10/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_2∆
while/lstm_cell_10/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_3v
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/ConstК
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim∆
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpу
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
while/lstm_cell_10/split±
while/lstm_cell_10/MatMulMatMulwhile/lstm_cell_10/mul:z:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMulЈ
while/lstm_cell_10/MatMul_1MatMulwhile/lstm_cell_10/mul_1:z:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_1Ј
while/lstm_cell_10/MatMul_2MatMulwhile/lstm_cell_10/mul_2:z:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_2Ј
while/lstm_cell_10/MatMul_3MatMulwhile/lstm_cell_10/mul_3:z:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_3z
while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const_1О
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dim»
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpл
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1њ
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd≈
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_1≈
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_2≈
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_3Ђ
while/lstm_cell_10/mul_4Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_4Ђ
while/lstm_cell_10/mul_5Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_5Ђ
while/lstm_cell_10/mul_6Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_6Ђ
while/lstm_cell_10/mul_7Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_7і
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02#
!while/lstm_cell_10/ReadVariableOp°
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack•
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1•
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2о
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_sliceњ
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul_4:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_4Ј
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/addС
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/SigmoidЄ
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_1•
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ъ
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Ѕ
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_5:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_5љ
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_1Ч
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_1§
while/lstm_cell_10/mul_8Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_8Є
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_2•
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ъ
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Ѕ
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_6:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_6љ
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_2К
while/lstm_cell_10/TanhTanhwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh™
while/lstm_cell_10/mul_9Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_9Ђ
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_8:z:0while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_3Є
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_3•
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ъ
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Ѕ
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_7:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_7љ
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_4Ч
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_2О
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh_1∞
while/lstm_cell_10/mul_10Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_10б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3н
while/Identity_4Identitywhile/lstm_cell_10/mul_10:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4м
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ГУ
“
while_body_176598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_10_split_readvariableop_resource_08
4while_lstm_cell_10_split_1_readvariableop_resource_00
,while_lstm_cell_10_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_10_split_readvariableop_resource6
2while_lstm_cell_10_split_1_readvariableop_resource.
*while_lstm_cell_10_readvariableop_resourceИҐ!while/lstm_cell_10/ReadVariableOpҐ#while/lstm_cell_10/ReadVariableOp_1Ґ#while/lstm_cell_10/ReadVariableOp_2Ґ#while/lstm_cell_10/ReadVariableOp_3Ґ'while/lstm_cell_10/split/ReadVariableOpҐ)while/lstm_cell_10/split_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
"while/lstm_cell_10/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/ShapeН
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"while/lstm_cell_10/ones_like/Const–
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/ones_likeП
$while/lstm_cell_10/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_10/ones_like_1/ShapeС
$while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$while/lstm_cell_10/ones_like_1/ConstЎ
while/lstm_cell_10/ones_like_1Fill-while/lstm_cell_10/ones_like_1/Shape:output:0-while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/lstm_cell_10/ones_like_1¬
while/lstm_cell_10/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul∆
while/lstm_cell_10/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_1∆
while/lstm_cell_10/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_2∆
while/lstm_cell_10/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_3v
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/ConstК
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim∆
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpу
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
while/lstm_cell_10/split±
while/lstm_cell_10/MatMulMatMulwhile/lstm_cell_10/mul:z:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMulЈ
while/lstm_cell_10/MatMul_1MatMulwhile/lstm_cell_10/mul_1:z:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_1Ј
while/lstm_cell_10/MatMul_2MatMulwhile/lstm_cell_10/mul_2:z:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_2Ј
while/lstm_cell_10/MatMul_3MatMulwhile/lstm_cell_10/mul_3:z:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_3z
while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const_1О
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dim»
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpл
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1њ
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd≈
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_1≈
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_2≈
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_3Ђ
while/lstm_cell_10/mul_4Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_4Ђ
while/lstm_cell_10/mul_5Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_5Ђ
while/lstm_cell_10/mul_6Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_6Ђ
while/lstm_cell_10/mul_7Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_7і
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02#
!while/lstm_cell_10/ReadVariableOp°
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack•
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1•
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2о
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_sliceњ
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul_4:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_4Ј
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/addС
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/SigmoidЄ
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_1•
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ъ
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Ѕ
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_5:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_5љ
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_1Ч
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_1§
while/lstm_cell_10/mul_8Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_8Є
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_2•
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ъ
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Ѕ
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_6:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_6љ
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_2К
while/lstm_cell_10/TanhTanhwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh™
while/lstm_cell_10/mul_9Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_9Ђ
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_8:z:0while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_3Є
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_3•
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ъ
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Ѕ
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_7:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_7љ
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_4Ч
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_2О
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh_1∞
while/lstm_cell_10/mul_10Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_10б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3н
while/Identity_4Identitywhile/lstm_cell_10/mul_10:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4м
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Е
”
%sequential_3_lstm_3_while_cond_173278D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3F
Bsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_173278___redundant_placeholder0\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_173278___redundant_placeholder1\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_173278___redundant_placeholder2\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_173278___redundant_placeholder3&
"sequential_3_lstm_3_while_identity
‘
sequential_3/lstm_3/while/LessLess%sequential_3_lstm_3_while_placeholderBsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_3/while/LessЩ
"sequential_3/lstm_3/while/IdentityIdentity"sequential_3/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_3/while/Identity"Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
 Д
№	
!__inference__wrapped_model_173437
lstm_3_inputB
>sequential_3_lstm_3_lstm_cell_10_split_readvariableop_resourceD
@sequential_3_lstm_3_lstm_cell_10_split_1_readvariableop_resource<
8sequential_3_lstm_3_lstm_cell_10_readvariableop_resource7
3sequential_3_dense_9_matmul_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource8
4sequential_3_dense_10_matmul_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource8
4sequential_3_dense_11_matmul_readvariableop_resource9
5sequential_3_dense_11_biasadd_readvariableop_resource
identityИҐ,sequential_3/dense_10/BiasAdd/ReadVariableOpҐ+sequential_3/dense_10/MatMul/ReadVariableOpҐ,sequential_3/dense_11/BiasAdd/ReadVariableOpҐ+sequential_3/dense_11/MatMul/ReadVariableOpҐ+sequential_3/dense_9/BiasAdd/ReadVariableOpҐ*sequential_3/dense_9/MatMul/ReadVariableOpҐ/sequential_3/lstm_3/lstm_cell_10/ReadVariableOpҐ1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_1Ґ1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_2Ґ1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_3Ґ5sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOpҐ7sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOpҐsequential_3/lstm_3/whiler
sequential_3/lstm_3/ShapeShapelstm_3_input*
T0*
_output_shapes
:2
sequential_3/lstm_3/ShapeЬ
'sequential_3/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_3/strided_slice/stack†
)sequential_3/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_3/strided_slice/stack_1†
)sequential_3/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_3/strided_slice/stack_2Џ
!sequential_3/lstm_3/strided_sliceStridedSlice"sequential_3/lstm_3/Shape:output:00sequential_3/lstm_3/strided_slice/stack:output:02sequential_3/lstm_3/strided_slice/stack_1:output:02sequential_3/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_3/strided_sliceД
sequential_3/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_3/lstm_3/zeros/mul/yЉ
sequential_3/lstm_3/zeros/mulMul*sequential_3/lstm_3/strided_slice:output:0(sequential_3/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_3/zeros/mulЗ
 sequential_3/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2"
 sequential_3/lstm_3/zeros/Less/yЈ
sequential_3/lstm_3/zeros/LessLess!sequential_3/lstm_3/zeros/mul:z:0)sequential_3/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_3/zeros/LessК
"sequential_3/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_3/lstm_3/zeros/packed/1”
 sequential_3/lstm_3/zeros/packedPack*sequential_3/lstm_3/strided_slice:output:0+sequential_3/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_3/zeros/packedЗ
sequential_3/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_3/zeros/Const≈
sequential_3/lstm_3/zerosFill)sequential_3/lstm_3/zeros/packed:output:0(sequential_3/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/lstm_3/zerosИ
!sequential_3/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_3/lstm_3/zeros_1/mul/y¬
sequential_3/lstm_3/zeros_1/mulMul*sequential_3/lstm_3/strided_slice:output:0*sequential_3/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_3/zeros_1/mulЛ
"sequential_3/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2$
"sequential_3/lstm_3/zeros_1/Less/yњ
 sequential_3/lstm_3/zeros_1/LessLess#sequential_3/lstm_3/zeros_1/mul:z:0+sequential_3/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_3/zeros_1/LessО
$sequential_3/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_3/lstm_3/zeros_1/packed/1ў
"sequential_3/lstm_3/zeros_1/packedPack*sequential_3/lstm_3/strided_slice:output:0-sequential_3/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_3/zeros_1/packedЛ
!sequential_3/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_3/zeros_1/ConstЌ
sequential_3/lstm_3/zeros_1Fill+sequential_3/lstm_3/zeros_1/packed:output:0*sequential_3/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/lstm_3/zeros_1Э
"sequential_3/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_3/transpose/permЉ
sequential_3/lstm_3/transpose	Transposelstm_3_input+sequential_3/lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
sequential_3/lstm_3/transposeЛ
sequential_3/lstm_3/Shape_1Shape!sequential_3/lstm_3/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_3/Shape_1†
)sequential_3/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_3/strided_slice_1/stack§
+sequential_3/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_1/stack_1§
+sequential_3/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_1/stack_2ж
#sequential_3/lstm_3/strided_slice_1StridedSlice$sequential_3/lstm_3/Shape_1:output:02sequential_3/lstm_3/strided_slice_1/stack:output:04sequential_3/lstm_3/strided_slice_1/stack_1:output:04sequential_3/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_1≠
/sequential_3/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€21
/sequential_3/lstm_3/TensorArrayV2/element_shapeВ
!sequential_3/lstm_3/TensorArrayV2TensorListReserve8sequential_3/lstm_3/TensorArrayV2/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_3/TensorArrayV2з
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   2K
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape»
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_3/transpose:y:0Rsequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor†
)sequential_3/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_3/strided_slice_2/stack§
+sequential_3/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_2/stack_1§
+sequential_3/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_2/stack_2ф
#sequential_3/lstm_3/strided_slice_2StridedSlice!sequential_3/lstm_3/transpose:y:02sequential_3/lstm_3/strided_slice_2/stack:output:04sequential_3/lstm_3/strided_slice_2/stack_1:output:04sequential_3/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_2ј
0sequential_3/lstm_3/lstm_cell_10/ones_like/ShapeShape,sequential_3/lstm_3/strided_slice_2:output:0*
T0*
_output_shapes
:22
0sequential_3/lstm_3/lstm_cell_10/ones_like/Shape©
0sequential_3/lstm_3/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0sequential_3/lstm_3/lstm_cell_10/ones_like/ConstИ
*sequential_3/lstm_3/lstm_cell_10/ones_likeFill9sequential_3/lstm_3/lstm_cell_10/ones_like/Shape:output:09sequential_3/lstm_3/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2,
*sequential_3/lstm_3/lstm_cell_10/ones_likeЇ
2sequential_3/lstm_3/lstm_cell_10/ones_like_1/ShapeShape"sequential_3/lstm_3/zeros:output:0*
T0*
_output_shapes
:24
2sequential_3/lstm_3/lstm_cell_10/ones_like_1/Shape≠
2sequential_3/lstm_3/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?24
2sequential_3/lstm_3/lstm_cell_10/ones_like_1/ConstР
,sequential_3/lstm_3/lstm_cell_10/ones_like_1Fill;sequential_3/lstm_3/lstm_cell_10/ones_like_1/Shape:output:0;sequential_3/lstm_3/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/lstm_cell_10/ones_like_1и
$sequential_3/lstm_3/lstm_cell_10/mulMul,sequential_3/lstm_3/strided_slice_2:output:03sequential_3/lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2&
$sequential_3/lstm_3/lstm_cell_10/mulм
&sequential_3/lstm_3/lstm_cell_10/mul_1Mul,sequential_3/lstm_3/strided_slice_2:output:03sequential_3/lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2(
&sequential_3/lstm_3/lstm_cell_10/mul_1м
&sequential_3/lstm_3/lstm_cell_10/mul_2Mul,sequential_3/lstm_3/strided_slice_2:output:03sequential_3/lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2(
&sequential_3/lstm_3/lstm_cell_10/mul_2м
&sequential_3/lstm_3/lstm_cell_10/mul_3Mul,sequential_3/lstm_3/strided_slice_2:output:03sequential_3/lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2(
&sequential_3/lstm_3/lstm_cell_10/mul_3Т
&sequential_3/lstm_3/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/lstm_3/lstm_cell_10/Const¶
0sequential_3/lstm_3/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_3/lstm_3/lstm_cell_10/split/split_dimо
5sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOpReadVariableOp>sequential_3_lstm_3_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype027
5sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOpЂ
&sequential_3/lstm_3/lstm_cell_10/splitSplit9sequential_3/lstm_3/lstm_cell_10/split/split_dim:output:0=sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2(
&sequential_3/lstm_3/lstm_cell_10/splitй
'sequential_3/lstm_3/lstm_cell_10/MatMulMatMul(sequential_3/lstm_3/lstm_cell_10/mul:z:0/sequential_3/lstm_3/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'sequential_3/lstm_3/lstm_cell_10/MatMulп
)sequential_3/lstm_3/lstm_cell_10/MatMul_1MatMul*sequential_3/lstm_3/lstm_cell_10/mul_1:z:0/sequential_3/lstm_3/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_1п
)sequential_3/lstm_3/lstm_cell_10/MatMul_2MatMul*sequential_3/lstm_3/lstm_cell_10/mul_2:z:0/sequential_3/lstm_3/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_2п
)sequential_3/lstm_3/lstm_cell_10/MatMul_3MatMul*sequential_3/lstm_3/lstm_cell_10/mul_3:z:0/sequential_3/lstm_3/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_3Ц
(sequential_3/lstm_3/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_3/lstm_3/lstm_cell_10/Const_1™
2sequential_3/lstm_3/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_3/lstm_3/lstm_cell_10/split_1/split_dimр
7sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOpReadVariableOp@sequential_3_lstm_3_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOp£
(sequential_3/lstm_3/lstm_cell_10/split_1Split;sequential_3/lstm_3/lstm_cell_10/split_1/split_dim:output:0?sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2*
(sequential_3/lstm_3/lstm_cell_10/split_1ч
(sequential_3/lstm_3/lstm_cell_10/BiasAddBiasAdd1sequential_3/lstm_3/lstm_cell_10/MatMul:product:01sequential_3/lstm_3/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(sequential_3/lstm_3/lstm_cell_10/BiasAddэ
*sequential_3/lstm_3/lstm_cell_10/BiasAdd_1BiasAdd3sequential_3/lstm_3/lstm_cell_10/MatMul_1:product:01sequential_3/lstm_3/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential_3/lstm_3/lstm_cell_10/BiasAdd_1э
*sequential_3/lstm_3/lstm_cell_10/BiasAdd_2BiasAdd3sequential_3/lstm_3/lstm_cell_10/MatMul_2:product:01sequential_3/lstm_3/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential_3/lstm_3/lstm_cell_10/BiasAdd_2э
*sequential_3/lstm_3/lstm_cell_10/BiasAdd_3BiasAdd3sequential_3/lstm_3/lstm_cell_10/MatMul_3:product:01sequential_3/lstm_3/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential_3/lstm_3/lstm_cell_10/BiasAdd_3д
&sequential_3/lstm_3/lstm_cell_10/mul_4Mul"sequential_3/lstm_3/zeros:output:05sequential_3/lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/mul_4д
&sequential_3/lstm_3/lstm_cell_10/mul_5Mul"sequential_3/lstm_3/zeros:output:05sequential_3/lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/mul_5д
&sequential_3/lstm_3/lstm_cell_10/mul_6Mul"sequential_3/lstm_3/zeros:output:05sequential_3/lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/mul_6д
&sequential_3/lstm_3/lstm_cell_10/mul_7Mul"sequential_3/lstm_3/zeros:output:05sequential_3/lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/mul_7№
/sequential_3/lstm_3/lstm_cell_10/ReadVariableOpReadVariableOp8sequential_3_lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype021
/sequential_3/lstm_3/lstm_cell_10/ReadVariableOpљ
4sequential_3/lstm_3/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4sequential_3/lstm_3/lstm_cell_10/strided_slice/stackЅ
6sequential_3/lstm_3/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_3/lstm_3/lstm_cell_10/strided_slice/stack_1Ѕ
6sequential_3/lstm_3/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_3/lstm_3/lstm_cell_10/strided_slice/stack_2¬
.sequential_3/lstm_3/lstm_cell_10/strided_sliceStridedSlice7sequential_3/lstm_3/lstm_cell_10/ReadVariableOp:value:0=sequential_3/lstm_3/lstm_cell_10/strided_slice/stack:output:0?sequential_3/lstm_3/lstm_cell_10/strided_slice/stack_1:output:0?sequential_3/lstm_3/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask20
.sequential_3/lstm_3/lstm_cell_10/strided_sliceч
)sequential_3/lstm_3/lstm_cell_10/MatMul_4MatMul*sequential_3/lstm_3/lstm_cell_10/mul_4:z:07sequential_3/lstm_3/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_4п
$sequential_3/lstm_3/lstm_cell_10/addAddV21sequential_3/lstm_3/lstm_cell_10/BiasAdd:output:03sequential_3/lstm_3/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2&
$sequential_3/lstm_3/lstm_cell_10/addї
(sequential_3/lstm_3/lstm_cell_10/SigmoidSigmoid(sequential_3/lstm_3/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(sequential_3/lstm_3/lstm_cell_10/Sigmoidа
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_1ReadVariableOp8sequential_3_lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype023
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_1Ѕ
6sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack≈
8sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack_1≈
8sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack_2ќ
0sequential_3/lstm_3/lstm_cell_10/strided_slice_1StridedSlice9sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_1:value:0?sequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack:output:0Asequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack_1:output:0Asequential_3/lstm_3/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_3/lstm_3/lstm_cell_10/strided_slice_1щ
)sequential_3/lstm_3/lstm_cell_10/MatMul_5MatMul*sequential_3/lstm_3/lstm_cell_10/mul_5:z:09sequential_3/lstm_3/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_5х
&sequential_3/lstm_3/lstm_cell_10/add_1AddV23sequential_3/lstm_3/lstm_cell_10/BiasAdd_1:output:03sequential_3/lstm_3/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/add_1Ѕ
*sequential_3/lstm_3/lstm_cell_10/Sigmoid_1Sigmoid*sequential_3/lstm_3/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential_3/lstm_3/lstm_cell_10/Sigmoid_1я
&sequential_3/lstm_3/lstm_cell_10/mul_8Mul.sequential_3/lstm_3/lstm_cell_10/Sigmoid_1:y:0$sequential_3/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/mul_8а
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_2ReadVariableOp8sequential_3_lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype023
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_2Ѕ
6sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   28
6sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack≈
8sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack_1≈
8sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack_2ќ
0sequential_3/lstm_3/lstm_cell_10/strided_slice_2StridedSlice9sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_2:value:0?sequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack:output:0Asequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack_1:output:0Asequential_3/lstm_3/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_3/lstm_3/lstm_cell_10/strided_slice_2щ
)sequential_3/lstm_3/lstm_cell_10/MatMul_6MatMul*sequential_3/lstm_3/lstm_cell_10/mul_6:z:09sequential_3/lstm_3/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_6х
&sequential_3/lstm_3/lstm_cell_10/add_2AddV23sequential_3/lstm_3/lstm_cell_10/BiasAdd_2:output:03sequential_3/lstm_3/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/add_2і
%sequential_3/lstm_3/lstm_cell_10/TanhTanh*sequential_3/lstm_3/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_3/lstm_3/lstm_cell_10/Tanhв
&sequential_3/lstm_3/lstm_cell_10/mul_9Mul,sequential_3/lstm_3/lstm_cell_10/Sigmoid:y:0)sequential_3/lstm_3/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/mul_9г
&sequential_3/lstm_3/lstm_cell_10/add_3AddV2*sequential_3/lstm_3/lstm_cell_10/mul_8:z:0*sequential_3/lstm_3/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/add_3а
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_3ReadVariableOp8sequential_3_lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype023
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_3Ѕ
6sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   28
6sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack≈
8sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack_1≈
8sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack_2ќ
0sequential_3/lstm_3/lstm_cell_10/strided_slice_3StridedSlice9sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_3:value:0?sequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack:output:0Asequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack_1:output:0Asequential_3/lstm_3/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_3/lstm_3/lstm_cell_10/strided_slice_3щ
)sequential_3/lstm_3/lstm_cell_10/MatMul_7MatMul*sequential_3/lstm_3/lstm_cell_10/mul_7:z:09sequential_3/lstm_3/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)sequential_3/lstm_3/lstm_cell_10/MatMul_7х
&sequential_3/lstm_3/lstm_cell_10/add_4AddV23sequential_3/lstm_3/lstm_cell_10/BiasAdd_3:output:03sequential_3/lstm_3/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential_3/lstm_3/lstm_cell_10/add_4Ѕ
*sequential_3/lstm_3/lstm_cell_10/Sigmoid_2Sigmoid*sequential_3/lstm_3/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential_3/lstm_3/lstm_cell_10/Sigmoid_2Є
'sequential_3/lstm_3/lstm_cell_10/Tanh_1Tanh*sequential_3/lstm_3/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'sequential_3/lstm_3/lstm_cell_10/Tanh_1и
'sequential_3/lstm_3/lstm_cell_10/mul_10Mul.sequential_3/lstm_3/lstm_cell_10/Sigmoid_2:y:0+sequential_3/lstm_3/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'sequential_3/lstm_3/lstm_cell_10/mul_10Ј
1sequential_3/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    23
1sequential_3/lstm_3/TensorArrayV2_1/element_shapeИ
#sequential_3/lstm_3/TensorArrayV2_1TensorListReserve:sequential_3/lstm_3/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_3/TensorArrayV2_1v
sequential_3/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_3/timeІ
,sequential_3/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2.
,sequential_3/lstm_3/while/maximum_iterationsТ
&sequential_3/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_3/while/loop_counterР
sequential_3/lstm_3/whileWhile/sequential_3/lstm_3/while/loop_counter:output:05sequential_3/lstm_3/while/maximum_iterations:output:0!sequential_3/lstm_3/time:output:0,sequential_3/lstm_3/TensorArrayV2_1:handle:0"sequential_3/lstm_3/zeros:output:0$sequential_3/lstm_3/zeros_1:output:0,sequential_3/lstm_3/strided_slice_1:output:0Ksequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_3_lstm_3_lstm_cell_10_split_readvariableop_resource@sequential_3_lstm_3_lstm_cell_10_split_1_readvariableop_resource8sequential_3_lstm_3_lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_3_lstm_3_while_body_173279*1
cond)R'
%sequential_3_lstm_3_while_cond_173278*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
sequential_3/lstm_3/whileЁ
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2F
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeЄ
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_3/while:output:3Msequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype028
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack©
)sequential_3/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2+
)sequential_3/lstm_3/strided_slice_3/stack§
+sequential_3/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_3/strided_slice_3/stack_1§
+sequential_3/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_3/stack_2Т
#sequential_3/lstm_3/strided_slice_3StridedSlice?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_3/strided_slice_3/stack:output:04sequential_3/lstm_3/strided_slice_3/stack_1:output:04sequential_3/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_3°
$sequential_3/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_3/transpose_1/permх
sequential_3/lstm_3/transpose_1	Transpose?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2!
sequential_3/lstm_3/transpose_1О
sequential_3/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_3/runtimeћ
*sequential_3/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02,
*sequential_3/dense_9/MatMul/ReadVariableOpЎ
sequential_3/dense_9/MatMulMatMul,sequential_3/lstm_3/strided_slice_3:output:02sequential_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/dense_9/MatMulЋ
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOp’
sequential_3/dense_9/BiasAddBiasAdd%sequential_3/dense_9/MatMul:product:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/dense_9/BiasAdd†
sequential_3/dense_9/SigmoidSigmoid%sequential_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/dense_9/SigmoidҐ
sequential_3/dropout_3/IdentityIdentity sequential_3/dense_9/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
sequential_3/dropout_3/Identityѕ
+sequential_3/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential_3/dense_10/MatMul/ReadVariableOp„
sequential_3/dense_10/MatMulMatMul(sequential_3/dropout_3/Identity:output:03sequential_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/dense_10/MatMulќ
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpў
sequential_3/dense_10/BiasAddBiasAdd&sequential_3/dense_10/MatMul:product:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/dense_10/BiasAdd£
sequential_3/dense_10/SigmoidSigmoid&sequential_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential_3/dense_10/Sigmoidѕ
+sequential_3/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_3/dense_11/MatMul/ReadVariableOp–
sequential_3/dense_11/MatMulMatMul!sequential_3/dense_10/Sigmoid:y:03sequential_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_11/MatMulќ
,sequential_3/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/dense_11/BiasAdd/ReadVariableOpў
sequential_3/dense_11/BiasAddBiasAdd&sequential_3/dense_11/MatMul:product:04sequential_3/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_11/BiasAdd£
sequential_3/dense_11/SoftmaxSoftmax&sequential_3/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_11/Softmaxм
IdentityIdentity'sequential_3/dense_11/Softmax:softmax:0-^sequential_3/dense_10/BiasAdd/ReadVariableOp,^sequential_3/dense_10/MatMul/ReadVariableOp-^sequential_3/dense_11/BiasAdd/ReadVariableOp,^sequential_3/dense_11/MatMul/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp+^sequential_3/dense_9/MatMul/ReadVariableOp0^sequential_3/lstm_3/lstm_cell_10/ReadVariableOp2^sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_12^sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_22^sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_36^sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOp8^sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOp^sequential_3/lstm_3/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_10/MatMul/ReadVariableOp+sequential_3/dense_10/MatMul/ReadVariableOp2\
,sequential_3/dense_11/BiasAdd/ReadVariableOp,sequential_3/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_11/MatMul/ReadVariableOp+sequential_3/dense_11/MatMul/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2X
*sequential_3/dense_9/MatMul/ReadVariableOp*sequential_3/dense_9/MatMul/ReadVariableOp2b
/sequential_3/lstm_3/lstm_cell_10/ReadVariableOp/sequential_3/lstm_3/lstm_cell_10/ReadVariableOp2f
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_11sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_12f
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_21sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_22f
1sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_31sequential_3/lstm_3/lstm_cell_10/ReadVariableOp_32n
5sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOp5sequential_3/lstm_3/lstm_cell_10/split/ReadVariableOp2r
7sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOp7sequential_3/lstm_3/lstm_cell_10/split_1/ReadVariableOp26
sequential_3/lstm_3/whilesequential_3/lstm_3/while:Y U
+
_output_shapes
:€€€€€€€€€$
&
_user_specified_namelstm_3_input
ёµ
є
B__inference_lstm_3_layer_call_and_return_conditional_losses_177430

inputs.
*lstm_cell_10_split_readvariableop_resource0
,lstm_cell_10_split_1_readvariableop_resource(
$lstm_cell_10_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐlstm_cell_10/ReadVariableOpҐlstm_cell_10/ReadVariableOp_1Ґlstm_cell_10/ReadVariableOp_2Ґlstm_cell_10/ReadVariableOp_3Ґ!lstm_cell_10/split/ReadVariableOpҐ#lstm_cell_10/split_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Д
lstm_cell_10/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/ShapeБ
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
lstm_cell_10/ones_like/ConstЄ
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/ones_like~
lstm_cell_10/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_10/ones_like_1/ShapeЕ
lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
lstm_cell_10/ones_like_1/Constј
lstm_cell_10/ones_like_1Fill'lstm_cell_10/ones_like_1/Shape:output:0'lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/ones_like_1Ш
lstm_cell_10/mulMulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mulЬ
lstm_cell_10/mul_1Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_1Ь
lstm_cell_10/mul_2Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_2Ь
lstm_cell_10/mul_3Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_3j
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim≤
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02#
!lstm_cell_10/split/ReadVariableOpџ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_cell_10/splitЩ
lstm_cell_10/MatMulMatMullstm_cell_10/mul:z:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMulЯ
lstm_cell_10/MatMul_1MatMullstm_cell_10/mul_1:z:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_1Я
lstm_cell_10/MatMul_2MatMullstm_cell_10/mul_2:z:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_2Я
lstm_cell_10/MatMul_3MatMullstm_cell_10/mul_3:z:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_3n
lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const_1В
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dimі
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_10/split_1/ReadVariableOp”
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1І
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd≠
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_1≠
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_2≠
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_3Ф
lstm_cell_10/mul_4Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_4Ф
lstm_cell_10/mul_5Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_5Ф
lstm_cell_10/mul_6Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_6Ф
lstm_cell_10/mul_7Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_7†
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOpХ
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stackЩ
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1Щ
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2 
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_sliceІ
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul_4:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_4Я
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid§
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_1Щ
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stackЭ
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1Э
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2÷
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_5:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_5•
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_1Е
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_1П
lstm_cell_10/mul_8Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_8§
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_2Щ
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stackЭ
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1Э
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2÷
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_6:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_6•
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_2x
lstm_cell_10/TanhTanhlstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/TanhТ
lstm_cell_10/mul_9Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_9У
lstm_cell_10/add_3AddV2lstm_cell_10/mul_8:z:0lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_3§
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_3Щ
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stackЭ
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1Э
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2÷
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_7:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_7•
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_4Е
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Tanh_1Ш
lstm_cell_10/mul_10Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_10П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_177282*
condR
while_cond_177281*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeи
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulв
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЄ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Ђ
√
while_cond_174470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174470___redundant_placeholder04
0while_while_cond_174470___redundant_placeholder14
0while_while_cond_174470___redundant_placeholder24
0while_while_cond_174470___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
я
с
-__inference_sequential_3_layer_call_fn_175268
lstm_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1752472
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€$
&
_user_specified_namelstm_3_input
ГУ
“
while_body_174802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_10_split_readvariableop_resource_08
4while_lstm_cell_10_split_1_readvariableop_resource_00
,while_lstm_cell_10_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_10_split_readvariableop_resource6
2while_lstm_cell_10_split_1_readvariableop_resource.
*while_lstm_cell_10_readvariableop_resourceИҐ!while/lstm_cell_10/ReadVariableOpҐ#while/lstm_cell_10/ReadVariableOp_1Ґ#while/lstm_cell_10/ReadVariableOp_2Ґ#while/lstm_cell_10/ReadVariableOp_3Ґ'while/lstm_cell_10/split/ReadVariableOpҐ)while/lstm_cell_10/split_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
"while/lstm_cell_10/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/ShapeН
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"while/lstm_cell_10/ones_like/Const–
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/ones_likeП
$while/lstm_cell_10/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_10/ones_like_1/ShapeС
$while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$while/lstm_cell_10/ones_like_1/ConstЎ
while/lstm_cell_10/ones_like_1Fill-while/lstm_cell_10/ones_like_1/Shape:output:0-while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/lstm_cell_10/ones_like_1¬
while/lstm_cell_10/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul∆
while/lstm_cell_10/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_1∆
while/lstm_cell_10/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_2∆
while/lstm_cell_10/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_3v
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/ConstК
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim∆
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpу
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
while/lstm_cell_10/split±
while/lstm_cell_10/MatMulMatMulwhile/lstm_cell_10/mul:z:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMulЈ
while/lstm_cell_10/MatMul_1MatMulwhile/lstm_cell_10/mul_1:z:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_1Ј
while/lstm_cell_10/MatMul_2MatMulwhile/lstm_cell_10/mul_2:z:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_2Ј
while/lstm_cell_10/MatMul_3MatMulwhile/lstm_cell_10/mul_3:z:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_3z
while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const_1О
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dim»
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpл
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1њ
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd≈
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_1≈
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_2≈
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_3Ђ
while/lstm_cell_10/mul_4Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_4Ђ
while/lstm_cell_10/mul_5Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_5Ђ
while/lstm_cell_10/mul_6Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_6Ђ
while/lstm_cell_10/mul_7Mulwhile_placeholder_2'while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_7і
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02#
!while/lstm_cell_10/ReadVariableOp°
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack•
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1•
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2о
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_sliceњ
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul_4:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_4Ј
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/addС
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/SigmoidЄ
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_1•
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ъ
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Ѕ
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_5:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_5љ
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_1Ч
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_1§
while/lstm_cell_10/mul_8Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_8Є
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_2•
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ъ
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Ѕ
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_6:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_6љ
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_2К
while/lstm_cell_10/TanhTanhwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh™
while/lstm_cell_10/mul_9Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_9Ђ
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_8:z:0while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_3Є
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_3•
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ъ
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Ѕ
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_7:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_7љ
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_4Ч
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_2О
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh_1∞
while/lstm_cell_10/mul_10Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_10б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3н
while/Identity_4Identitywhile/lstm_cell_10/mul_10:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4м
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Ђ
√
while_cond_177281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177281___redundant_placeholder04
0while_while_cond_177281___redundant_placeholder14
0while_while_cond_177281___redundant_placeholder24
0while_while_cond_177281___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
ёµ
є
B__inference_lstm_3_layer_call_and_return_conditional_losses_174950

inputs.
*lstm_cell_10_split_readvariableop_resource0
,lstm_cell_10_split_1_readvariableop_resource(
$lstm_cell_10_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐlstm_cell_10/ReadVariableOpҐlstm_cell_10/ReadVariableOp_1Ґlstm_cell_10/ReadVariableOp_2Ґlstm_cell_10/ReadVariableOp_3Ґ!lstm_cell_10/split/ReadVariableOpҐ#lstm_cell_10/split_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Д
lstm_cell_10/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/ShapeБ
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
lstm_cell_10/ones_like/ConstЄ
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/ones_like~
lstm_cell_10/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_10/ones_like_1/ShapeЕ
lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
lstm_cell_10/ones_like_1/Constј
lstm_cell_10/ones_like_1Fill'lstm_cell_10/ones_like_1/Shape:output:0'lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/ones_like_1Ш
lstm_cell_10/mulMulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mulЬ
lstm_cell_10/mul_1Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_1Ь
lstm_cell_10/mul_2Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_2Ь
lstm_cell_10/mul_3Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_3j
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim≤
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02#
!lstm_cell_10/split/ReadVariableOpџ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_cell_10/splitЩ
lstm_cell_10/MatMulMatMullstm_cell_10/mul:z:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMulЯ
lstm_cell_10/MatMul_1MatMullstm_cell_10/mul_1:z:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_1Я
lstm_cell_10/MatMul_2MatMullstm_cell_10/mul_2:z:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_2Я
lstm_cell_10/MatMul_3MatMullstm_cell_10/mul_3:z:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_3n
lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const_1В
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dimі
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_10/split_1/ReadVariableOp”
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1І
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd≠
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_1≠
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_2≠
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_3Ф
lstm_cell_10/mul_4Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_4Ф
lstm_cell_10/mul_5Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_5Ф
lstm_cell_10/mul_6Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_6Ф
lstm_cell_10/mul_7Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_7†
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOpХ
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stackЩ
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1Щ
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2 
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_sliceІ
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul_4:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_4Я
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid§
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_1Щ
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stackЭ
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1Э
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2÷
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_5:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_5•
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_1Е
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_1П
lstm_cell_10/mul_8Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_8§
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_2Щ
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stackЭ
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1Э
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2÷
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_6:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_6•
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_2x
lstm_cell_10/TanhTanhlstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/TanhТ
lstm_cell_10/mul_9Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_9У
lstm_cell_10/add_3AddV2lstm_cell_10/mul_8:z:0lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_3§
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_3Щ
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stackЭ
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1Э
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2÷
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_7:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_7•
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_4Е
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Tanh_1Ш
lstm_cell_10/mul_10Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_10П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174802*
condR
while_cond_174801*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeи
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulв
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЄ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Ёў
џ
H__inference_sequential_3_layer_call_and_return_conditional_losses_175737

inputs5
1lstm_3_lstm_cell_10_split_readvariableop_resource7
3lstm_3_lstm_cell_10_split_1_readvariableop_resource/
+lstm_3_lstm_cell_10_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identityИҐdense_10/BiasAdd/ReadVariableOpҐdense_10/MatMul/ReadVariableOpҐdense_11/BiasAdd/ReadVariableOpҐdense_11/MatMul/ReadVariableOpҐdense_9/BiasAdd/ReadVariableOpҐdense_9/MatMul/ReadVariableOpҐ"lstm_3/lstm_cell_10/ReadVariableOpҐ$lstm_3/lstm_cell_10/ReadVariableOp_1Ґ$lstm_3/lstm_cell_10/ReadVariableOp_2Ґ$lstm_3/lstm_cell_10/ReadVariableOp_3Ґ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐ(lstm_3/lstm_cell_10/split/ReadVariableOpҐ*lstm_3/lstm_cell_10/split_1/ReadVariableOpҐlstm_3/whileR
lstm_3/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_3/ShapeВ
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stackЖ
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1Ж
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2М
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/mul/yИ
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_3/zeros/Less/yГ
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/packed/1Я
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/ConstС
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/mul/yО
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_3/zeros_1/Less/yЛ
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/packed/1•
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/ConstЩ
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/zeros_1Г
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/permП
lstm_3/transpose	Transposeinputslstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1Ж
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stackК
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1К
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2Ш
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1У
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2$
"lstm_3/TensorArrayV2/element_shapeќ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Ќ
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensorЖ
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stackК
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1К
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2¶
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
lstm_3/strided_slice_2Щ
#lstm_3/lstm_cell_10/ones_like/ShapeShapelstm_3/strided_slice_2:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/ones_like/ShapeП
#lstm_3/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2%
#lstm_3/lstm_cell_10/ones_like/Const‘
lstm_3/lstm_cell_10/ones_likeFill,lstm_3/lstm_cell_10/ones_like/Shape:output:0,lstm_3/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/ones_likeЛ
!lstm_3/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2#
!lstm_3/lstm_cell_10/dropout/Constѕ
lstm_3/lstm_cell_10/dropout/MulMul&lstm_3/lstm_cell_10/ones_like:output:0*lstm_3/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/lstm_cell_10/dropout/MulЬ
!lstm_3/lstm_cell_10/dropout/ShapeShape&lstm_3/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2#
!lstm_3/lstm_cell_10/dropout/ShapeО
8lstm_3/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform*lstm_3/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2лЗ'2:
8lstm_3/lstm_cell_10/dropout/random_uniform/RandomUniformЭ
*lstm_3/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2,
*lstm_3/lstm_cell_10/dropout/GreaterEqual/yО
(lstm_3/lstm_cell_10/dropout/GreaterEqualGreaterEqualAlstm_3/lstm_cell_10/dropout/random_uniform/RandomUniform:output:03lstm_3/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2*
(lstm_3/lstm_cell_10/dropout/GreaterEqualї
 lstm_3/lstm_cell_10/dropout/CastCast,lstm_3/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2"
 lstm_3/lstm_cell_10/dropout/Cast 
!lstm_3/lstm_cell_10/dropout/Mul_1Mul#lstm_3/lstm_cell_10/dropout/Mul:z:0$lstm_3/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_3/lstm_cell_10/dropout/Mul_1П
#lstm_3/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_1/Const’
!lstm_3/lstm_cell_10/dropout_1/MulMul&lstm_3/lstm_cell_10/ones_like:output:0,lstm_3/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_3/lstm_cell_10/dropout_1/Mul†
#lstm_3/lstm_cell_10/dropout_1/ShapeShape&lstm_3/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_1/ShapeХ
:lstm_3/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2І≠Ђ2<
:lstm_3/lstm_cell_10/dropout_1/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_1/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2,
*lstm_3/lstm_cell_10/dropout_1/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_1/CastCast.lstm_3/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2$
"lstm_3/lstm_cell_10/dropout_1/Cast“
#lstm_3/lstm_cell_10/dropout_1/Mul_1Mul%lstm_3/lstm_cell_10/dropout_1/Mul:z:0&lstm_3/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_3/lstm_cell_10/dropout_1/Mul_1П
#lstm_3/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_2/Const’
!lstm_3/lstm_cell_10/dropout_2/MulMul&lstm_3/lstm_cell_10/ones_like:output:0,lstm_3/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_3/lstm_cell_10/dropout_2/Mul†
#lstm_3/lstm_cell_10/dropout_2/ShapeShape&lstm_3/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_2/ShapeФ
:lstm_3/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2«г(2<
:lstm_3/lstm_cell_10/dropout_2/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_2/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2,
*lstm_3/lstm_cell_10/dropout_2/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_2/CastCast.lstm_3/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2$
"lstm_3/lstm_cell_10/dropout_2/Cast“
#lstm_3/lstm_cell_10/dropout_2/Mul_1Mul%lstm_3/lstm_cell_10/dropout_2/Mul:z:0&lstm_3/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_3/lstm_cell_10/dropout_2/Mul_1П
#lstm_3/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_3/Const’
!lstm_3/lstm_cell_10/dropout_3/MulMul&lstm_3/lstm_cell_10/ones_like:output:0,lstm_3/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_3/lstm_cell_10/dropout_3/Mul†
#lstm_3/lstm_cell_10/dropout_3/ShapeShape&lstm_3/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_3/ShapeХ
:lstm_3/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2у’б2<
:lstm_3/lstm_cell_10/dropout_3/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_3/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2,
*lstm_3/lstm_cell_10/dropout_3/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_3/CastCast.lstm_3/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2$
"lstm_3/lstm_cell_10/dropout_3/Cast“
#lstm_3/lstm_cell_10/dropout_3/Mul_1Mul%lstm_3/lstm_cell_10/dropout_3/Mul:z:0&lstm_3/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_3/lstm_cell_10/dropout_3/Mul_1У
%lstm_3/lstm_cell_10/ones_like_1/ShapeShapelstm_3/zeros:output:0*
T0*
_output_shapes
:2'
%lstm_3/lstm_cell_10/ones_like_1/ShapeУ
%lstm_3/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2'
%lstm_3/lstm_cell_10/ones_like_1/Const№
lstm_3/lstm_cell_10/ones_like_1Fill.lstm_3/lstm_cell_10/ones_like_1/Shape:output:0.lstm_3/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/lstm_cell_10/ones_like_1П
#lstm_3/lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_4/Const„
!lstm_3/lstm_cell_10/dropout_4/MulMul(lstm_3/lstm_cell_10/ones_like_1:output:0,lstm_3/lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/lstm_cell_10/dropout_4/MulҐ
#lstm_3/lstm_cell_10/dropout_4/ShapeShape(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_4/ShapeХ
:lstm_3/lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2»Јґ2<
:lstm_3/lstm_cell_10/dropout_4/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_4/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_4/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*lstm_3/lstm_cell_10/dropout_4/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_4/CastCast.lstm_3/lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/lstm_cell_10/dropout_4/Cast“
#lstm_3/lstm_cell_10/dropout_4/Mul_1Mul%lstm_3/lstm_cell_10/dropout_4/Mul:z:0&lstm_3/lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/lstm_cell_10/dropout_4/Mul_1П
#lstm_3/lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_5/Const„
!lstm_3/lstm_cell_10/dropout_5/MulMul(lstm_3/lstm_cell_10/ones_like_1:output:0,lstm_3/lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/lstm_cell_10/dropout_5/MulҐ
#lstm_3/lstm_cell_10/dropout_5/ShapeShape(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_5/ShapeФ
:lstm_3/lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ЌЂN2<
:lstm_3/lstm_cell_10/dropout_5/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_5/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_5/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*lstm_3/lstm_cell_10/dropout_5/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_5/CastCast.lstm_3/lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/lstm_cell_10/dropout_5/Cast“
#lstm_3/lstm_cell_10/dropout_5/Mul_1Mul%lstm_3/lstm_cell_10/dropout_5/Mul:z:0&lstm_3/lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/lstm_cell_10/dropout_5/Mul_1П
#lstm_3/lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_6/Const„
!lstm_3/lstm_cell_10/dropout_6/MulMul(lstm_3/lstm_cell_10/ones_like_1:output:0,lstm_3/lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/lstm_cell_10/dropout_6/MulҐ
#lstm_3/lstm_cell_10/dropout_6/ShapeShape(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_6/ShapeХ
:lstm_3/lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2чЇе2<
:lstm_3/lstm_cell_10/dropout_6/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_6/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_6/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*lstm_3/lstm_cell_10/dropout_6/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_6/CastCast.lstm_3/lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/lstm_cell_10/dropout_6/Cast“
#lstm_3/lstm_cell_10/dropout_6/Mul_1Mul%lstm_3/lstm_cell_10/dropout_6/Mul:z:0&lstm_3/lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/lstm_cell_10/dropout_6/Mul_1П
#lstm_3/lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2%
#lstm_3/lstm_cell_10/dropout_7/Const„
!lstm_3/lstm_cell_10/dropout_7/MulMul(lstm_3/lstm_cell_10/ones_like_1:output:0,lstm_3/lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/lstm_cell_10/dropout_7/MulҐ
#lstm_3/lstm_cell_10/dropout_7/ShapeShape(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/dropout_7/ShapeХ
:lstm_3/lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform,lstm_3/lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2РРњ2<
:lstm_3/lstm_cell_10/dropout_7/random_uniform/RandomUniform°
,lstm_3/lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2.
,lstm_3/lstm_cell_10/dropout_7/GreaterEqual/yЦ
*lstm_3/lstm_cell_10/dropout_7/GreaterEqualGreaterEqualClstm_3/lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:05lstm_3/lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*lstm_3/lstm_cell_10/dropout_7/GreaterEqualЅ
"lstm_3/lstm_cell_10/dropout_7/CastCast.lstm_3/lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/lstm_cell_10/dropout_7/Cast“
#lstm_3/lstm_cell_10/dropout_7/Mul_1Mul%lstm_3/lstm_cell_10/dropout_7/Mul:z:0&lstm_3/lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/lstm_cell_10/dropout_7/Mul_1≥
lstm_3/lstm_cell_10/mulMullstm_3/strided_slice_2:output:0%lstm_3/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mulє
lstm_3/lstm_cell_10/mul_1Mullstm_3/strided_slice_2:output:0'lstm_3/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mul_1є
lstm_3/lstm_cell_10/mul_2Mullstm_3/strided_slice_2:output:0'lstm_3/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mul_2є
lstm_3/lstm_cell_10/mul_3Mullstm_3/strided_slice_2:output:0'lstm_3/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mul_3x
lstm_3/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_10/ConstМ
#lstm_3/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_3/lstm_cell_10/split/split_dim«
(lstm_3/lstm_cell_10/split/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02*
(lstm_3/lstm_cell_10/split/ReadVariableOpч
lstm_3/lstm_cell_10/splitSplit,lstm_3/lstm_cell_10/split/split_dim:output:00lstm_3/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_3/lstm_cell_10/splitµ
lstm_3/lstm_cell_10/MatMulMatMullstm_3/lstm_cell_10/mul:z:0"lstm_3/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMulї
lstm_3/lstm_cell_10/MatMul_1MatMullstm_3/lstm_cell_10/mul_1:z:0"lstm_3/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_1ї
lstm_3/lstm_cell_10/MatMul_2MatMullstm_3/lstm_cell_10/mul_2:z:0"lstm_3/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_2ї
lstm_3/lstm_cell_10/MatMul_3MatMullstm_3/lstm_cell_10/mul_3:z:0"lstm_3/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_3|
lstm_3/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_10/Const_1Р
%lstm_3/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%lstm_3/lstm_cell_10/split_1/split_dim…
*lstm_3/lstm_cell_10/split_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_3/lstm_cell_10/split_1/ReadVariableOpп
lstm_3/lstm_cell_10/split_1Split.lstm_3/lstm_cell_10/split_1/split_dim:output:02lstm_3/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_3/lstm_cell_10/split_1√
lstm_3/lstm_cell_10/BiasAddBiasAdd$lstm_3/lstm_cell_10/MatMul:product:0$lstm_3/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd…
lstm_3/lstm_cell_10/BiasAdd_1BiasAdd&lstm_3/lstm_cell_10/MatMul_1:product:0$lstm_3/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd_1…
lstm_3/lstm_cell_10/BiasAdd_2BiasAdd&lstm_3/lstm_cell_10/MatMul_2:product:0$lstm_3/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd_2…
lstm_3/lstm_cell_10/BiasAdd_3BiasAdd&lstm_3/lstm_cell_10/MatMul_3:product:0$lstm_3/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd_3ѓ
lstm_3/lstm_cell_10/mul_4Mullstm_3/zeros:output:0'lstm_3/lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_4ѓ
lstm_3/lstm_cell_10/mul_5Mullstm_3/zeros:output:0'lstm_3/lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_5ѓ
lstm_3/lstm_cell_10/mul_6Mullstm_3/zeros:output:0'lstm_3/lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_6ѓ
lstm_3/lstm_cell_10/mul_7Mullstm_3/zeros:output:0'lstm_3/lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_7µ
"lstm_3/lstm_cell_10/ReadVariableOpReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lstm_3/lstm_cell_10/ReadVariableOp£
'lstm_3/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'lstm_3/lstm_cell_10/strided_slice/stackІ
)lstm_3/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)lstm_3/lstm_cell_10/strided_slice/stack_1І
)lstm_3/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm_3/lstm_cell_10/strided_slice/stack_2ф
!lstm_3/lstm_cell_10/strided_sliceStridedSlice*lstm_3/lstm_cell_10/ReadVariableOp:value:00lstm_3/lstm_cell_10/strided_slice/stack:output:02lstm_3/lstm_cell_10/strided_slice/stack_1:output:02lstm_3/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!lstm_3/lstm_cell_10/strided_slice√
lstm_3/lstm_cell_10/MatMul_4MatMullstm_3/lstm_cell_10/mul_4:z:0*lstm_3/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_4ї
lstm_3/lstm_cell_10/addAddV2$lstm_3/lstm_cell_10/BiasAdd:output:0&lstm_3/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/addФ
lstm_3/lstm_cell_10/SigmoidSigmoidlstm_3/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Sigmoidє
$lstm_3/lstm_cell_10/ReadVariableOp_1ReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_3/lstm_cell_10/ReadVariableOp_1І
)lstm_3/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)lstm_3/lstm_cell_10/strided_slice_1/stackЂ
+lstm_3/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+lstm_3/lstm_cell_10/strided_slice_1/stack_1Ђ
+lstm_3/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_3/lstm_cell_10/strided_slice_1/stack_2А
#lstm_3/lstm_cell_10/strided_slice_1StridedSlice,lstm_3/lstm_cell_10/ReadVariableOp_1:value:02lstm_3/lstm_cell_10/strided_slice_1/stack:output:04lstm_3/lstm_cell_10/strided_slice_1/stack_1:output:04lstm_3/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#lstm_3/lstm_cell_10/strided_slice_1≈
lstm_3/lstm_cell_10/MatMul_5MatMullstm_3/lstm_cell_10/mul_5:z:0,lstm_3/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_5Ѕ
lstm_3/lstm_cell_10/add_1AddV2&lstm_3/lstm_cell_10/BiasAdd_1:output:0&lstm_3/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_1Ъ
lstm_3/lstm_cell_10/Sigmoid_1Sigmoidlstm_3/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Sigmoid_1Ђ
lstm_3/lstm_cell_10/mul_8Mul!lstm_3/lstm_cell_10/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_8є
$lstm_3/lstm_cell_10/ReadVariableOp_2ReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_3/lstm_cell_10/ReadVariableOp_2І
)lstm_3/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)lstm_3/lstm_cell_10/strided_slice_2/stackЂ
+lstm_3/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+lstm_3/lstm_cell_10/strided_slice_2/stack_1Ђ
+lstm_3/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_3/lstm_cell_10/strided_slice_2/stack_2А
#lstm_3/lstm_cell_10/strided_slice_2StridedSlice,lstm_3/lstm_cell_10/ReadVariableOp_2:value:02lstm_3/lstm_cell_10/strided_slice_2/stack:output:04lstm_3/lstm_cell_10/strided_slice_2/stack_1:output:04lstm_3/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#lstm_3/lstm_cell_10/strided_slice_2≈
lstm_3/lstm_cell_10/MatMul_6MatMullstm_3/lstm_cell_10/mul_6:z:0,lstm_3/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_6Ѕ
lstm_3/lstm_cell_10/add_2AddV2&lstm_3/lstm_cell_10/BiasAdd_2:output:0&lstm_3/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_2Н
lstm_3/lstm_cell_10/TanhTanhlstm_3/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/TanhЃ
lstm_3/lstm_cell_10/mul_9Mullstm_3/lstm_cell_10/Sigmoid:y:0lstm_3/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_9ѓ
lstm_3/lstm_cell_10/add_3AddV2lstm_3/lstm_cell_10/mul_8:z:0lstm_3/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_3є
$lstm_3/lstm_cell_10/ReadVariableOp_3ReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_3/lstm_cell_10/ReadVariableOp_3І
)lstm_3/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)lstm_3/lstm_cell_10/strided_slice_3/stackЂ
+lstm_3/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+lstm_3/lstm_cell_10/strided_slice_3/stack_1Ђ
+lstm_3/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_3/lstm_cell_10/strided_slice_3/stack_2А
#lstm_3/lstm_cell_10/strided_slice_3StridedSlice,lstm_3/lstm_cell_10/ReadVariableOp_3:value:02lstm_3/lstm_cell_10/strided_slice_3/stack:output:04lstm_3/lstm_cell_10/strided_slice_3/stack_1:output:04lstm_3/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#lstm_3/lstm_cell_10/strided_slice_3≈
lstm_3/lstm_cell_10/MatMul_7MatMullstm_3/lstm_cell_10/mul_7:z:0,lstm_3/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_7Ѕ
lstm_3/lstm_cell_10/add_4AddV2&lstm_3/lstm_cell_10/BiasAdd_3:output:0&lstm_3/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_4Ъ
lstm_3/lstm_cell_10/Sigmoid_2Sigmoidlstm_3/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Sigmoid_2С
lstm_3/lstm_cell_10/Tanh_1Tanhlstm_3/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Tanh_1і
lstm_3/lstm_cell_10/mul_10Mul!lstm_3/lstm_cell_10/Sigmoid_2:y:0lstm_3/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_10Э
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2&
$lstm_3/TensorArrayV2_1/element_shape‘
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/timeН
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterЌ
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_10_split_readvariableop_resource3lstm_3_lstm_cell_10_split_1_readvariableop_resource+lstm_3_lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_3_while_body_175496*$
condR
lstm_3_while_cond_175495*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
lstm_3/while√
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStackП
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm_3/strided_slice_3/stackК
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1К
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2ƒ
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
lstm_3/strided_slice_3З
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permЅ
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime•
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_9/MatMul/ReadVariableOp§
dense_9/MatMulMatMullstm_3/strided_slice_3:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_9/MatMul§
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_9/BiasAdd/ReadVariableOp°
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_9/BiasAddy
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_9/Sigmoidw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?2
dropout_3/dropout/ConstЮ
dropout_3/dropout/MulMuldense_9/Sigmoid:y:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_3/dropout/Mulu
dropout_3/dropout/ShapeShapedense_9/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape“
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>2"
 dropout_3/dropout/GreaterEqual/yж
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
dropout_3/dropout/GreaterEqualЭ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_3/dropout/CastҐ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_3/dropout/Mul_1®
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_10/MatMul/ReadVariableOp£
dense_10/MatMulMatMuldropout_3/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_10/MatMulІ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_10/BiasAdd/ReadVariableOp•
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_10/BiasAdd|
dense_10/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_10/Sigmoid®
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_11/MatMul/ReadVariableOpЬ
dense_11/MatMulMatMuldense_10/Sigmoid:y:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/MatMulІ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp•
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/BiasAdd|
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/Softmaxп
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulй
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul≤
IdentityIdentitydense_11/Softmax:softmax:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp#^lstm_3/lstm_cell_10/ReadVariableOp%^lstm_3/lstm_cell_10/ReadVariableOp_1%^lstm_3/lstm_cell_10/ReadVariableOp_2%^lstm_3/lstm_cell_10/ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp)^lstm_3/lstm_cell_10/split/ReadVariableOp+^lstm_3/lstm_cell_10/split_1/ReadVariableOp^lstm_3/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2H
"lstm_3/lstm_cell_10/ReadVariableOp"lstm_3/lstm_cell_10/ReadVariableOp2L
$lstm_3/lstm_cell_10/ReadVariableOp_1$lstm_3/lstm_cell_10/ReadVariableOp_12L
$lstm_3/lstm_cell_10/ReadVariableOp_2$lstm_3/lstm_cell_10/ReadVariableOp_22L
$lstm_3/lstm_cell_10/ReadVariableOp_3$lstm_3/lstm_cell_10/ReadVariableOp_32x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2T
(lstm_3/lstm_cell_10/split/ReadVariableOp(lstm_3/lstm_cell_10/split/ReadVariableOp2X
*lstm_3/lstm_cell_10/split_1/ReadVariableOp*lstm_3/lstm_cell_10/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
»
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_177489

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
–Т
ї
B__inference_lstm_3_layer_call_and_return_conditional_losses_176479
inputs_0.
*lstm_cell_10_split_readvariableop_resource0
,lstm_cell_10_split_1_readvariableop_resource(
$lstm_cell_10_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐlstm_cell_10/ReadVariableOpҐlstm_cell_10/ReadVariableOp_1Ґlstm_cell_10/ReadVariableOp_2Ґlstm_cell_10/ReadVariableOp_3Ґ!lstm_cell_10/split/ReadVariableOpҐ#lstm_cell_10/split_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Д
lstm_cell_10/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/ShapeБ
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
lstm_cell_10/ones_like/ConstЄ
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/ones_like}
lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout/Const≥
lstm_cell_10/dropout/MulMullstm_cell_10/ones_like:output:0#lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/MulЗ
lstm_cell_10/dropout/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout/Shapeъ
1lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2хьс23
1lstm_cell_10/dropout/random_uniform/RandomUniformП
#lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2%
#lstm_cell_10/dropout/GreaterEqual/yт
!lstm_cell_10/dropout/GreaterEqualGreaterEqual:lstm_cell_10/dropout/random_uniform/RandomUniform:output:0,lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_cell_10/dropout/GreaterEqual¶
lstm_cell_10/dropout/CastCast%lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/CastЃ
lstm_cell_10/dropout/Mul_1Mullstm_cell_10/dropout/Mul:z:0lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/Mul_1Б
lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_1/Constє
lstm_cell_10/dropout_1/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/MulЛ
lstm_cell_10/dropout_1/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_1/ShapeА
3lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ЫƒП25
3lstm_cell_10/dropout_1/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_1/GreaterEqual/yъ
#lstm_cell_10/dropout_1/GreaterEqualGreaterEqual<lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_1/GreaterEqualђ
lstm_cell_10/dropout_1/CastCast'lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/Castґ
lstm_cell_10/dropout_1/Mul_1Mullstm_cell_10/dropout_1/Mul:z:0lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/Mul_1Б
lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_2/Constє
lstm_cell_10/dropout_2/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/MulЛ
lstm_cell_10/dropout_2/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_2/ShapeА
3lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Пящ25
3lstm_cell_10/dropout_2/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_2/GreaterEqual/yъ
#lstm_cell_10/dropout_2/GreaterEqualGreaterEqual<lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_2/GreaterEqualђ
lstm_cell_10/dropout_2/CastCast'lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/Castґ
lstm_cell_10/dropout_2/Mul_1Mullstm_cell_10/dropout_2/Mul:z:0lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/Mul_1Б
lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_3/Constє
lstm_cell_10/dropout_3/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/MulЛ
lstm_cell_10/dropout_3/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_3/Shape€
3lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ЃЕ25
3lstm_cell_10/dropout_3/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_3/GreaterEqual/yъ
#lstm_cell_10/dropout_3/GreaterEqualGreaterEqual<lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_3/GreaterEqualђ
lstm_cell_10/dropout_3/CastCast'lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/Castґ
lstm_cell_10/dropout_3/Mul_1Mullstm_cell_10/dropout_3/Mul:z:0lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/Mul_1~
lstm_cell_10/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_10/ones_like_1/ShapeЕ
lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
lstm_cell_10/ones_like_1/Constј
lstm_cell_10/ones_like_1Fill'lstm_cell_10/ones_like_1/Shape:output:0'lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/ones_like_1Б
lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_4/Constї
lstm_cell_10/dropout_4/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/MulН
lstm_cell_10/dropout_4/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_4/ShapeА
3lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2эЂ÷25
3lstm_cell_10/dropout_4/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_4/GreaterEqual/yъ
#lstm_cell_10/dropout_4/GreaterEqualGreaterEqual<lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_4/GreaterEqualђ
lstm_cell_10/dropout_4/CastCast'lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/Castґ
lstm_cell_10/dropout_4/Mul_1Mullstm_cell_10/dropout_4/Mul:z:0lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/Mul_1Б
lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_5/Constї
lstm_cell_10/dropout_5/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/MulН
lstm_cell_10/dropout_5/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_5/Shape€
3lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ащc25
3lstm_cell_10/dropout_5/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_5/GreaterEqual/yъ
#lstm_cell_10/dropout_5/GreaterEqualGreaterEqual<lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_5/GreaterEqualђ
lstm_cell_10/dropout_5/CastCast'lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/Castґ
lstm_cell_10/dropout_5/Mul_1Mullstm_cell_10/dropout_5/Mul:z:0lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/Mul_1Б
lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_6/Constї
lstm_cell_10/dropout_6/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/MulН
lstm_cell_10/dropout_6/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_6/ShapeА
3lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ЗлС25
3lstm_cell_10/dropout_6/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_6/GreaterEqual/yъ
#lstm_cell_10/dropout_6/GreaterEqualGreaterEqual<lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_6/GreaterEqualђ
lstm_cell_10/dropout_6/CastCast'lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/Castґ
lstm_cell_10/dropout_6/Mul_1Mullstm_cell_10/dropout_6/Mul:z:0lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/Mul_1Б
lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_7/Constї
lstm_cell_10/dropout_7/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/MulН
lstm_cell_10/dropout_7/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_7/Shape€
3lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ъЎ925
3lstm_cell_10/dropout_7/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_7/GreaterEqual/yъ
#lstm_cell_10/dropout_7/GreaterEqualGreaterEqual<lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_7/GreaterEqualђ
lstm_cell_10/dropout_7/CastCast'lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/Castґ
lstm_cell_10/dropout_7/Mul_1Mullstm_cell_10/dropout_7/Mul:z:0lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/Mul_1Ч
lstm_cell_10/mulMulstrided_slice_2:output:0lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mulЭ
lstm_cell_10/mul_1Mulstrided_slice_2:output:0 lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_1Э
lstm_cell_10/mul_2Mulstrided_slice_2:output:0 lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_2Э
lstm_cell_10/mul_3Mulstrided_slice_2:output:0 lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_3j
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim≤
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02#
!lstm_cell_10/split/ReadVariableOpџ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_cell_10/splitЩ
lstm_cell_10/MatMulMatMullstm_cell_10/mul:z:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMulЯ
lstm_cell_10/MatMul_1MatMullstm_cell_10/mul_1:z:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_1Я
lstm_cell_10/MatMul_2MatMullstm_cell_10/mul_2:z:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_2Я
lstm_cell_10/MatMul_3MatMullstm_cell_10/mul_3:z:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_3n
lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const_1В
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dimі
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_10/split_1/ReadVariableOp”
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1І
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd≠
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_1≠
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_2≠
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_3У
lstm_cell_10/mul_4Mulzeros:output:0 lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_4У
lstm_cell_10/mul_5Mulzeros:output:0 lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_5У
lstm_cell_10/mul_6Mulzeros:output:0 lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_6У
lstm_cell_10/mul_7Mulzeros:output:0 lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_7†
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOpХ
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stackЩ
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1Щ
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2 
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_sliceІ
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul_4:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_4Я
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid§
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_1Щ
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stackЭ
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1Э
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2÷
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_5:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_5•
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_1Е
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_1П
lstm_cell_10/mul_8Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_8§
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_2Щ
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stackЭ
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1Э
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2÷
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_6:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_6•
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_2x
lstm_cell_10/TanhTanhlstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/TanhТ
lstm_cell_10/mul_9Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_9У
lstm_cell_10/add_3AddV2lstm_cell_10/mul_8:z:0lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_3§
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_3Щ
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stackЭ
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1Э
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2÷
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_7:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_7•
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_4Е
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Tanh_1Ш
lstm_cell_10/mul_10Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_10П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_176267*
condR
while_cond_176266*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeи
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulв
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЄ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$
"
_user_specified_name
inputs/0
—ќ
О
%sequential_3_lstm_3_while_body_173279D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3C
?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0
{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_3_lstm_3_while_lstm_cell_10_split_readvariableop_resource_0L
Hsequential_3_lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0D
@sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource_0&
"sequential_3_lstm_3_while_identity(
$sequential_3_lstm_3_while_identity_1(
$sequential_3_lstm_3_while_identity_2(
$sequential_3_lstm_3_while_identity_3(
$sequential_3_lstm_3_while_identity_4(
$sequential_3_lstm_3_while_identity_5A
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1}
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensorH
Dsequential_3_lstm_3_while_lstm_cell_10_split_readvariableop_resourceJ
Fsequential_3_lstm_3_while_lstm_cell_10_split_1_readvariableop_resourceB
>sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resourceИҐ5sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOpҐ7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_1Ґ7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_2Ґ7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3Ґ;sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOpҐ=sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOpл
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   2M
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeЋ
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_3_while_placeholderTsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02?
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemд
6sequential_3/lstm_3/while/lstm_cell_10/ones_like/ShapeShapeDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:28
6sequential_3/lstm_3/while/lstm_cell_10/ones_like/Shapeµ
6sequential_3/lstm_3/while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?28
6sequential_3/lstm_3/while/lstm_cell_10/ones_like/Const†
0sequential_3/lstm_3/while/lstm_cell_10/ones_likeFill?sequential_3/lstm_3/while/lstm_cell_10/ones_like/Shape:output:0?sequential_3/lstm_3/while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$22
0sequential_3/lstm_3/while/lstm_cell_10/ones_likeЋ
8sequential_3/lstm_3/while/lstm_cell_10/ones_like_1/ShapeShape'sequential_3_lstm_3_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_3/lstm_3/while/lstm_cell_10/ones_like_1/Shapeє
8sequential_3/lstm_3/while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2:
8sequential_3/lstm_3/while/lstm_cell_10/ones_like_1/Const®
2sequential_3/lstm_3/while/lstm_cell_10/ones_like_1FillAsequential_3/lstm_3/while/lstm_cell_10/ones_like_1/Shape:output:0Asequential_3/lstm_3/while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 24
2sequential_3/lstm_3/while/lstm_cell_10/ones_like_1Т
*sequential_3/lstm_3/while/lstm_cell_10/mulMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_3/lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2,
*sequential_3/lstm_3/while/lstm_cell_10/mulЦ
,sequential_3/lstm_3/while/lstm_cell_10/mul_1MulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_3/lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_1Ц
,sequential_3/lstm_3/while/lstm_cell_10/mul_2MulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_3/lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_2Ц
,sequential_3/lstm_3/while/lstm_cell_10/mul_3MulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_3/lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_3Ю
,sequential_3/lstm_3/while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_3/lstm_3/while/lstm_cell_10/Const≤
6sequential_3/lstm_3/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_3/lstm_3/while/lstm_cell_10/split/split_dimВ
;sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOpReadVariableOpFsequential_3_lstm_3_while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02=
;sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp√
,sequential_3/lstm_3/while/lstm_cell_10/splitSplit?sequential_3/lstm_3/while/lstm_cell_10/split/split_dim:output:0Csequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2.
,sequential_3/lstm_3/while/lstm_cell_10/splitБ
-sequential_3/lstm_3/while/lstm_cell_10/MatMulMatMul.sequential_3/lstm_3/while/lstm_cell_10/mul:z:05sequential_3/lstm_3/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-sequential_3/lstm_3/while/lstm_cell_10/MatMulЗ
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_1MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_1:z:05sequential_3/lstm_3/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_1З
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_2MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_2:z:05sequential_3/lstm_3/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_2З
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_3MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_3:z:05sequential_3/lstm_3/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_3Ґ
.sequential_3/lstm_3/while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :20
.sequential_3/lstm_3/while/lstm_cell_10/Const_1ґ
8sequential_3/lstm_3/while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8sequential_3/lstm_3/while/lstm_cell_10/split_1/split_dimД
=sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOpReadVariableOpHsequential_3_lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOpї
.sequential_3/lstm_3/while/lstm_cell_10/split_1SplitAsequential_3/lstm_3/while/lstm_cell_10/split_1/split_dim:output:0Esequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split20
.sequential_3/lstm_3/while/lstm_cell_10/split_1П
.sequential_3/lstm_3/while/lstm_cell_10/BiasAddBiasAdd7sequential_3/lstm_3/while/lstm_cell_10/MatMul:product:07sequential_3/lstm_3/while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 20
.sequential_3/lstm_3/while/lstm_cell_10/BiasAddХ
0sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_1BiasAdd9sequential_3/lstm_3/while/lstm_cell_10/MatMul_1:product:07sequential_3/lstm_3/while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_1Х
0sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_2BiasAdd9sequential_3/lstm_3/while/lstm_cell_10/MatMul_2:product:07sequential_3/lstm_3/while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_2Х
0sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_3BiasAdd9sequential_3/lstm_3/while/lstm_cell_10/MatMul_3:product:07sequential_3/lstm_3/while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_3ы
,sequential_3/lstm_3/while/lstm_cell_10/mul_4Mul'sequential_3_lstm_3_while_placeholder_2;sequential_3/lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_4ы
,sequential_3/lstm_3/while/lstm_cell_10/mul_5Mul'sequential_3_lstm_3_while_placeholder_2;sequential_3/lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_5ы
,sequential_3/lstm_3/while/lstm_cell_10/mul_6Mul'sequential_3_lstm_3_while_placeholder_2;sequential_3/lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_6ы
,sequential_3/lstm_3/while/lstm_cell_10/mul_7Mul'sequential_3_lstm_3_while_placeholder_2;sequential_3/lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_7р
5sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOpReadVariableOp@sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype027
5sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp…
:sequential_3/lstm_3/while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_3/lstm_3/while/lstm_cell_10/strided_slice/stackЌ
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack_1Ќ
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack_2ж
4sequential_3/lstm_3/while/lstm_cell_10/strided_sliceStridedSlice=sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp:value:0Csequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack:output:0Esequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack_1:output:0Esequential_3/lstm_3/while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_3/lstm_3/while/lstm_cell_10/strided_sliceП
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_4MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_4:z:0=sequential_3/lstm_3/while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_4З
*sequential_3/lstm_3/while/lstm_cell_10/addAddV27sequential_3/lstm_3/while/lstm_cell_10/BiasAdd:output:09sequential_3/lstm_3/while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential_3/lstm_3/while/lstm_cell_10/addЌ
.sequential_3/lstm_3/while/lstm_cell_10/SigmoidSigmoid.sequential_3/lstm_3/while/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 20
.sequential_3/lstm_3/while/lstm_cell_10/Sigmoidф
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_1ReadVariableOp@sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype029
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_1Ќ
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack—
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack_1—
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack_2т
6sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1StridedSlice?sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_1:value:0Esequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack:output:0Gsequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack_1:output:0Gsequential_3/lstm_3/while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1С
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_5MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_5:z:0?sequential_3/lstm_3/while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_5Н
,sequential_3/lstm_3/while/lstm_cell_10/add_1AddV29sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_1:output:09sequential_3/lstm_3/while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/add_1”
0sequential_3/lstm_3/while/lstm_cell_10/Sigmoid_1Sigmoid0sequential_3/lstm_3/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_3/lstm_3/while/lstm_cell_10/Sigmoid_1ф
,sequential_3/lstm_3/while/lstm_cell_10/mul_8Mul4sequential_3/lstm_3/while/lstm_cell_10/Sigmoid_1:y:0'sequential_3_lstm_3_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_8ф
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_2ReadVariableOp@sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype029
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_2Ќ
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2>
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack—
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack_1—
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack_2т
6sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2StridedSlice?sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_2:value:0Esequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack:output:0Gsequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack_1:output:0Gsequential_3/lstm_3/while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2С
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_6MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_6:z:0?sequential_3/lstm_3/while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_6Н
,sequential_3/lstm_3/while/lstm_cell_10/add_2AddV29sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_2:output:09sequential_3/lstm_3/while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/add_2∆
+sequential_3/lstm_3/while/lstm_cell_10/TanhTanh0sequential_3/lstm_3/while/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+sequential_3/lstm_3/while/lstm_cell_10/Tanhъ
,sequential_3/lstm_3/while/lstm_cell_10/mul_9Mul2sequential_3/lstm_3/while/lstm_cell_10/Sigmoid:y:0/sequential_3/lstm_3/while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/mul_9ы
,sequential_3/lstm_3/while/lstm_cell_10/add_3AddV20sequential_3/lstm_3/while/lstm_cell_10/mul_8:z:00sequential_3/lstm_3/while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/add_3ф
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3ReadVariableOp@sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype029
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3Ќ
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2>
<sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack—
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack_1—
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack_2т
6sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3StridedSlice?sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3:value:0Esequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack:output:0Gsequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack_1:output:0Gsequential_3/lstm_3/while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3С
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_7MatMul0sequential_3/lstm_3/while/lstm_cell_10/mul_7:z:0?sequential_3/lstm_3/while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 21
/sequential_3/lstm_3/while/lstm_cell_10/MatMul_7Н
,sequential_3/lstm_3/while/lstm_cell_10/add_4AddV29sequential_3/lstm_3/while/lstm_cell_10/BiasAdd_3:output:09sequential_3/lstm_3/while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential_3/lstm_3/while/lstm_cell_10/add_4”
0sequential_3/lstm_3/while/lstm_cell_10/Sigmoid_2Sigmoid0sequential_3/lstm_3/while/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_3/lstm_3/while/lstm_cell_10/Sigmoid_2 
-sequential_3/lstm_3/while/lstm_cell_10/Tanh_1Tanh0sequential_3/lstm_3/while/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-sequential_3/lstm_3/while/lstm_cell_10/Tanh_1А
-sequential_3/lstm_3/while/lstm_cell_10/mul_10Mul4sequential_3/lstm_3/while/lstm_cell_10/Sigmoid_2:y:01sequential_3/lstm_3/while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-sequential_3/lstm_3/while/lstm_cell_10/mul_10≈
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_3_while_placeholder_1%sequential_3_lstm_3_while_placeholder1sequential_3/lstm_3/while/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItemД
sequential_3/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_3/while/add/yє
sequential_3/lstm_3/while/addAddV2%sequential_3_lstm_3_while_placeholder(sequential_3/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_3/while/addИ
!sequential_3/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_3/while/add_1/yЏ
sequential_3/lstm_3/while/add_1AddV2@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counter*sequential_3/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_3/while/add_1ю
"sequential_3/lstm_3/while/IdentityIdentity#sequential_3/lstm_3/while/add_1:z:06^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp8^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_18^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_28^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3<^sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_3/while/Identity•
$sequential_3/lstm_3/while/Identity_1IdentityFsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations6^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp8^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_18^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_28^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3<^sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_1А
$sequential_3/lstm_3/while/Identity_2Identity!sequential_3/lstm_3/while/add:z:06^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp8^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_18^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_28^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3<^sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_2≠
$sequential_3/lstm_3/while/Identity_3IdentityNsequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:06^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp8^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_18^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_28^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3<^sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_3°
$sequential_3/lstm_3/while/Identity_4Identity1sequential_3/lstm_3/while/lstm_cell_10/mul_10:z:06^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp8^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_18^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_28^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3<^sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2&
$sequential_3/lstm_3/while/Identity_4†
$sequential_3/lstm_3/while/Identity_5Identity0sequential_3/lstm_3/while/lstm_cell_10/add_3:z:06^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp8^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_18^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_28^sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_3<^sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2&
$sequential_3/lstm_3/while/Identity_5"Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0"U
$sequential_3_lstm_3_while_identity_1-sequential_3/lstm_3/while/Identity_1:output:0"U
$sequential_3_lstm_3_while_identity_2-sequential_3/lstm_3/while/Identity_2:output:0"U
$sequential_3_lstm_3_while_identity_3-sequential_3/lstm_3/while/Identity_3:output:0"U
$sequential_3_lstm_3_while_identity_4-sequential_3/lstm_3/while/Identity_4:output:0"U
$sequential_3_lstm_3_while_identity_5-sequential_3/lstm_3/while/Identity_5:output:0"В
>sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource@sequential_3_lstm_3_while_lstm_cell_10_readvariableop_resource_0"Т
Fsequential_3_lstm_3_while_lstm_cell_10_split_1_readvariableop_resourceHsequential_3_lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0"О
Dsequential_3_lstm_3_while_lstm_cell_10_split_readvariableop_resourceFsequential_3_lstm_3_while_lstm_cell_10_split_readvariableop_resource_0"А
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0"ш
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2n
5sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp5sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp2r
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_17sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_12r
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_27sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_22r
7sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_37sequential_3/lstm_3/while/lstm_cell_10/ReadVariableOp_32z
;sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp;sequential_3/lstm_3/while/lstm_cell_10/split/ReadVariableOp2~
=sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp=sequential_3/lstm_3/while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Ей
џ
H__inference_sequential_3_layer_call_and_return_conditional_losses_176026

inputs5
1lstm_3_lstm_cell_10_split_readvariableop_resource7
3lstm_3_lstm_cell_10_split_1_readvariableop_resource/
+lstm_3_lstm_cell_10_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identityИҐdense_10/BiasAdd/ReadVariableOpҐdense_10/MatMul/ReadVariableOpҐdense_11/BiasAdd/ReadVariableOpҐdense_11/MatMul/ReadVariableOpҐdense_9/BiasAdd/ReadVariableOpҐdense_9/MatMul/ReadVariableOpҐ"lstm_3/lstm_cell_10/ReadVariableOpҐ$lstm_3/lstm_cell_10/ReadVariableOp_1Ґ$lstm_3/lstm_cell_10/ReadVariableOp_2Ґ$lstm_3/lstm_cell_10/ReadVariableOp_3Ґ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐ(lstm_3/lstm_cell_10/split/ReadVariableOpҐ*lstm_3/lstm_cell_10/split_1/ReadVariableOpҐlstm_3/whileR
lstm_3/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_3/ShapeВ
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stackЖ
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1Ж
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2М
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/mul/yИ
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_3/zeros/Less/yГ
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/packed/1Я
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/ConstС
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/mul/yО
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm_3/zeros_1/Less/yЛ
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/packed/1•
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/ConstЩ
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/zeros_1Г
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/permП
lstm_3/transpose	Transposeinputslstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1Ж
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stackК
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1К
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2Ш
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1У
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2$
"lstm_3/TensorArrayV2/element_shapeќ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Ќ
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensorЖ
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stackК
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1К
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2¶
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
lstm_3/strided_slice_2Щ
#lstm_3/lstm_cell_10/ones_like/ShapeShapelstm_3/strided_slice_2:output:0*
T0*
_output_shapes
:2%
#lstm_3/lstm_cell_10/ones_like/ShapeП
#lstm_3/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2%
#lstm_3/lstm_cell_10/ones_like/Const‘
lstm_3/lstm_cell_10/ones_likeFill,lstm_3/lstm_cell_10/ones_like/Shape:output:0,lstm_3/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/ones_likeУ
%lstm_3/lstm_cell_10/ones_like_1/ShapeShapelstm_3/zeros:output:0*
T0*
_output_shapes
:2'
%lstm_3/lstm_cell_10/ones_like_1/ShapeУ
%lstm_3/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2'
%lstm_3/lstm_cell_10/ones_like_1/Const№
lstm_3/lstm_cell_10/ones_like_1Fill.lstm_3/lstm_cell_10/ones_like_1/Shape:output:0.lstm_3/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/lstm_cell_10/ones_like_1і
lstm_3/lstm_cell_10/mulMullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mulЄ
lstm_3/lstm_cell_10/mul_1Mullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mul_1Є
lstm_3/lstm_cell_10/mul_2Mullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mul_2Є
lstm_3/lstm_cell_10/mul_3Mullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/lstm_cell_10/mul_3x
lstm_3/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_10/ConstМ
#lstm_3/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_3/lstm_cell_10/split/split_dim«
(lstm_3/lstm_cell_10/split/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02*
(lstm_3/lstm_cell_10/split/ReadVariableOpч
lstm_3/lstm_cell_10/splitSplit,lstm_3/lstm_cell_10/split/split_dim:output:00lstm_3/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_3/lstm_cell_10/splitµ
lstm_3/lstm_cell_10/MatMulMatMullstm_3/lstm_cell_10/mul:z:0"lstm_3/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMulї
lstm_3/lstm_cell_10/MatMul_1MatMullstm_3/lstm_cell_10/mul_1:z:0"lstm_3/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_1ї
lstm_3/lstm_cell_10/MatMul_2MatMullstm_3/lstm_cell_10/mul_2:z:0"lstm_3/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_2ї
lstm_3/lstm_cell_10/MatMul_3MatMullstm_3/lstm_cell_10/mul_3:z:0"lstm_3/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_3|
lstm_3/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_10/Const_1Р
%lstm_3/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%lstm_3/lstm_cell_10/split_1/split_dim…
*lstm_3/lstm_cell_10/split_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_3/lstm_cell_10/split_1/ReadVariableOpп
lstm_3/lstm_cell_10/split_1Split.lstm_3/lstm_cell_10/split_1/split_dim:output:02lstm_3/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_3/lstm_cell_10/split_1√
lstm_3/lstm_cell_10/BiasAddBiasAdd$lstm_3/lstm_cell_10/MatMul:product:0$lstm_3/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd…
lstm_3/lstm_cell_10/BiasAdd_1BiasAdd&lstm_3/lstm_cell_10/MatMul_1:product:0$lstm_3/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd_1…
lstm_3/lstm_cell_10/BiasAdd_2BiasAdd&lstm_3/lstm_cell_10/MatMul_2:product:0$lstm_3/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd_2…
lstm_3/lstm_cell_10/BiasAdd_3BiasAdd&lstm_3/lstm_cell_10/MatMul_3:product:0$lstm_3/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/BiasAdd_3∞
lstm_3/lstm_cell_10/mul_4Mullstm_3/zeros:output:0(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_4∞
lstm_3/lstm_cell_10/mul_5Mullstm_3/zeros:output:0(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_5∞
lstm_3/lstm_cell_10/mul_6Mullstm_3/zeros:output:0(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_6∞
lstm_3/lstm_cell_10/mul_7Mullstm_3/zeros:output:0(lstm_3/lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_7µ
"lstm_3/lstm_cell_10/ReadVariableOpReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lstm_3/lstm_cell_10/ReadVariableOp£
'lstm_3/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'lstm_3/lstm_cell_10/strided_slice/stackІ
)lstm_3/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)lstm_3/lstm_cell_10/strided_slice/stack_1І
)lstm_3/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm_3/lstm_cell_10/strided_slice/stack_2ф
!lstm_3/lstm_cell_10/strided_sliceStridedSlice*lstm_3/lstm_cell_10/ReadVariableOp:value:00lstm_3/lstm_cell_10/strided_slice/stack:output:02lstm_3/lstm_cell_10/strided_slice/stack_1:output:02lstm_3/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!lstm_3/lstm_cell_10/strided_slice√
lstm_3/lstm_cell_10/MatMul_4MatMullstm_3/lstm_cell_10/mul_4:z:0*lstm_3/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_4ї
lstm_3/lstm_cell_10/addAddV2$lstm_3/lstm_cell_10/BiasAdd:output:0&lstm_3/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/addФ
lstm_3/lstm_cell_10/SigmoidSigmoidlstm_3/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Sigmoidє
$lstm_3/lstm_cell_10/ReadVariableOp_1ReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_3/lstm_cell_10/ReadVariableOp_1І
)lstm_3/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)lstm_3/lstm_cell_10/strided_slice_1/stackЂ
+lstm_3/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+lstm_3/lstm_cell_10/strided_slice_1/stack_1Ђ
+lstm_3/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_3/lstm_cell_10/strided_slice_1/stack_2А
#lstm_3/lstm_cell_10/strided_slice_1StridedSlice,lstm_3/lstm_cell_10/ReadVariableOp_1:value:02lstm_3/lstm_cell_10/strided_slice_1/stack:output:04lstm_3/lstm_cell_10/strided_slice_1/stack_1:output:04lstm_3/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#lstm_3/lstm_cell_10/strided_slice_1≈
lstm_3/lstm_cell_10/MatMul_5MatMullstm_3/lstm_cell_10/mul_5:z:0,lstm_3/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_5Ѕ
lstm_3/lstm_cell_10/add_1AddV2&lstm_3/lstm_cell_10/BiasAdd_1:output:0&lstm_3/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_1Ъ
lstm_3/lstm_cell_10/Sigmoid_1Sigmoidlstm_3/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Sigmoid_1Ђ
lstm_3/lstm_cell_10/mul_8Mul!lstm_3/lstm_cell_10/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_8є
$lstm_3/lstm_cell_10/ReadVariableOp_2ReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_3/lstm_cell_10/ReadVariableOp_2І
)lstm_3/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)lstm_3/lstm_cell_10/strided_slice_2/stackЂ
+lstm_3/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+lstm_3/lstm_cell_10/strided_slice_2/stack_1Ђ
+lstm_3/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_3/lstm_cell_10/strided_slice_2/stack_2А
#lstm_3/lstm_cell_10/strided_slice_2StridedSlice,lstm_3/lstm_cell_10/ReadVariableOp_2:value:02lstm_3/lstm_cell_10/strided_slice_2/stack:output:04lstm_3/lstm_cell_10/strided_slice_2/stack_1:output:04lstm_3/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#lstm_3/lstm_cell_10/strided_slice_2≈
lstm_3/lstm_cell_10/MatMul_6MatMullstm_3/lstm_cell_10/mul_6:z:0,lstm_3/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_6Ѕ
lstm_3/lstm_cell_10/add_2AddV2&lstm_3/lstm_cell_10/BiasAdd_2:output:0&lstm_3/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_2Н
lstm_3/lstm_cell_10/TanhTanhlstm_3/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/TanhЃ
lstm_3/lstm_cell_10/mul_9Mullstm_3/lstm_cell_10/Sigmoid:y:0lstm_3/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_9ѓ
lstm_3/lstm_cell_10/add_3AddV2lstm_3/lstm_cell_10/mul_8:z:0lstm_3/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_3є
$lstm_3/lstm_cell_10/ReadVariableOp_3ReadVariableOp+lstm_3_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_3/lstm_cell_10/ReadVariableOp_3І
)lstm_3/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)lstm_3/lstm_cell_10/strided_slice_3/stackЂ
+lstm_3/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+lstm_3/lstm_cell_10/strided_slice_3/stack_1Ђ
+lstm_3/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+lstm_3/lstm_cell_10/strided_slice_3/stack_2А
#lstm_3/lstm_cell_10/strided_slice_3StridedSlice,lstm_3/lstm_cell_10/ReadVariableOp_3:value:02lstm_3/lstm_cell_10/strided_slice_3/stack:output:04lstm_3/lstm_cell_10/strided_slice_3/stack_1:output:04lstm_3/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#lstm_3/lstm_cell_10/strided_slice_3≈
lstm_3/lstm_cell_10/MatMul_7MatMullstm_3/lstm_cell_10/mul_7:z:0,lstm_3/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/MatMul_7Ѕ
lstm_3/lstm_cell_10/add_4AddV2&lstm_3/lstm_cell_10/BiasAdd_3:output:0&lstm_3/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/add_4Ъ
lstm_3/lstm_cell_10/Sigmoid_2Sigmoidlstm_3/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Sigmoid_2С
lstm_3/lstm_cell_10/Tanh_1Tanhlstm_3/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/Tanh_1і
lstm_3/lstm_cell_10/mul_10Mul!lstm_3/lstm_cell_10/Sigmoid_2:y:0lstm_3/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/lstm_cell_10/mul_10Э
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2&
$lstm_3/TensorArrayV2_1/element_shape‘
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/timeН
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterЌ
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_10_split_readvariableop_resource3lstm_3_lstm_cell_10_split_1_readvariableop_resource+lstm_3_lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_3_while_body_175856*$
condR
lstm_3_while_cond_175855*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
lstm_3/while√
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStackП
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm_3/strided_slice_3/stackК
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1К
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2ƒ
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
lstm_3/strided_slice_3З
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permЅ
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime•
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_9/MatMul/ReadVariableOp§
dense_9/MatMulMatMullstm_3/strided_slice_3:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_9/MatMul§
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_9/BiasAdd/ReadVariableOp°
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_9/BiasAddy
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_9/Sigmoid{
dropout_3/IdentityIdentitydense_9/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_3/Identity®
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_10/MatMul/ReadVariableOp£
dense_10/MatMulMatMuldropout_3/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_10/MatMulІ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_10/BiasAdd/ReadVariableOp•
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_10/BiasAdd|
dense_10/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_10/Sigmoid®
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_11/MatMul/ReadVariableOpЬ
dense_11/MatMulMatMuldense_10/Sigmoid:y:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/MatMulІ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp•
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/BiasAdd|
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/Softmaxп
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulй
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul≤
IdentityIdentitydense_11/Softmax:softmax:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp#^lstm_3/lstm_cell_10/ReadVariableOp%^lstm_3/lstm_cell_10/ReadVariableOp_1%^lstm_3/lstm_cell_10/ReadVariableOp_2%^lstm_3/lstm_cell_10/ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp)^lstm_3/lstm_cell_10/split/ReadVariableOp+^lstm_3/lstm_cell_10/split_1/ReadVariableOp^lstm_3/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2H
"lstm_3/lstm_cell_10/ReadVariableOp"lstm_3/lstm_cell_10/ReadVariableOp2L
$lstm_3/lstm_cell_10/ReadVariableOp_1$lstm_3/lstm_cell_10/ReadVariableOp_12L
$lstm_3/lstm_cell_10/ReadVariableOp_2$lstm_3/lstm_cell_10/ReadVariableOp_22L
$lstm_3/lstm_cell_10/ReadVariableOp_3$lstm_3/lstm_cell_10/ReadVariableOp_32x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2T
(lstm_3/lstm_cell_10/split/ReadVariableOp(lstm_3/lstm_cell_10/split/ReadVariableOp2X
*lstm_3/lstm_cell_10/split_1/ReadVariableOp*lstm_3/lstm_cell_10/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Єѓ
ь
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_173637

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐsplit/ReadVariableOpҐsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape”
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2мР”2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_1/ConstЕ
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeў
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ічМ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_1/GreaterEqual/y∆
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_1/GreaterEqualЕ
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout_1/CastВ
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_2/ConstЕ
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeў
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2‘ґ†2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_2/GreaterEqual/y∆
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_2/GreaterEqualЕ
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout_2/CastВ
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_3/ConstЕ
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeў
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2љМ≤2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_3/GreaterEqual/y∆
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_3/GreaterEqualЕ
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout_3/CastВ
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstМ
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_4/ConstЗ
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeЎ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2щь$2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_4/GreaterEqual/y∆
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/GreaterEqualЕ
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/CastВ
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_5/ConstЗ
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shapeў
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2фЫ√2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_5/GreaterEqual/y∆
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/GreaterEqualЕ
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/CastВ
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_6/ConstЗ
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shapeў
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2√Ю№2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_6/GreaterEqual/y∆
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/GreaterEqualЕ
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/CastВ
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_7/ConstЗ
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeЎ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ас\2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_7/GreaterEqual/y∆
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/GreaterEqualЕ
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/CastВ
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЛ
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02
split/ReadVariableOpІ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dimН
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
split_1/ReadVariableOpЯ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2И
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_10џ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul’
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul‘
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityЎ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1„

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:€€€€€€€€€$:€€€€€€€€€ :€€€€€€€€€ :::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
«ѓ
ю
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_177711

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ИҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2ҐReadVariableOp_3Ґ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐsplit/ReadVariableOpҐsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like/ConstД
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape“
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Ґ“L2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_1/ConstЕ
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeЎ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ҐЄ[2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_1/GreaterEqual/y∆
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_1/GreaterEqualЕ
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout_1/CastВ
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_2/ConstЕ
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeЎ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2в»~2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_2/GreaterEqual/y∆
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_2/GreaterEqualЕ
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout_2/CastВ
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_3/ConstЕ
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeў
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ЄФЉ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_3/GreaterEqual/y∆
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_3/GreaterEqualЕ
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
dropout_3/CastВ
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
ones_like_1/ConstМ
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_4/ConstЗ
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shapeў
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2∞«И2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_4/GreaterEqual/y∆
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/GreaterEqualЕ
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/CastВ
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_5/ConstЗ
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shapeў
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2щ»Ћ2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_5/GreaterEqual/y∆
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/GreaterEqualЕ
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/CastВ
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_6/ConstЗ
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shapeў
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2¬Зъ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_6/GreaterEqual/y∆
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/GreaterEqualЕ
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/CastВ
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_7/ConstЗ
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shapeў
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2”тђ2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout_7/GreaterEqual/y∆
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/GreaterEqualЕ
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/CastВ
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЛ
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02
split/ReadVariableOpІ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dimН
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
split_1/ReadVariableOpЯ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2И
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_10џ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul’
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mul‘
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityЎ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1„

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:€€€€€€€€€$:€€€€€€€€€ :€€€€€€€€€ :::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Ы%
С
while_body_174051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_10_174075_0
while_lstm_cell_10_174077_0
while_lstm_cell_10_174079_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_10_174075
while_lstm_cell_10_174077
while_lstm_cell_10_174079ИҐ*while/lstm_cell_10/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_174075_0while_lstm_cell_10_174077_0while_lstm_cell_10_174079_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1736372,
*while/lstm_cell_10/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ƒ
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1+^while/lstm_cell_10/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ƒ
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2+^while/lstm_cell_10/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_174075while_lstm_cell_10_174075_0"8
while_lstm_cell_10_174077while_lstm_cell_10_174077_0"8
while_lstm_cell_10_174079while_lstm_cell_10_174079_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
р	
Ё
D__inference_dense_10_layer_call_and_return_conditional_losses_177510

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Б
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_177484

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Џ
}
(__inference_dense_9_layer_call_fn_177472

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1749912
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ґ
є
__inference_loss_fn_0_177852I
Elstm_3_lstm_cell_10_kernel_regularizer_square_readvariableop_resource
identityИҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpГ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpElstm_3_lstm_cell_10_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul∞
IdentityIdentity.lstm_3/lstm_cell_10/kernel/Regularizer/mul:z:0=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp
пш
“
while_body_176951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_10_split_readvariableop_resource_08
4while_lstm_cell_10_split_1_readvariableop_resource_00
,while_lstm_cell_10_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_10_split_readvariableop_resource6
2while_lstm_cell_10_split_1_readvariableop_resource.
*while_lstm_cell_10_readvariableop_resourceИҐ!while/lstm_cell_10/ReadVariableOpҐ#while/lstm_cell_10/ReadVariableOp_1Ґ#while/lstm_cell_10/ReadVariableOp_2Ґ#while/lstm_cell_10/ReadVariableOp_3Ґ'while/lstm_cell_10/split/ReadVariableOpҐ)while/lstm_cell_10/split_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
"while/lstm_cell_10/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/ShapeН
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"while/lstm_cell_10/ones_like/Const–
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/ones_likeЙ
 while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2"
 while/lstm_cell_10/dropout/ConstЋ
while/lstm_cell_10/dropout/MulMul%while/lstm_cell_10/ones_like:output:0)while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2 
while/lstm_cell_10/dropout/MulЩ
 while/lstm_cell_10/dropout/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_10/dropout/ShapeМ
7while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2„њА29
7while/lstm_cell_10/dropout/random_uniform/RandomUniformЫ
)while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2+
)while/lstm_cell_10/dropout/GreaterEqual/yК
'while/lstm_cell_10/dropout/GreaterEqualGreaterEqual@while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'while/lstm_cell_10/dropout/GreaterEqualЄ
while/lstm_cell_10/dropout/CastCast+while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2!
while/lstm_cell_10/dropout/Cast∆
 while/lstm_cell_10/dropout/Mul_1Mul"while/lstm_cell_10/dropout/Mul:z:0#while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout/Mul_1Н
"while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_1/Const—
 while/lstm_cell_10/dropout_1/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_1/MulЭ
"while/lstm_cell_10/dropout_1/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_1/ShapeС
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2І∞`2;
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_1/GreaterEqual/yТ
)while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_1/GreaterEqualЊ
!while/lstm_cell_10/dropout_1/CastCast-while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_1/Castќ
"while/lstm_cell_10/dropout_1/Mul_1Mul$while/lstm_cell_10/dropout_1/Mul:z:0%while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_1/Mul_1Н
"while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_2/Const—
 while/lstm_cell_10/dropout_2/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_2/MulЭ
"while/lstm_cell_10/dropout_2/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_2/ShapeТ
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ГЈњ2;
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_2/GreaterEqual/yТ
)while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_2/GreaterEqualЊ
!while/lstm_cell_10/dropout_2/CastCast-while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_2/Castќ
"while/lstm_cell_10/dropout_2/Mul_1Mul$while/lstm_cell_10/dropout_2/Mul:z:0%while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_2/Mul_1Н
"while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_3/Const—
 while/lstm_cell_10/dropout_3/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2"
 while/lstm_cell_10/dropout_3/MulЭ
"while/lstm_cell_10/dropout_3/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_3/ShapeТ
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ДЯя2;
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_3/GreaterEqual/yТ
)while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)while/lstm_cell_10/dropout_3/GreaterEqualЊ
!while/lstm_cell_10/dropout_3/CastCast-while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2#
!while/lstm_cell_10/dropout_3/Castќ
"while/lstm_cell_10/dropout_3/Mul_1Mul$while/lstm_cell_10/dropout_3/Mul:z:0%while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2$
"while/lstm_cell_10/dropout_3/Mul_1П
$while/lstm_cell_10/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_10/ones_like_1/ShapeС
$while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2&
$while/lstm_cell_10/ones_like_1/ConstЎ
while/lstm_cell_10/ones_like_1Fill-while/lstm_cell_10/ones_like_1/Shape:output:0-while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/lstm_cell_10/ones_like_1Н
"while/lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_4/Const”
 while/lstm_cell_10/dropout_4/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_4/MulЯ
"while/lstm_cell_10/dropout_4/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_4/ShapeС
9while/lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ЌДr2;
9while/lstm_cell_10/dropout_4/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_4/GreaterEqual/yТ
)while/lstm_cell_10/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_4/GreaterEqualЊ
!while/lstm_cell_10/dropout_4/CastCast-while/lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_4/Castќ
"while/lstm_cell_10/dropout_4/Mul_1Mul$while/lstm_cell_10/dropout_4/Mul:z:0%while/lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_4/Mul_1Н
"while/lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_5/Const”
 while/lstm_cell_10/dropout_5/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_5/MulЯ
"while/lstm_cell_10/dropout_5/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_5/ShapeС
9while/lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ЃЏ32;
9while/lstm_cell_10/dropout_5/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_5/GreaterEqual/yТ
)while/lstm_cell_10/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_5/GreaterEqualЊ
!while/lstm_cell_10/dropout_5/CastCast-while/lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_5/Castќ
"while/lstm_cell_10/dropout_5/Mul_1Mul$while/lstm_cell_10/dropout_5/Mul:z:0%while/lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_5/Mul_1Н
"while/lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_6/Const”
 while/lstm_cell_10/dropout_6/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_6/MulЯ
"while/lstm_cell_10/dropout_6/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_6/ShapeТ
9while/lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ыьҐ2;
9while/lstm_cell_10/dropout_6/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_6/GreaterEqual/yТ
)while/lstm_cell_10/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_6/GreaterEqualЊ
!while/lstm_cell_10/dropout_6/CastCast-while/lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_6/Castќ
"while/lstm_cell_10/dropout_6/Mul_1Mul$while/lstm_cell_10/dropout_6/Mul:z:0%while/lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_6/Mul_1Н
"while/lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2$
"while/lstm_cell_10/dropout_7/Const”
 while/lstm_cell_10/dropout_7/MulMul'while/lstm_cell_10/ones_like_1:output:0+while/lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/lstm_cell_10/dropout_7/MulЯ
"while/lstm_cell_10/dropout_7/ShapeShape'while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_7/ShapeС
9while/lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2®р%2;
9while/lstm_cell_10/dropout_7/random_uniform/RandomUniformЯ
+while/lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2-
+while/lstm_cell_10/dropout_7/GreaterEqual/yТ
)while/lstm_cell_10/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)while/lstm_cell_10/dropout_7/GreaterEqualЊ
!while/lstm_cell_10/dropout_7/CastCast-while/lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2#
!while/lstm_cell_10/dropout_7/Castќ
"while/lstm_cell_10/dropout_7/Mul_1Mul$while/lstm_cell_10/dropout_7/Mul:z:0%while/lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"while/lstm_cell_10/dropout_7/Mul_1Ѕ
while/lstm_cell_10/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul«
while/lstm_cell_10/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_1«
while/lstm_cell_10/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_2«
while/lstm_cell_10/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
while/lstm_cell_10/mul_3v
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/ConstК
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim∆
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpу
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
while/lstm_cell_10/split±
while/lstm_cell_10/MatMulMatMulwhile/lstm_cell_10/mul:z:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMulЈ
while/lstm_cell_10/MatMul_1MatMulwhile/lstm_cell_10/mul_1:z:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_1Ј
while/lstm_cell_10/MatMul_2MatMulwhile/lstm_cell_10/mul_2:z:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_2Ј
while/lstm_cell_10/MatMul_3MatMulwhile/lstm_cell_10/mul_3:z:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_3z
while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const_1О
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dim»
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpл
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1њ
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd≈
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_1≈
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_2≈
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/BiasAdd_3™
while/lstm_cell_10/mul_4Mulwhile_placeholder_2&while/lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_4™
while/lstm_cell_10/mul_5Mulwhile_placeholder_2&while/lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_5™
while/lstm_cell_10/mul_6Mulwhile_placeholder_2&while/lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_6™
while/lstm_cell_10/mul_7Mulwhile_placeholder_2&while/lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_7і
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02#
!while/lstm_cell_10/ReadVariableOp°
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack•
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1•
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2о
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_sliceњ
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul_4:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_4Ј
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/addС
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/SigmoidЄ
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_1•
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ъ
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Ѕ
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_5:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_5љ
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_1Ч
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_1§
while/lstm_cell_10/mul_8Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_8Є
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_2•
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ъ
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Ѕ
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_6:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_6љ
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_2К
while/lstm_cell_10/TanhTanhwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh™
while/lstm_cell_10/mul_9Mulwhile/lstm_cell_10/Sigmoid:y:0while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_9Ђ
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_8:z:0while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_3Є
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02%
#while/lstm_cell_10/ReadVariableOp_3•
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ъ
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Ѕ
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_7:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/MatMul_7љ
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/add_4Ч
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Sigmoid_2О
while/lstm_cell_10/Tanh_1Tanhwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/Tanh_1∞
while/lstm_cell_10/mul_10Mul while/lstm_cell_10/Sigmoid_2:y:0while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/lstm_cell_10/mul_10б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1 
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityЁ
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ћ
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3н
while/Identity_4Identitywhile/lstm_cell_10/mul_10:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4м
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Щ
Н
'__inference_lstm_3_layer_call_fn_176757
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1741322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€$:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$
"
_user_specified_name
inputs/0
ƒ0
І
H__inference_sequential_3_layer_call_and_return_conditional_losses_175143
lstm_3_input
lstm_3_175107
lstm_3_175109
lstm_3_175111
dense_9_175114
dense_9_175116
dense_10_175120
dense_10_175122
dense_11_175125
dense_11_175127
identityИҐ dense_10/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐlstm_3/StatefulPartitionedCallҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp°
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_175107lstm_3_175109lstm_3_175111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1749502 
lstm_3/StatefulPartitionedCall∞
dense_9/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_9_175114dense_9_175116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1749912!
dense_9/StatefulPartitionedCallщ
dropout_3/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1750242
dropout_3/PartitionedCall∞
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_10_175120dense_10_175122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1750482"
 dense_10/StatefulPartitionedCallЈ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_175125dense_11_175127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1750752"
 dense_11/StatefulPartitionedCallЋ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_175107*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul√
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_175109*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulВ
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:Y U
+
_output_shapes
:€€€€€€€€€$
&
_user_specified_namelstm_3_input
»
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_175024

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ќ
л
-__inference_sequential_3_layer_call_fn_176072

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCall”
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1752472
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Ђ
√
while_cond_174050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174050___redundant_placeholder04
0while_while_cond_174050___redundant_placeholder14
0while_while_cond_174050___redundant_placeholder24
0while_while_cond_174050___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ќ
л
-__inference_sequential_3_layer_call_fn_176049

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCall”
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1751852
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
я
с
-__inference_sequential_3_layer_call_fn_175206
lstm_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1751852
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€$
&
_user_specified_namelstm_3_input
ч
µ
__inference_loss_fn_1_177863G
Clstm_3_lstm_cell_10_bias_regularizer_square_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpщ
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOpClstm_3_lstm_cell_10_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulђ
IdentityIdentity,lstm_3/lstm_cell_10/bias/Regularizer/mul:z:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp
Ђ
√
while_cond_176950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176950___redundant_placeholder04
0while_while_cond_176950___redundant_placeholder14
0while_while_cond_176950___redundant_placeholder24
0while_while_cond_176950___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
№
~
)__inference_dense_10_layer_call_fn_177519

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1750482
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
п	
№
C__inference_dense_9_layer_call_and_return_conditional_losses_174991

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Фґ
ї
B__inference_lstm_3_layer_call_and_return_conditional_losses_176746
inputs_0.
*lstm_cell_10_split_readvariableop_resource0
,lstm_cell_10_split_1_readvariableop_resource(
$lstm_cell_10_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐlstm_cell_10/ReadVariableOpҐlstm_cell_10/ReadVariableOp_1Ґlstm_cell_10/ReadVariableOp_2Ґlstm_cell_10/ReadVariableOp_3Ґ!lstm_cell_10/split/ReadVariableOpҐ#lstm_cell_10/split_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Д
lstm_cell_10/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/ShapeБ
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
lstm_cell_10/ones_like/ConstЄ
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/ones_like~
lstm_cell_10/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_10/ones_like_1/ShapeЕ
lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
lstm_cell_10/ones_like_1/Constј
lstm_cell_10/ones_like_1Fill'lstm_cell_10/ones_like_1/Shape:output:0'lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/ones_like_1Ш
lstm_cell_10/mulMulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mulЬ
lstm_cell_10/mul_1Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_1Ь
lstm_cell_10/mul_2Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_2Ь
lstm_cell_10/mul_3Mulstrided_slice_2:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_3j
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim≤
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02#
!lstm_cell_10/split/ReadVariableOpџ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_cell_10/splitЩ
lstm_cell_10/MatMulMatMullstm_cell_10/mul:z:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMulЯ
lstm_cell_10/MatMul_1MatMullstm_cell_10/mul_1:z:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_1Я
lstm_cell_10/MatMul_2MatMullstm_cell_10/mul_2:z:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_2Я
lstm_cell_10/MatMul_3MatMullstm_cell_10/mul_3:z:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_3n
lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const_1В
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dimі
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_10/split_1/ReadVariableOp”
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1І
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd≠
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_1≠
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_2≠
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_3Ф
lstm_cell_10/mul_4Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_4Ф
lstm_cell_10/mul_5Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_5Ф
lstm_cell_10/mul_6Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_6Ф
lstm_cell_10/mul_7Mulzeros:output:0!lstm_cell_10/ones_like_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_7†
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOpХ
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stackЩ
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1Щ
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2 
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_sliceІ
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul_4:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_4Я
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid§
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_1Щ
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stackЭ
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1Э
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2÷
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_5:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_5•
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_1Е
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_1П
lstm_cell_10/mul_8Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_8§
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_2Щ
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stackЭ
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1Э
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2÷
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_6:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_6•
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_2x
lstm_cell_10/TanhTanhlstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/TanhТ
lstm_cell_10/mul_9Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_9У
lstm_cell_10/add_3AddV2lstm_cell_10/mul_8:z:0lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_3§
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_3Щ
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stackЭ
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1Э
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2÷
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_7:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_7•
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_4Е
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Tanh_1Ш
lstm_cell_10/mul_10Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_10П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_176598*
condR
while_cond_176597*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeи
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulв
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЄ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$
"
_user_specified_name
inputs/0
ю	
ѕ
lstm_3_while_cond_175495*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1B
>lstm_3_while_lstm_3_while_cond_175495___redundant_placeholder0B
>lstm_3_while_lstm_3_while_cond_175495___redundant_placeholder1B
>lstm_3_while_lstm_3_while_cond_175495___redundant_placeholder2B
>lstm_3_while_lstm_3_while_cond_175495___redundant_placeholder3
lstm_3_while_identity
У
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
ц	
Ё
D__inference_dense_11_layer_call_and_return_conditional_losses_175075

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
≤0
°
H__inference_sequential_3_layer_call_and_return_conditional_losses_175247

inputs
lstm_3_175211
lstm_3_175213
lstm_3_175215
dense_9_175218
dense_9_175220
dense_10_175224
dense_10_175226
dense_11_175229
dense_11_175231
identityИҐ dense_10/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐlstm_3/StatefulPartitionedCallҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЫ
lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputslstm_3_175211lstm_3_175213lstm_3_175215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1749502 
lstm_3/StatefulPartitionedCall∞
dense_9/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_9_175218dense_9_175220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1749912!
dense_9/StatefulPartitionedCallщ
dropout_3/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1750242
dropout_3/PartitionedCall∞
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_10_175224dense_10_175226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1750482"
 dense_10/StatefulPartitionedCallЈ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_175229dense_11_175231*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1750752"
 dense_11/StatefulPartitionedCallЋ
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_175211*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mul√
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOplstm_3_175213*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulВ
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Б
Л
'__inference_lstm_3_layer_call_fn_177441

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1746832
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€$:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
ѓ
и
$__inference_signature_wrapper_175313
lstm_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCall≤
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_1734372
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€$:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€$
&
_user_specified_namelstm_3_input
ї
Ќ
-__inference_lstm_cell_10_layer_call_fn_177841

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1737332
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:€€€€€€€€€$:€€€€€€€€€ :€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Щ
Н
'__inference_lstm_3_layer_call_fn_176768
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_1742762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€$:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€$
"
_user_specified_name
inputs/0
ўШ
«

lstm_3_while_body_175496*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_3_while_lstm_cell_10_split_readvariableop_resource_0?
;lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_07
3lstm_3_while_lstm_cell_10_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor;
7lstm_3_while_lstm_cell_10_split_readvariableop_resource=
9lstm_3_while_lstm_cell_10_split_1_readvariableop_resource5
1lstm_3_while_lstm_cell_10_readvariableop_resourceИҐ(lstm_3/while/lstm_cell_10/ReadVariableOpҐ*lstm_3/while/lstm_cell_10/ReadVariableOp_1Ґ*lstm_3/while/lstm_cell_10/ReadVariableOp_2Ґ*lstm_3/while/lstm_cell_10/ReadVariableOp_3Ґ.lstm_3/while/lstm_cell_10/split/ReadVariableOpҐ0lstm_3/while/lstm_cell_10/split_1/ReadVariableOp—
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeэ
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItemљ
)lstm_3/while/lstm_cell_10/ones_like/ShapeShape7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/ones_like/ShapeЫ
)lstm_3/while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2+
)lstm_3/while/lstm_cell_10/ones_like/Constм
#lstm_3/while/lstm_cell_10/ones_likeFill2lstm_3/while/lstm_cell_10/ones_like/Shape:output:02lstm_3/while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_3/while/lstm_cell_10/ones_likeЧ
'lstm_3/while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2)
'lstm_3/while/lstm_cell_10/dropout/Constз
%lstm_3/while/lstm_cell_10/dropout/MulMul,lstm_3/while/lstm_cell_10/ones_like:output:00lstm_3/while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2'
%lstm_3/while/lstm_cell_10/dropout/MulЃ
'lstm_3/while/lstm_cell_10/dropout/ShapeShape,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2)
'lstm_3/while/lstm_cell_10/dropout/Shape°
>lstm_3/while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform0lstm_3/while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Ќ’€2@
>lstm_3/while/lstm_cell_10/dropout/random_uniform/RandomUniform©
0lstm_3/while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>22
0lstm_3/while/lstm_cell_10/dropout/GreaterEqual/y¶
.lstm_3/while/lstm_cell_10/dropout/GreaterEqualGreaterEqualGlstm_3/while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:09lstm_3/while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$20
.lstm_3/while/lstm_cell_10/dropout/GreaterEqualЌ
&lstm_3/while/lstm_cell_10/dropout/CastCast2lstm_3/while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2(
&lstm_3/while/lstm_cell_10/dropout/Castв
'lstm_3/while/lstm_cell_10/dropout/Mul_1Mul)lstm_3/while/lstm_cell_10/dropout/Mul:z:0*lstm_3/while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'lstm_3/while/lstm_cell_10/dropout/Mul_1Ы
)lstm_3/while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_1/Constн
'lstm_3/while/lstm_cell_10/dropout_1/MulMul,lstm_3/while/lstm_cell_10/ones_like:output:02lstm_3/while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'lstm_3/while/lstm_cell_10/dropout_1/Mul≤
)lstm_3/while/lstm_cell_10/dropout_1/ShapeShape,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_1/Shape¶
@lstm_3/while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ћМ[2B
@lstm_3/while/lstm_cell_10/dropout_1/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_1/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$22
0lstm_3/while/lstm_cell_10/dropout_1/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_1/CastCast4lstm_3/while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2*
(lstm_3/while/lstm_cell_10/dropout_1/Castк
)lstm_3/while/lstm_cell_10/dropout_1/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_1/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)lstm_3/while/lstm_cell_10/dropout_1/Mul_1Ы
)lstm_3/while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_2/Constн
'lstm_3/while/lstm_cell_10/dropout_2/MulMul,lstm_3/while/lstm_cell_10/ones_like:output:02lstm_3/while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'lstm_3/while/lstm_cell_10/dropout_2/Mul≤
)lstm_3/while/lstm_cell_10/dropout_2/ShapeShape,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_2/ShapeІ
@lstm_3/while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2µƒ§2B
@lstm_3/while/lstm_cell_10/dropout_2/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_2/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$22
0lstm_3/while/lstm_cell_10/dropout_2/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_2/CastCast4lstm_3/while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2*
(lstm_3/while/lstm_cell_10/dropout_2/Castк
)lstm_3/while/lstm_cell_10/dropout_2/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_2/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)lstm_3/while/lstm_cell_10/dropout_2/Mul_1Ы
)lstm_3/while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_3/Constн
'lstm_3/while/lstm_cell_10/dropout_3/MulMul,lstm_3/while/lstm_cell_10/ones_like:output:02lstm_3/while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2)
'lstm_3/while/lstm_cell_10/dropout_3/Mul≤
)lstm_3/while/lstm_cell_10/dropout_3/ShapeShape,lstm_3/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_3/ShapeІ
@lstm_3/while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2іЇј2B
@lstm_3/while/lstm_cell_10/dropout_3/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_3/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$22
0lstm_3/while/lstm_cell_10/dropout_3/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_3/CastCast4lstm_3/while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2*
(lstm_3/while/lstm_cell_10/dropout_3/Castк
)lstm_3/while/lstm_cell_10/dropout_3/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_3/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2+
)lstm_3/while/lstm_cell_10/dropout_3/Mul_1§
+lstm_3/while/lstm_cell_10/ones_like_1/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2-
+lstm_3/while/lstm_cell_10/ones_like_1/ShapeЯ
+lstm_3/while/lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2-
+lstm_3/while/lstm_cell_10/ones_like_1/Constф
%lstm_3/while/lstm_cell_10/ones_like_1Fill4lstm_3/while/lstm_cell_10/ones_like_1/Shape:output:04lstm_3/while/lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%lstm_3/while/lstm_cell_10/ones_like_1Ы
)lstm_3/while/lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_4/Constп
'lstm_3/while/lstm_cell_10/dropout_4/MulMul.lstm_3/while/lstm_cell_10/ones_like_1:output:02lstm_3/while/lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'lstm_3/while/lstm_cell_10/dropout_4/Mulі
)lstm_3/while/lstm_cell_10/dropout_4/ShapeShape.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_4/ShapeІ
@lstm_3/while/lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2СЦъ2B
@lstm_3/while/lstm_cell_10/dropout_4/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_4/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_4/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0lstm_3/while/lstm_cell_10/dropout_4/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_4/CastCast4lstm_3/while/lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2*
(lstm_3/while/lstm_cell_10/dropout_4/Castк
)lstm_3/while/lstm_cell_10/dropout_4/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_4/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)lstm_3/while/lstm_cell_10/dropout_4/Mul_1Ы
)lstm_3/while/lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_5/Constп
'lstm_3/while/lstm_cell_10/dropout_5/MulMul.lstm_3/while/lstm_cell_10/ones_like_1:output:02lstm_3/while/lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'lstm_3/while/lstm_cell_10/dropout_5/Mulі
)lstm_3/while/lstm_cell_10/dropout_5/ShapeShape.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_5/ShapeІ
@lstm_3/while/lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ѕ‘Н2B
@lstm_3/while/lstm_cell_10/dropout_5/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_5/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_5/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0lstm_3/while/lstm_cell_10/dropout_5/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_5/CastCast4lstm_3/while/lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2*
(lstm_3/while/lstm_cell_10/dropout_5/Castк
)lstm_3/while/lstm_cell_10/dropout_5/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_5/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)lstm_3/while/lstm_cell_10/dropout_5/Mul_1Ы
)lstm_3/while/lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_6/Constп
'lstm_3/while/lstm_cell_10/dropout_6/MulMul.lstm_3/while/lstm_cell_10/ones_like_1:output:02lstm_3/while/lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'lstm_3/while/lstm_cell_10/dropout_6/Mulі
)lstm_3/while/lstm_cell_10/dropout_6/ShapeShape.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_6/ShapeІ
@lstm_3/while/lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2Є¶Ѕ2B
@lstm_3/while/lstm_cell_10/dropout_6/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_6/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_6/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0lstm_3/while/lstm_cell_10/dropout_6/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_6/CastCast4lstm_3/while/lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2*
(lstm_3/while/lstm_cell_10/dropout_6/Castк
)lstm_3/while/lstm_cell_10/dropout_6/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_6/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)lstm_3/while/lstm_cell_10/dropout_6/Mul_1Ы
)lstm_3/while/lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2+
)lstm_3/while/lstm_cell_10/dropout_7/Constп
'lstm_3/while/lstm_cell_10/dropout_7/MulMul.lstm_3/while/lstm_cell_10/ones_like_1:output:02lstm_3/while/lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'lstm_3/while/lstm_cell_10/dropout_7/Mulі
)lstm_3/while/lstm_cell_10/dropout_7/ShapeShape.lstm_3/while/lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2+
)lstm_3/while/lstm_cell_10/dropout_7/ShapeІ
@lstm_3/while/lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform2lstm_3/while/lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2е≠…2B
@lstm_3/while/lstm_cell_10/dropout_7/random_uniform/RandomUniform≠
2lstm_3/while/lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>24
2lstm_3/while/lstm_cell_10/dropout_7/GreaterEqual/yЃ
0lstm_3/while/lstm_cell_10/dropout_7/GreaterEqualGreaterEqualIlstm_3/while/lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:0;lstm_3/while/lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0lstm_3/while/lstm_cell_10/dropout_7/GreaterEqual”
(lstm_3/while/lstm_cell_10/dropout_7/CastCast4lstm_3/while/lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2*
(lstm_3/while/lstm_cell_10/dropout_7/Castк
)lstm_3/while/lstm_cell_10/dropout_7/Mul_1Mul+lstm_3/while/lstm_cell_10/dropout_7/Mul:z:0,lstm_3/while/lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)lstm_3/while/lstm_cell_10/dropout_7/Mul_1Ё
lstm_3/while/lstm_cell_10/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_3/while/lstm_cell_10/mulг
lstm_3/while/lstm_cell_10/mul_1Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_3/while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/while/lstm_cell_10/mul_1г
lstm_3/while/lstm_cell_10/mul_2Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_3/while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/while/lstm_cell_10/mul_2г
lstm_3/while/lstm_cell_10/mul_3Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_3/while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2!
lstm_3/while/lstm_cell_10/mul_3Д
lstm_3/while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2!
lstm_3/while/lstm_cell_10/ConstШ
)lstm_3/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_3/while/lstm_cell_10/split/split_dimџ
.lstm_3/while/lstm_cell_10/split/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	$А*
dtype020
.lstm_3/while/lstm_cell_10/split/ReadVariableOpП
lstm_3/while/lstm_cell_10/splitSplit2lstm_3/while/lstm_cell_10/split/split_dim:output:06lstm_3/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2!
lstm_3/while/lstm_cell_10/splitЌ
 lstm_3/while/lstm_cell_10/MatMulMatMul!lstm_3/while/lstm_cell_10/mul:z:0(lstm_3/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 lstm_3/while/lstm_cell_10/MatMul”
"lstm_3/while/lstm_cell_10/MatMul_1MatMul#lstm_3/while/lstm_cell_10/mul_1:z:0(lstm_3/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_1”
"lstm_3/while/lstm_cell_10/MatMul_2MatMul#lstm_3/while/lstm_cell_10/mul_2:z:0(lstm_3/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_2”
"lstm_3/while/lstm_cell_10/MatMul_3MatMul#lstm_3/while/lstm_cell_10/mul_3:z:0(lstm_3/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_3И
!lstm_3/while/lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2#
!lstm_3/while/lstm_cell_10/Const_1Ь
+lstm_3/while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+lstm_3/while/lstm_cell_10/split_1/split_dimЁ
0lstm_3/while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_3/while/lstm_cell_10/split_1/ReadVariableOpЗ
!lstm_3/while/lstm_cell_10/split_1Split4lstm_3/while/lstm_cell_10/split_1/split_dim:output:08lstm_3/while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2#
!lstm_3/while/lstm_cell_10/split_1џ
!lstm_3/while/lstm_cell_10/BiasAddBiasAdd*lstm_3/while/lstm_cell_10/MatMul:product:0*lstm_3/while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/while/lstm_cell_10/BiasAddб
#lstm_3/while/lstm_cell_10/BiasAdd_1BiasAdd,lstm_3/while/lstm_cell_10/MatMul_1:product:0*lstm_3/while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/BiasAdd_1б
#lstm_3/while/lstm_cell_10/BiasAdd_2BiasAdd,lstm_3/while/lstm_cell_10/MatMul_2:product:0*lstm_3/while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/BiasAdd_2б
#lstm_3/while/lstm_cell_10/BiasAdd_3BiasAdd,lstm_3/while/lstm_cell_10/MatMul_3:product:0*lstm_3/while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/BiasAdd_3∆
lstm_3/while/lstm_cell_10/mul_4Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_4∆
lstm_3/while/lstm_cell_10/mul_5Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_5∆
lstm_3/while/lstm_cell_10/mul_6Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_6∆
lstm_3/while/lstm_cell_10/mul_7Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_7…
(lstm_3/while/lstm_cell_10/ReadVariableOpReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(lstm_3/while/lstm_cell_10/ReadVariableOpѓ
-lstm_3/while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-lstm_3/while/lstm_cell_10/strided_slice/stack≥
/lstm_3/while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/lstm_3/while/lstm_cell_10/strided_slice/stack_1≥
/lstm_3/while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm_3/while/lstm_cell_10/strided_slice/stack_2Ш
'lstm_3/while/lstm_cell_10/strided_sliceStridedSlice0lstm_3/while/lstm_cell_10/ReadVariableOp:value:06lstm_3/while/lstm_cell_10/strided_slice/stack:output:08lstm_3/while/lstm_cell_10/strided_slice/stack_1:output:08lstm_3/while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2)
'lstm_3/while/lstm_cell_10/strided_sliceџ
"lstm_3/while/lstm_cell_10/MatMul_4MatMul#lstm_3/while/lstm_cell_10/mul_4:z:00lstm_3/while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_4”
lstm_3/while/lstm_cell_10/addAddV2*lstm_3/while/lstm_cell_10/BiasAdd:output:0,lstm_3/while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/while/lstm_cell_10/add¶
!lstm_3/while/lstm_cell_10/SigmoidSigmoid!lstm_3/while/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!lstm_3/while/lstm_cell_10/SigmoidЌ
*lstm_3/while/lstm_cell_10/ReadVariableOp_1ReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*lstm_3/while/lstm_cell_10/ReadVariableOp_1≥
/lstm_3/while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/lstm_3/while/lstm_cell_10/strided_slice_1/stackЈ
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   23
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_1Ј
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_3/while/lstm_cell_10/strided_slice_1/stack_2§
)lstm_3/while/lstm_cell_10/strided_slice_1StridedSlice2lstm_3/while/lstm_cell_10/ReadVariableOp_1:value:08lstm_3/while/lstm_cell_10/strided_slice_1/stack:output:0:lstm_3/while/lstm_cell_10/strided_slice_1/stack_1:output:0:lstm_3/while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)lstm_3/while/lstm_cell_10/strided_slice_1Ё
"lstm_3/while/lstm_cell_10/MatMul_5MatMul#lstm_3/while/lstm_cell_10/mul_5:z:02lstm_3/while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_5ў
lstm_3/while/lstm_cell_10/add_1AddV2,lstm_3/while/lstm_cell_10/BiasAdd_1:output:0,lstm_3/while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_1ђ
#lstm_3/while/lstm_cell_10/Sigmoid_1Sigmoid#lstm_3/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/Sigmoid_1ј
lstm_3/while/lstm_cell_10/mul_8Mul'lstm_3/while/lstm_cell_10/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_8Ќ
*lstm_3/while/lstm_cell_10/ReadVariableOp_2ReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*lstm_3/while/lstm_cell_10/ReadVariableOp_2≥
/lstm_3/while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   21
/lstm_3/while/lstm_cell_10/strided_slice_2/stackЈ
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   23
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_1Ј
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_3/while/lstm_cell_10/strided_slice_2/stack_2§
)lstm_3/while/lstm_cell_10/strided_slice_2StridedSlice2lstm_3/while/lstm_cell_10/ReadVariableOp_2:value:08lstm_3/while/lstm_cell_10/strided_slice_2/stack:output:0:lstm_3/while/lstm_cell_10/strided_slice_2/stack_1:output:0:lstm_3/while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)lstm_3/while/lstm_cell_10/strided_slice_2Ё
"lstm_3/while/lstm_cell_10/MatMul_6MatMul#lstm_3/while/lstm_cell_10/mul_6:z:02lstm_3/while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_6ў
lstm_3/while/lstm_cell_10/add_2AddV2,lstm_3/while/lstm_cell_10/BiasAdd_2:output:0,lstm_3/while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_2Я
lstm_3/while/lstm_cell_10/TanhTanh#lstm_3/while/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
lstm_3/while/lstm_cell_10/Tanh∆
lstm_3/while/lstm_cell_10/mul_9Mul%lstm_3/while/lstm_cell_10/Sigmoid:y:0"lstm_3/while/lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/mul_9«
lstm_3/while/lstm_cell_10/add_3AddV2#lstm_3/while/lstm_cell_10/mul_8:z:0#lstm_3/while/lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_3Ќ
*lstm_3/while/lstm_cell_10/ReadVariableOp_3ReadVariableOp3lstm_3_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*lstm_3/while/lstm_cell_10/ReadVariableOp_3≥
/lstm_3/while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   21
/lstm_3/while/lstm_cell_10/strided_slice_3/stackЈ
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_1Ј
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1lstm_3/while/lstm_cell_10/strided_slice_3/stack_2§
)lstm_3/while/lstm_cell_10/strided_slice_3StridedSlice2lstm_3/while/lstm_cell_10/ReadVariableOp_3:value:08lstm_3/while/lstm_cell_10/strided_slice_3/stack:output:0:lstm_3/while/lstm_cell_10/strided_slice_3/stack_1:output:0:lstm_3/while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)lstm_3/while/lstm_cell_10/strided_slice_3Ё
"lstm_3/while/lstm_cell_10/MatMul_7MatMul#lstm_3/while/lstm_cell_10/mul_7:z:02lstm_3/while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"lstm_3/while/lstm_cell_10/MatMul_7ў
lstm_3/while/lstm_cell_10/add_4AddV2,lstm_3/while/lstm_cell_10/BiasAdd_3:output:0,lstm_3/while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
lstm_3/while/lstm_cell_10/add_4ђ
#lstm_3/while/lstm_cell_10/Sigmoid_2Sigmoid#lstm_3/while/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_3/while/lstm_cell_10/Sigmoid_2£
 lstm_3/while/lstm_cell_10/Tanh_1Tanh#lstm_3/while/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 lstm_3/while/lstm_cell_10/Tanh_1ћ
 lstm_3/while/lstm_cell_10/mul_10Mul'lstm_3/while/lstm_cell_10/Sigmoid_2:y:0$lstm_3/while/lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 lstm_3/while/lstm_cell_10/mul_10Д
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder$lstm_3/while/lstm_cell_10/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/yЕ
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/yЩ
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1Й
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity£
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1Л
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2Є
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3ђ
lstm_3/while/Identity_4Identity$lstm_3/while/lstm_cell_10/mul_10:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/while/Identity_4Ђ
lstm_3/while/Identity_5Identity#lstm_3/while/lstm_cell_10/add_3:z:0)^lstm_3/while/lstm_cell_10/ReadVariableOp+^lstm_3/while/lstm_cell_10/ReadVariableOp_1+^lstm_3/while/lstm_cell_10/ReadVariableOp_2+^lstm_3/while/lstm_cell_10/ReadVariableOp_3/^lstm_3/while/lstm_cell_10/split/ReadVariableOp1^lstm_3/while/lstm_cell_10/split_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"h
1lstm_3_while_lstm_cell_10_readvariableop_resource3lstm_3_while_lstm_cell_10_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_10_split_1_readvariableop_resource;lstm_3_while_lstm_cell_10_split_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_10_split_readvariableop_resource9lstm_3_while_lstm_cell_10_split_readvariableop_resource_0"ƒ
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2T
(lstm_3/while/lstm_cell_10/ReadVariableOp(lstm_3/while/lstm_cell_10/ReadVariableOp2X
*lstm_3/while/lstm_cell_10/ReadVariableOp_1*lstm_3/while/lstm_cell_10/ReadVariableOp_12X
*lstm_3/while/lstm_cell_10/ReadVariableOp_2*lstm_3/while/lstm_cell_10/ReadVariableOp_22X
*lstm_3/while/lstm_cell_10/ReadVariableOp_3*lstm_3/while/lstm_cell_10/ReadVariableOp_32`
.lstm_3/while/lstm_cell_10/split/ReadVariableOp.lstm_3/while/lstm_cell_10/split/ReadVariableOp2d
0lstm_3/while/lstm_cell_10/split_1/ReadVariableOp0lstm_3/while/lstm_cell_10/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
†Ч
«
"__inference__traced_restore_178112
file_prefix#
assignvariableop_dense_9_kernel#
assignvariableop_1_dense_9_bias&
"assignvariableop_2_dense_10_kernel$
 assignvariableop_3_dense_10_bias&
"assignvariableop_4_dense_11_kernel$
 assignvariableop_5_dense_11_bias
assignvariableop_6_iter
assignvariableop_7_beta_1
assignvariableop_8_beta_2
assignvariableop_9_decay%
!assignvariableop_10_learning_rate2
.assignvariableop_11_lstm_3_lstm_cell_10_kernel<
8assignvariableop_12_lstm_3_lstm_cell_10_recurrent_kernel0
,assignvariableop_13_lstm_3_lstm_cell_10_bias
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_1(
$assignvariableop_18_dense_9_kernel_m&
"assignvariableop_19_dense_9_bias_m)
%assignvariableop_20_dense_10_kernel_m'
#assignvariableop_21_dense_10_bias_m)
%assignvariableop_22_dense_11_kernel_m'
#assignvariableop_23_dense_11_bias_m4
0assignvariableop_24_lstm_3_lstm_cell_10_kernel_m>
:assignvariableop_25_lstm_3_lstm_cell_10_recurrent_kernel_m2
.assignvariableop_26_lstm_3_lstm_cell_10_bias_m(
$assignvariableop_27_dense_9_kernel_v&
"assignvariableop_28_dense_9_bias_v)
%assignvariableop_29_dense_10_kernel_v'
#assignvariableop_30_dense_10_bias_v)
%assignvariableop_31_dense_11_kernel_v'
#assignvariableop_32_dense_11_bias_v4
0assignvariableop_33_lstm_3_lstm_cell_10_kernel_v>
:assignvariableop_34_lstm_3_lstm_cell_10_recurrent_kernel_v2
.assignvariableop_35_lstm_3_lstm_cell_10_bias_v
identity_37ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ґ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ѓ
value§B°%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesз
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*™
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_10_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3•
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_10_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_11_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5•
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_11_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6Ь
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ю
AssignVariableOp_7AssignVariableOpassignvariableop_7_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ю
AssignVariableOp_8AssignVariableOpassignvariableop_8_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Э
AssignVariableOp_9AssignVariableOpassignvariableop_9_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10©
AssignVariableOp_10AssignVariableOp!assignvariableop_10_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ґ
AssignVariableOp_11AssignVariableOp.assignvariableop_11_lstm_3_lstm_cell_10_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12ј
AssignVariableOp_12AssignVariableOp8assignvariableop_12_lstm_3_lstm_cell_10_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13і
AssignVariableOp_13AssignVariableOp,assignvariableop_13_lstm_3_lstm_cell_10_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14°
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18ђ
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_9_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19™
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_9_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20≠
AssignVariableOp_20AssignVariableOp%assignvariableop_20_dense_10_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ђ
AssignVariableOp_21AssignVariableOp#assignvariableop_21_dense_10_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22≠
AssignVariableOp_22AssignVariableOp%assignvariableop_22_dense_11_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ђ
AssignVariableOp_23AssignVariableOp#assignvariableop_23_dense_11_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Є
AssignVariableOp_24AssignVariableOp0assignvariableop_24_lstm_3_lstm_cell_10_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¬
AssignVariableOp_25AssignVariableOp:assignvariableop_25_lstm_3_lstm_cell_10_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ґ
AssignVariableOp_26AssignVariableOp.assignvariableop_26_lstm_3_lstm_cell_10_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ђ
AssignVariableOp_27AssignVariableOp$assignvariableop_27_dense_9_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28™
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_9_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≠
AssignVariableOp_29AssignVariableOp%assignvariableop_29_dense_10_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ђ
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_10_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31≠
AssignVariableOp_31AssignVariableOp%assignvariableop_31_dense_11_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ђ
AssignVariableOp_32AssignVariableOp#assignvariableop_32_dense_11_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Є
AssignVariableOp_33AssignVariableOp0assignvariableop_33_lstm_3_lstm_cell_10_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¬
AssignVariableOp_34AssignVariableOp:assignvariableop_34_lstm_3_lstm_cell_10_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35ґ
AssignVariableOp_35AssignVariableOp.assignvariableop_35_lstm_3_lstm_cell_10_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_359
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpц
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_36й
Identity_37IdentityIdentity_36:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_37"#
identity_37Identity_37:output:0*І
_input_shapesХ
Т: ::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
п	
№
C__inference_dense_9_layer_call_and_return_conditional_losses_177463

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
р	
Ё
D__inference_dense_10_layer_call_and_return_conditional_losses_175048

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ЫТ
є
B__inference_lstm_3_layer_call_and_return_conditional_losses_174683

inputs.
*lstm_cell_10_split_readvariableop_resource0
,lstm_cell_10_split_1_readvariableop_resource(
$lstm_cell_10_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐlstm_cell_10/ReadVariableOpҐlstm_cell_10/ReadVariableOp_1Ґlstm_cell_10/ReadVariableOp_2Ґlstm_cell_10/ReadVariableOp_3Ґ!lstm_cell_10/split/ReadVariableOpҐ#lstm_cell_10/split_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Д
lstm_cell_10/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/ShapeБ
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
lstm_cell_10/ones_like/ConstЄ
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/ones_like}
lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout/Const≥
lstm_cell_10/dropout/MulMullstm_cell_10/ones_like:output:0#lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/MulЗ
lstm_cell_10/dropout/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout/Shapeщ
1lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2О‘o23
1lstm_cell_10/dropout/random_uniform/RandomUniformП
#lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2%
#lstm_cell_10/dropout/GreaterEqual/yт
!lstm_cell_10/dropout/GreaterEqualGreaterEqual:lstm_cell_10/dropout/random_uniform/RandomUniform:output:0,lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_cell_10/dropout/GreaterEqual¶
lstm_cell_10/dropout/CastCast%lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/CastЃ
lstm_cell_10/dropout/Mul_1Mullstm_cell_10/dropout/Mul:z:0lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/Mul_1Б
lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_1/Constє
lstm_cell_10/dropout_1/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/MulЛ
lstm_cell_10/dropout_1/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_1/ShapeА
3lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2У©«25
3lstm_cell_10/dropout_1/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_1/GreaterEqual/yъ
#lstm_cell_10/dropout_1/GreaterEqualGreaterEqual<lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_1/GreaterEqualђ
lstm_cell_10/dropout_1/CastCast'lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/Castґ
lstm_cell_10/dropout_1/Mul_1Mullstm_cell_10/dropout_1/Mul:z:0lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/Mul_1Б
lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_2/Constє
lstm_cell_10/dropout_2/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/MulЛ
lstm_cell_10/dropout_2/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_2/ShapeА
3lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2§√Ґ25
3lstm_cell_10/dropout_2/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_2/GreaterEqual/yъ
#lstm_cell_10/dropout_2/GreaterEqualGreaterEqual<lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_2/GreaterEqualђ
lstm_cell_10/dropout_2/CastCast'lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/Castґ
lstm_cell_10/dropout_2/Mul_1Mullstm_cell_10/dropout_2/Mul:z:0lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/Mul_1Б
lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_3/Constє
lstm_cell_10/dropout_3/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/MulЛ
lstm_cell_10/dropout_3/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_3/Shape€
3lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ђА]25
3lstm_cell_10/dropout_3/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_3/GreaterEqual/yъ
#lstm_cell_10/dropout_3/GreaterEqualGreaterEqual<lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_3/GreaterEqualђ
lstm_cell_10/dropout_3/CastCast'lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/Castґ
lstm_cell_10/dropout_3/Mul_1Mullstm_cell_10/dropout_3/Mul:z:0lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/Mul_1~
lstm_cell_10/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_10/ones_like_1/ShapeЕ
lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
lstm_cell_10/ones_like_1/Constј
lstm_cell_10/ones_like_1Fill'lstm_cell_10/ones_like_1/Shape:output:0'lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/ones_like_1Б
lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_4/Constї
lstm_cell_10/dropout_4/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/MulН
lstm_cell_10/dropout_4/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_4/ShapeА
3lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2яѓЃ25
3lstm_cell_10/dropout_4/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_4/GreaterEqual/yъ
#lstm_cell_10/dropout_4/GreaterEqualGreaterEqual<lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_4/GreaterEqualђ
lstm_cell_10/dropout_4/CastCast'lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/Castґ
lstm_cell_10/dropout_4/Mul_1Mullstm_cell_10/dropout_4/Mul:z:0lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/Mul_1Б
lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_5/Constї
lstm_cell_10/dropout_5/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/MulН
lstm_cell_10/dropout_5/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_5/ShapeА
3lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2Ѓ∆а25
3lstm_cell_10/dropout_5/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_5/GreaterEqual/yъ
#lstm_cell_10/dropout_5/GreaterEqualGreaterEqual<lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_5/GreaterEqualђ
lstm_cell_10/dropout_5/CastCast'lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/Castґ
lstm_cell_10/dropout_5/Mul_1Mullstm_cell_10/dropout_5/Mul:z:0lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/Mul_1Б
lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_6/Constї
lstm_cell_10/dropout_6/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/MulН
lstm_cell_10/dropout_6/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_6/ShapeА
3lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2з≤≈25
3lstm_cell_10/dropout_6/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_6/GreaterEqual/yъ
#lstm_cell_10/dropout_6/GreaterEqualGreaterEqual<lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_6/GreaterEqualђ
lstm_cell_10/dropout_6/CastCast'lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/Castґ
lstm_cell_10/dropout_6/Mul_1Mullstm_cell_10/dropout_6/Mul:z:0lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/Mul_1Б
lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_7/Constї
lstm_cell_10/dropout_7/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/MulН
lstm_cell_10/dropout_7/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_7/ShapeА
3lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2™ъЖ25
3lstm_cell_10/dropout_7/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_7/GreaterEqual/yъ
#lstm_cell_10/dropout_7/GreaterEqualGreaterEqual<lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_7/GreaterEqualђ
lstm_cell_10/dropout_7/CastCast'lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/Castґ
lstm_cell_10/dropout_7/Mul_1Mullstm_cell_10/dropout_7/Mul:z:0lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/Mul_1Ч
lstm_cell_10/mulMulstrided_slice_2:output:0lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mulЭ
lstm_cell_10/mul_1Mulstrided_slice_2:output:0 lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_1Э
lstm_cell_10/mul_2Mulstrided_slice_2:output:0 lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_2Э
lstm_cell_10/mul_3Mulstrided_slice_2:output:0 lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_3j
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim≤
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02#
!lstm_cell_10/split/ReadVariableOpџ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_cell_10/splitЩ
lstm_cell_10/MatMulMatMullstm_cell_10/mul:z:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMulЯ
lstm_cell_10/MatMul_1MatMullstm_cell_10/mul_1:z:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_1Я
lstm_cell_10/MatMul_2MatMullstm_cell_10/mul_2:z:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_2Я
lstm_cell_10/MatMul_3MatMullstm_cell_10/mul_3:z:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_3n
lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const_1В
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dimі
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_10/split_1/ReadVariableOp”
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1І
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd≠
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_1≠
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_2≠
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_3У
lstm_cell_10/mul_4Mulzeros:output:0 lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_4У
lstm_cell_10/mul_5Mulzeros:output:0 lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_5У
lstm_cell_10/mul_6Mulzeros:output:0 lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_6У
lstm_cell_10/mul_7Mulzeros:output:0 lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_7†
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOpХ
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stackЩ
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1Щ
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2 
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_sliceІ
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul_4:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_4Я
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid§
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_1Щ
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stackЭ
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1Э
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2÷
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_5:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_5•
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_1Е
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_1П
lstm_cell_10/mul_8Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_8§
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_2Щ
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stackЭ
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1Э
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2÷
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_6:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_6•
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_2x
lstm_cell_10/TanhTanhlstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/TanhТ
lstm_cell_10/mul_9Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_9У
lstm_cell_10/add_3AddV2lstm_cell_10/mul_8:z:0lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_3§
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_3Щ
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stackЭ
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1Э
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2÷
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_7:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_7•
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_4Е
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Tanh_1Ш
lstm_cell_10/mul_10Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_10П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174471*
condR
while_cond_174470*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeи
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulв
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЄ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs
Ы%
С
while_body_174195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_10_174219_0
while_lstm_cell_10_174221_0
while_lstm_cell_10_174223_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_10_174219
while_lstm_cell_10_174221
while_lstm_cell_10_174223ИҐ*while/lstm_cell_10/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€$*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_174219_0while_lstm_cell_10_174221_0while_lstm_cell_10_174223_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1737332,
*while/lstm_cell_10/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ƒ
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1+^while/lstm_cell_10/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ƒ
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2+^while/lstm_cell_10/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_174219while_lstm_cell_10_174219_0"8
while_lstm_cell_10_174221while_lstm_cell_10_174221_0"8
while_lstm_cell_10_174223while_lstm_cell_10_174223_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : :::2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ю	
ѕ
lstm_3_while_cond_175855*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1B
>lstm_3_while_lstm_3_while_cond_175855___redundant_placeholder0B
>lstm_3_while_lstm_3_while_cond_175855___redundant_placeholder1B
>lstm_3_while_lstm_3_while_cond_175855___redundant_placeholder2B
>lstm_3_while_lstm_3_while_cond_175855___redundant_placeholder3
lstm_3_while_identity
У
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ђ
√
while_cond_176597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176597___redundant_placeholder04
0while_while_cond_176597___redundant_placeholder14
0while_while_cond_176597___redundant_placeholder24
0while_while_cond_176597___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
ЪТ
є
B__inference_lstm_3_layer_call_and_return_conditional_losses_177163

inputs.
*lstm_cell_10_split_readvariableop_resource0
,lstm_cell_10_split_1_readvariableop_resource(
$lstm_cell_10_readvariableop_resource
identityИҐ:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpҐ<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpҐlstm_cell_10/ReadVariableOpҐlstm_cell_10/ReadVariableOp_1Ґlstm_cell_10/ReadVariableOp_2Ґlstm_cell_10/ReadVariableOp_3Ґ!lstm_cell_10/split/ReadVariableOpҐ#lstm_cell_10/split_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€$2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€$   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€$*
shrink_axis_mask2
strided_slice_2Д
lstm_cell_10/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/ShapeБ
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
lstm_cell_10/ones_like/ConstЄ
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/ones_like}
lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout/Const≥
lstm_cell_10/dropout/MulMullstm_cell_10/ones_like:output:0#lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/MulЗ
lstm_cell_10/dropout/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout/Shapeъ
1lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ксІ23
1lstm_cell_10/dropout/random_uniform/RandomUniformП
#lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2%
#lstm_cell_10/dropout/GreaterEqual/yт
!lstm_cell_10/dropout/GreaterEqualGreaterEqual:lstm_cell_10/dropout/random_uniform/RandomUniform:output:0,lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2#
!lstm_cell_10/dropout/GreaterEqual¶
lstm_cell_10/dropout/CastCast%lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/CastЃ
lstm_cell_10/dropout/Mul_1Mullstm_cell_10/dropout/Mul:z:0lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout/Mul_1Б
lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_1/Constє
lstm_cell_10/dropout_1/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/MulЛ
lstm_cell_10/dropout_1/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_1/Shape€
3lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2ъА25
3lstm_cell_10/dropout_1/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_1/GreaterEqual/yъ
#lstm_cell_10/dropout_1/GreaterEqualGreaterEqual<lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_1/GreaterEqualђ
lstm_cell_10/dropout_1/CastCast'lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/Castґ
lstm_cell_10/dropout_1/Mul_1Mullstm_cell_10/dropout_1/Mul:z:0lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_1/Mul_1Б
lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_2/Constє
lstm_cell_10/dropout_2/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/MulЛ
lstm_cell_10/dropout_2/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_2/ShapeА
3lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Їа≤25
3lstm_cell_10/dropout_2/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_2/GreaterEqual/yъ
#lstm_cell_10/dropout_2/GreaterEqualGreaterEqual<lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_2/GreaterEqualђ
lstm_cell_10/dropout_2/CastCast'lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/Castґ
lstm_cell_10/dropout_2/Mul_1Mullstm_cell_10/dropout_2/Mul:z:0lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_2/Mul_1Б
lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_3/Constє
lstm_cell_10/dropout_3/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/MulЛ
lstm_cell_10/dropout_3/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_3/ShapeА
3lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€$*
dtype0*
seed±€е)*
seed2Ґ©√25
3lstm_cell_10/dropout_3/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_3/GreaterEqual/yъ
#lstm_cell_10/dropout_3/GreaterEqualGreaterEqual<lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€$2%
#lstm_cell_10/dropout_3/GreaterEqualђ
lstm_cell_10/dropout_3/CastCast'lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/Castґ
lstm_cell_10/dropout_3/Mul_1Mullstm_cell_10/dropout_3/Mul:z:0lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/dropout_3/Mul_1~
lstm_cell_10/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_10/ones_like_1/ShapeЕ
lstm_cell_10/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2 
lstm_cell_10/ones_like_1/Constј
lstm_cell_10/ones_like_1Fill'lstm_cell_10/ones_like_1/Shape:output:0'lstm_cell_10/ones_like_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/ones_like_1Б
lstm_cell_10/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_4/Constї
lstm_cell_10/dropout_4/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_4/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/MulН
lstm_cell_10/dropout_4/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_4/Shape€
3lstm_cell_10/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_4/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2ГиD25
3lstm_cell_10/dropout_4/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_4/GreaterEqual/yъ
#lstm_cell_10/dropout_4/GreaterEqualGreaterEqual<lstm_cell_10/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_4/GreaterEqualђ
lstm_cell_10/dropout_4/CastCast'lstm_cell_10/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/Castґ
lstm_cell_10/dropout_4/Mul_1Mullstm_cell_10/dropout_4/Mul:z:0lstm_cell_10/dropout_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_4/Mul_1Б
lstm_cell_10/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_5/Constї
lstm_cell_10/dropout_5/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_5/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/MulН
lstm_cell_10/dropout_5/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_5/ShapeА
3lstm_cell_10/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_5/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2тЈп25
3lstm_cell_10/dropout_5/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_5/GreaterEqual/yъ
#lstm_cell_10/dropout_5/GreaterEqualGreaterEqual<lstm_cell_10/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_5/GreaterEqualђ
lstm_cell_10/dropout_5/CastCast'lstm_cell_10/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/Castґ
lstm_cell_10/dropout_5/Mul_1Mullstm_cell_10/dropout_5/Mul:z:0lstm_cell_10/dropout_5/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_5/Mul_1Б
lstm_cell_10/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_6/Constї
lstm_cell_10/dropout_6/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_6/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/MulН
lstm_cell_10/dropout_6/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_6/Shape€
3lstm_cell_10/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_6/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2Ши$25
3lstm_cell_10/dropout_6/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_6/GreaterEqual/yъ
#lstm_cell_10/dropout_6/GreaterEqualGreaterEqual<lstm_cell_10/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_6/GreaterEqualђ
lstm_cell_10/dropout_6/CastCast'lstm_cell_10/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/Castґ
lstm_cell_10/dropout_6/Mul_1Mullstm_cell_10/dropout_6/Mul:z:0lstm_cell_10/dropout_6/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_6/Mul_1Б
lstm_cell_10/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
lstm_cell_10/dropout_7/Constї
lstm_cell_10/dropout_7/MulMul!lstm_cell_10/ones_like_1:output:0%lstm_cell_10/dropout_7/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/MulН
lstm_cell_10/dropout_7/ShapeShape!lstm_cell_10/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_7/ShapeА
3lstm_cell_10/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_7/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*
seed±€е)*
seed2€ЅЏ25
3lstm_cell_10/dropout_7/random_uniform/RandomUniformУ
%lstm_cell_10/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2'
%lstm_cell_10/dropout_7/GreaterEqual/yъ
#lstm_cell_10/dropout_7/GreaterEqualGreaterEqual<lstm_cell_10/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#lstm_cell_10/dropout_7/GreaterEqualђ
lstm_cell_10/dropout_7/CastCast'lstm_cell_10/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/Castґ
lstm_cell_10/dropout_7/Mul_1Mullstm_cell_10/dropout_7/Mul:z:0lstm_cell_10/dropout_7/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/dropout_7/Mul_1Ч
lstm_cell_10/mulMulstrided_slice_2:output:0lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mulЭ
lstm_cell_10/mul_1Mulstrided_slice_2:output:0 lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_1Э
lstm_cell_10/mul_2Mulstrided_slice_2:output:0 lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_2Э
lstm_cell_10/mul_3Mulstrided_slice_2:output:0 lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€$2
lstm_cell_10/mul_3j
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim≤
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02#
!lstm_cell_10/split/ReadVariableOpџ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:$ :$ :$ :$ *
	num_split2
lstm_cell_10/splitЩ
lstm_cell_10/MatMulMatMullstm_cell_10/mul:z:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMulЯ
lstm_cell_10/MatMul_1MatMullstm_cell_10/mul_1:z:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_1Я
lstm_cell_10/MatMul_2MatMullstm_cell_10/mul_2:z:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_2Я
lstm_cell_10/MatMul_3MatMullstm_cell_10/mul_3:z:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_3n
lstm_cell_10/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const_1В
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dimі
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_10/split_1/ReadVariableOp”
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1І
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd≠
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_1≠
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_2≠
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/BiasAdd_3У
lstm_cell_10/mul_4Mulzeros:output:0 lstm_cell_10/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_4У
lstm_cell_10/mul_5Mulzeros:output:0 lstm_cell_10/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_5У
lstm_cell_10/mul_6Mulzeros:output:0 lstm_cell_10/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_6У
lstm_cell_10/mul_7Mulzeros:output:0 lstm_cell_10/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_7†
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOpХ
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stackЩ
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1Щ
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2 
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_sliceІ
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul_4:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_4Я
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid§
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_1Щ
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stackЭ
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1Э
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2÷
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_5:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_5•
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_1Е
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_1П
lstm_cell_10/mul_8Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_8§
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_2Щ
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stackЭ
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1Э
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2÷
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_6:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_6•
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_2x
lstm_cell_10/TanhTanhlstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/TanhТ
lstm_cell_10/mul_9Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_9У
lstm_cell_10/add_3AddV2lstm_cell_10/mul_8:z:0lstm_cell_10/mul_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_3§
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm_cell_10/ReadVariableOp_3Щ
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stackЭ
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1Э
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2÷
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_7:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/MatMul_7•
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/add_4Е
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Tanh_1Tanhlstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/Tanh_1Ш
lstm_cell_10/mul_10Mullstm_cell_10/Sigmoid_2:y:0lstm_cell_10/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm_cell_10/mul_10П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_176951*
condR
while_cond_176950*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeи
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	$А*
dtype02>
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpЎ
-lstm_3/lstm_cell_10/kernel/Regularizer/SquareSquareDlstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	$А2/
-lstm_3/lstm_cell_10/kernel/Regularizer/Square≠
,lstm_3/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_3/lstm_cell_10/kernel/Regularizer/Constк
*lstm_3/lstm_cell_10/kernel/Regularizer/SumSum1lstm_3/lstm_cell_10/kernel/Regularizer/Square:y:05lstm_3/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/Sum°
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,lstm_3/lstm_cell_10/kernel/Regularizer/mul/xм
*lstm_3/lstm_cell_10/kernel/Regularizer/mulMul5lstm_3/lstm_cell_10/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*lstm_3/lstm_cell_10/kernel/Regularizer/mulв
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOpќ
+lstm_3/lstm_cell_10/bias/Regularizer/SquareSquareBlstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2-
+lstm_3/lstm_cell_10/bias/Regularizer/SquareҐ
*lstm_3/lstm_cell_10/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*lstm_3/lstm_cell_10/bias/Regularizer/Constв
(lstm_3/lstm_cell_10/bias/Regularizer/SumSum/lstm_3/lstm_cell_10/bias/Regularizer/Square:y:03lstm_3/lstm_cell_10/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/SumЭ
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2,
*lstm_3/lstm_cell_10/bias/Regularizer/mul/xд
(lstm_3/lstm_cell_10/bias/Regularizer/mulMul3lstm_3/lstm_cell_10/bias/Regularizer/mul/x:output:01lstm_3/lstm_cell_10/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(lstm_3/lstm_cell_10/bias/Regularizer/mulЄ
IdentityIdentitystrided_slice_3:output:0;^lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp=^lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€$:::2x
:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp:lstm_3/lstm_cell_10/bias/Regularizer/Square/ReadVariableOp2|
<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp<lstm_3/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€$
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*є
serving_default•
I
lstm_3_input9
serving_default_lstm_3_input:0€€€€€€€€€$<
dense_110
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:“т
Ђ5
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
*u&call_and_return_all_conditional_losses
v__call__
w_default_save_signature"Ј2
_tf_keras_sequentialШ2{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 36]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_3_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 36]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "recurrent_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 32, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 36]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 36]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 36]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_3_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 36]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "recurrent_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 32, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
™
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
*x&call_and_return_all_conditional_losses
y__call__"Б
_tf_keras_rnn_layerг{"class_name": "LSTM", "name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 36]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 36]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "recurrent_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 36]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 36]}}
у

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*z&call_and_return_all_conditional_losses
{__call__"ќ
_tf_keras_layerі{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 32, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
е
	variables
trainable_variables
regularization_losses
	keras_api
*|&call_and_return_all_conditional_losses
}__call__"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
х

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
*~&call_and_return_all_conditional_losses
__call__"–
_tf_keras_layerґ{"class_name": "Dense", "name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
ц

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+А&call_and_return_all_conditional_losses
Б__call__"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
х
(iter

)beta_1

*beta_2
	+decay
,learning_ratemcmdmemf"mg#mh-mi.mj/mkvlvmvnvo"vp#vq-vr.vs/vt"
	optimizer
_
-0
.1
/2
3
4
5
6
"7
#8"
trackable_list_wrapper
_
-0
.1
/2
3
4
5
6
"7
#8"
trackable_list_wrapper
 "
trackable_list_wrapper
 

0layers
1metrics
	variables
trainable_variables
2non_trainable_variables
	regularization_losses
3layer_regularization_losses
4layer_metrics
v__call__
w_default_save_signature
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
-
Вserving_default"
signature_map
Ю	

-kernel
.recurrent_kernel
/bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
+Г&call_and_return_all_conditional_losses
Д__call__"б
_tf_keras_layer«{"class_name": "LSTMCell", "name": "lstm_cell_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_10", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "recurrent_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
0
Е0
Ж1"
trackable_list_wrapper
є

9layers
	variables
:metrics
trainable_variables
;non_trainable_variables
regularization_losses
<layer_regularization_losses
=layer_metrics

>states
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 :  2dense_9/kernel
: 2dense_9/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠

?layers
@metrics
	variables
trainable_variables
Anon_trainable_variables
regularization_losses
Blayer_regularization_losses
Clayer_metrics
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠

Dlayers
Emetrics
	variables
trainable_variables
Fnon_trainable_variables
regularization_losses
Glayer_regularization_losses
Hlayer_metrics
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
!:  2dense_10/kernel
: 2dense_10/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠

Ilayers
Jmetrics
	variables
trainable_variables
Knon_trainable_variables
 regularization_losses
Llayer_regularization_losses
Mlayer_metrics
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_11/kernel
:2dense_11/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞

Nlayers
Ometrics
$	variables
%trainable_variables
Pnon_trainable_variables
&regularization_losses
Qlayer_regularization_losses
Rlayer_metrics
Б__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
-:+	$А2lstm_3/lstm_cell_10/kernel
7:5	 А2$lstm_3/lstm_cell_10/recurrent_kernel
':%А2lstm_3/lstm_cell_10/bias
C
0
1
2
3
4"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
0
Е0
Ж1"
trackable_list_wrapper
∞

Ulayers
Vmetrics
5	variables
6trainable_variables
Wnon_trainable_variables
7regularization_losses
Xlayer_regularization_losses
Ylayer_metrics
Д__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ї
	Ztotal
	[count
\	variables
]	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
€
	^total
	_count
`
_fn_kwargs
a	variables
b	keras_api"Є
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Е0
Ж1"
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
Z0
[1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
^0
_1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
 :  2dense_9/kernel/m
: 2dense_9/bias/m
!:  2dense_10/kernel/m
: 2dense_10/bias/m
!: 2dense_11/kernel/m
:2dense_11/bias/m
-:+	$А2lstm_3/lstm_cell_10/kernel/m
7:5	 А2&lstm_3/lstm_cell_10/recurrent_kernel/m
':%А2lstm_3/lstm_cell_10/bias/m
 :  2dense_9/kernel/v
: 2dense_9/bias/v
!:  2dense_10/kernel/v
: 2dense_10/bias/v
!: 2dense_11/kernel/v
:2dense_11/bias/v
-:+	$А2lstm_3/lstm_cell_10/kernel/v
7:5	 А2&lstm_3/lstm_cell_10/recurrent_kernel/v
':%А2lstm_3/lstm_cell_10/bias/v
о2л
H__inference_sequential_3_layer_call_and_return_conditional_losses_176026
H__inference_sequential_3_layer_call_and_return_conditional_losses_175737
H__inference_sequential_3_layer_call_and_return_conditional_losses_175143
H__inference_sequential_3_layer_call_and_return_conditional_losses_175104ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€
-__inference_sequential_3_layer_call_fn_176072
-__inference_sequential_3_layer_call_fn_175268
-__inference_sequential_3_layer_call_fn_176049
-__inference_sequential_3_layer_call_fn_175206ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
и2е
!__inference__wrapped_model_173437њ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ */Ґ,
*К'
lstm_3_input€€€€€€€€€$
л2и
B__inference_lstm_3_layer_call_and_return_conditional_losses_176746
B__inference_lstm_3_layer_call_and_return_conditional_losses_177163
B__inference_lstm_3_layer_call_and_return_conditional_losses_177430
B__inference_lstm_3_layer_call_and_return_conditional_losses_176479’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€2ь
'__inference_lstm_3_layer_call_fn_176768
'__inference_lstm_3_layer_call_fn_176757
'__inference_lstm_3_layer_call_fn_177441
'__inference_lstm_3_layer_call_fn_177452’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_dense_9_layer_call_and_return_conditional_losses_177463Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_9_layer_call_fn_177472Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
»2≈
E__inference_dropout_3_layer_call_and_return_conditional_losses_177484
E__inference_dropout_3_layer_call_and_return_conditional_losses_177489і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Т2П
*__inference_dropout_3_layer_call_fn_177494
*__inference_dropout_3_layer_call_fn_177499і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
D__inference_dense_10_layer_call_and_return_conditional_losses_177510Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_dense_10_layer_call_fn_177519Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_dense_11_layer_call_and_return_conditional_losses_177530Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_dense_11_layer_call_fn_177539Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–BЌ
$__inference_signature_wrapper_175313lstm_3_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_177711
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_177807Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ґ2Я
-__inference_lstm_cell_10_layer_call_fn_177824
-__inference_lstm_cell_10_layer_call_fn_177841Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
≥2∞
__inference_loss_fn_0_177852П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_1_177863П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ †
!__inference__wrapped_model_173437{	-/."#9Ґ6
/Ґ,
*К'
lstm_3_input€€€€€€€€€$
™ "3™0
.
dense_11"К
dense_11€€€€€€€€€§
D__inference_dense_10_layer_call_and_return_conditional_losses_177510\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ |
)__inference_dense_10_layer_call_fn_177519O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€ §
D__inference_dense_11_layer_call_and_return_conditional_losses_177530\"#/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
)__inference_dense_11_layer_call_fn_177539O"#/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€£
C__inference_dense_9_layer_call_and_return_conditional_losses_177463\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ {
(__inference_dense_9_layer_call_fn_177472O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€ •
E__inference_dropout_3_layer_call_and_return_conditional_losses_177484\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ •
E__inference_dropout_3_layer_call_and_return_conditional_losses_177489\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ }
*__inference_dropout_3_layer_call_fn_177494O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "К€€€€€€€€€ }
*__inference_dropout_3_layer_call_fn_177499O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "К€€€€€€€€€ ;
__inference_loss_fn_0_177852-Ґ

Ґ 
™ "К ;
__inference_loss_fn_1_177863/Ґ

Ґ 
™ "К √
B__inference_lstm_3_layer_call_and_return_conditional_losses_176479}-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€$

 
p

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ √
B__inference_lstm_3_layer_call_and_return_conditional_losses_176746}-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€$

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ ≥
B__inference_lstm_3_layer_call_and_return_conditional_losses_177163m-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€$

 
p

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ ≥
B__inference_lstm_3_layer_call_and_return_conditional_losses_177430m-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€$

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ Ы
'__inference_lstm_3_layer_call_fn_176757p-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€$

 
p

 
™ "К€€€€€€€€€ Ы
'__inference_lstm_3_layer_call_fn_176768p-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€$

 
p 

 
™ "К€€€€€€€€€ Л
'__inference_lstm_3_layer_call_fn_177441`-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€$

 
p

 
™ "К€€€€€€€€€ Л
'__inference_lstm_3_layer_call_fn_177452`-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€$

 
p 

 
™ "К€€€€€€€€€  
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_177711э-/.АҐ}
vҐs
 К
inputs€€€€€€€€€$
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€ 
EЪB
К
0/1/0€€€€€€€€€ 
К
0/1/1€€€€€€€€€ 
Ъ  
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_177807э-/.АҐ}
vҐs
 К
inputs€€€€€€€€€$
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€ 
EЪB
К
0/1/0€€€€€€€€€ 
К
0/1/1€€€€€€€€€ 
Ъ Я
-__inference_lstm_cell_10_layer_call_fn_177824н-/.АҐ}
vҐs
 К
inputs€€€€€€€€€$
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p
™ "cҐ`
К
0€€€€€€€€€ 
AЪ>
К
1/0€€€€€€€€€ 
К
1/1€€€€€€€€€ Я
-__inference_lstm_cell_10_layer_call_fn_177841н-/.АҐ}
vҐs
 К
inputs€€€€€€€€€$
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p 
™ "cҐ`
К
0€€€€€€€€€ 
AЪ>
К
1/0€€€€€€€€€ 
К
1/1€€€€€€€€€ Ѕ
H__inference_sequential_3_layer_call_and_return_conditional_losses_175104u	-/."#AҐ>
7Ґ4
*К'
lstm_3_input€€€€€€€€€$
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѕ
H__inference_sequential_3_layer_call_and_return_conditional_losses_175143u	-/."#AҐ>
7Ґ4
*К'
lstm_3_input€€€€€€€€€$
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ї
H__inference_sequential_3_layer_call_and_return_conditional_losses_175737o	-/."#;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€$
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ї
H__inference_sequential_3_layer_call_and_return_conditional_losses_176026o	-/."#;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€$
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Щ
-__inference_sequential_3_layer_call_fn_175206h	-/."#AҐ>
7Ґ4
*К'
lstm_3_input€€€€€€€€€$
p

 
™ "К€€€€€€€€€Щ
-__inference_sequential_3_layer_call_fn_175268h	-/."#AҐ>
7Ґ4
*К'
lstm_3_input€€€€€€€€€$
p 

 
™ "К€€€€€€€€€У
-__inference_sequential_3_layer_call_fn_176049b	-/."#;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€$
p

 
™ "К€€€€€€€€€У
-__inference_sequential_3_layer_call_fn_176072b	-/."#;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€$
p 

 
™ "К€€€€€€€€€і
$__inference_signature_wrapper_175313Л	-/."#IҐF
Ґ 
?™<
:
lstm_3_input*К'
lstm_3_input€€€€€€€€€$"3™0
.
dense_11"К
dense_11€€€€€€€€€
��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
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
delete_old_dirsbool(�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
�
SGD/dense_2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameSGD/dense_2/bias/momentum
�
-SGD/dense_2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_2/bias/momentum*
_output_shapes
:*
dtype0
�
SGD/dense_2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_nameSGD/dense_2/kernel/momentum
�
/SGD/dense_2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_2/kernel/momentum*
_output_shapes
:	�*
dtype0
�
SGD/dense_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameSGD/dense_1/bias/momentum
�
-SGD/dense_1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_1/bias/momentum*
_output_shapes	
:�*
dtype0
�
SGD/dense_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*,
shared_nameSGD/dense_1/kernel/momentum
�
/SGD/dense_1/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_1/kernel/momentum* 
_output_shapes
:
��*
dtype0
�
SGD/dense/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameSGD/dense/bias/momentum
�
+SGD/dense/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense/bias/momentum*
_output_shapes	
:�*
dtype0
�
SGD/dense/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�**
shared_nameSGD/dense/kernel/momentum
�
-SGD/dense/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense/kernel/momentum*
_output_shapes
:	d�*
dtype0
�
#SGD/embedding_1/embeddings/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��2*4
shared_name%#SGD/embedding_1/embeddings/momentum
�
7SGD/embedding_1/embeddings/momentum/Read/ReadVariableOpReadVariableOp#SGD/embedding_1/embeddings/momentum* 
_output_shapes
:
��2*
dtype0
�
!SGD/embedding/embeddings/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��2*2
shared_name#!SGD/embedding/embeddings/momentum
�
5SGD/embedding/embeddings/momentum/Read/ReadVariableOpReadVariableOp!SGD/embedding/embeddings/momentum* 
_output_shapes
:
��2*
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
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
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
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	d�*
dtype0
�
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��2*'
shared_nameembedding_1/embeddings
�
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings* 
_output_shapes
:
��2*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��2*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
��2*
dtype0

NoOpNoOp
�E
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�D
value�DB�D B�D
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	model
		optimizer


signatures*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
* 
�
 layer-0
!layer-1
"layer_with_weights-0
"layer-2
#layer_with_weights-1
#layer-3
$layer-4
%layer-5
&layer-6
'layer_with_weights-2
'layer-7
(layer_with_weights-3
(layer-8
)layer_with_weights-4
)layer-9
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
�
	0decay
1learning_rate
2momentum
3itermomentum�momentum�momentum�momentum�momentum�momentum�momentum�momentum�*

4serving_default* 
TN
VARIABLE_VALUEembedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEembedding_1/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

50*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

embeddings*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

embeddings*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

kernel
bias*
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

kernel
bias*
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

kernel
bias*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*

f0
g1* 
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
P
mtrace_0
ntrace_1
otrace_2
ptrace_3
qtrace_4
rtrace_5* 
P
strace_0
ttrace_1
utrace_2
vtrace_3
wtrace_4
xtrace_5* 
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 
8
y	variables
z	keras_api
	{total
	|count*

0*

0*
	
f0* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0*

0*
	
g0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
J
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

{0
|1*

y	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
	
f0* 
* 
* 
* 
* 
* 
* 
	
g0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�~
VARIABLE_VALUE!SGD/embedding/embeddings/momentumIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#SGD/embedding_1/embeddings/momentumIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUESGD/dense/kernel/momentumIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUESGD/dense/bias/momentumIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/dense_1/kernel/momentumIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUESGD/dense_1/bias/momentumIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/dense_2/kernel/momentumIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUESGD/dense_2/bias/momentumIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
r
serving_default_input_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
r
serving_default_input_2Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2embedding_1/embeddingsembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1467268
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp5SGD/embedding/embeddings/momentum/Read/ReadVariableOp7SGD/embedding_1/embeddings/momentum/Read/ReadVariableOp-SGD/dense/kernel/momentum/Read/ReadVariableOp+SGD/dense/bias/momentum/Read/ReadVariableOp/SGD/dense_1/kernel/momentum/Read/ReadVariableOp-SGD/dense_1/bias/momentum/Read/ReadVariableOp/SGD/dense_2/kernel/momentum/Read/ReadVariableOp-SGD/dense_2/bias/momentum/Read/ReadVariableOpConst*#
Tin
2	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1468030
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsembedding_1/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdecaylearning_ratemomentumSGD/itertotalcount!SGD/embedding/embeddings/momentum#SGD/embedding_1/embeddings/momentumSGD/dense/kernel/momentumSGD/dense/bias/momentumSGD/dense_1/kernel/momentumSGD/dense_1/bias/momentumSGD/dense_2/kernel/momentumSGD/dense_2/bias/momentum*"
Tin
2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1468106�
�
�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467194
input_1
input_2!
model_1467164:
��2!
model_1467166:
��2 
model_1467168:	d�
model_1467170:	�!
model_1467172:
��
model_1467174:	� 
model_1467176:	�
model_1467178:
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallinput_1input_2model_1467164model_1467166model_1467168model_1467170model_1467172model_1467174model_1467176model_1467178*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466905�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1467166* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1467164* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:LH
#
_output_shapes
:���������
!
_user_specified_name	input_2
�

�
'__inference_model_layer_call_fn_1466754
input_1
input_2
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2
�

�
B__inference_dense_layer_call_and_return_conditional_losses_1467879

inputs1
matmul_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�K
�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467434
x_0
x_1>
*model_embedding_1_embedding_lookup_1467384:
��2<
(model_embedding_embedding_lookup_1467390:
��2=
*model_dense_matmul_readvariableop_resource:	d�:
+model_dense_biasadd_readvariableop_resource:	�@
,model_dense_1_matmul_readvariableop_resource:
��<
-model_dense_1_biasadd_readvariableop_resource:	�?
,model_dense_2_matmul_readvariableop_resource:	�;
-model_dense_2_biasadd_readvariableop_resource:
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp� model/embedding/embedding_lookup�"model/embedding_1/embedding_lookup_
model/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������t
model/ExpandDims
ExpandDimsx_0model/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������n

model/CastCastmodel/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������a
model/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������x
model/ExpandDims_1
ExpandDimsx_1model/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������r
model/Cast_1Castmodel/ExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������q
model/embedding_1/CastCastmodel/Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
"model/embedding_1/embedding_lookupResourceGather*model_embedding_1_embedding_lookup_1467384model/embedding_1/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_1/embedding_lookup/1467384*+
_output_shapes
:���������2*
dtype0�
+model/embedding_1/embedding_lookup/IdentityIdentity+model/embedding_1/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_1/embedding_lookup/1467384*+
_output_shapes
:���������2�
-model/embedding_1/embedding_lookup/Identity_1Identity4model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2m
model/embedding/CastCastmodel/Cast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
 model/embedding/embedding_lookupResourceGather(model_embedding_embedding_lookup_1467390model/embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@model/embedding/embedding_lookup/1467390*+
_output_shapes
:���������2*
dtype0�
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model/embedding/embedding_lookup/1467390*+
_output_shapes
:���������2�
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model/flatten/ReshapeReshape4model/embedding/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:���������2f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model/flatten_1/ReshapeReshape6model/embedding_1/embedding_lookup/Identity_1:output:0model/flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/concatenate/concatConcatV2model/flatten/Reshape:output:0 model/flatten_1/Reshape:output:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(model_embedding_embedding_lookup_1467390* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*model_embedding_1_embedding_lookup_1467384* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
IdentityIdentitymodel/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp!^model/embedding/embedding_lookup#^model/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2H
"model/embedding_1/embedding_lookup"model/embedding_1/embedding_lookup:H D
#
_output_shapes
:���������

_user_specified_namex/0:HD
#
_output_shapes
:���������

_user_specified_namex/1
�A
�
B__inference_model_layer_call_and_return_conditional_losses_1467656
inputs_0
inputs_18
$embedding_1_embedding_lookup_1467606:
��26
"embedding_embedding_lookup_1467612:
��27
$dense_matmul_readvariableop_resource:	d�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_1/embedding_lookup�8embedding_1/embeddings/Regularizer/Square/ReadVariableOpc
embedding_1/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1467606embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467606*+
_output_shapes
:���������2*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467606*+
_output_shapes
:���������2�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2a
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1467612embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1467612*+
_output_shapes
:���������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1467612*+
_output_shapes
:���������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1467612* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1467606* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_1466481

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
+__inference_embedding_layer_call_fn_1467785

inputs
unknown:
��2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1466471s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�	
"__inference__wrapped_model_1466426
input_1
input_2Q
=recommender__model_model_embedding_1_embedding_lookup_1466388:
��2O
;recommender__model_model_embedding_embedding_lookup_1466394:
��2P
=recommender__model_model_dense_matmul_readvariableop_resource:	d�M
>recommender__model_model_dense_biasadd_readvariableop_resource:	�S
?recommender__model_model_dense_1_matmul_readvariableop_resource:
��O
@recommender__model_model_dense_1_biasadd_readvariableop_resource:	�R
?recommender__model_model_dense_2_matmul_readvariableop_resource:	�N
@recommender__model_model_dense_2_biasadd_readvariableop_resource:
identity��5recommender__model/model/dense/BiasAdd/ReadVariableOp�4recommender__model/model/dense/MatMul/ReadVariableOp�7recommender__model/model/dense_1/BiasAdd/ReadVariableOp�6recommender__model/model/dense_1/MatMul/ReadVariableOp�7recommender__model/model/dense_2/BiasAdd/ReadVariableOp�6recommender__model/model/dense_2/MatMul/ReadVariableOp�3recommender__model/model/embedding/embedding_lookup�5recommender__model/model/embedding_1/embedding_lookupr
'recommender__model/model/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#recommender__model/model/ExpandDims
ExpandDimsinput_10recommender__model/model/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
recommender__model/model/CastCast,recommender__model/model/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������t
)recommender__model/model/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%recommender__model/model/ExpandDims_1
ExpandDimsinput_22recommender__model/model/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:����������
recommender__model/model/Cast_1Cast.recommender__model/model/ExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
)recommender__model/model/embedding_1/CastCast#recommender__model/model/Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
5recommender__model/model/embedding_1/embedding_lookupResourceGather=recommender__model_model_embedding_1_embedding_lookup_1466388-recommender__model/model/embedding_1/Cast:y:0*
Tindices0*P
_classF
DBloc:@recommender__model/model/embedding_1/embedding_lookup/1466388*+
_output_shapes
:���������2*
dtype0�
>recommender__model/model/embedding_1/embedding_lookup/IdentityIdentity>recommender__model/model/embedding_1/embedding_lookup:output:0*
T0*P
_classF
DBloc:@recommender__model/model/embedding_1/embedding_lookup/1466388*+
_output_shapes
:���������2�
@recommender__model/model/embedding_1/embedding_lookup/Identity_1IdentityGrecommender__model/model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
'recommender__model/model/embedding/CastCast!recommender__model/model/Cast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
3recommender__model/model/embedding/embedding_lookupResourceGather;recommender__model_model_embedding_embedding_lookup_1466394+recommender__model/model/embedding/Cast:y:0*
Tindices0*N
_classD
B@loc:@recommender__model/model/embedding/embedding_lookup/1466394*+
_output_shapes
:���������2*
dtype0�
<recommender__model/model/embedding/embedding_lookup/IdentityIdentity<recommender__model/model/embedding/embedding_lookup:output:0*
T0*N
_classD
B@loc:@recommender__model/model/embedding/embedding_lookup/1466394*+
_output_shapes
:���������2�
>recommender__model/model/embedding/embedding_lookup/Identity_1IdentityErecommender__model/model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2w
&recommender__model/model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
(recommender__model/model/flatten/ReshapeReshapeGrecommender__model/model/embedding/embedding_lookup/Identity_1:output:0/recommender__model/model/flatten/Const:output:0*
T0*'
_output_shapes
:���������2y
(recommender__model/model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
*recommender__model/model/flatten_1/ReshapeReshapeIrecommender__model/model/embedding_1/embedding_lookup/Identity_1:output:01recommender__model/model/flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2r
0recommender__model/model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
+recommender__model/model/concatenate/concatConcatV21recommender__model/model/flatten/Reshape:output:03recommender__model/model/flatten_1/Reshape:output:09recommender__model/model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
4recommender__model/model/dense/MatMul/ReadVariableOpReadVariableOp=recommender__model_model_dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
%recommender__model/model/dense/MatMulMatMul4recommender__model/model/concatenate/concat:output:0<recommender__model/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5recommender__model/model/dense/BiasAdd/ReadVariableOpReadVariableOp>recommender__model_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&recommender__model/model/dense/BiasAddBiasAdd/recommender__model/model/dense/MatMul:product:0=recommender__model/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#recommender__model/model/dense/ReluRelu/recommender__model/model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
6recommender__model/model/dense_1/MatMul/ReadVariableOpReadVariableOp?recommender__model_model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'recommender__model/model/dense_1/MatMulMatMul1recommender__model/model/dense/Relu:activations:0>recommender__model/model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7recommender__model/model/dense_1/BiasAdd/ReadVariableOpReadVariableOp@recommender__model_model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(recommender__model/model/dense_1/BiasAddBiasAdd1recommender__model/model/dense_1/MatMul:product:0?recommender__model/model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%recommender__model/model/dense_1/ReluRelu1recommender__model/model/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
6recommender__model/model/dense_2/MatMul/ReadVariableOpReadVariableOp?recommender__model_model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
'recommender__model/model/dense_2/MatMulMatMul3recommender__model/model/dense_1/Relu:activations:0>recommender__model/model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
7recommender__model/model/dense_2/BiasAdd/ReadVariableOpReadVariableOp@recommender__model_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(recommender__model/model/dense_2/BiasAddBiasAdd1recommender__model/model/dense_2/MatMul:product:0?recommender__model/model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
IdentityIdentity1recommender__model/model/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^recommender__model/model/dense/BiasAdd/ReadVariableOp5^recommender__model/model/dense/MatMul/ReadVariableOp8^recommender__model/model/dense_1/BiasAdd/ReadVariableOp7^recommender__model/model/dense_1/MatMul/ReadVariableOp8^recommender__model/model/dense_2/BiasAdd/ReadVariableOp7^recommender__model/model/dense_2/MatMul/ReadVariableOp4^recommender__model/model/embedding/embedding_lookup6^recommender__model/model/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2n
5recommender__model/model/dense/BiasAdd/ReadVariableOp5recommender__model/model/dense/BiasAdd/ReadVariableOp2l
4recommender__model/model/dense/MatMul/ReadVariableOp4recommender__model/model/dense/MatMul/ReadVariableOp2r
7recommender__model/model/dense_1/BiasAdd/ReadVariableOp7recommender__model/model/dense_1/BiasAdd/ReadVariableOp2p
6recommender__model/model/dense_1/MatMul/ReadVariableOp6recommender__model/model/dense_1/MatMul/ReadVariableOp2r
7recommender__model/model/dense_2/BiasAdd/ReadVariableOp7recommender__model/model/dense_2/BiasAdd/ReadVariableOp2p
6recommender__model/model/dense_2/MatMul/ReadVariableOp6recommender__model/model/dense_2/MatMul/ReadVariableOp2j
3recommender__model/model/embedding/embedding_lookup3recommender__model/model/embedding/embedding_lookup2n
5recommender__model/model/embedding_1/embedding_lookup5recommender__model/model/embedding_1/embedding_lookup:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:LH
#
_output_shapes
:���������
!
_user_specified_name	input_2
�

�
4__inference_recommender__model_layer_call_fn_1467312
x_0
x_1
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallx_0x_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_namex/0:HD
#
_output_shapes
:���������

_user_specified_namex/1
�
r
H__inference_concatenate_layer_call_and_return_conditional_losses_1466498

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������dW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�A
�
B__inference_model_layer_call_and_return_conditional_losses_1467601
inputs_0
inputs_18
$embedding_1_embedding_lookup_1467551:
��26
"embedding_embedding_lookup_1467557:
��27
$dense_matmul_readvariableop_resource:	d�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_1/embedding_lookup�8embedding_1/embeddings/Regularizer/Square/ReadVariableOpc
embedding_1/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1467551embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467551*+
_output_shapes
:���������2*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467551*+
_output_shapes
:���������2�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2a
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1467557embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1467557*+
_output_shapes
:���������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1467557*+
_output_shapes
:���������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1467557* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1467551* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
)__inference_dense_2_layer_call_fn_1467908

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1466544o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467119
x
x_1!
model_1467089:
��2!
model_1467091:
��2 
model_1467093:	d�
model_1467095:	�!
model_1467097:
��
model_1467099:	� 
model_1467101:	�
model_1467103:
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallxx_1model_1467089model_1467091model_1467093model_1467095model_1467097model_1467099model_1467101model_1467103*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1467041�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1467091* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1467089* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:F B
#
_output_shapes
:���������

_user_specified_namex:FB
#
_output_shapes
:���������

_user_specified_namex
�

�
B__inference_dense_layer_call_and_return_conditional_losses_1466511

inputs1
matmul_readvariableop_resource:	d�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
'__inference_model_layer_call_fn_1467524
inputs_0
inputs_1
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466905o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
H__inference_embedding_1_layer_call_and_return_conditional_losses_1466451

inputs,
embedding_lookup_1466439:
��2
identity��8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_1466439Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1466439*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1466439*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1466439* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1466489

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1466936
x
x_1!
model_1466906:
��2!
model_1466908:
��2 
model_1466910:	d�
model_1466912:	�!
model_1466914:
��
model_1466916:	� 
model_1466918:	�
model_1466920:
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallxx_1model_1466906model_1466908model_1466910model_1466912model_1466914model_1466916model_1466918model_1466920*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466905�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1466908* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1466906* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:F B
#
_output_shapes
:���������

_user_specified_namex:FB
#
_output_shapes
:���������

_user_specified_namex
�5
�
B__inference_model_layer_call_and_return_conditional_losses_1466563

inputs
inputs_1'
embedding_1_1466452:
��2%
embedding_1466472:
��2 
dense_1466512:	d�
dense_1466514:	�#
dense_1_1466529:
��
dense_1_1466531:	�"
dense_2_1466545:	�
dense_2_1466547:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�6embedding/embeddings/Regularizer/Square/ReadVariableOp�#embedding_1/StatefulPartitionedCall�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_1_1466452*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1466451�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1466472*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1466471�
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1466481�
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1466489�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1466498�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1466512dense_1466514*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1466511�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1466529dense_1_1466531*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1466528�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1466545dense_2_1466547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1466544�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1466472* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1466452* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
4__inference_recommender__model_layer_call_fn_1467290
x_0
x_1
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallx_0x_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_recommender__model_layer_call_and_return_conditional_losses_1466936o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_namex/0:HD
#
_output_shapes
:���������

_user_specified_namex/1
�	
�
D__inference_dense_2_layer_call_and_return_conditional_losses_1466544

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�5
�
B__inference_model_layer_call_and_return_conditional_losses_1466795
input_1
input_2'
embedding_1_1466758:
��2%
embedding_1466761:
��2 
dense_1466767:	d�
dense_1466769:	�#
dense_1_1466772:
��
dense_1_1466774:	�"
dense_2_1466777:	�
dense_2_1466779:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�6embedding/embeddings/Regularizer/Square/ReadVariableOp�#embedding_1/StatefulPartitionedCall�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_1466758*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1466451�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1466761*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1466471�
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1466481�
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1466489�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1466498�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1466767dense_1466769*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1466511�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1466772dense_1_1466774*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1466528�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1466777dense_2_1466779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1466544�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1466761* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1466758* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2
�
�
'__inference_dense_layer_call_fn_1467868

inputs
unknown:	d�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1466511p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467824

inputs,
embedding_lookup_1467812:
��2
identity��8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_1467812Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467812*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467812*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467812* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
'__inference_model_layer_call_fn_1467480
inputs_0
inputs_1
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466563o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�K
�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467373
x_0
x_1>
*model_embedding_1_embedding_lookup_1467323:
��2<
(model_embedding_embedding_lookup_1467329:
��2=
*model_dense_matmul_readvariableop_resource:	d�:
+model_dense_biasadd_readvariableop_resource:	�@
,model_dense_1_matmul_readvariableop_resource:
��<
-model_dense_1_biasadd_readvariableop_resource:	�?
,model_dense_2_matmul_readvariableop_resource:	�;
-model_dense_2_biasadd_readvariableop_resource:
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp� model/embedding/embedding_lookup�"model/embedding_1/embedding_lookup_
model/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������t
model/ExpandDims
ExpandDimsx_0model/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������n

model/CastCastmodel/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������a
model/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������x
model/ExpandDims_1
ExpandDimsx_1model/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������r
model/Cast_1Castmodel/ExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������q
model/embedding_1/CastCastmodel/Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
"model/embedding_1/embedding_lookupResourceGather*model_embedding_1_embedding_lookup_1467323model/embedding_1/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_1/embedding_lookup/1467323*+
_output_shapes
:���������2*
dtype0�
+model/embedding_1/embedding_lookup/IdentityIdentity+model/embedding_1/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_1/embedding_lookup/1467323*+
_output_shapes
:���������2�
-model/embedding_1/embedding_lookup/Identity_1Identity4model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2m
model/embedding/CastCastmodel/Cast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
 model/embedding/embedding_lookupResourceGather(model_embedding_embedding_lookup_1467329model/embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@model/embedding/embedding_lookup/1467329*+
_output_shapes
:���������2*
dtype0�
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model/embedding/embedding_lookup/1467329*+
_output_shapes
:���������2�
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model/flatten/ReshapeReshape4model/embedding/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:���������2f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model/flatten_1/ReshapeReshape6model/embedding_1/embedding_lookup/Identity_1:output:0model/flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/concatenate/concatConcatV2model/flatten/Reshape:output:0 model/flatten_1/Reshape:output:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(model_embedding_embedding_lookup_1467329* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*model_embedding_1_embedding_lookup_1467323* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
IdentityIdentitymodel/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp!^model/embedding/embedding_lookup#^model/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2H
"model/embedding_1/embedding_lookup"model/embedding_1/embedding_lookup:H D
#
_output_shapes
:���������

_user_specified_namex/0:HD
#
_output_shapes
:���������

_user_specified_namex/1
�
�
__inference_loss_fn_1_1467940U
Aembedding_1_embeddings_regularizer_square_readvariableop_resource:
��2
identity��8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_1_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_1/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp
�5
�
B__inference_model_layer_call_and_return_conditional_losses_1466713

inputs
inputs_1'
embedding_1_1466676:
��2%
embedding_1466679:
��2 
dense_1466685:	d�
dense_1466687:	�#
dense_1_1466690:
��
dense_1_1466692:	�"
dense_2_1466695:	�
dense_2_1466697:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�6embedding/embeddings/Regularizer/Square/ReadVariableOp�#embedding_1/StatefulPartitionedCall�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_1_1466676*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1466451�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1466679*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1466471�
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1466481�
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1466489�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1466498�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1466685dense_1466687*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1466511�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1466690dense_1_1466692*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1466528�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1466695dense_2_1466697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1466544�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1466679* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1466676* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_1467929S
?embedding_embeddings_regularizer_square_readvariableop_resource:
��2
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp?embedding_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp
�
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467846

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
Y
-__inference_concatenate_layer_call_fn_1467852
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1466498`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs/1
�
�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467228
input_1
input_2!
model_1467198:
��2!
model_1467200:
��2 
model_1467202:	d�
model_1467204:	�!
model_1467206:
��
model_1467208:	� 
model_1467210:	�
model_1467212:
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallinput_1input_2model_1467198model_1467200model_1467202model_1467204model_1467206model_1467208model_1467210model_1467212*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1467041�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1467200* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmodel_1467198* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:LH
#
_output_shapes
:���������
!
_user_specified_name	input_2
�X
�
#__inference__traced_restore_1468106
file_prefix9
%assignvariableop_embedding_embeddings:
��2=
)assignvariableop_1_embedding_1_embeddings:
��22
assignvariableop_2_dense_kernel:	d�,
assignvariableop_3_dense_bias:	�5
!assignvariableop_4_dense_1_kernel:
��.
assignvariableop_5_dense_1_bias:	�4
!assignvariableop_6_dense_2_kernel:	�-
assignvariableop_7_dense_2_bias:"
assignvariableop_8_decay: *
 assignvariableop_9_learning_rate: &
assignvariableop_10_momentum: &
assignvariableop_11_sgd_iter:	 #
assignvariableop_12_total: #
assignvariableop_13_count: I
5assignvariableop_14_sgd_embedding_embeddings_momentum:
��2K
7assignvariableop_15_sgd_embedding_1_embeddings_momentum:
��2@
-assignvariableop_16_sgd_dense_kernel_momentum:	d�:
+assignvariableop_17_sgd_dense_bias_momentum:	�C
/assignvariableop_18_sgd_dense_1_kernel_momentum:
��<
-assignvariableop_19_sgd_dense_1_bias_momentum:	�B
/assignvariableop_20_sgd_dense_2_kernel_momentum:	�;
-assignvariableop_21_sgd_dense_2_bias_momentum:
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_momentumIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp5assignvariableop_14_sgd_embedding_embeddings_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp7assignvariableop_15_sgd_embedding_1_embeddings_momentumIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp-assignvariableop_16_sgd_dense_kernel_momentumIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_sgd_dense_bias_momentumIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_sgd_dense_1_kernel_momentumIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp-assignvariableop_19_sgd_dense_1_bias_momentumIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_sgd_dense_2_kernel_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_sgd_dense_2_bias_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
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
�
G
+__inference_flatten_1_layer_call_fn_1467840

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1466489`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�3
�	
 __inference__traced_save_1468030
file_prefix3
/savev2_embedding_embeddings_read_readvariableop5
1savev2_embedding_1_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop@
<savev2_sgd_embedding_embeddings_momentum_read_readvariableopB
>savev2_sgd_embedding_1_embeddings_momentum_read_readvariableop8
4savev2_sgd_dense_kernel_momentum_read_readvariableop6
2savev2_sgd_dense_bias_momentum_read_readvariableop:
6savev2_sgd_dense_1_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_1_bias_momentum_read_readvariableop:
6savev2_sgd_dense_2_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_2_bias_momentum_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop1savev2_embedding_1_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop<savev2_sgd_embedding_embeddings_momentum_read_readvariableop>savev2_sgd_embedding_1_embeddings_momentum_read_readvariableop4savev2_sgd_dense_kernel_momentum_read_readvariableop2savev2_sgd_dense_bias_momentum_read_readvariableop6savev2_sgd_dense_1_kernel_momentum_read_readvariableop4savev2_sgd_dense_1_bias_momentum_read_readvariableop6savev2_sgd_dense_2_kernel_momentum_read_readvariableop4savev2_sgd_dense_2_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
��2:
��2:	d�:�:
��:�:	�:: : : : : : :
��2:
��2:	d�:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��2:&"
 
_output_shapes
:
��2:%!

_output_shapes
:	d�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��2:&"
 
_output_shapes
:
��2:%!

_output_shapes
:	d�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: 
�E
�
B__inference_model_layer_call_and_return_conditional_losses_1467778
inputs_0
inputs_18
$embedding_1_embedding_lookup_1467728:
��26
"embedding_embedding_lookup_1467734:
��27
$dense_matmul_readvariableop_resource:	d�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_1/embedding_lookup�8embedding_1/embeddings/Regularizer/Square/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������b
CastCastExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������q
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������f
Cast_1CastExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������e
embedding_1/CastCast
Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1467728embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467728*+
_output_shapes
:���������2*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467728*+
_output_shapes
:���������2�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2a
embedding/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1467734embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1467734*+
_output_shapes
:���������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1467734*+
_output_shapes
:���������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1467734* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1467728* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:M I
#
_output_shapes
:���������
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:���������
"
_user_specified_name
inputs/1
�

�
'__inference_model_layer_call_fn_1466582
input_1
input_2
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466563o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2
�

�
4__inference_recommender__model_layer_call_fn_1467160
input_1
input_2
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:LH
#
_output_shapes
:���������
!
_user_specified_name	input_2
�
�
F__inference_embedding_layer_call_and_return_conditional_losses_1466471

inputs,
embedding_lookup_1466459:
��2
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_1466459Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1466459*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1466459*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1466459* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
t
H__inference_concatenate_layer_call_and_return_conditional_losses_1467859
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������dW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs/1
�	
�
D__inference_dense_2_layer_call_and_return_conditional_losses_1467918

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1466528

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_1_layer_call_fn_1467888

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1466528p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_flatten_layer_call_fn_1467829

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1466481`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
-__inference_embedding_1_layer_call_fn_1467808

inputs
unknown:
��2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1466451s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�E
�
B__inference_model_layer_call_and_return_conditional_losses_1466905

inputs
inputs_18
$embedding_1_embedding_lookup_1466855:
��26
"embedding_embedding_lookup_1466861:
��27
$dense_matmul_readvariableop_resource:	d�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_1/embedding_lookup�8embedding_1/embeddings/Regularizer/Square/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������k

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*'
_output_shapes
:���������b
CastCastExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������q
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������f
Cast_1CastExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������e
embedding_1/CastCast
Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1466855embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1466855*+
_output_shapes
:���������2*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1466855*+
_output_shapes
:���������2�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2a
embedding/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1466861embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1466861*+
_output_shapes
:���������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1466861*+
_output_shapes
:���������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1466861* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1466855* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_1467835

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_1467268
input_1
input_2
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1466426o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:LH
#
_output_shapes
:���������
!
_user_specified_name	input_2
�
�
F__inference_embedding_layer_call_and_return_conditional_losses_1467801

inputs,
embedding_lookup_1467789:
��2
identity��6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_1467789Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467789*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467789*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467789* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
4__inference_recommender__model_layer_call_fn_1466955
input_1
input_2
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_recommender__model_layer_call_and_return_conditional_losses_1466936o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:LH
#
_output_shapes
:���������
!
_user_specified_name	input_2
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1467899

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�5
�
B__inference_model_layer_call_and_return_conditional_losses_1466836
input_1
input_2'
embedding_1_1466799:
��2%
embedding_1466802:
��2 
dense_1466808:	d�
dense_1466810:	�#
dense_1_1466813:
��
dense_1_1466815:	�"
dense_2_1466818:	�
dense_2_1466820:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�6embedding/embeddings/Regularizer/Square/ReadVariableOp�#embedding_1/StatefulPartitionedCall�8embedding_1/embeddings/Regularizer/Square/ReadVariableOp�
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_1466799*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1466451�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1466802*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1466471�
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1466481�
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1466489�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1466498�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1466808dense_1466810*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1466511�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1466813dense_1_1466815*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1466528�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1466818dense_2_1466820*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1466544�
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1466802* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1466799* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2
�E
�
B__inference_model_layer_call_and_return_conditional_losses_1467717
inputs_0
inputs_18
$embedding_1_embedding_lookup_1467667:
��26
"embedding_embedding_lookup_1467673:
��27
$dense_matmul_readvariableop_resource:	d�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_1/embedding_lookup�8embedding_1/embeddings/Regularizer/Square/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������b
CastCastExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������q
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������f
Cast_1CastExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������e
embedding_1/CastCast
Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1467667embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467667*+
_output_shapes
:���������2*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1467667*+
_output_shapes
:���������2�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2a
embedding/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1467673embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1467673*+
_output_shapes
:���������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1467673*+
_output_shapes
:���������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1467673* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1467667* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:M I
#
_output_shapes
:���������
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:���������
"
_user_specified_name
inputs/1
�E
�
B__inference_model_layer_call_and_return_conditional_losses_1467041

inputs
inputs_18
$embedding_1_embedding_lookup_1466991:
��26
"embedding_embedding_lookup_1466997:
��27
$dense_matmul_readvariableop_resource:	d�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�6embedding/embeddings/Regularizer/Square/ReadVariableOp�embedding_1/embedding_lookup�8embedding_1/embeddings/Regularizer/Square/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������k

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*'
_output_shapes
:���������b
CastCastExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������q
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:���������f
Cast_1CastExpandDims_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������e
embedding_1/CastCast
Cast_1:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1466991embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1466991*+
_output_shapes
:���������2*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1466991*+
_output_shapes
:���������2�
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2a
embedding/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1466997embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1466997*+
_output_shapes
:���������2*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1466997*+
_output_shapes
:���������2�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1466997* 
_output_shapes
:
��2*
dtype0�
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1466991* 
_output_shapes
:
��2*
dtype0�
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
'__inference_model_layer_call_fn_1467546
inputs_0
inputs_1
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1467041o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:���������
"
_user_specified_name
inputs/1
�

�
'__inference_model_layer_call_fn_1467502
inputs_0
inputs_1
unknown:
��2
	unknown_0:
��2
	unknown_1:	d�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1466713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
input_1,
serving_default_input_1:0���������
7
input_2,
serving_default_input_2:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	model
		optimizer


signatures"
_tf_keras_model
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
4__inference_recommender__model_layer_call_fn_1466955
4__inference_recommender__model_layer_call_fn_1467290
4__inference_recommender__model_layer_call_fn_1467312
4__inference_recommender__model_layer_call_fn_1467160�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
trace_1
trace_2
trace_32�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467373
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467434
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467194
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467228�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�B�
"__inference__wrapped_model_1466426input_1input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
 layer-0
!layer-1
"layer_with_weights-0
"layer-2
#layer_with_weights-1
#layer-3
$layer-4
%layer-5
&layer-6
'layer_with_weights-2
'layer-7
(layer_with_weights-3
(layer-8
)layer_with_weights-4
)layer-9
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_network
�
	0decay
1learning_rate
2momentum
3itermomentum�momentum�momentum�momentum�momentum�momentum�momentum�momentum�"
	optimizer
,
4serving_default"
signature_map
(:&
��22embedding/embeddings
*:(
��22embedding_1/embeddings
:	d�2dense/kernel
:�2
dense/bias
": 
��2dense_1/kernel
:�2dense_1/bias
!:	�2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_recommender__model_layer_call_fn_1466955input_1input_2"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
4__inference_recommender__model_layer_call_fn_1467290x/0x/1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
4__inference_recommender__model_layer_call_fn_1467312x/0x/1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
4__inference_recommender__model_layer_call_fn_1467160input_1input_2"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467373x/0x/1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467434x/0x/1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467194input_1input_2"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467228input_1input_2"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
mtrace_0
ntrace_1
otrace_2
ptrace_3
qtrace_4
rtrace_52�
'__inference_model_layer_call_fn_1466582
'__inference_model_layer_call_fn_1467480
'__inference_model_layer_call_fn_1467502
'__inference_model_layer_call_fn_1466754
'__inference_model_layer_call_fn_1467524
'__inference_model_layer_call_fn_1467546�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zmtrace_0zntrace_1zotrace_2zptrace_3zqtrace_4zrtrace_5
�
strace_0
ttrace_1
utrace_2
vtrace_3
wtrace_4
xtrace_52�
B__inference_model_layer_call_and_return_conditional_losses_1467601
B__inference_model_layer_call_and_return_conditional_losses_1467656
B__inference_model_layer_call_and_return_conditional_losses_1466795
B__inference_model_layer_call_and_return_conditional_losses_1466836
B__inference_model_layer_call_and_return_conditional_losses_1467717
B__inference_model_layer_call_and_return_conditional_losses_1467778�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zstrace_0zttrace_1zutrace_2zvtrace_3zwtrace_4zxtrace_5
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
�B�
%__inference_signature_wrapper_1467268input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
y	variables
z	keras_api
	{total
	|count"
_tf_keras_metric
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
f0"
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_embedding_layer_call_fn_1467785�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_embedding_layer_call_and_return_conditional_losses_1467801�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
g0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_embedding_1_layer_call_fn_1467808�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467824�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_layer_call_fn_1467829�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_flatten_layer_call_and_return_conditional_losses_1467835�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_1_layer_call_fn_1467840�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467846�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_concatenate_layer_call_fn_1467852�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_concatenate_layer_call_and_return_conditional_losses_1467859�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_layer_call_fn_1467868�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_layer_call_and_return_conditional_losses_1467879�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_1_layer_call_fn_1467888�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_1_layer_call_and_return_conditional_losses_1467899�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_2_layer_call_fn_1467908�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_2_layer_call_and_return_conditional_losses_1467918�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_0_1467929�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_1467940�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
f
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_layer_call_fn_1466582input_1input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1467480inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1467502inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1466754input_1input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1467524inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1467546inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1467601inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1467656inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1466795input_1input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1466836input_1input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1467717inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1467778inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
{0
|1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
f0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_embedding_layer_call_fn_1467785inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_embedding_layer_call_and_return_conditional_losses_1467801inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
g0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_embedding_1_layer_call_fn_1467808inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467824inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_flatten_layer_call_fn_1467829inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_layer_call_and_return_conditional_losses_1467835inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_flatten_1_layer_call_fn_1467840inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467846inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_concatenate_layer_call_fn_1467852inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_concatenate_layer_call_and_return_conditional_losses_1467859inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_layer_call_fn_1467868inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_layer_call_and_return_conditional_losses_1467879inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_1_layer_call_fn_1467888inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_1_layer_call_and_return_conditional_losses_1467899inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_2_layer_call_fn_1467908inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_2_layer_call_and_return_conditional_losses_1467918inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_1467929"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_1467940"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
3:1
��22!SGD/embedding/embeddings/momentum
5:3
��22#SGD/embedding_1/embeddings/momentum
*:(	d�2SGD/dense/kernel/momentum
$:"�2SGD/dense/bias/momentum
-:+
��2SGD/dense_1/kernel/momentum
&:$�2SGD/dense_1/bias/momentum
,:*	�2SGD/dense_2/kernel/momentum
%:#2SGD/dense_2/bias/momentum�
"__inference__wrapped_model_1466426�P�M
F�C
A�>
�
input_1���������
�
input_2���������
� "3�0
.
output_1"�
output_1����������
H__inference_concatenate_layer_call_and_return_conditional_losses_1467859�Z�W
P�M
K�H
"�
inputs/0���������2
"�
inputs/1���������2
� "%�"
�
0���������d
� �
-__inference_concatenate_layer_call_fn_1467852vZ�W
P�M
K�H
"�
inputs/0���������2
"�
inputs/1���������2
� "����������d�
D__inference_dense_1_layer_call_and_return_conditional_losses_1467899^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_1_layer_call_fn_1467888Q0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_2_layer_call_and_return_conditional_losses_1467918]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� }
)__inference_dense_2_layer_call_fn_1467908P0�-
&�#
!�
inputs����������
� "�����������
B__inference_dense_layer_call_and_return_conditional_losses_1467879]/�,
%�"
 �
inputs���������d
� "&�#
�
0����������
� {
'__inference_dense_layer_call_fn_1467868P/�,
%�"
 �
inputs���������d
� "������������
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467824_/�,
%�"
 �
inputs���������
� ")�&
�
0���������2
� �
-__inference_embedding_1_layer_call_fn_1467808R/�,
%�"
 �
inputs���������
� "����������2�
F__inference_embedding_layer_call_and_return_conditional_losses_1467801_/�,
%�"
 �
inputs���������
� ")�&
�
0���������2
� �
+__inference_embedding_layer_call_fn_1467785R/�,
%�"
 �
inputs���������
� "����������2�
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467846\3�0
)�&
$�!
inputs���������2
� "%�"
�
0���������2
� ~
+__inference_flatten_1_layer_call_fn_1467840O3�0
)�&
$�!
inputs���������2
� "����������2�
D__inference_flatten_layer_call_and_return_conditional_losses_1467835\3�0
)�&
$�!
inputs���������2
� "%�"
�
0���������2
� |
)__inference_flatten_layer_call_fn_1467829O3�0
)�&
$�!
inputs���������2
� "����������2<
__inference_loss_fn_0_1467929�

� 
� "� <
__inference_loss_fn_1_1467940�

� 
� "� �
B__inference_model_layer_call_and_return_conditional_losses_1466795�`�]
V�S
I�F
!�
input_1���������
!�
input_2���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_1466836�`�]
V�S
I�F
!�
input_1���������
!�
input_2���������
p

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_1467601�b�_
X�U
K�H
"�
inputs/0���������
"�
inputs/1���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_1467656�b�_
X�U
K�H
"�
inputs/0���������
"�
inputs/1���������
p

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_1467717�Z�W
P�M
C�@
�
inputs/0���������
�
inputs/1���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_1467778�Z�W
P�M
C�@
�
inputs/0���������
�
inputs/1���������
p

 
� "%�"
�
0���������
� �
'__inference_model_layer_call_fn_1466582�`�]
V�S
I�F
!�
input_1���������
!�
input_2���������
p 

 
� "�����������
'__inference_model_layer_call_fn_1466754�`�]
V�S
I�F
!�
input_1���������
!�
input_2���������
p

 
� "�����������
'__inference_model_layer_call_fn_1467480�b�_
X�U
K�H
"�
inputs/0���������
"�
inputs/1���������
p 

 
� "�����������
'__inference_model_layer_call_fn_1467502�b�_
X�U
K�H
"�
inputs/0���������
"�
inputs/1���������
p

 
� "�����������
'__inference_model_layer_call_fn_1467524�Z�W
P�M
C�@
�
inputs/0���������
�
inputs/1���������
p 

 
� "�����������
'__inference_model_layer_call_fn_1467546�Z�W
P�M
C�@
�
inputs/0���������
�
inputs/1���������
p

 
� "�����������
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467194�T�Q
J�G
A�>
�
input_1���������
�
input_2���������
p 
� "%�"
�
0���������
� �
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467228�T�Q
J�G
A�>
�
input_1���������
�
input_2���������
p
� "%�"
�
0���������
� �
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467373L�I
B�?
9�6
�
x/0���������
�
x/1���������
p 
� "%�"
�
0���������
� �
O__inference_recommender__model_layer_call_and_return_conditional_losses_1467434L�I
B�?
9�6
�
x/0���������
�
x/1���������
p
� "%�"
�
0���������
� �
4__inference_recommender__model_layer_call_fn_1466955zT�Q
J�G
A�>
�
input_1���������
�
input_2���������
p 
� "�����������
4__inference_recommender__model_layer_call_fn_1467160zT�Q
J�G
A�>
�
input_1���������
�
input_2���������
p
� "�����������
4__inference_recommender__model_layer_call_fn_1467290rL�I
B�?
9�6
�
x/0���������
�
x/1���������
p 
� "�����������
4__inference_recommender__model_layer_call_fn_1467312rL�I
B�?
9�6
�
x/0���������
�
x/1���������
p
� "�����������
%__inference_signature_wrapper_1467268�a�^
� 
W�T
(
input_1�
input_1���������
(
input_2�
input_2���������"3�0
.
output_1"�
output_1���������
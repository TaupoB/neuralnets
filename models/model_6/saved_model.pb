ź3
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8τ+
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
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	�*
dtype0
�
!Adam/v/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_7/beta
�
5Adam/v/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_7/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_7/beta
�
5Adam/m/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_7/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_7/gamma
�
6Adam/v/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_7/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_7/gamma
�
6Adam/m/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_7/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/v/separable_conv2d_6/bias
�
2Adam/v/separable_conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d_6/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/m/separable_conv2d_6/bias
�
2Adam/m/separable_conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d_6/bias*
_output_shapes	
:�*
dtype0
�
*Adam/v/separable_conv2d_6/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/v/separable_conv2d_6/pointwise_kernel
�
>Adam/v/separable_conv2d_6/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_6/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/m/separable_conv2d_6/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/m/separable_conv2d_6/pointwise_kernel
�
>Adam/m/separable_conv2d_6/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_6/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/v/separable_conv2d_6/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/v/separable_conv2d_6/depthwise_kernel
�
>Adam/v/separable_conv2d_6/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_6/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
*Adam/m/separable_conv2d_6/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/m/separable_conv2d_6/depthwise_kernel
�
>Adam/m/separable_conv2d_6/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_6/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/conv2d_3/bias
z
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/conv2d_3/bias
z
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/v/conv2d_3/kernel
�
*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/m/conv2d_3/kernel
�
*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*(
_output_shapes
:��*
dtype0
�
!Adam/v/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_6/beta
�
5Adam/v/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_6/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_6/beta
�
5Adam/m/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_6/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_6/gamma
�
6Adam/v/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_6/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_6/gamma
�
6Adam/m/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_6/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/v/separable_conv2d_5/bias
�
2Adam/v/separable_conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d_5/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/m/separable_conv2d_5/bias
�
2Adam/m/separable_conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d_5/bias*
_output_shapes	
:�*
dtype0
�
*Adam/v/separable_conv2d_5/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/v/separable_conv2d_5/pointwise_kernel
�
>Adam/v/separable_conv2d_5/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_5/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/m/separable_conv2d_5/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/m/separable_conv2d_5/pointwise_kernel
�
>Adam/m/separable_conv2d_5/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_5/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/v/separable_conv2d_5/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/v/separable_conv2d_5/depthwise_kernel
�
>Adam/v/separable_conv2d_5/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_5/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
*Adam/m/separable_conv2d_5/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/m/separable_conv2d_5/depthwise_kernel
�
>Adam/m/separable_conv2d_5/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_5/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
!Adam/v/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_5/beta
�
5Adam/v/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_5/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_5/beta
�
5Adam/m/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_5/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_5/gamma
�
6Adam/v/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_5/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_5/gamma
�
6Adam/m/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_5/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/v/separable_conv2d_4/bias
�
2Adam/v/separable_conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d_4/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/m/separable_conv2d_4/bias
�
2Adam/m/separable_conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d_4/bias*
_output_shapes	
:�*
dtype0
�
*Adam/v/separable_conv2d_4/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/v/separable_conv2d_4/pointwise_kernel
�
>Adam/v/separable_conv2d_4/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_4/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/m/separable_conv2d_4/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/m/separable_conv2d_4/pointwise_kernel
�
>Adam/m/separable_conv2d_4/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_4/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/v/separable_conv2d_4/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/v/separable_conv2d_4/depthwise_kernel
�
>Adam/v/separable_conv2d_4/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_4/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
*Adam/m/separable_conv2d_4/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/m/separable_conv2d_4/depthwise_kernel
�
>Adam/m/separable_conv2d_4/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_4/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/conv2d_2/bias
z
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/conv2d_2/bias
z
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/v/conv2d_2/kernel
�
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/m/conv2d_2/kernel
�
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*(
_output_shapes
:��*
dtype0
�
!Adam/v/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_4/beta
�
5Adam/v/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_4/beta
�
5Adam/m/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_4/gamma
�
6Adam/v/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_4/gamma
�
6Adam/m/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/v/separable_conv2d_3/bias
�
2Adam/v/separable_conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/m/separable_conv2d_3/bias
�
2Adam/m/separable_conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
*Adam/v/separable_conv2d_3/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/v/separable_conv2d_3/pointwise_kernel
�
>Adam/v/separable_conv2d_3/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_3/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/m/separable_conv2d_3/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/m/separable_conv2d_3/pointwise_kernel
�
>Adam/m/separable_conv2d_3/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_3/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/v/separable_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/v/separable_conv2d_3/depthwise_kernel
�
>Adam/v/separable_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_3/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
*Adam/m/separable_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/m/separable_conv2d_3/depthwise_kernel
�
>Adam/m/separable_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_3/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
!Adam/v/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_3/beta
�
5Adam/v/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_3/beta
�
5Adam/m/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_3/gamma
�
6Adam/v/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_3/gamma
�
6Adam/m/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/v/separable_conv2d_2/bias
�
2Adam/v/separable_conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/m/separable_conv2d_2/bias
�
2Adam/m/separable_conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
*Adam/v/separable_conv2d_2/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/v/separable_conv2d_2/pointwise_kernel
�
>Adam/v/separable_conv2d_2/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_2/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/m/separable_conv2d_2/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/m/separable_conv2d_2/pointwise_kernel
�
>Adam/m/separable_conv2d_2/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_2/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/v/separable_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/v/separable_conv2d_2/depthwise_kernel
�
>Adam/v/separable_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_2/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
*Adam/m/separable_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/m/separable_conv2d_2/depthwise_kernel
�
>Adam/m/separable_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_2/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/conv2d_1/bias
z
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/conv2d_1/bias
z
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/v/conv2d_1/kernel
�
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/m/conv2d_1/kernel
�
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*(
_output_shapes
:��*
dtype0
�
!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_2/beta
�
5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_2/beta
�
5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_2/gamma
�
6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_2/gamma
�
6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/v/separable_conv2d_1/bias
�
2Adam/v/separable_conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d_1/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/m/separable_conv2d_1/bias
�
2Adam/m/separable_conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d_1/bias*
_output_shapes	
:�*
dtype0
�
*Adam/v/separable_conv2d_1/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/v/separable_conv2d_1/pointwise_kernel
�
>Adam/v/separable_conv2d_1/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_1/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/m/separable_conv2d_1/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*;
shared_name,*Adam/m/separable_conv2d_1/pointwise_kernel
�
>Adam/m/separable_conv2d_1/pointwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_1/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
*Adam/v/separable_conv2d_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/v/separable_conv2d_1/depthwise_kernel
�
>Adam/v/separable_conv2d_1/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/separable_conv2d_1/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
*Adam/m/separable_conv2d_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/m/separable_conv2d_1/depthwise_kernel
�
>Adam/m/separable_conv2d_1/depthwise_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/separable_conv2d_1/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
!Adam/v/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/v/batch_normalization_1/beta
�
5Adam/v/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
!Adam/m/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/m/batch_normalization_1/beta
�
5Adam/m/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
"Adam/v/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_1/gamma
�
6Adam/v/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_1/gamma
�
6Adam/m/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/separable_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/v/separable_conv2d/bias
�
0Adam/v/separable_conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/separable_conv2d/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/separable_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/m/separable_conv2d/bias
�
0Adam/m/separable_conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/separable_conv2d/bias*
_output_shapes	
:�*
dtype0
�
(Adam/v/separable_conv2d/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*9
shared_name*(Adam/v/separable_conv2d/pointwise_kernel
�
<Adam/v/separable_conv2d/pointwise_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/separable_conv2d/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
(Adam/m/separable_conv2d/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*9
shared_name*(Adam/m/separable_conv2d/pointwise_kernel
�
<Adam/m/separable_conv2d/pointwise_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/separable_conv2d/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
(Adam/v/separable_conv2d/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*9
shared_name*(Adam/v/separable_conv2d/depthwise_kernel
�
<Adam/v/separable_conv2d/depthwise_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/separable_conv2d/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
(Adam/m/separable_conv2d/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*9
shared_name*(Adam/m/separable_conv2d/depthwise_kernel
�
<Adam/m/separable_conv2d/depthwise_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/separable_conv2d/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
Adam/v/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!Adam/v/batch_normalization/beta
�
3Adam/v/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/v/batch_normalization/beta*
_output_shapes	
:�*
dtype0
�
Adam/m/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!Adam/m/batch_normalization/beta
�
3Adam/m/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/m/batch_normalization/beta*
_output_shapes	
:�*
dtype0
�
 Adam/v/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/v/batch_normalization/gamma
�
4Adam/v/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/v/batch_normalization/gamma*
_output_shapes	
:�*
dtype0
�
 Adam/m/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/m/batch_normalization/gamma
�
4Adam/m/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/m/batch_normalization/gamma*
_output_shapes	
:�*
dtype0
}
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/v/conv2d/bias
v
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes	
:�*
dtype0
}
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/m/conv2d/bias
v
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/conv2d/kernel
�
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*'
_output_shapes
:�*
dtype0
�
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/conv2d/kernel
�
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*'
_output_shapes
:�*
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
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
�
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_7/moving_variance
�
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_7/moving_mean
�
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_7/beta
�
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_7/gamma
�
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameseparable_conv2d_6/bias
�
+separable_conv2d_6/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_6/bias*
_output_shapes	
:�*
dtype0
�
#separable_conv2d_6/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*4
shared_name%#separable_conv2d_6/pointwise_kernel
�
7separable_conv2d_6/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_6/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
#separable_conv2d_6/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#separable_conv2d_6/depthwise_kernel
�
7separable_conv2d_6/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_6/depthwise_kernel*'
_output_shapes
:�*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:��*
dtype0
�
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_6/moving_variance
�
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_6/moving_mean
�
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_6/beta
�
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_6/gamma
�
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameseparable_conv2d_5/bias
�
+separable_conv2d_5/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_5/bias*
_output_shapes	
:�*
dtype0
�
#separable_conv2d_5/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*4
shared_name%#separable_conv2d_5/pointwise_kernel
�
7separable_conv2d_5/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_5/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
#separable_conv2d_5/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#separable_conv2d_5/depthwise_kernel
�
7separable_conv2d_5/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_5/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_5/moving_variance
�
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_5/moving_mean
�
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_5/beta
�
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_5/gamma
�
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameseparable_conv2d_4/bias
�
+separable_conv2d_4/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_4/bias*
_output_shapes	
:�*
dtype0
�
#separable_conv2d_4/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*4
shared_name%#separable_conv2d_4/pointwise_kernel
�
7separable_conv2d_4/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_4/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
#separable_conv2d_4/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#separable_conv2d_4/depthwise_kernel
�
7separable_conv2d_4/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_4/depthwise_kernel*'
_output_shapes
:�*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:��*
dtype0
�
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_4/moving_variance
�
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_4/moving_mean
�
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_4/beta
�
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_4/gamma
�
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameseparable_conv2d_3/bias
�
+separable_conv2d_3/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
#separable_conv2d_3/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*4
shared_name%#separable_conv2d_3/pointwise_kernel
�
7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
#separable_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#separable_conv2d_3/depthwise_kernel
�
7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameseparable_conv2d_2/bias
�
+separable_conv2d_2/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
#separable_conv2d_2/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*4
shared_name%#separable_conv2d_2/pointwise_kernel
�
7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
#separable_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#separable_conv2d_2/depthwise_kernel
�
7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/depthwise_kernel*'
_output_shapes
:�*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:�*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_1/kernel
}
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*(
_output_shapes
:��*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameseparable_conv2d_1/bias
�
+separable_conv2d_1/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_1/bias*
_output_shapes	
:�*
dtype0
�
#separable_conv2d_1/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*4
shared_name%#separable_conv2d_1/pointwise_kernel
�
7separable_conv2d_1/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_1/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
#separable_conv2d_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#separable_conv2d_1/depthwise_kernel
�
7separable_conv2d_1/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_1/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
separable_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameseparable_conv2d/bias
|
)separable_conv2d/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d/bias*
_output_shapes	
:�*
dtype0
�
!separable_conv2d/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*2
shared_name#!separable_conv2d/pointwise_kernel
�
5separable_conv2d/pointwise_kernel/Read/ReadVariableOpReadVariableOp!separable_conv2d/pointwise_kernel*(
_output_shapes
:��*
dtype0
�
!separable_conv2d/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!separable_conv2d/depthwise_kernel
�
5separable_conv2d/depthwise_kernel/Read/ReadVariableOpReadVariableOp!separable_conv2d/depthwise_kernel*'
_output_shapes
:�*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:�*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:�*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:�*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:�*
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variance!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelseparable_conv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variance#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelseparable_conv2d_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_1/kernelconv2d_1/bias#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_2/kernelconv2d_2/bias#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelseparable_conv2d_4/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance#separable_conv2d_5/depthwise_kernel#separable_conv2d_5/pointwise_kernelseparable_conv2d_5/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_3/kernelconv2d_3/bias#separable_conv2d_6/depthwise_kernel#separable_conv2d_6/pointwise_kernelseparable_conv2d_6/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense/kernel
dense/bias*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*a
_read_only_resource_inputsC
A?	
 !"#$%&'()*+,-./0123456789:;<=>?*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_21103

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�	
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer_with_weights-8
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer-22
layer-23
layer_with_weights-12
layer-24
layer_with_weights-13
layer-25
layer-26
layer_with_weights-14
layer-27
layer_with_weights-15
layer-28
layer-29
layer_with_weights-16
layer-30
 layer-31
!layer_with_weights-17
!layer-32
"layer_with_weights-18
"layer-33
#layer-34
$layer-35
%layer-36
&layer_with_weights-19
&layer-37
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_default_save_signature
.	optimizer
/
signatures*
* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance*
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\depthwise_kernel
]pointwise_kernel
^bias
 __jit_compiled_convolution_op*
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
wdepthwise_kernel
xpointwise_kernel
ybias
 z_jit_compiled_convolution_op*
�
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
<0
=1
F2
G3
H4
I5
\6
]7
^8
g9
h10
i11
j12
w13
x14
y15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62*
�
<0
=1
F2
G3
\4
]5
^6
g7
h8
w9
x10
y11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
-_default_save_signature
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
F0
G1
H2
I3*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

\0
]1
^2*

\0
]1
^2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
{u
VARIABLE_VALUE!separable_conv2d/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE!separable_conv2d/pointwise_kernel@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEseparable_conv2d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
g0
h1
i2
j3*

g0
h1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

w0
x1
y2*

w0
x1
y2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
}w
VARIABLE_VALUE#separable_conv2d_1/depthwise_kernel@layer_with_weights-4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE#separable_conv2d_1/pointwise_kernel@layer_with_weights-4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEseparable_conv2d_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
}w
VARIABLE_VALUE#separable_conv2d_2/depthwise_kernel@layer_with_weights-7/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE#separable_conv2d_2/pointwise_kernel@layer_with_weights-7/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEseparable_conv2d_2/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
}w
VARIABLE_VALUE#separable_conv2d_3/depthwise_kernel@layer_with_weights-9/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE#separable_conv2d_3/pointwise_kernel@layer_with_weights-9/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEseparable_conv2d_3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_4/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_4/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_4/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_4/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_2/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_2/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE#separable_conv2d_4/depthwise_kernelAlayer_with_weights-12/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE#separable_conv2d_4/pointwise_kernelAlayer_with_weights-12/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEseparable_conv2d_4/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_5/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_5/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_5/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_5/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE#separable_conv2d_5/depthwise_kernelAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE#separable_conv2d_5/pointwise_kernelAlayer_with_weights-14/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEseparable_conv2d_5/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_6/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_6/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_6/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_6/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_3/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_3/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE#separable_conv2d_6/depthwise_kernelAlayer_with_weights-17/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE#separable_conv2d_6/pointwise_kernelAlayer_with_weights-17/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEseparable_conv2d_6/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_7/gamma6layer_with_weights-18/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_7/beta5layer_with_weights-18/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_7/moving_mean<layer_with_weights-18/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_7/moving_variance@layer_with_weights-18/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEdense/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
dense/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
�
H0
I1
i2
j3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79
�80
�81
�82
�83
�84
�85
�86
�87
�88
�89
�90
�91
�92
�93
�94*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25
�trace_26
�trace_27
�trace_28
�trace_29
�trace_30
�trace_31
�trace_32
�trace_33
�trace_34
�trace_35
�trace_36
�trace_37
�trace_38
�trace_39
�trace_40
�trace_41
�trace_42
�trace_43
�trace_44
�trace_45
�trace_46* 
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
H0
I1*
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

i0
j1*
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

�0
�1*
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

�0
�1*
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

�0
�1*
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

�0
�1*
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

�0
�1*
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

�0
�1*
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
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/batch_normalization/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/batch_normalization/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/batch_normalization/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/batch_normalization/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/separable_conv2d/depthwise_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/separable_conv2d/depthwise_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/separable_conv2d/pointwise_kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/separable_conv2d/pointwise_kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/separable_conv2d/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/separable_conv2d/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_1/gamma2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_1/gamma2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_1/beta2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_1/beta2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_1/depthwise_kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_1/depthwise_kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_1/pointwise_kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_1/pointwise_kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/separable_conv2d_1/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/separable_conv2d_1/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_1/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_1/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_1/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_1/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_2/depthwise_kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_2/depthwise_kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_2/pointwise_kernel2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_2/pointwise_kernel2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/separable_conv2d_2/bias2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/separable_conv2d_2/bias2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_3/gamma2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_3/gamma2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_3/beta2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_3/beta2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_3/depthwise_kernel2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_3/depthwise_kernel2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_3/pointwise_kernel2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_3/pointwise_kernel2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/separable_conv2d_3/bias2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/separable_conv2d_3/bias2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_4/gamma2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_4/gamma2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_4/beta2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_4/beta2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_2/kernel2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_4/depthwise_kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_4/depthwise_kernel2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_4/pointwise_kernel2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_4/pointwise_kernel2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/separable_conv2d_4/bias2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/separable_conv2d_4/bias2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_5/gamma2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_5/gamma2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_5/beta2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_5/beta2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_5/depthwise_kernel2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_5/depthwise_kernel2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_5/pointwise_kernel2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_5/pointwise_kernel2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/separable_conv2d_5/bias2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/separable_conv2d_5/bias2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_6/gamma2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_6/gamma2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_6/beta2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_6/beta2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_6/depthwise_kernel2optimizer/_variables/81/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_6/depthwise_kernel2optimizer/_variables/82/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/separable_conv2d_6/pointwise_kernel2optimizer/_variables/83/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/separable_conv2d_6/pointwise_kernel2optimizer/_variables/84/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/separable_conv2d_6/bias2optimizer/_variables/85/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/separable_conv2d_6/bias2optimizer/_variables/86/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_7/gamma2optimizer/_variables/87/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_7/gamma2optimizer/_variables/88/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_7/beta2optimizer/_variables/89/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_7/beta2optimizer/_variables/90/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/91/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/92/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/93/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/94/.ATTRIBUTES/VARIABLE_VALUE*
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

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variance!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelseparable_conv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variance#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelseparable_conv2d_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_1/kernelconv2d_1/bias#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_2/kernelconv2d_2/bias#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelseparable_conv2d_4/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance#separable_conv2d_5/depthwise_kernel#separable_conv2d_5/pointwise_kernelseparable_conv2d_5/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_3/kernelconv2d_3/bias#separable_conv2d_6/depthwise_kernel#separable_conv2d_6/pointwise_kernelseparable_conv2d_6/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense/kernel
dense/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/beta(Adam/m/separable_conv2d/depthwise_kernel(Adam/v/separable_conv2d/depthwise_kernel(Adam/m/separable_conv2d/pointwise_kernel(Adam/v/separable_conv2d/pointwise_kernelAdam/m/separable_conv2d/biasAdam/v/separable_conv2d/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/beta*Adam/m/separable_conv2d_1/depthwise_kernel*Adam/v/separable_conv2d_1/depthwise_kernel*Adam/m/separable_conv2d_1/pointwise_kernel*Adam/v/separable_conv2d_1/pointwise_kernelAdam/m/separable_conv2d_1/biasAdam/v/separable_conv2d_1/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias*Adam/m/separable_conv2d_2/depthwise_kernel*Adam/v/separable_conv2d_2/depthwise_kernel*Adam/m/separable_conv2d_2/pointwise_kernel*Adam/v/separable_conv2d_2/pointwise_kernelAdam/m/separable_conv2d_2/biasAdam/v/separable_conv2d_2/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/beta*Adam/m/separable_conv2d_3/depthwise_kernel*Adam/v/separable_conv2d_3/depthwise_kernel*Adam/m/separable_conv2d_3/pointwise_kernel*Adam/v/separable_conv2d_3/pointwise_kernelAdam/m/separable_conv2d_3/biasAdam/v/separable_conv2d_3/bias"Adam/m/batch_normalization_4/gamma"Adam/v/batch_normalization_4/gamma!Adam/m/batch_normalization_4/beta!Adam/v/batch_normalization_4/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/bias*Adam/m/separable_conv2d_4/depthwise_kernel*Adam/v/separable_conv2d_4/depthwise_kernel*Adam/m/separable_conv2d_4/pointwise_kernel*Adam/v/separable_conv2d_4/pointwise_kernelAdam/m/separable_conv2d_4/biasAdam/v/separable_conv2d_4/bias"Adam/m/batch_normalization_5/gamma"Adam/v/batch_normalization_5/gamma!Adam/m/batch_normalization_5/beta!Adam/v/batch_normalization_5/beta*Adam/m/separable_conv2d_5/depthwise_kernel*Adam/v/separable_conv2d_5/depthwise_kernel*Adam/m/separable_conv2d_5/pointwise_kernel*Adam/v/separable_conv2d_5/pointwise_kernelAdam/m/separable_conv2d_5/biasAdam/v/separable_conv2d_5/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias*Adam/m/separable_conv2d_6/depthwise_kernel*Adam/v/separable_conv2d_6/depthwise_kernel*Adam/m/separable_conv2d_6/pointwise_kernel*Adam/v/separable_conv2d_6/pointwise_kernelAdam/m/separable_conv2d_6/biasAdam/v/separable_conv2d_6/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biastotal_1count_1totalcountConst*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_23309
�+
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variance!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelseparable_conv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variance#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelseparable_conv2d_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_1/kernelconv2d_1/bias#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_2/kernelconv2d_2/bias#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelseparable_conv2d_4/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance#separable_conv2d_5/depthwise_kernel#separable_conv2d_5/pointwise_kernelseparable_conv2d_5/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_3/kernelconv2d_3/bias#separable_conv2d_6/depthwise_kernel#separable_conv2d_6/pointwise_kernelseparable_conv2d_6/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense/kernel
dense/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/beta(Adam/m/separable_conv2d/depthwise_kernel(Adam/v/separable_conv2d/depthwise_kernel(Adam/m/separable_conv2d/pointwise_kernel(Adam/v/separable_conv2d/pointwise_kernelAdam/m/separable_conv2d/biasAdam/v/separable_conv2d/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/beta*Adam/m/separable_conv2d_1/depthwise_kernel*Adam/v/separable_conv2d_1/depthwise_kernel*Adam/m/separable_conv2d_1/pointwise_kernel*Adam/v/separable_conv2d_1/pointwise_kernelAdam/m/separable_conv2d_1/biasAdam/v/separable_conv2d_1/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias*Adam/m/separable_conv2d_2/depthwise_kernel*Adam/v/separable_conv2d_2/depthwise_kernel*Adam/m/separable_conv2d_2/pointwise_kernel*Adam/v/separable_conv2d_2/pointwise_kernelAdam/m/separable_conv2d_2/biasAdam/v/separable_conv2d_2/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/beta*Adam/m/separable_conv2d_3/depthwise_kernel*Adam/v/separable_conv2d_3/depthwise_kernel*Adam/m/separable_conv2d_3/pointwise_kernel*Adam/v/separable_conv2d_3/pointwise_kernelAdam/m/separable_conv2d_3/biasAdam/v/separable_conv2d_3/bias"Adam/m/batch_normalization_4/gamma"Adam/v/batch_normalization_4/gamma!Adam/m/batch_normalization_4/beta!Adam/v/batch_normalization_4/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/bias*Adam/m/separable_conv2d_4/depthwise_kernel*Adam/v/separable_conv2d_4/depthwise_kernel*Adam/m/separable_conv2d_4/pointwise_kernel*Adam/v/separable_conv2d_4/pointwise_kernelAdam/m/separable_conv2d_4/biasAdam/v/separable_conv2d_4/bias"Adam/m/batch_normalization_5/gamma"Adam/v/batch_normalization_5/gamma!Adam/m/batch_normalization_5/beta!Adam/v/batch_normalization_5/beta*Adam/m/separable_conv2d_5/depthwise_kernel*Adam/v/separable_conv2d_5/depthwise_kernel*Adam/m/separable_conv2d_5/pointwise_kernel*Adam/v/separable_conv2d_5/pointwise_kernelAdam/m/separable_conv2d_5/biasAdam/v/separable_conv2d_5/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias*Adam/m/separable_conv2d_6/depthwise_kernel*Adam/v/separable_conv2d_6/depthwise_kernel*Adam/m/separable_conv2d_6/pointwise_kernel*Adam/v/separable_conv2d_6/pointwise_kernelAdam/m/separable_conv2d_6/biasAdam/v/separable_conv2d_6/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biastotal_1count_1totalcount*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_23807��$
�

�
5__inference_batch_normalization_3_layer_call_fn_21741

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_19712�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21731:%!

_user_specified_name21733:%!

_user_specified_name21735:%!

_user_specified_name21737
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19526

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
5__inference_batch_normalization_1_layer_call_fn_21491

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19508�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21481:%!

_user_specified_name21483:%!

_user_specified_name21485:%!

_user_specified_name21487
�
W
"__inference__update_step_xla_21108
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22241

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_21996

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_21576

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_20116

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
2__inference_separable_conv2d_6_layer_call_fn_22164

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_20037�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name22156:%!

_user_specified_name22158:%!

_user_specified_name22160
�
K
"__inference__update_step_xla_21318
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
F
*__inference_activation_layer_call_fn_21437

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_20161i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_21885

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_4_layer_call_fn_21826

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_19782�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21816:%!

_user_specified_name21818:%!

_user_specified_name21820:%!

_user_specified_name21822
��
�
@__inference_model_layer_call_and_return_conditional_losses_20417
input_1'
conv2d_20143:�
conv2d_20145:	�(
batch_normalization_20148:	�(
batch_normalization_20150:	�(
batch_normalization_20152:	�(
batch_normalization_20154:	�1
separable_conv2d_20169:�2
separable_conv2d_20171:��%
separable_conv2d_20173:	�*
batch_normalization_1_20176:	�*
batch_normalization_1_20178:	�*
batch_normalization_1_20180:	�*
batch_normalization_1_20182:	�3
separable_conv2d_1_20191:�4
separable_conv2d_1_20193:��'
separable_conv2d_1_20195:	�*
batch_normalization_2_20198:	�*
batch_normalization_2_20200:	�*
batch_normalization_2_20202:	�*
batch_normalization_2_20204:	�*
conv2d_1_20218:��
conv2d_1_20220:	�3
separable_conv2d_2_20236:�4
separable_conv2d_2_20238:��'
separable_conv2d_2_20240:	�*
batch_normalization_3_20243:	�*
batch_normalization_3_20245:	�*
batch_normalization_3_20247:	�*
batch_normalization_3_20249:	�3
separable_conv2d_3_20258:�4
separable_conv2d_3_20260:��'
separable_conv2d_3_20262:	�*
batch_normalization_4_20265:	�*
batch_normalization_4_20267:	�*
batch_normalization_4_20269:	�*
batch_normalization_4_20271:	�*
conv2d_2_20285:��
conv2d_2_20287:	�3
separable_conv2d_4_20303:�4
separable_conv2d_4_20305:��'
separable_conv2d_4_20307:	�*
batch_normalization_5_20310:	�*
batch_normalization_5_20312:	�*
batch_normalization_5_20314:	�*
batch_normalization_5_20316:	�3
separable_conv2d_5_20325:�4
separable_conv2d_5_20327:��'
separable_conv2d_5_20329:	�*
batch_normalization_6_20332:	�*
batch_normalization_6_20334:	�*
batch_normalization_6_20336:	�*
batch_normalization_6_20338:	�*
conv2d_3_20352:��
conv2d_3_20354:	�3
separable_conv2d_6_20364:�4
separable_conv2d_6_20366:��'
separable_conv2d_6_20368:	�*
batch_normalization_7_20371:	�*
batch_normalization_7_20373:	�*
batch_normalization_7_20375:	�*
batch_normalization_7_20377:	�
dense_20411:	�
dense_20413:
identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�(separable_conv2d/StatefulPartitionedCall�*separable_conv2d_1/StatefulPartitionedCall�*separable_conv2d_2/StatefulPartitionedCall�*separable_conv2d_3/StatefulPartitionedCall�*separable_conv2d_4/StatefulPartitionedCall�*separable_conv2d_5/StatefulPartitionedCall�*separable_conv2d_6/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_20131�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_20143conv2d_20145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_20142�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_20148batch_normalization_20150batch_normalization_20152batch_normalization_20154*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19420�
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_20161�
activation_1/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_20167�
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0separable_conv2d_20169separable_conv2d_20171separable_conv2d_20173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_19479�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0batch_normalization_1_20176batch_normalization_1_20178batch_normalization_1_20180batch_normalization_1_20182*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19508�
activation_2/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_20189�
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0separable_conv2d_1_20191separable_conv2d_1_20193separable_conv2d_1_20195*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_19567�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_20198batch_normalization_2_20200batch_normalization_2_20202batch_normalization_2_20204*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_19596�
max_pooling2d/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_19645�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0conv2d_1_20218conv2d_1_20220*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20217�
add/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20228�
activation_3/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_20234�
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0separable_conv2d_2_20236separable_conv2d_2_20238separable_conv2d_2_20240*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_19665�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_20243batch_normalization_3_20245batch_normalization_3_20247batch_normalization_3_20249*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_19694�
activation_4/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_20256�
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0separable_conv2d_3_20258separable_conv2d_3_20260separable_conv2d_3_20262*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_19753�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_20265batch_normalization_4_20267batch_normalization_4_20269batch_normalization_4_20271*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_19782�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19831�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_2_20285conv2d_2_20287*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_20284�
add_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20295�
activation_5/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_20301�
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0separable_conv2d_4_20303separable_conv2d_4_20305separable_conv2d_4_20307*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_19851�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_20310batch_normalization_5_20312batch_normalization_5_20314batch_normalization_5_20316*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_19880�
activation_6/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_20323�
*separable_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0separable_conv2d_5_20325separable_conv2d_5_20327separable_conv2d_5_20329*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_19939�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_20332batch_normalization_6_20334batch_normalization_6_20336batch_normalization_6_20338*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19968�
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_20017�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_3_20352conv2d_3_20354*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_20351�
add_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20362�
*separable_conv2d_6/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0separable_conv2d_6_20364separable_conv2d_6_20366separable_conv2d_6_20368*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_20037�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_6/StatefulPartitionedCall:output:0batch_normalization_7_20371batch_normalization_7_20373batch_normalization_7_20375batch_normalization_7_20377*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_20066�
activation_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_20384�
(global_average_pooling2d/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_20116�
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20398�
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_20411dense_20413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20410u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall+^separable_conv2d_5/StatefulPartitionedCall+^separable_conv2d_6/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall2X
*separable_conv2d_5/StatefulPartitionedCall*separable_conv2d_5/StatefulPartitionedCall2X
*separable_conv2d_6/StatefulPartitionedCall*separable_conv2d_6/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name20143:%!

_user_specified_name20145:%!

_user_specified_name20148:%!

_user_specified_name20150:%!

_user_specified_name20152:%!

_user_specified_name20154:%!

_user_specified_name20169:%!

_user_specified_name20171:%	!

_user_specified_name20173:%
!

_user_specified_name20176:%!

_user_specified_name20178:%!

_user_specified_name20180:%!

_user_specified_name20182:%!

_user_specified_name20191:%!

_user_specified_name20193:%!

_user_specified_name20195:%!

_user_specified_name20198:%!

_user_specified_name20200:%!

_user_specified_name20202:%!

_user_specified_name20204:%!

_user_specified_name20218:%!

_user_specified_name20220:%!

_user_specified_name20236:%!

_user_specified_name20238:%!

_user_specified_name20240:%!

_user_specified_name20243:%!

_user_specified_name20245:%!

_user_specified_name20247:%!

_user_specified_name20249:%!

_user_specified_name20258:%!

_user_specified_name20260:% !

_user_specified_name20262:%!!

_user_specified_name20265:%"!

_user_specified_name20267:%#!

_user_specified_name20269:%$!

_user_specified_name20271:%%!

_user_specified_name20285:%&!

_user_specified_name20287:%'!

_user_specified_name20303:%(!

_user_specified_name20305:%)!

_user_specified_name20307:%*!

_user_specified_name20310:%+!

_user_specified_name20312:%,!

_user_specified_name20314:%-!

_user_specified_name20316:%.!

_user_specified_name20325:%/!

_user_specified_name20327:%0!

_user_specified_name20329:%1!

_user_specified_name20332:%2!

_user_specified_name20334:%3!

_user_specified_name20336:%4!

_user_specified_name20338:%5!

_user_specified_name20352:%6!

_user_specified_name20354:%7!

_user_specified_name20364:%8!

_user_specified_name20366:%9!

_user_specified_name20368:%:!

_user_specified_name20371:%;!

_user_specified_name20373:%<!

_user_specified_name20375:%=!

_user_specified_name20377:%>!

_user_specified_name20411:%?!

_user_specified_name20413
�
X
"__inference__update_step_xla_21238
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
c
G__inference_activation_4_layer_call_and_return_conditional_losses_21787

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������--�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
E
)__inference_rescaling_layer_call_fn_21343

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_20131j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22094

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
a
E__inference_activation_layer_call_and_return_conditional_losses_20161

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������ZZ�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21540

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
X
"__inference__update_step_xla_21178
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
X
"__inference__update_step_xla_21298
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22122

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
T
8__inference_global_average_pooling2d_layer_call_fn_22256

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_20116i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
j
@__inference_add_1_layer_call_and_return_conditional_losses_20295

inputs
inputs_1
identityY
addAddV2inputsinputs_1*
T0*0
_output_shapes
:����������X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:XT
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19420

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_19880

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
5__inference_batch_normalization_1_layer_call_fn_21504

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19526�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21494:%!

_user_specified_name21496:%!

_user_specified_name21498:%!

_user_specified_name21500
�
K
"__inference__update_step_xla_21118
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21777

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
Q
%__inference_add_2_layer_call_fn_22147
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20362i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������:����������:Z V
0
_output_shapes
:����������
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:����������
"
_user_specified_name
inputs_1
�
W
"__inference__update_step_xla_21248
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
H
,__inference_activation_1_layer_call_fn_21447

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_20167i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
H
,__inference_activation_3_layer_call_fn_21684

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_20234i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
c
G__inference_activation_2_layer_call_and_return_conditional_losses_21550

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������ZZ�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_22284

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_20581

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21208
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
5__inference_batch_normalization_6_layer_call_fn_22076

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19986�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name22066:%!

_user_specified_name22068:%!

_user_specified_name22070:%!

_user_specified_name22072
�

�
5__inference_batch_normalization_5_layer_call_fn_21965

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_19880�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21955:%!

_user_specified_name21957:%!

_user_specified_name21959:%!

_user_specified_name21961
�
K
"__inference__update_step_xla_21163
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21288
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21759

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_19782

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
(__inference_conv2d_1_layer_call_fn_21657

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20217x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������--�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������ZZ�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs:%!

_user_specified_name21651:%!

_user_specified_name21653
�
X
"__inference__update_step_xla_21133
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
/__inference_max_pooling2d_2_layer_call_fn_22117

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_20017�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_22298

inputs
unknown:	�
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
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20410o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name22292:%!

_user_specified_name22294
�	
�
2__inference_separable_conv2d_4_layer_call_fn_21937

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_19851�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21929:%!

_user_specified_name21931:%!

_user_specified_name21933
�
K
"__inference__update_step_xla_21323
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_19851

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
5__inference_batch_normalization_7_layer_call_fn_22192

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_20066�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name22182:%!

_user_specified_name22184:%!

_user_specified_name22186:%!

_user_specified_name22188
�
l
@__inference_add_1_layer_call_and_return_conditional_losses_21916
inputs_0
inputs_1
identity[
addAddV2inputs_0inputs_1*
T0*0
_output_shapes
:����������X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������:����������:Z V
0
_output_shapes
:����������
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:����������
"
_user_specified_name
inputs_1
�	
�
0__inference_separable_conv2d_layer_call_fn_21463

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_19479�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21455:%!

_user_specified_name21457:%!

_user_specified_name21459
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21875

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
3__inference_batch_normalization_layer_call_fn_21396

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19438�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21386:%!

_user_specified_name21388:%!

_user_specified_name21390:%!

_user_specified_name21392
�
K
"__inference__update_step_xla_21303
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
X
"__inference__update_step_xla_21193
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
X
"__inference__update_step_xla_21253
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
c
G__inference_activation_3_layer_call_and_return_conditional_losses_21689

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������--�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
�
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_21952

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_21478

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
c
G__inference_activation_7_layer_call_and_return_conditional_losses_22251

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
@__inference_add_2_layer_call_and_return_conditional_losses_22153
inputs_0
inputs_1
identity[
addAddV2inputs_0inputs_1*
T0*0
_output_shapes
:����������X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������:����������:Z V
0
_output_shapes
:����������
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:����������
"
_user_specified_name
inputs_1
�
�
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_22050

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �     o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
C
'__inference_dropout_layer_call_fn_22272

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20581a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19508

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
X
"__inference__update_step_xla_21158
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_19665

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
"__inference__update_step_xla_21153
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
5__inference_batch_normalization_6_layer_call_fn_22063

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19968�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name22053:%!

_user_specified_name22055:%!

_user_specified_name22057:%!

_user_specified_name22059
�
j
@__inference_add_2_layer_call_and_return_conditional_losses_20362

inputs
inputs_1
identityY
addAddV2inputsinputs_1*
T0*0
_output_shapes
:����������X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:XT
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19831

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21183
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21293
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
/__inference_max_pooling2d_1_layer_call_fn_21880

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19831�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_19800

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19986

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
"__inference__update_step_xla_21188
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21857

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
O
#__inference_add_layer_call_fn_21673
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20228i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������--�:���������--�:Z V
0
_output_shapes
:���������--�
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:���������--�
"
_user_specified_name
inputs_1
�
c
G__inference_activation_7_layer_call_and_return_conditional_losses_20384

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_21904

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������--�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
"__inference__update_step_xla_21123
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21113
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21522

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22223

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_20037

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �     o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
2__inference_separable_conv2d_1_layer_call_fn_21561

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_19567�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21553:%!

_user_specified_name21555:%!

_user_specified_name21557
�
c
G__inference_activation_1_layer_call_and_return_conditional_losses_21452

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������ZZ�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�

�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_20351

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_21370

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������ZZ�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20217

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������--�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������ZZ�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19438

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�A
 __inference__wrapped_model_19402
input_1F
+model_conv2d_conv2d_readvariableop_resource:�;
,model_conv2d_biasadd_readvariableop_resource:	�@
1model_batch_normalization_readvariableop_resource:	�B
3model_batch_normalization_readvariableop_1_resource:	�Q
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource:	�S
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	�Z
?model_separable_conv2d_separable_conv2d_readvariableop_resource:�]
Amodel_separable_conv2d_separable_conv2d_readvariableop_1_resource:��E
6model_separable_conv2d_biasadd_readvariableop_resource:	�B
3model_batch_normalization_1_readvariableop_resource:	�D
5model_batch_normalization_1_readvariableop_1_resource:	�S
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�\
Amodel_separable_conv2d_1_separable_conv2d_readvariableop_resource:�_
Cmodel_separable_conv2d_1_separable_conv2d_readvariableop_1_resource:��G
8model_separable_conv2d_1_biasadd_readvariableop_resource:	�B
3model_batch_normalization_2_readvariableop_resource:	�D
5model_batch_normalization_2_readvariableop_1_resource:	�S
Dmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�I
-model_conv2d_1_conv2d_readvariableop_resource:��=
.model_conv2d_1_biasadd_readvariableop_resource:	�\
Amodel_separable_conv2d_2_separable_conv2d_readvariableop_resource:�_
Cmodel_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:��G
8model_separable_conv2d_2_biasadd_readvariableop_resource:	�B
3model_batch_normalization_3_readvariableop_resource:	�D
5model_batch_normalization_3_readvariableop_1_resource:	�S
Dmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	�\
Amodel_separable_conv2d_3_separable_conv2d_readvariableop_resource:�_
Cmodel_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:��G
8model_separable_conv2d_3_biasadd_readvariableop_resource:	�B
3model_batch_normalization_4_readvariableop_resource:	�D
5model_batch_normalization_4_readvariableop_1_resource:	�S
Dmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	�I
-model_conv2d_2_conv2d_readvariableop_resource:��=
.model_conv2d_2_biasadd_readvariableop_resource:	�\
Amodel_separable_conv2d_4_separable_conv2d_readvariableop_resource:�_
Cmodel_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:��G
8model_separable_conv2d_4_biasadd_readvariableop_resource:	�B
3model_batch_normalization_5_readvariableop_resource:	�D
5model_batch_normalization_5_readvariableop_1_resource:	�S
Dmodel_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	�\
Amodel_separable_conv2d_5_separable_conv2d_readvariableop_resource:�_
Cmodel_separable_conv2d_5_separable_conv2d_readvariableop_1_resource:��G
8model_separable_conv2d_5_biasadd_readvariableop_resource:	�B
3model_batch_normalization_6_readvariableop_resource:	�D
5model_batch_normalization_6_readvariableop_1_resource:	�S
Dmodel_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	�I
-model_conv2d_3_conv2d_readvariableop_resource:��=
.model_conv2d_3_biasadd_readvariableop_resource:	�\
Amodel_separable_conv2d_6_separable_conv2d_readvariableop_resource:�_
Cmodel_separable_conv2d_6_separable_conv2d_readvariableop_1_resource:��G
8model_separable_conv2d_6_biasadd_readvariableop_resource:	�B
3model_batch_normalization_7_readvariableop_resource:	�D
5model_batch_normalization_7_readvariableop_1_resource:	�S
Dmodel_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	�=
*model_dense_matmul_readvariableop_resource:	�9
+model_dense_biasadd_readvariableop_resource:
identity��9model/batch_normalization/FusedBatchNormV3/ReadVariableOp�;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�(model/batch_normalization/ReadVariableOp�*model/batch_normalization/ReadVariableOp_1�;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_1/ReadVariableOp�,model/batch_normalization_1/ReadVariableOp_1�;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_2/ReadVariableOp�,model/batch_normalization_2/ReadVariableOp_1�;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_3/ReadVariableOp�,model/batch_normalization_3/ReadVariableOp_1�;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_4/ReadVariableOp�,model/batch_normalization_4/ReadVariableOp_1�;model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_5/ReadVariableOp�,model/batch_normalization_5/ReadVariableOp_1�;model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_6/ReadVariableOp�,model/batch_normalization_6/ReadVariableOp_1�;model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�*model/batch_normalization_7/ReadVariableOp�,model/batch_normalization_7/ReadVariableOp_1�#model/conv2d/BiasAdd/ReadVariableOp�"model/conv2d/Conv2D/ReadVariableOp�%model/conv2d_1/BiasAdd/ReadVariableOp�$model/conv2d_1/Conv2D/ReadVariableOp�%model/conv2d_2/BiasAdd/ReadVariableOp�$model/conv2d_2/Conv2D/ReadVariableOp�%model/conv2d_3/BiasAdd/ReadVariableOp�$model/conv2d_3/Conv2D/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�-model/separable_conv2d/BiasAdd/ReadVariableOp�6model/separable_conv2d/separable_conv2d/ReadVariableOp�8model/separable_conv2d/separable_conv2d/ReadVariableOp_1�/model/separable_conv2d_1/BiasAdd/ReadVariableOp�8model/separable_conv2d_1/separable_conv2d/ReadVariableOp�:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1�/model/separable_conv2d_2/BiasAdd/ReadVariableOp�8model/separable_conv2d_2/separable_conv2d/ReadVariableOp�:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1�/model/separable_conv2d_3/BiasAdd/ReadVariableOp�8model/separable_conv2d_3/separable_conv2d/ReadVariableOp�:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1�/model/separable_conv2d_4/BiasAdd/ReadVariableOp�8model/separable_conv2d_4/separable_conv2d/ReadVariableOp�:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1�/model/separable_conv2d_5/BiasAdd/ReadVariableOp�8model/separable_conv2d_5/separable_conv2d/ReadVariableOp�:model/separable_conv2d_5/separable_conv2d/ReadVariableOp_1�/model/separable_conv2d_6/BiasAdd/ReadVariableOp�8model/separable_conv2d_6/separable_conv2d/ReadVariableOp�:model/separable_conv2d_6/separable_conv2d/ReadVariableOp_1[
model/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;]
model/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model/rescaling/mulMulinput_1model/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
model/rescaling/addAddV2model/rescaling/mul:z:0!model/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
model/conv2d/Conv2DConv2Dmodel/rescaling/add:z:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingSAME*
strides
�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ��
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV3model/conv2d/BiasAdd:output:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������ZZ�:�:�:�:�:*
epsilon%o�:*
is_training( �
model/activation/ReluRelu.model/batch_normalization/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������ZZ�
model/activation_1/ReluRelu#model/activation/Relu:activations:0*
T0*0
_output_shapes
:���������ZZ��
6model/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOp?model_separable_conv2d_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
8model/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpAmodel_separable_conv2d_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
-model/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �      �
5model/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
1model/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNative%model/activation_1/Relu:activations:0>model/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingSAME*
strides
�
'model/separable_conv2d/separable_conv2dConv2D:model/separable_conv2d/separable_conv2d/depthwise:output:0@model/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingVALID*
strides
�
-model/separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp6model_separable_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/separable_conv2d/BiasAddBiasAdd0model/separable_conv2d/separable_conv2d:output:05model/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ��
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3'model/separable_conv2d/BiasAdd:output:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������ZZ�:�:�:�:�:*
epsilon%o�:*
is_training( �
model/activation_2/ReluRelu0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������ZZ��
8model/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_1_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
/model/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
7model/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3model/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative%model/activation_2/Relu:activations:0@model/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingSAME*
strides
�
)model/separable_conv2d_1/separable_conv2dConv2D<model/separable_conv2d_1/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingVALID*
strides
�
/model/separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8model_separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model/separable_conv2d_1/BiasAddBiasAdd2model/separable_conv2d_1/separable_conv2d:output:07model/separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ��
*model/batch_normalization_2/ReadVariableOpReadVariableOp3model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_2/ReadVariableOp_1ReadVariableOp5model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3)model/separable_conv2d_1/BiasAdd:output:02model/batch_normalization_2/ReadVariableOp:value:04model/batch_normalization_2/ReadVariableOp_1:value:0Cmodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������ZZ�:�:�:�:�:*
epsilon%o�:*
is_training( �
model/max_pooling2d/MaxPoolMaxPool0model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:���������--�*
ksize
*
paddingSAME*
strides
�
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv2d_1/Conv2DConv2D#model/activation/Relu:activations:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�*
paddingSAME*
strides
�
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--��
model/add/addAddV2$model/max_pooling2d/MaxPool:output:0model/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������--�m
model/activation_3/ReluRelumodel/add/add:z:0*
T0*0
_output_shapes
:���������--��
8model/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_2_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
/model/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
7model/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3model/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative%model/activation_3/Relu:activations:0@model/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�*
paddingSAME*
strides
�
)model/separable_conv2d_2/separable_conv2dConv2D<model/separable_conv2d_2/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:���������--�*
paddingVALID*
strides
�
/model/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8model_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model/separable_conv2d_2/BiasAddBiasAdd2model/separable_conv2d_2/separable_conv2d:output:07model/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--��
*model/batch_normalization_3/ReadVariableOpReadVariableOp3model_batch_normalization_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_3/ReadVariableOp_1ReadVariableOp5model_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3)model/separable_conv2d_2/BiasAdd:output:02model/batch_normalization_3/ReadVariableOp:value:04model/batch_normalization_3/ReadVariableOp_1:value:0Cmodel/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������--�:�:�:�:�:*
epsilon%o�:*
is_training( �
model/activation_4/ReluRelu0model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������--��
8model/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_3_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
/model/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
7model/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3model/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative%model/activation_4/Relu:activations:0@model/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�*
paddingSAME*
strides
�
)model/separable_conv2d_3/separable_conv2dConv2D<model/separable_conv2d_3/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:���������--�*
paddingVALID*
strides
�
/model/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8model_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model/separable_conv2d_3/BiasAddBiasAdd2model/separable_conv2d_3/separable_conv2d:output:07model/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--��
*model/batch_normalization_4/ReadVariableOpReadVariableOp3model_batch_normalization_4_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_4/ReadVariableOp_1ReadVariableOp5model_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3)model/separable_conv2d_3/BiasAdd:output:02model/batch_normalization_4/ReadVariableOp:value:04model/batch_normalization_4/ReadVariableOp_1:value:0Cmodel/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������--�:�:�:�:�:*
epsilon%o�:*
is_training( �
model/max_pooling2d_1/MaxPoolMaxPool0model/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
ksize
*
paddingSAME*
strides
�
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv2d_2/Conv2DConv2Dmodel/add/add:z:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model/add_1/addAddV2&model/max_pooling2d_1/MaxPool:output:0model/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:����������o
model/activation_5/ReluRelumodel/add_1/add:z:0*
T0*0
_output_shapes
:�����������
8model/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_4_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
/model/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
7model/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3model/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNative%model/activation_5/Relu:activations:0@model/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
)model/separable_conv2d_4/separable_conv2dConv2D<model/separable_conv2d_4/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
/model/separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp8model_separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model/separable_conv2d_4/BiasAddBiasAdd2model/separable_conv2d_4/separable_conv2d:output:07model/separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
*model/batch_normalization_5/ReadVariableOpReadVariableOp3model_batch_normalization_5_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_5/ReadVariableOp_1ReadVariableOp5model_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3)model/separable_conv2d_4/BiasAdd:output:02model/batch_normalization_5/ReadVariableOp:value:04model/batch_normalization_5/ReadVariableOp_1:value:0Cmodel/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
model/activation_6/ReluRelu0model/batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
8model/separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_5_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
:model/separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_5_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
/model/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �     �
7model/separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3model/separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNative%model/activation_6/Relu:activations:0@model/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
)model/separable_conv2d_5/separable_conv2dConv2D<model/separable_conv2d_5/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
/model/separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp8model_separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model/separable_conv2d_5/BiasAddBiasAdd2model/separable_conv2d_5/separable_conv2d:output:07model/separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
*model/batch_normalization_6/ReadVariableOpReadVariableOp3model_batch_normalization_6_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_6/ReadVariableOp_1ReadVariableOp5model_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3)model/separable_conv2d_5/BiasAdd:output:02model/batch_normalization_6/ReadVariableOp:value:04model/batch_normalization_6/ReadVariableOp_1:value:0Cmodel/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
model/max_pooling2d_2/MaxPoolMaxPool0model/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
ksize
*
paddingSAME*
strides
�
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv2d_3/Conv2DConv2Dmodel/add_1/add:z:0,model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv2d_3/BiasAddBiasAddmodel/conv2d_3/Conv2D:output:0-model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model/add_2/addAddV2&model/max_pooling2d_2/MaxPool:output:0model/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
8model/separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_6_separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
:model/separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_6_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0�
/model/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �     �
7model/separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3model/separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativemodel/add_2/add:z:0@model/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
)model/separable_conv2d_6/separable_conv2dConv2D<model/separable_conv2d_6/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
/model/separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp8model_separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model/separable_conv2d_6/BiasAddBiasAdd2model/separable_conv2d_6/separable_conv2d:output:07model/separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
*model/batch_normalization_7/ReadVariableOpReadVariableOp3model_batch_normalization_7_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_7/ReadVariableOp_1ReadVariableOp5model_batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
;model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
,model/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3)model/separable_conv2d_6/BiasAdd:output:02model/batch_normalization_7/ReadVariableOp:value:04model/batch_normalization_7/ReadVariableOp_1:value:0Cmodel/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
model/activation_7/ReluRelu0model/batch_normalization_7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
#model/global_average_pooling2d/MeanMean%model/activation_7/Relu:activations:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
model/dropout/IdentityIdentity,model/global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:�����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense/MatMulMatMulmodel/dropout/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitymodel/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_1<^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_2/ReadVariableOp-^model/batch_normalization_2/ReadVariableOp_1<^model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_3/ReadVariableOp-^model/batch_normalization_3/ReadVariableOp_1<^model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_4/ReadVariableOp-^model/batch_normalization_4/ReadVariableOp_1<^model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_5/ReadVariableOp-^model/batch_normalization_5/ReadVariableOp_1<^model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_6/ReadVariableOp-^model/batch_normalization_6/ReadVariableOp_1<^model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_7/ReadVariableOp-^model/batch_normalization_7/ReadVariableOp_1$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_3/BiasAdd/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp.^model/separable_conv2d/BiasAdd/ReadVariableOp7^model/separable_conv2d/separable_conv2d/ReadVariableOp9^model/separable_conv2d/separable_conv2d/ReadVariableOp_10^model/separable_conv2d_1/BiasAdd/ReadVariableOp9^model/separable_conv2d_1/separable_conv2d/ReadVariableOp;^model/separable_conv2d_1/separable_conv2d/ReadVariableOp_10^model/separable_conv2d_2/BiasAdd/ReadVariableOp9^model/separable_conv2d_2/separable_conv2d/ReadVariableOp;^model/separable_conv2d_2/separable_conv2d/ReadVariableOp_10^model/separable_conv2d_3/BiasAdd/ReadVariableOp9^model/separable_conv2d_3/separable_conv2d/ReadVariableOp;^model/separable_conv2d_3/separable_conv2d/ReadVariableOp_10^model/separable_conv2d_4/BiasAdd/ReadVariableOp9^model/separable_conv2d_4/separable_conv2d/ReadVariableOp;^model/separable_conv2d_4/separable_conv2d/ReadVariableOp_10^model/separable_conv2d_5/BiasAdd/ReadVariableOp9^model/separable_conv2d_5/separable_conv2d/ReadVariableOp;^model/separable_conv2d_5/separable_conv2d/ReadVariableOp_10^model/separable_conv2d_6/BiasAdd/ReadVariableOp9^model/separable_conv2d_6/separable_conv2d/ReadVariableOp;^model/separable_conv2d_6/separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12z
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_2/ReadVariableOp*model/batch_normalization_2/ReadVariableOp2\
,model/batch_normalization_2/ReadVariableOp_1,model/batch_normalization_2/ReadVariableOp_12z
;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_3/ReadVariableOp*model/batch_normalization_3/ReadVariableOp2\
,model/batch_normalization_3/ReadVariableOp_1,model/batch_normalization_3/ReadVariableOp_12z
;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_4/ReadVariableOp*model/batch_normalization_4/ReadVariableOp2\
,model/batch_normalization_4/ReadVariableOp_1,model/batch_normalization_4/ReadVariableOp_12z
;model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_5/ReadVariableOp*model/batch_normalization_5/ReadVariableOp2\
,model/batch_normalization_5/ReadVariableOp_1,model/batch_normalization_5/ReadVariableOp_12z
;model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_6/ReadVariableOp*model/batch_normalization_6/ReadVariableOp2\
,model/batch_normalization_6/ReadVariableOp_1,model/batch_normalization_6/ReadVariableOp_12z
;model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_7/ReadVariableOp*model/batch_normalization_7/ReadVariableOp2\
,model/batch_normalization_7/ReadVariableOp_1,model/batch_normalization_7/ReadVariableOp_12J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_3/BiasAdd/ReadVariableOp%model/conv2d_3/BiasAdd/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2^
-model/separable_conv2d/BiasAdd/ReadVariableOp-model/separable_conv2d/BiasAdd/ReadVariableOp2p
6model/separable_conv2d/separable_conv2d/ReadVariableOp6model/separable_conv2d/separable_conv2d/ReadVariableOp2t
8model/separable_conv2d/separable_conv2d/ReadVariableOp_18model/separable_conv2d/separable_conv2d/ReadVariableOp_12b
/model/separable_conv2d_1/BiasAdd/ReadVariableOp/model/separable_conv2d_1/BiasAdd/ReadVariableOp2t
8model/separable_conv2d_1/separable_conv2d/ReadVariableOp8model/separable_conv2d_1/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_12b
/model/separable_conv2d_2/BiasAdd/ReadVariableOp/model/separable_conv2d_2/BiasAdd/ReadVariableOp2t
8model/separable_conv2d_2/separable_conv2d/ReadVariableOp8model/separable_conv2d_2/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_12b
/model/separable_conv2d_3/BiasAdd/ReadVariableOp/model/separable_conv2d_3/BiasAdd/ReadVariableOp2t
8model/separable_conv2d_3/separable_conv2d/ReadVariableOp8model/separable_conv2d_3/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_12b
/model/separable_conv2d_4/BiasAdd/ReadVariableOp/model/separable_conv2d_4/BiasAdd/ReadVariableOp2t
8model/separable_conv2d_4/separable_conv2d/ReadVariableOp8model/separable_conv2d_4/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_12b
/model/separable_conv2d_5/BiasAdd/ReadVariableOp/model/separable_conv2d_5/BiasAdd/ReadVariableOp2t
8model/separable_conv2d_5/separable_conv2d/ReadVariableOp8model/separable_conv2d_5/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_5/separable_conv2d/ReadVariableOp_12b
/model/separable_conv2d_6/BiasAdd/ReadVariableOp/model/separable_conv2d_6/BiasAdd/ReadVariableOp2t
8model/separable_conv2d_6/separable_conv2d/ReadVariableOp8model/separable_conv2d_6/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource:(4$
"
_user_specified_name
resource:(5$
"
_user_specified_name
resource:(6$
"
_user_specified_name
resource:(7$
"
_user_specified_name
resource:(8$
"
_user_specified_name
resource:(9$
"
_user_specified_name
resource:(:$
"
_user_specified_name
resource:(;$
"
_user_specified_name
resource:(<$
"
_user_specified_name
resource:(=$
"
_user_specified_name
resource:(>$
"
_user_specified_name
resource:(?$
"
_user_specified_name
resource
�

�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_21667

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������--�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������--�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������ZZ�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21414

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_19898

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
"__inference__update_step_xla_21223
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
a
E__inference_activation_layer_call_and_return_conditional_losses_21442

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������ZZ�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
W
"__inference__update_step_xla_21273
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�0
�
%__inference_model_layer_call_fn_20720
input_1"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�$
	unknown_5:�%
	unknown_6:��
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�%

unknown_12:�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�&

unknown_19:��

unknown_20:	�%

unknown_21:�&

unknown_22:��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�%

unknown_28:�&

unknown_29:��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�&

unknown_35:��

unknown_36:	�%

unknown_37:�&

unknown_38:��

unknown_39:	�

unknown_40:	�

unknown_41:	�

unknown_42:	�

unknown_43:	�%

unknown_44:�&

unknown_45:��

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�&

unknown_51:��

unknown_52:	�%

unknown_53:�&

unknown_54:��

unknown_55:	�

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:	�

unknown_60:	�

unknown_61:
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*Q
_read_only_resource_inputs3
1/	
 !"%&'()*+./01256789:;>?*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_20417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name20592:%!

_user_specified_name20594:%!

_user_specified_name20596:%!

_user_specified_name20598:%!

_user_specified_name20600:%!

_user_specified_name20602:%!

_user_specified_name20604:%!

_user_specified_name20606:%	!

_user_specified_name20608:%
!

_user_specified_name20610:%!

_user_specified_name20612:%!

_user_specified_name20614:%!

_user_specified_name20616:%!

_user_specified_name20618:%!

_user_specified_name20620:%!

_user_specified_name20622:%!

_user_specified_name20624:%!

_user_specified_name20626:%!

_user_specified_name20628:%!

_user_specified_name20630:%!

_user_specified_name20632:%!

_user_specified_name20634:%!

_user_specified_name20636:%!

_user_specified_name20638:%!

_user_specified_name20640:%!

_user_specified_name20642:%!

_user_specified_name20644:%!

_user_specified_name20646:%!

_user_specified_name20648:%!

_user_specified_name20650:%!

_user_specified_name20652:% !

_user_specified_name20654:%!!

_user_specified_name20656:%"!

_user_specified_name20658:%#!

_user_specified_name20660:%$!

_user_specified_name20662:%%!

_user_specified_name20664:%&!

_user_specified_name20666:%'!

_user_specified_name20668:%(!

_user_specified_name20670:%)!

_user_specified_name20672:%*!

_user_specified_name20674:%+!

_user_specified_name20676:%,!

_user_specified_name20678:%-!

_user_specified_name20680:%.!

_user_specified_name20682:%/!

_user_specified_name20684:%0!

_user_specified_name20686:%1!

_user_specified_name20688:%2!

_user_specified_name20690:%3!

_user_specified_name20692:%4!

_user_specified_name20694:%5!

_user_specified_name20696:%6!

_user_specified_name20698:%7!

_user_specified_name20700:%8!

_user_specified_name20702:%9!

_user_specified_name20704:%:!

_user_specified_name20706:%;!

_user_specified_name20708:%<!

_user_specified_name20710:%=!

_user_specified_name20712:%>!

_user_specified_name20714:%?!

_user_specified_name20716
�
K
"__inference__update_step_xla_21203
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
c
G__inference_activation_5_layer_call_and_return_conditional_losses_21926

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21148
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
5__inference_batch_normalization_5_layer_call_fn_21978

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_19898�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21968:%!

_user_specified_name21970:%!

_user_specified_name21972:%!

_user_specified_name21974
�
J
"__inference__update_step_xla_21338
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
j
>__inference_add_layer_call_and_return_conditional_losses_21679
inputs_0
inputs_1
identity[
addAddV2inputs_0inputs_1*
T0*0
_output_shapes
:���������--�X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������--�:���������--�:Z V
0
_output_shapes
:���������--�
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:���������--�
"
_user_specified_name
inputs_1
�
�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_20066

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_22262

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�0
�
%__inference_model_layer_call_fn_20851
input_1"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�$
	unknown_5:�%
	unknown_6:��
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�%

unknown_12:�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�&

unknown_19:��

unknown_20:	�%

unknown_21:�&

unknown_22:��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�%

unknown_28:�&

unknown_29:��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�&

unknown_35:��

unknown_36:	�%

unknown_37:�&

unknown_38:��

unknown_39:	�

unknown_40:	�

unknown_41:	�

unknown_42:	�

unknown_43:	�%

unknown_44:�&

unknown_45:��

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�&

unknown_51:��

unknown_52:	�%

unknown_53:�&

unknown_54:��

unknown_55:	�

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:	�

unknown_60:	�

unknown_61:
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*a
_read_only_resource_inputsC
A?	
 !"#$%&'()*+,-./0123456789:;<=>?*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_20589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name20723:%!

_user_specified_name20725:%!

_user_specified_name20727:%!

_user_specified_name20729:%!

_user_specified_name20731:%!

_user_specified_name20733:%!

_user_specified_name20735:%!

_user_specified_name20737:%	!

_user_specified_name20739:%
!

_user_specified_name20741:%!

_user_specified_name20743:%!

_user_specified_name20745:%!

_user_specified_name20747:%!

_user_specified_name20749:%!

_user_specified_name20751:%!

_user_specified_name20753:%!

_user_specified_name20755:%!

_user_specified_name20757:%!

_user_specified_name20759:%!

_user_specified_name20761:%!

_user_specified_name20763:%!

_user_specified_name20765:%!

_user_specified_name20767:%!

_user_specified_name20769:%!

_user_specified_name20771:%!

_user_specified_name20773:%!

_user_specified_name20775:%!

_user_specified_name20777:%!

_user_specified_name20779:%!

_user_specified_name20781:%!

_user_specified_name20783:% !

_user_specified_name20785:%!!

_user_specified_name20787:%"!

_user_specified_name20789:%#!

_user_specified_name20791:%$!

_user_specified_name20793:%%!

_user_specified_name20795:%&!

_user_specified_name20797:%'!

_user_specified_name20799:%(!

_user_specified_name20801:%)!

_user_specified_name20803:%*!

_user_specified_name20805:%+!

_user_specified_name20807:%,!

_user_specified_name20809:%-!

_user_specified_name20811:%.!

_user_specified_name20813:%/!

_user_specified_name20815:%0!

_user_specified_name20817:%1!

_user_specified_name20819:%2!

_user_specified_name20821:%3!

_user_specified_name20823:%4!

_user_specified_name20825:%5!

_user_specified_name20827:%6!

_user_specified_name20829:%7!

_user_specified_name20831:%8!

_user_specified_name20833:%9!

_user_specified_name20835:%:!

_user_specified_name20837:%;!

_user_specified_name20839:%<!

_user_specified_name20841:%=!

_user_specified_name20843:%>!

_user_specified_name20845:%?!

_user_specified_name20847
�
�
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_22179

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �     o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_19479

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22112

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
Q
%__inference_add_1_layer_call_fn_21910
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20295i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������:����������:Z V
0
_output_shapes
:����������
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:����������
"
_user_specified_name
inputs_1
��

��
__inference__traced_save_23309
file_prefix?
$read_disablecopyonread_conv2d_kernel:�3
$read_1_disablecopyonread_conv2d_bias:	�A
2read_2_disablecopyonread_batch_normalization_gamma:	�@
1read_3_disablecopyonread_batch_normalization_beta:	�G
8read_4_disablecopyonread_batch_normalization_moving_mean:	�K
<read_5_disablecopyonread_batch_normalization_moving_variance:	�U
:read_6_disablecopyonread_separable_conv2d_depthwise_kernel:�V
:read_7_disablecopyonread_separable_conv2d_pointwise_kernel:��=
.read_8_disablecopyonread_separable_conv2d_bias:	�C
4read_9_disablecopyonread_batch_normalization_1_gamma:	�C
4read_10_disablecopyonread_batch_normalization_1_beta:	�J
;read_11_disablecopyonread_batch_normalization_1_moving_mean:	�N
?read_12_disablecopyonread_batch_normalization_1_moving_variance:	�X
=read_13_disablecopyonread_separable_conv2d_1_depthwise_kernel:�Y
=read_14_disablecopyonread_separable_conv2d_1_pointwise_kernel:��@
1read_15_disablecopyonread_separable_conv2d_1_bias:	�D
5read_16_disablecopyonread_batch_normalization_2_gamma:	�C
4read_17_disablecopyonread_batch_normalization_2_beta:	�J
;read_18_disablecopyonread_batch_normalization_2_moving_mean:	�N
?read_19_disablecopyonread_batch_normalization_2_moving_variance:	�E
)read_20_disablecopyonread_conv2d_1_kernel:��6
'read_21_disablecopyonread_conv2d_1_bias:	�X
=read_22_disablecopyonread_separable_conv2d_2_depthwise_kernel:�Y
=read_23_disablecopyonread_separable_conv2d_2_pointwise_kernel:��@
1read_24_disablecopyonread_separable_conv2d_2_bias:	�D
5read_25_disablecopyonread_batch_normalization_3_gamma:	�C
4read_26_disablecopyonread_batch_normalization_3_beta:	�J
;read_27_disablecopyonread_batch_normalization_3_moving_mean:	�N
?read_28_disablecopyonread_batch_normalization_3_moving_variance:	�X
=read_29_disablecopyonread_separable_conv2d_3_depthwise_kernel:�Y
=read_30_disablecopyonread_separable_conv2d_3_pointwise_kernel:��@
1read_31_disablecopyonread_separable_conv2d_3_bias:	�D
5read_32_disablecopyonread_batch_normalization_4_gamma:	�C
4read_33_disablecopyonread_batch_normalization_4_beta:	�J
;read_34_disablecopyonread_batch_normalization_4_moving_mean:	�N
?read_35_disablecopyonread_batch_normalization_4_moving_variance:	�E
)read_36_disablecopyonread_conv2d_2_kernel:��6
'read_37_disablecopyonread_conv2d_2_bias:	�X
=read_38_disablecopyonread_separable_conv2d_4_depthwise_kernel:�Y
=read_39_disablecopyonread_separable_conv2d_4_pointwise_kernel:��@
1read_40_disablecopyonread_separable_conv2d_4_bias:	�D
5read_41_disablecopyonread_batch_normalization_5_gamma:	�C
4read_42_disablecopyonread_batch_normalization_5_beta:	�J
;read_43_disablecopyonread_batch_normalization_5_moving_mean:	�N
?read_44_disablecopyonread_batch_normalization_5_moving_variance:	�X
=read_45_disablecopyonread_separable_conv2d_5_depthwise_kernel:�Y
=read_46_disablecopyonread_separable_conv2d_5_pointwise_kernel:��@
1read_47_disablecopyonread_separable_conv2d_5_bias:	�D
5read_48_disablecopyonread_batch_normalization_6_gamma:	�C
4read_49_disablecopyonread_batch_normalization_6_beta:	�J
;read_50_disablecopyonread_batch_normalization_6_moving_mean:	�N
?read_51_disablecopyonread_batch_normalization_6_moving_variance:	�E
)read_52_disablecopyonread_conv2d_3_kernel:��6
'read_53_disablecopyonread_conv2d_3_bias:	�X
=read_54_disablecopyonread_separable_conv2d_6_depthwise_kernel:�Y
=read_55_disablecopyonread_separable_conv2d_6_pointwise_kernel:��@
1read_56_disablecopyonread_separable_conv2d_6_bias:	�D
5read_57_disablecopyonread_batch_normalization_7_gamma:	�C
4read_58_disablecopyonread_batch_normalization_7_beta:	�J
;read_59_disablecopyonread_batch_normalization_7_moving_mean:	�N
?read_60_disablecopyonread_batch_normalization_7_moving_variance:	�9
&read_61_disablecopyonread_dense_kernel:	�2
$read_62_disablecopyonread_dense_bias:-
#read_63_disablecopyonread_iteration:	 1
'read_64_disablecopyonread_learning_rate: I
.read_65_disablecopyonread_adam_m_conv2d_kernel:�I
.read_66_disablecopyonread_adam_v_conv2d_kernel:�;
,read_67_disablecopyonread_adam_m_conv2d_bias:	�;
,read_68_disablecopyonread_adam_v_conv2d_bias:	�I
:read_69_disablecopyonread_adam_m_batch_normalization_gamma:	�I
:read_70_disablecopyonread_adam_v_batch_normalization_gamma:	�H
9read_71_disablecopyonread_adam_m_batch_normalization_beta:	�H
9read_72_disablecopyonread_adam_v_batch_normalization_beta:	�]
Bread_73_disablecopyonread_adam_m_separable_conv2d_depthwise_kernel:�]
Bread_74_disablecopyonread_adam_v_separable_conv2d_depthwise_kernel:�^
Bread_75_disablecopyonread_adam_m_separable_conv2d_pointwise_kernel:��^
Bread_76_disablecopyonread_adam_v_separable_conv2d_pointwise_kernel:��E
6read_77_disablecopyonread_adam_m_separable_conv2d_bias:	�E
6read_78_disablecopyonread_adam_v_separable_conv2d_bias:	�K
<read_79_disablecopyonread_adam_m_batch_normalization_1_gamma:	�K
<read_80_disablecopyonread_adam_v_batch_normalization_1_gamma:	�J
;read_81_disablecopyonread_adam_m_batch_normalization_1_beta:	�J
;read_82_disablecopyonread_adam_v_batch_normalization_1_beta:	�_
Dread_83_disablecopyonread_adam_m_separable_conv2d_1_depthwise_kernel:�_
Dread_84_disablecopyonread_adam_v_separable_conv2d_1_depthwise_kernel:�`
Dread_85_disablecopyonread_adam_m_separable_conv2d_1_pointwise_kernel:��`
Dread_86_disablecopyonread_adam_v_separable_conv2d_1_pointwise_kernel:��G
8read_87_disablecopyonread_adam_m_separable_conv2d_1_bias:	�G
8read_88_disablecopyonread_adam_v_separable_conv2d_1_bias:	�K
<read_89_disablecopyonread_adam_m_batch_normalization_2_gamma:	�K
<read_90_disablecopyonread_adam_v_batch_normalization_2_gamma:	�J
;read_91_disablecopyonread_adam_m_batch_normalization_2_beta:	�J
;read_92_disablecopyonread_adam_v_batch_normalization_2_beta:	�L
0read_93_disablecopyonread_adam_m_conv2d_1_kernel:��L
0read_94_disablecopyonread_adam_v_conv2d_1_kernel:��=
.read_95_disablecopyonread_adam_m_conv2d_1_bias:	�=
.read_96_disablecopyonread_adam_v_conv2d_1_bias:	�_
Dread_97_disablecopyonread_adam_m_separable_conv2d_2_depthwise_kernel:�_
Dread_98_disablecopyonread_adam_v_separable_conv2d_2_depthwise_kernel:�`
Dread_99_disablecopyonread_adam_m_separable_conv2d_2_pointwise_kernel:��a
Eread_100_disablecopyonread_adam_v_separable_conv2d_2_pointwise_kernel:��H
9read_101_disablecopyonread_adam_m_separable_conv2d_2_bias:	�H
9read_102_disablecopyonread_adam_v_separable_conv2d_2_bias:	�L
=read_103_disablecopyonread_adam_m_batch_normalization_3_gamma:	�L
=read_104_disablecopyonread_adam_v_batch_normalization_3_gamma:	�K
<read_105_disablecopyonread_adam_m_batch_normalization_3_beta:	�K
<read_106_disablecopyonread_adam_v_batch_normalization_3_beta:	�`
Eread_107_disablecopyonread_adam_m_separable_conv2d_3_depthwise_kernel:�`
Eread_108_disablecopyonread_adam_v_separable_conv2d_3_depthwise_kernel:�a
Eread_109_disablecopyonread_adam_m_separable_conv2d_3_pointwise_kernel:��a
Eread_110_disablecopyonread_adam_v_separable_conv2d_3_pointwise_kernel:��H
9read_111_disablecopyonread_adam_m_separable_conv2d_3_bias:	�H
9read_112_disablecopyonread_adam_v_separable_conv2d_3_bias:	�L
=read_113_disablecopyonread_adam_m_batch_normalization_4_gamma:	�L
=read_114_disablecopyonread_adam_v_batch_normalization_4_gamma:	�K
<read_115_disablecopyonread_adam_m_batch_normalization_4_beta:	�K
<read_116_disablecopyonread_adam_v_batch_normalization_4_beta:	�M
1read_117_disablecopyonread_adam_m_conv2d_2_kernel:��M
1read_118_disablecopyonread_adam_v_conv2d_2_kernel:��>
/read_119_disablecopyonread_adam_m_conv2d_2_bias:	�>
/read_120_disablecopyonread_adam_v_conv2d_2_bias:	�`
Eread_121_disablecopyonread_adam_m_separable_conv2d_4_depthwise_kernel:�`
Eread_122_disablecopyonread_adam_v_separable_conv2d_4_depthwise_kernel:�a
Eread_123_disablecopyonread_adam_m_separable_conv2d_4_pointwise_kernel:��a
Eread_124_disablecopyonread_adam_v_separable_conv2d_4_pointwise_kernel:��H
9read_125_disablecopyonread_adam_m_separable_conv2d_4_bias:	�H
9read_126_disablecopyonread_adam_v_separable_conv2d_4_bias:	�L
=read_127_disablecopyonread_adam_m_batch_normalization_5_gamma:	�L
=read_128_disablecopyonread_adam_v_batch_normalization_5_gamma:	�K
<read_129_disablecopyonread_adam_m_batch_normalization_5_beta:	�K
<read_130_disablecopyonread_adam_v_batch_normalization_5_beta:	�`
Eread_131_disablecopyonread_adam_m_separable_conv2d_5_depthwise_kernel:�`
Eread_132_disablecopyonread_adam_v_separable_conv2d_5_depthwise_kernel:�a
Eread_133_disablecopyonread_adam_m_separable_conv2d_5_pointwise_kernel:��a
Eread_134_disablecopyonread_adam_v_separable_conv2d_5_pointwise_kernel:��H
9read_135_disablecopyonread_adam_m_separable_conv2d_5_bias:	�H
9read_136_disablecopyonread_adam_v_separable_conv2d_5_bias:	�L
=read_137_disablecopyonread_adam_m_batch_normalization_6_gamma:	�L
=read_138_disablecopyonread_adam_v_batch_normalization_6_gamma:	�K
<read_139_disablecopyonread_adam_m_batch_normalization_6_beta:	�K
<read_140_disablecopyonread_adam_v_batch_normalization_6_beta:	�M
1read_141_disablecopyonread_adam_m_conv2d_3_kernel:��M
1read_142_disablecopyonread_adam_v_conv2d_3_kernel:��>
/read_143_disablecopyonread_adam_m_conv2d_3_bias:	�>
/read_144_disablecopyonread_adam_v_conv2d_3_bias:	�`
Eread_145_disablecopyonread_adam_m_separable_conv2d_6_depthwise_kernel:�`
Eread_146_disablecopyonread_adam_v_separable_conv2d_6_depthwise_kernel:�a
Eread_147_disablecopyonread_adam_m_separable_conv2d_6_pointwise_kernel:��a
Eread_148_disablecopyonread_adam_v_separable_conv2d_6_pointwise_kernel:��H
9read_149_disablecopyonread_adam_m_separable_conv2d_6_bias:	�H
9read_150_disablecopyonread_adam_v_separable_conv2d_6_bias:	�L
=read_151_disablecopyonread_adam_m_batch_normalization_7_gamma:	�L
=read_152_disablecopyonread_adam_v_batch_normalization_7_gamma:	�K
<read_153_disablecopyonread_adam_m_batch_normalization_7_beta:	�K
<read_154_disablecopyonread_adam_v_batch_normalization_7_beta:	�A
.read_155_disablecopyonread_adam_m_dense_kernel:	�A
.read_156_disablecopyonread_adam_v_dense_kernel:	�:
,read_157_disablecopyonread_adam_m_dense_bias::
,read_158_disablecopyonread_adam_v_dense_bias:,
"read_159_disablecopyonread_total_1: ,
"read_160_disablecopyonread_count_1: *
 read_161_disablecopyonread_total: *
 read_162_disablecopyonread_count: 
savev2_const
identity_327��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_113/DisableCopyOnRead�Read_113/ReadVariableOp�Read_114/DisableCopyOnRead�Read_114/ReadVariableOp�Read_115/DisableCopyOnRead�Read_115/ReadVariableOp�Read_116/DisableCopyOnRead�Read_116/ReadVariableOp�Read_117/DisableCopyOnRead�Read_117/ReadVariableOp�Read_118/DisableCopyOnRead�Read_118/ReadVariableOp�Read_119/DisableCopyOnRead�Read_119/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_120/DisableCopyOnRead�Read_120/ReadVariableOp�Read_121/DisableCopyOnRead�Read_121/ReadVariableOp�Read_122/DisableCopyOnRead�Read_122/ReadVariableOp�Read_123/DisableCopyOnRead�Read_123/ReadVariableOp�Read_124/DisableCopyOnRead�Read_124/ReadVariableOp�Read_125/DisableCopyOnRead�Read_125/ReadVariableOp�Read_126/DisableCopyOnRead�Read_126/ReadVariableOp�Read_127/DisableCopyOnRead�Read_127/ReadVariableOp�Read_128/DisableCopyOnRead�Read_128/ReadVariableOp�Read_129/DisableCopyOnRead�Read_129/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_130/DisableCopyOnRead�Read_130/ReadVariableOp�Read_131/DisableCopyOnRead�Read_131/ReadVariableOp�Read_132/DisableCopyOnRead�Read_132/ReadVariableOp�Read_133/DisableCopyOnRead�Read_133/ReadVariableOp�Read_134/DisableCopyOnRead�Read_134/ReadVariableOp�Read_135/DisableCopyOnRead�Read_135/ReadVariableOp�Read_136/DisableCopyOnRead�Read_136/ReadVariableOp�Read_137/DisableCopyOnRead�Read_137/ReadVariableOp�Read_138/DisableCopyOnRead�Read_138/ReadVariableOp�Read_139/DisableCopyOnRead�Read_139/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_140/DisableCopyOnRead�Read_140/ReadVariableOp�Read_141/DisableCopyOnRead�Read_141/ReadVariableOp�Read_142/DisableCopyOnRead�Read_142/ReadVariableOp�Read_143/DisableCopyOnRead�Read_143/ReadVariableOp�Read_144/DisableCopyOnRead�Read_144/ReadVariableOp�Read_145/DisableCopyOnRead�Read_145/ReadVariableOp�Read_146/DisableCopyOnRead�Read_146/ReadVariableOp�Read_147/DisableCopyOnRead�Read_147/ReadVariableOp�Read_148/DisableCopyOnRead�Read_148/ReadVariableOp�Read_149/DisableCopyOnRead�Read_149/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_150/DisableCopyOnRead�Read_150/ReadVariableOp�Read_151/DisableCopyOnRead�Read_151/ReadVariableOp�Read_152/DisableCopyOnRead�Read_152/ReadVariableOp�Read_153/DisableCopyOnRead�Read_153/ReadVariableOp�Read_154/DisableCopyOnRead�Read_154/ReadVariableOp�Read_155/DisableCopyOnRead�Read_155/ReadVariableOp�Read_156/DisableCopyOnRead�Read_156/ReadVariableOp�Read_157/DisableCopyOnRead�Read_157/ReadVariableOp�Read_158/DisableCopyOnRead�Read_158/ReadVariableOp�Read_159/DisableCopyOnRead�Read_159/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_160/DisableCopyOnRead�Read_160/ReadVariableOp�Read_161/DisableCopyOnRead�Read_161/ReadVariableOp�Read_162/DisableCopyOnRead�Read_162/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
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
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0r
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�j

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*'
_output_shapes
:�x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_3/DisableCopyOnReadDisableCopyOnRead1read_3_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp1read_3_disablecopyonread_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_6/DisableCopyOnReadDisableCopyOnRead:read_6_disablecopyonread_separable_conv2d_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp:read_6_disablecopyonread_separable_conv2d_depthwise_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_7/DisableCopyOnReadDisableCopyOnRead:read_7_disablecopyonread_separable_conv2d_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp:read_7_disablecopyonread_separable_conv2d_pointwise_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0x
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_8/DisableCopyOnReadDisableCopyOnRead.read_8_disablecopyonread_separable_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp.read_8_disablecopyonread_separable_conv2d_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_1_gamma^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_10/DisableCopyOnReadDisableCopyOnRead4read_10_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp4read_10_disablecopyonread_batch_normalization_1_beta^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_11/DisableCopyOnReadDisableCopyOnRead;read_11_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp;read_11_disablecopyonread_batch_normalization_1_moving_mean^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_12/DisableCopyOnReadDisableCopyOnRead?read_12_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp?read_12_disablecopyonread_batch_normalization_1_moving_variance^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_13/DisableCopyOnReadDisableCopyOnRead=read_13_disablecopyonread_separable_conv2d_1_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp=read_13_disablecopyonread_separable_conv2d_1_depthwise_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_14/DisableCopyOnReadDisableCopyOnRead=read_14_disablecopyonread_separable_conv2d_1_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp=read_14_disablecopyonread_separable_conv2d_1_pointwise_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_separable_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_separable_conv2d_1_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnRead5read_16_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp5read_16_disablecopyonread_batch_normalization_2_gamma^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_17/DisableCopyOnReadDisableCopyOnRead4read_17_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp4read_17_disablecopyonread_batch_normalization_2_beta^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead;read_18_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp;read_18_disablecopyonread_batch_normalization_2_moving_mean^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_19/DisableCopyOnReadDisableCopyOnRead?read_19_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp?read_19_disablecopyonread_batch_normalization_2_moving_variance^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_20/DisableCopyOnReadDisableCopyOnRead)read_20_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp)read_20_disablecopyonread_conv2d_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*(
_output_shapes
:��|
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_conv2d_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead=read_22_disablecopyonread_separable_conv2d_2_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp=read_22_disablecopyonread_separable_conv2d_2_depthwise_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_23/DisableCopyOnReadDisableCopyOnRead=read_23_disablecopyonread_separable_conv2d_2_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp=read_23_disablecopyonread_separable_conv2d_2_pointwise_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_24/DisableCopyOnReadDisableCopyOnRead1read_24_disablecopyonread_separable_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp1read_24_disablecopyonread_separable_conv2d_2_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_25/DisableCopyOnReadDisableCopyOnRead5read_25_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp5read_25_disablecopyonread_batch_normalization_3_gamma^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead4read_26_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp4read_26_disablecopyonread_batch_normalization_3_beta^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_27/DisableCopyOnReadDisableCopyOnRead;read_27_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp;read_27_disablecopyonread_batch_normalization_3_moving_mean^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_28/DisableCopyOnReadDisableCopyOnRead?read_28_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp?read_28_disablecopyonread_batch_normalization_3_moving_variance^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_29/DisableCopyOnReadDisableCopyOnRead=read_29_disablecopyonread_separable_conv2d_3_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp=read_29_disablecopyonread_separable_conv2d_3_depthwise_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_30/DisableCopyOnReadDisableCopyOnRead=read_30_disablecopyonread_separable_conv2d_3_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp=read_30_disablecopyonread_separable_conv2d_3_pointwise_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_31/DisableCopyOnReadDisableCopyOnRead1read_31_disablecopyonread_separable_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp1read_31_disablecopyonread_separable_conv2d_3_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_32/DisableCopyOnReadDisableCopyOnRead5read_32_disablecopyonread_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp5read_32_disablecopyonread_batch_normalization_4_gamma^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead4read_33_disablecopyonread_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp4read_33_disablecopyonread_batch_normalization_4_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead;read_34_disablecopyonread_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp;read_34_disablecopyonread_batch_normalization_4_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_35/DisableCopyOnReadDisableCopyOnRead?read_35_disablecopyonread_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp?read_35_disablecopyonread_batch_normalization_4_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_36/DisableCopyOnReadDisableCopyOnRead)read_36_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp)read_36_disablecopyonread_conv2d_2_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*(
_output_shapes
:��|
Read_37/DisableCopyOnReadDisableCopyOnRead'read_37_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp'read_37_disablecopyonread_conv2d_2_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_38/DisableCopyOnReadDisableCopyOnRead=read_38_disablecopyonread_separable_conv2d_4_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp=read_38_disablecopyonread_separable_conv2d_4_depthwise_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_39/DisableCopyOnReadDisableCopyOnRead=read_39_disablecopyonread_separable_conv2d_4_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp=read_39_disablecopyonread_separable_conv2d_4_pointwise_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_40/DisableCopyOnReadDisableCopyOnRead1read_40_disablecopyonread_separable_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp1read_40_disablecopyonread_separable_conv2d_4_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_41/DisableCopyOnReadDisableCopyOnRead5read_41_disablecopyonread_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp5read_41_disablecopyonread_batch_normalization_5_gamma^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_42/DisableCopyOnReadDisableCopyOnRead4read_42_disablecopyonread_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp4read_42_disablecopyonread_batch_normalization_5_beta^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_43/DisableCopyOnReadDisableCopyOnRead;read_43_disablecopyonread_batch_normalization_5_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp;read_43_disablecopyonread_batch_normalization_5_moving_mean^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_44/DisableCopyOnReadDisableCopyOnRead?read_44_disablecopyonread_batch_normalization_5_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp?read_44_disablecopyonread_batch_normalization_5_moving_variance^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_45/DisableCopyOnReadDisableCopyOnRead=read_45_disablecopyonread_separable_conv2d_5_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp=read_45_disablecopyonread_separable_conv2d_5_depthwise_kernel^Read_45/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0x
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_46/DisableCopyOnReadDisableCopyOnRead=read_46_disablecopyonread_separable_conv2d_5_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp=read_46_disablecopyonread_separable_conv2d_5_pointwise_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_47/DisableCopyOnReadDisableCopyOnRead1read_47_disablecopyonread_separable_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp1read_47_disablecopyonread_separable_conv2d_5_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_48/DisableCopyOnReadDisableCopyOnRead5read_48_disablecopyonread_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp5read_48_disablecopyonread_batch_normalization_6_gamma^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_49/DisableCopyOnReadDisableCopyOnRead4read_49_disablecopyonread_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp4read_49_disablecopyonread_batch_normalization_6_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_50/DisableCopyOnReadDisableCopyOnRead;read_50_disablecopyonread_batch_normalization_6_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp;read_50_disablecopyonread_batch_normalization_6_moving_mean^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_51/DisableCopyOnReadDisableCopyOnRead?read_51_disablecopyonread_batch_normalization_6_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp?read_51_disablecopyonread_batch_normalization_6_moving_variance^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_52/DisableCopyOnReadDisableCopyOnRead)read_52_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp)read_52_disablecopyonread_conv2d_3_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*(
_output_shapes
:��|
Read_53/DisableCopyOnReadDisableCopyOnRead'read_53_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp'read_53_disablecopyonread_conv2d_3_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_54/DisableCopyOnReadDisableCopyOnRead=read_54_disablecopyonread_separable_conv2d_6_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp=read_54_disablecopyonread_separable_conv2d_6_depthwise_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_55/DisableCopyOnReadDisableCopyOnRead=read_55_disablecopyonread_separable_conv2d_6_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp=read_55_disablecopyonread_separable_conv2d_6_pointwise_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_56/DisableCopyOnReadDisableCopyOnRead1read_56_disablecopyonread_separable_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp1read_56_disablecopyonread_separable_conv2d_6_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_57/DisableCopyOnReadDisableCopyOnRead5read_57_disablecopyonread_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp5read_57_disablecopyonread_batch_normalization_7_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_58/DisableCopyOnReadDisableCopyOnRead4read_58_disablecopyonread_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp4read_58_disablecopyonread_batch_normalization_7_beta^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_59/DisableCopyOnReadDisableCopyOnRead;read_59_disablecopyonread_batch_normalization_7_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp;read_59_disablecopyonread_batch_normalization_7_moving_mean^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_60/DisableCopyOnReadDisableCopyOnRead?read_60_disablecopyonread_batch_normalization_7_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp?read_60_disablecopyonread_batch_normalization_7_moving_variance^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_61/DisableCopyOnReadDisableCopyOnRead&read_61_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp&read_61_disablecopyonread_dense_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:	�y
Read_62/DisableCopyOnReadDisableCopyOnRead$read_62_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp$read_62_disablecopyonread_dense_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_63/DisableCopyOnReadDisableCopyOnRead#read_63_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp#read_63_disablecopyonread_iteration^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	h
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: _
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_64/DisableCopyOnReadDisableCopyOnRead'read_64_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp'read_64_disablecopyonread_learning_rate^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_65/DisableCopyOnReadDisableCopyOnRead.read_65_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp.read_65_disablecopyonread_adam_m_conv2d_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_66/DisableCopyOnReadDisableCopyOnRead.read_66_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp.read_66_disablecopyonread_adam_v_conv2d_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_67/DisableCopyOnReadDisableCopyOnRead,read_67_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp,read_67_disablecopyonread_adam_m_conv2d_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_68/DisableCopyOnReadDisableCopyOnRead,read_68_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp,read_68_disablecopyonread_adam_v_conv2d_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_69/DisableCopyOnReadDisableCopyOnRead:read_69_disablecopyonread_adam_m_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp:read_69_disablecopyonread_adam_m_batch_normalization_gamma^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_70/DisableCopyOnReadDisableCopyOnRead:read_70_disablecopyonread_adam_v_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp:read_70_disablecopyonread_adam_v_batch_normalization_gamma^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_71/DisableCopyOnReadDisableCopyOnRead9read_71_disablecopyonread_adam_m_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp9read_71_disablecopyonread_adam_m_batch_normalization_beta^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_72/DisableCopyOnReadDisableCopyOnRead9read_72_disablecopyonread_adam_v_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp9read_72_disablecopyonread_adam_v_batch_normalization_beta^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_73/DisableCopyOnReadDisableCopyOnReadBread_73_disablecopyonread_adam_m_separable_conv2d_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOpBread_73_disablecopyonread_adam_m_separable_conv2d_depthwise_kernel^Read_73/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_74/DisableCopyOnReadDisableCopyOnReadBread_74_disablecopyonread_adam_v_separable_conv2d_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOpBread_74_disablecopyonread_adam_v_separable_conv2d_depthwise_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_75/DisableCopyOnReadDisableCopyOnReadBread_75_disablecopyonread_adam_m_separable_conv2d_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOpBread_75_disablecopyonread_adam_m_separable_conv2d_pointwise_kernel^Read_75/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_76/DisableCopyOnReadDisableCopyOnReadBread_76_disablecopyonread_adam_v_separable_conv2d_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOpBread_76_disablecopyonread_adam_v_separable_conv2d_pointwise_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_77/DisableCopyOnReadDisableCopyOnRead6read_77_disablecopyonread_adam_m_separable_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp6read_77_disablecopyonread_adam_m_separable_conv2d_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_78/DisableCopyOnReadDisableCopyOnRead6read_78_disablecopyonread_adam_v_separable_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp6read_78_disablecopyonread_adam_v_separable_conv2d_bias^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_79/DisableCopyOnReadDisableCopyOnRead<read_79_disablecopyonread_adam_m_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp<read_79_disablecopyonread_adam_m_batch_normalization_1_gamma^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_80/DisableCopyOnReadDisableCopyOnRead<read_80_disablecopyonread_adam_v_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp<read_80_disablecopyonread_adam_v_batch_normalization_1_gamma^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_81/DisableCopyOnReadDisableCopyOnRead;read_81_disablecopyonread_adam_m_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp;read_81_disablecopyonread_adam_m_batch_normalization_1_beta^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_82/DisableCopyOnReadDisableCopyOnRead;read_82_disablecopyonread_adam_v_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp;read_82_disablecopyonread_adam_v_batch_normalization_1_beta^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_83/DisableCopyOnReadDisableCopyOnReadDread_83_disablecopyonread_adam_m_separable_conv2d_1_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOpDread_83_disablecopyonread_adam_m_separable_conv2d_1_depthwise_kernel^Read_83/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_84/DisableCopyOnReadDisableCopyOnReadDread_84_disablecopyonread_adam_v_separable_conv2d_1_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOpDread_84_disablecopyonread_adam_v_separable_conv2d_1_depthwise_kernel^Read_84/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_85/DisableCopyOnReadDisableCopyOnReadDread_85_disablecopyonread_adam_m_separable_conv2d_1_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOpDread_85_disablecopyonread_adam_m_separable_conv2d_1_pointwise_kernel^Read_85/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_86/DisableCopyOnReadDisableCopyOnReadDread_86_disablecopyonread_adam_v_separable_conv2d_1_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOpDread_86_disablecopyonread_adam_v_separable_conv2d_1_pointwise_kernel^Read_86/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_87/DisableCopyOnReadDisableCopyOnRead8read_87_disablecopyonread_adam_m_separable_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp8read_87_disablecopyonread_adam_m_separable_conv2d_1_bias^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_88/DisableCopyOnReadDisableCopyOnRead8read_88_disablecopyonread_adam_v_separable_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp8read_88_disablecopyonread_adam_v_separable_conv2d_1_bias^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_89/DisableCopyOnReadDisableCopyOnRead<read_89_disablecopyonread_adam_m_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp<read_89_disablecopyonread_adam_m_batch_normalization_2_gamma^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_90/DisableCopyOnReadDisableCopyOnRead<read_90_disablecopyonread_adam_v_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp<read_90_disablecopyonread_adam_v_batch_normalization_2_gamma^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_91/DisableCopyOnReadDisableCopyOnRead;read_91_disablecopyonread_adam_m_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp;read_91_disablecopyonread_adam_m_batch_normalization_2_beta^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_92/DisableCopyOnReadDisableCopyOnRead;read_92_disablecopyonread_adam_v_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp;read_92_disablecopyonread_adam_v_batch_normalization_2_beta^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_93/DisableCopyOnReadDisableCopyOnRead0read_93_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp0read_93_disablecopyonread_adam_m_conv2d_1_kernel^Read_93/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_94/DisableCopyOnReadDisableCopyOnRead0read_94_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp0read_94_disablecopyonread_adam_v_conv2d_1_kernel^Read_94/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_95/DisableCopyOnReadDisableCopyOnRead.read_95_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp.read_95_disablecopyonread_adam_m_conv2d_1_bias^Read_95/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_96/DisableCopyOnReadDisableCopyOnRead.read_96_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp.read_96_disablecopyonread_adam_v_conv2d_1_bias^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_97/DisableCopyOnReadDisableCopyOnReadDread_97_disablecopyonread_adam_m_separable_conv2d_2_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOpDread_97_disablecopyonread_adam_m_separable_conv2d_2_depthwise_kernel^Read_97/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_98/DisableCopyOnReadDisableCopyOnReadDread_98_disablecopyonread_adam_v_separable_conv2d_2_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOpDread_98_disablecopyonread_adam_v_separable_conv2d_2_depthwise_kernel^Read_98/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0y
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_99/DisableCopyOnReadDisableCopyOnReadDread_99_disablecopyonread_adam_m_separable_conv2d_2_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOpDread_99_disablecopyonread_adam_m_separable_conv2d_2_pointwise_kernel^Read_99/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_100/DisableCopyOnReadDisableCopyOnReadEread_100_disablecopyonread_adam_v_separable_conv2d_2_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOpEread_100_disablecopyonread_adam_v_separable_conv2d_2_pointwise_kernel^Read_100/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_101/DisableCopyOnReadDisableCopyOnRead9read_101_disablecopyonread_adam_m_separable_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp9read_101_disablecopyonread_adam_m_separable_conv2d_2_bias^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_102/DisableCopyOnReadDisableCopyOnRead9read_102_disablecopyonread_adam_v_separable_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp9read_102_disablecopyonread_adam_v_separable_conv2d_2_bias^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_103/DisableCopyOnReadDisableCopyOnRead=read_103_disablecopyonread_adam_m_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp=read_103_disablecopyonread_adam_m_batch_normalization_3_gamma^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_104/DisableCopyOnReadDisableCopyOnRead=read_104_disablecopyonread_adam_v_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp=read_104_disablecopyonread_adam_v_batch_normalization_3_gamma^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_105/DisableCopyOnReadDisableCopyOnRead<read_105_disablecopyonread_adam_m_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp<read_105_disablecopyonread_adam_m_batch_normalization_3_beta^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_106/DisableCopyOnReadDisableCopyOnRead<read_106_disablecopyonread_adam_v_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp<read_106_disablecopyonread_adam_v_batch_normalization_3_beta^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_107/DisableCopyOnReadDisableCopyOnReadEread_107_disablecopyonread_adam_m_separable_conv2d_3_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOpEread_107_disablecopyonread_adam_m_separable_conv2d_3_depthwise_kernel^Read_107/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_108/DisableCopyOnReadDisableCopyOnReadEread_108_disablecopyonread_adam_v_separable_conv2d_3_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOpEread_108_disablecopyonread_adam_v_separable_conv2d_3_depthwise_kernel^Read_108/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_109/DisableCopyOnReadDisableCopyOnReadEread_109_disablecopyonread_adam_m_separable_conv2d_3_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOpEread_109_disablecopyonread_adam_m_separable_conv2d_3_pointwise_kernel^Read_109/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_110/DisableCopyOnReadDisableCopyOnReadEread_110_disablecopyonread_adam_v_separable_conv2d_3_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOpEread_110_disablecopyonread_adam_v_separable_conv2d_3_pointwise_kernel^Read_110/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_111/DisableCopyOnReadDisableCopyOnRead9read_111_disablecopyonread_adam_m_separable_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp9read_111_disablecopyonread_adam_m_separable_conv2d_3_bias^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_112/DisableCopyOnReadDisableCopyOnRead9read_112_disablecopyonread_adam_v_separable_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp9read_112_disablecopyonread_adam_v_separable_conv2d_3_bias^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_113/DisableCopyOnReadDisableCopyOnRead=read_113_disablecopyonread_adam_m_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_113/ReadVariableOpReadVariableOp=read_113_disablecopyonread_adam_m_batch_normalization_4_gamma^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_114/DisableCopyOnReadDisableCopyOnRead=read_114_disablecopyonread_adam_v_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_114/ReadVariableOpReadVariableOp=read_114_disablecopyonread_adam_v_batch_normalization_4_gamma^Read_114/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_115/DisableCopyOnReadDisableCopyOnRead<read_115_disablecopyonread_adam_m_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_115/ReadVariableOpReadVariableOp<read_115_disablecopyonread_adam_m_batch_normalization_4_beta^Read_115/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_116/DisableCopyOnReadDisableCopyOnRead<read_116_disablecopyonread_adam_v_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_116/ReadVariableOpReadVariableOp<read_116_disablecopyonread_adam_v_batch_normalization_4_beta^Read_116/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_232IdentityRead_116/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_233IdentityIdentity_232:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_117/DisableCopyOnReadDisableCopyOnRead1read_117_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_117/ReadVariableOpReadVariableOp1read_117_disablecopyonread_adam_m_conv2d_2_kernel^Read_117/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_234IdentityRead_117/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_235IdentityIdentity_234:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_118/DisableCopyOnReadDisableCopyOnRead1read_118_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_118/ReadVariableOpReadVariableOp1read_118_disablecopyonread_adam_v_conv2d_2_kernel^Read_118/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_236IdentityRead_118/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_237IdentityIdentity_236:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_119/DisableCopyOnReadDisableCopyOnRead/read_119_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_119/ReadVariableOpReadVariableOp/read_119_disablecopyonread_adam_m_conv2d_2_bias^Read_119/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_238IdentityRead_119/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_239IdentityIdentity_238:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_120/DisableCopyOnReadDisableCopyOnRead/read_120_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_120/ReadVariableOpReadVariableOp/read_120_disablecopyonread_adam_v_conv2d_2_bias^Read_120/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_240IdentityRead_120/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_241IdentityIdentity_240:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_121/DisableCopyOnReadDisableCopyOnReadEread_121_disablecopyonread_adam_m_separable_conv2d_4_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_121/ReadVariableOpReadVariableOpEread_121_disablecopyonread_adam_m_separable_conv2d_4_depthwise_kernel^Read_121/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_242IdentityRead_121/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_243IdentityIdentity_242:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_122/DisableCopyOnReadDisableCopyOnReadEread_122_disablecopyonread_adam_v_separable_conv2d_4_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_122/ReadVariableOpReadVariableOpEread_122_disablecopyonread_adam_v_separable_conv2d_4_depthwise_kernel^Read_122/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_244IdentityRead_122/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_245IdentityIdentity_244:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_123/DisableCopyOnReadDisableCopyOnReadEread_123_disablecopyonread_adam_m_separable_conv2d_4_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_123/ReadVariableOpReadVariableOpEread_123_disablecopyonread_adam_m_separable_conv2d_4_pointwise_kernel^Read_123/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_246IdentityRead_123/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_247IdentityIdentity_246:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_124/DisableCopyOnReadDisableCopyOnReadEread_124_disablecopyonread_adam_v_separable_conv2d_4_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_124/ReadVariableOpReadVariableOpEread_124_disablecopyonread_adam_v_separable_conv2d_4_pointwise_kernel^Read_124/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_248IdentityRead_124/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_249IdentityIdentity_248:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_125/DisableCopyOnReadDisableCopyOnRead9read_125_disablecopyonread_adam_m_separable_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_125/ReadVariableOpReadVariableOp9read_125_disablecopyonread_adam_m_separable_conv2d_4_bias^Read_125/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_250IdentityRead_125/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_251IdentityIdentity_250:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_126/DisableCopyOnReadDisableCopyOnRead9read_126_disablecopyonread_adam_v_separable_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_126/ReadVariableOpReadVariableOp9read_126_disablecopyonread_adam_v_separable_conv2d_4_bias^Read_126/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_252IdentityRead_126/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_253IdentityIdentity_252:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_127/DisableCopyOnReadDisableCopyOnRead=read_127_disablecopyonread_adam_m_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_127/ReadVariableOpReadVariableOp=read_127_disablecopyonread_adam_m_batch_normalization_5_gamma^Read_127/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_254IdentityRead_127/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_255IdentityIdentity_254:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_128/DisableCopyOnReadDisableCopyOnRead=read_128_disablecopyonread_adam_v_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_128/ReadVariableOpReadVariableOp=read_128_disablecopyonread_adam_v_batch_normalization_5_gamma^Read_128/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_256IdentityRead_128/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_257IdentityIdentity_256:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_129/DisableCopyOnReadDisableCopyOnRead<read_129_disablecopyonread_adam_m_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_129/ReadVariableOpReadVariableOp<read_129_disablecopyonread_adam_m_batch_normalization_5_beta^Read_129/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_258IdentityRead_129/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_259IdentityIdentity_258:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_130/DisableCopyOnReadDisableCopyOnRead<read_130_disablecopyonread_adam_v_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_130/ReadVariableOpReadVariableOp<read_130_disablecopyonread_adam_v_batch_normalization_5_beta^Read_130/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_260IdentityRead_130/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_261IdentityIdentity_260:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_131/DisableCopyOnReadDisableCopyOnReadEread_131_disablecopyonread_adam_m_separable_conv2d_5_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_131/ReadVariableOpReadVariableOpEread_131_disablecopyonread_adam_m_separable_conv2d_5_depthwise_kernel^Read_131/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_262IdentityRead_131/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_263IdentityIdentity_262:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_132/DisableCopyOnReadDisableCopyOnReadEread_132_disablecopyonread_adam_v_separable_conv2d_5_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_132/ReadVariableOpReadVariableOpEread_132_disablecopyonread_adam_v_separable_conv2d_5_depthwise_kernel^Read_132/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_264IdentityRead_132/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_265IdentityIdentity_264:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_133/DisableCopyOnReadDisableCopyOnReadEread_133_disablecopyonread_adam_m_separable_conv2d_5_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_133/ReadVariableOpReadVariableOpEread_133_disablecopyonread_adam_m_separable_conv2d_5_pointwise_kernel^Read_133/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_266IdentityRead_133/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_267IdentityIdentity_266:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_134/DisableCopyOnReadDisableCopyOnReadEread_134_disablecopyonread_adam_v_separable_conv2d_5_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_134/ReadVariableOpReadVariableOpEread_134_disablecopyonread_adam_v_separable_conv2d_5_pointwise_kernel^Read_134/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_268IdentityRead_134/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_269IdentityIdentity_268:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_135/DisableCopyOnReadDisableCopyOnRead9read_135_disablecopyonread_adam_m_separable_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_135/ReadVariableOpReadVariableOp9read_135_disablecopyonread_adam_m_separable_conv2d_5_bias^Read_135/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_270IdentityRead_135/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_271IdentityIdentity_270:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_136/DisableCopyOnReadDisableCopyOnRead9read_136_disablecopyonread_adam_v_separable_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_136/ReadVariableOpReadVariableOp9read_136_disablecopyonread_adam_v_separable_conv2d_5_bias^Read_136/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_272IdentityRead_136/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_273IdentityIdentity_272:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_137/DisableCopyOnReadDisableCopyOnRead=read_137_disablecopyonread_adam_m_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_137/ReadVariableOpReadVariableOp=read_137_disablecopyonread_adam_m_batch_normalization_6_gamma^Read_137/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_274IdentityRead_137/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_275IdentityIdentity_274:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_138/DisableCopyOnReadDisableCopyOnRead=read_138_disablecopyonread_adam_v_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_138/ReadVariableOpReadVariableOp=read_138_disablecopyonread_adam_v_batch_normalization_6_gamma^Read_138/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_276IdentityRead_138/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_277IdentityIdentity_276:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_139/DisableCopyOnReadDisableCopyOnRead<read_139_disablecopyonread_adam_m_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_139/ReadVariableOpReadVariableOp<read_139_disablecopyonread_adam_m_batch_normalization_6_beta^Read_139/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_278IdentityRead_139/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_279IdentityIdentity_278:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_140/DisableCopyOnReadDisableCopyOnRead<read_140_disablecopyonread_adam_v_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_140/ReadVariableOpReadVariableOp<read_140_disablecopyonread_adam_v_batch_normalization_6_beta^Read_140/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_280IdentityRead_140/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_281IdentityIdentity_280:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_141/DisableCopyOnReadDisableCopyOnRead1read_141_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_141/ReadVariableOpReadVariableOp1read_141_disablecopyonread_adam_m_conv2d_3_kernel^Read_141/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_282IdentityRead_141/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_283IdentityIdentity_282:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_142/DisableCopyOnReadDisableCopyOnRead1read_142_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_142/ReadVariableOpReadVariableOp1read_142_disablecopyonread_adam_v_conv2d_3_kernel^Read_142/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_284IdentityRead_142/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_285IdentityIdentity_284:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_143/DisableCopyOnReadDisableCopyOnRead/read_143_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_143/ReadVariableOpReadVariableOp/read_143_disablecopyonread_adam_m_conv2d_3_bias^Read_143/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_286IdentityRead_143/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_287IdentityIdentity_286:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_144/DisableCopyOnReadDisableCopyOnRead/read_144_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_144/ReadVariableOpReadVariableOp/read_144_disablecopyonread_adam_v_conv2d_3_bias^Read_144/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_288IdentityRead_144/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_289IdentityIdentity_288:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_145/DisableCopyOnReadDisableCopyOnReadEread_145_disablecopyonread_adam_m_separable_conv2d_6_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_145/ReadVariableOpReadVariableOpEread_145_disablecopyonread_adam_m_separable_conv2d_6_depthwise_kernel^Read_145/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_290IdentityRead_145/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_291IdentityIdentity_290:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_146/DisableCopyOnReadDisableCopyOnReadEread_146_disablecopyonread_adam_v_separable_conv2d_6_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_146/ReadVariableOpReadVariableOpEread_146_disablecopyonread_adam_v_separable_conv2d_6_depthwise_kernel^Read_146/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0z
Identity_292IdentityRead_146/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�p
Identity_293IdentityIdentity_292:output:0"/device:CPU:0*
T0*'
_output_shapes
:��
Read_147/DisableCopyOnReadDisableCopyOnReadEread_147_disablecopyonread_adam_m_separable_conv2d_6_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_147/ReadVariableOpReadVariableOpEread_147_disablecopyonread_adam_m_separable_conv2d_6_pointwise_kernel^Read_147/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_294IdentityRead_147/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_295IdentityIdentity_294:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_148/DisableCopyOnReadDisableCopyOnReadEread_148_disablecopyonread_adam_v_separable_conv2d_6_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_148/ReadVariableOpReadVariableOpEread_148_disablecopyonread_adam_v_separable_conv2d_6_pointwise_kernel^Read_148/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0{
Identity_296IdentityRead_148/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_297IdentityIdentity_296:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_149/DisableCopyOnReadDisableCopyOnRead9read_149_disablecopyonread_adam_m_separable_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_149/ReadVariableOpReadVariableOp9read_149_disablecopyonread_adam_m_separable_conv2d_6_bias^Read_149/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_298IdentityRead_149/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_299IdentityIdentity_298:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_150/DisableCopyOnReadDisableCopyOnRead9read_150_disablecopyonread_adam_v_separable_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_150/ReadVariableOpReadVariableOp9read_150_disablecopyonread_adam_v_separable_conv2d_6_bias^Read_150/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_300IdentityRead_150/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_301IdentityIdentity_300:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_151/DisableCopyOnReadDisableCopyOnRead=read_151_disablecopyonread_adam_m_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_151/ReadVariableOpReadVariableOp=read_151_disablecopyonread_adam_m_batch_normalization_7_gamma^Read_151/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_302IdentityRead_151/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_303IdentityIdentity_302:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_152/DisableCopyOnReadDisableCopyOnRead=read_152_disablecopyonread_adam_v_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_152/ReadVariableOpReadVariableOp=read_152_disablecopyonread_adam_v_batch_normalization_7_gamma^Read_152/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_304IdentityRead_152/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_305IdentityIdentity_304:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_153/DisableCopyOnReadDisableCopyOnRead<read_153_disablecopyonread_adam_m_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_153/ReadVariableOpReadVariableOp<read_153_disablecopyonread_adam_m_batch_normalization_7_beta^Read_153/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_306IdentityRead_153/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_307IdentityIdentity_306:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_154/DisableCopyOnReadDisableCopyOnRead<read_154_disablecopyonread_adam_v_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_154/ReadVariableOpReadVariableOp<read_154_disablecopyonread_adam_v_batch_normalization_7_beta^Read_154/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_308IdentityRead_154/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_309IdentityIdentity_308:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_155/DisableCopyOnReadDisableCopyOnRead.read_155_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_155/ReadVariableOpReadVariableOp.read_155_disablecopyonread_adam_m_dense_kernel^Read_155/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0r
Identity_310IdentityRead_155/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_311IdentityIdentity_310:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_156/DisableCopyOnReadDisableCopyOnRead.read_156_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_156/ReadVariableOpReadVariableOp.read_156_disablecopyonread_adam_v_dense_kernel^Read_156/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0r
Identity_312IdentityRead_156/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_313IdentityIdentity_312:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_157/DisableCopyOnReadDisableCopyOnRead,read_157_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_157/ReadVariableOpReadVariableOp,read_157_disablecopyonread_adam_m_dense_bias^Read_157/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_314IdentityRead_157/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_315IdentityIdentity_314:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_158/DisableCopyOnReadDisableCopyOnRead,read_158_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_158/ReadVariableOpReadVariableOp,read_158_disablecopyonread_adam_v_dense_bias^Read_158/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_316IdentityRead_158/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_317IdentityIdentity_316:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_159/DisableCopyOnReadDisableCopyOnRead"read_159_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_159/ReadVariableOpReadVariableOp"read_159_disablecopyonread_total_1^Read_159/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_318IdentityRead_159/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_319IdentityIdentity_318:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_160/DisableCopyOnReadDisableCopyOnRead"read_160_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_160/ReadVariableOpReadVariableOp"read_160_disablecopyonread_count_1^Read_160/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_320IdentityRead_160/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_321IdentityIdentity_320:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_161/DisableCopyOnReadDisableCopyOnRead read_161_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_161/ReadVariableOpReadVariableOp read_161_disablecopyonread_total^Read_161/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_322IdentityRead_161/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_323IdentityIdentity_322:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_162/DisableCopyOnReadDisableCopyOnRead read_162_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_162/ReadVariableOpReadVariableOp read_162_disablecopyonread_count^Read_162/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_324IdentityRead_162/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_325IdentityIdentity_324:output:0"/device:CPU:0*
T0*
_output_shapes
: �G
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�F
value�FB�F�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-7/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-7/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-17/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-17/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-18/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-18/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-18/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/81/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/82/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/83/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/84/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/85/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/86/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/87/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/88/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/89/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/90/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/91/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/92/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/93/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/94/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0Identity_233:output:0Identity_235:output:0Identity_237:output:0Identity_239:output:0Identity_241:output:0Identity_243:output:0Identity_245:output:0Identity_247:output:0Identity_249:output:0Identity_251:output:0Identity_253:output:0Identity_255:output:0Identity_257:output:0Identity_259:output:0Identity_261:output:0Identity_263:output:0Identity_265:output:0Identity_267:output:0Identity_269:output:0Identity_271:output:0Identity_273:output:0Identity_275:output:0Identity_277:output:0Identity_279:output:0Identity_281:output:0Identity_283:output:0Identity_285:output:0Identity_287:output:0Identity_289:output:0Identity_291:output:0Identity_293:output:0Identity_295:output:0Identity_297:output:0Identity_299:output:0Identity_301:output:0Identity_303:output:0Identity_305:output:0Identity_307:output:0Identity_309:output:0Identity_311:output:0Identity_313:output:0Identity_315:output:0Identity_317:output:0Identity_319:output:0Identity_321:output:0Identity_323:output:0Identity_325:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypes�
�2�	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_326Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_327IdentityIdentity_326:output:0^NoOp*
T0*
_output_shapes
: �D
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_116/DisableCopyOnRead^Read_116/ReadVariableOp^Read_117/DisableCopyOnRead^Read_117/ReadVariableOp^Read_118/DisableCopyOnRead^Read_118/ReadVariableOp^Read_119/DisableCopyOnRead^Read_119/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_120/DisableCopyOnRead^Read_120/ReadVariableOp^Read_121/DisableCopyOnRead^Read_121/ReadVariableOp^Read_122/DisableCopyOnRead^Read_122/ReadVariableOp^Read_123/DisableCopyOnRead^Read_123/ReadVariableOp^Read_124/DisableCopyOnRead^Read_124/ReadVariableOp^Read_125/DisableCopyOnRead^Read_125/ReadVariableOp^Read_126/DisableCopyOnRead^Read_126/ReadVariableOp^Read_127/DisableCopyOnRead^Read_127/ReadVariableOp^Read_128/DisableCopyOnRead^Read_128/ReadVariableOp^Read_129/DisableCopyOnRead^Read_129/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_130/DisableCopyOnRead^Read_130/ReadVariableOp^Read_131/DisableCopyOnRead^Read_131/ReadVariableOp^Read_132/DisableCopyOnRead^Read_132/ReadVariableOp^Read_133/DisableCopyOnRead^Read_133/ReadVariableOp^Read_134/DisableCopyOnRead^Read_134/ReadVariableOp^Read_135/DisableCopyOnRead^Read_135/ReadVariableOp^Read_136/DisableCopyOnRead^Read_136/ReadVariableOp^Read_137/DisableCopyOnRead^Read_137/ReadVariableOp^Read_138/DisableCopyOnRead^Read_138/ReadVariableOp^Read_139/DisableCopyOnRead^Read_139/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_140/DisableCopyOnRead^Read_140/ReadVariableOp^Read_141/DisableCopyOnRead^Read_141/ReadVariableOp^Read_142/DisableCopyOnRead^Read_142/ReadVariableOp^Read_143/DisableCopyOnRead^Read_143/ReadVariableOp^Read_144/DisableCopyOnRead^Read_144/ReadVariableOp^Read_145/DisableCopyOnRead^Read_145/ReadVariableOp^Read_146/DisableCopyOnRead^Read_146/ReadVariableOp^Read_147/DisableCopyOnRead^Read_147/ReadVariableOp^Read_148/DisableCopyOnRead^Read_148/ReadVariableOp^Read_149/DisableCopyOnRead^Read_149/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_150/DisableCopyOnRead^Read_150/ReadVariableOp^Read_151/DisableCopyOnRead^Read_151/ReadVariableOp^Read_152/DisableCopyOnRead^Read_152/ReadVariableOp^Read_153/DisableCopyOnRead^Read_153/ReadVariableOp^Read_154/DisableCopyOnRead^Read_154/ReadVariableOp^Read_155/DisableCopyOnRead^Read_155/ReadVariableOp^Read_156/DisableCopyOnRead^Read_156/ReadVariableOp^Read_157/DisableCopyOnRead^Read_157/ReadVariableOp^Read_158/DisableCopyOnRead^Read_158/ReadVariableOp^Read_159/DisableCopyOnRead^Read_159/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_160/DisableCopyOnRead^Read_160/ReadVariableOp^Read_161/DisableCopyOnRead^Read_161/ReadVariableOp^Read_162/DisableCopyOnRead^Read_162/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_327Identity_327:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp28
Read_116/DisableCopyOnReadRead_116/DisableCopyOnRead22
Read_116/ReadVariableOpRead_116/ReadVariableOp28
Read_117/DisableCopyOnReadRead_117/DisableCopyOnRead22
Read_117/ReadVariableOpRead_117/ReadVariableOp28
Read_118/DisableCopyOnReadRead_118/DisableCopyOnRead22
Read_118/ReadVariableOpRead_118/ReadVariableOp28
Read_119/DisableCopyOnReadRead_119/DisableCopyOnRead22
Read_119/ReadVariableOpRead_119/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp28
Read_120/DisableCopyOnReadRead_120/DisableCopyOnRead22
Read_120/ReadVariableOpRead_120/ReadVariableOp28
Read_121/DisableCopyOnReadRead_121/DisableCopyOnRead22
Read_121/ReadVariableOpRead_121/ReadVariableOp28
Read_122/DisableCopyOnReadRead_122/DisableCopyOnRead22
Read_122/ReadVariableOpRead_122/ReadVariableOp28
Read_123/DisableCopyOnReadRead_123/DisableCopyOnRead22
Read_123/ReadVariableOpRead_123/ReadVariableOp28
Read_124/DisableCopyOnReadRead_124/DisableCopyOnRead22
Read_124/ReadVariableOpRead_124/ReadVariableOp28
Read_125/DisableCopyOnReadRead_125/DisableCopyOnRead22
Read_125/ReadVariableOpRead_125/ReadVariableOp28
Read_126/DisableCopyOnReadRead_126/DisableCopyOnRead22
Read_126/ReadVariableOpRead_126/ReadVariableOp28
Read_127/DisableCopyOnReadRead_127/DisableCopyOnRead22
Read_127/ReadVariableOpRead_127/ReadVariableOp28
Read_128/DisableCopyOnReadRead_128/DisableCopyOnRead22
Read_128/ReadVariableOpRead_128/ReadVariableOp28
Read_129/DisableCopyOnReadRead_129/DisableCopyOnRead22
Read_129/ReadVariableOpRead_129/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp28
Read_130/DisableCopyOnReadRead_130/DisableCopyOnRead22
Read_130/ReadVariableOpRead_130/ReadVariableOp28
Read_131/DisableCopyOnReadRead_131/DisableCopyOnRead22
Read_131/ReadVariableOpRead_131/ReadVariableOp28
Read_132/DisableCopyOnReadRead_132/DisableCopyOnRead22
Read_132/ReadVariableOpRead_132/ReadVariableOp28
Read_133/DisableCopyOnReadRead_133/DisableCopyOnRead22
Read_133/ReadVariableOpRead_133/ReadVariableOp28
Read_134/DisableCopyOnReadRead_134/DisableCopyOnRead22
Read_134/ReadVariableOpRead_134/ReadVariableOp28
Read_135/DisableCopyOnReadRead_135/DisableCopyOnRead22
Read_135/ReadVariableOpRead_135/ReadVariableOp28
Read_136/DisableCopyOnReadRead_136/DisableCopyOnRead22
Read_136/ReadVariableOpRead_136/ReadVariableOp28
Read_137/DisableCopyOnReadRead_137/DisableCopyOnRead22
Read_137/ReadVariableOpRead_137/ReadVariableOp28
Read_138/DisableCopyOnReadRead_138/DisableCopyOnRead22
Read_138/ReadVariableOpRead_138/ReadVariableOp28
Read_139/DisableCopyOnReadRead_139/DisableCopyOnRead22
Read_139/ReadVariableOpRead_139/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp28
Read_140/DisableCopyOnReadRead_140/DisableCopyOnRead22
Read_140/ReadVariableOpRead_140/ReadVariableOp28
Read_141/DisableCopyOnReadRead_141/DisableCopyOnRead22
Read_141/ReadVariableOpRead_141/ReadVariableOp28
Read_142/DisableCopyOnReadRead_142/DisableCopyOnRead22
Read_142/ReadVariableOpRead_142/ReadVariableOp28
Read_143/DisableCopyOnReadRead_143/DisableCopyOnRead22
Read_143/ReadVariableOpRead_143/ReadVariableOp28
Read_144/DisableCopyOnReadRead_144/DisableCopyOnRead22
Read_144/ReadVariableOpRead_144/ReadVariableOp28
Read_145/DisableCopyOnReadRead_145/DisableCopyOnRead22
Read_145/ReadVariableOpRead_145/ReadVariableOp28
Read_146/DisableCopyOnReadRead_146/DisableCopyOnRead22
Read_146/ReadVariableOpRead_146/ReadVariableOp28
Read_147/DisableCopyOnReadRead_147/DisableCopyOnRead22
Read_147/ReadVariableOpRead_147/ReadVariableOp28
Read_148/DisableCopyOnReadRead_148/DisableCopyOnRead22
Read_148/ReadVariableOpRead_148/ReadVariableOp28
Read_149/DisableCopyOnReadRead_149/DisableCopyOnRead22
Read_149/ReadVariableOpRead_149/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp28
Read_150/DisableCopyOnReadRead_150/DisableCopyOnRead22
Read_150/ReadVariableOpRead_150/ReadVariableOp28
Read_151/DisableCopyOnReadRead_151/DisableCopyOnRead22
Read_151/ReadVariableOpRead_151/ReadVariableOp28
Read_152/DisableCopyOnReadRead_152/DisableCopyOnRead22
Read_152/ReadVariableOpRead_152/ReadVariableOp28
Read_153/DisableCopyOnReadRead_153/DisableCopyOnRead22
Read_153/ReadVariableOpRead_153/ReadVariableOp28
Read_154/DisableCopyOnReadRead_154/DisableCopyOnRead22
Read_154/ReadVariableOpRead_154/ReadVariableOp28
Read_155/DisableCopyOnReadRead_155/DisableCopyOnRead22
Read_155/ReadVariableOpRead_155/ReadVariableOp28
Read_156/DisableCopyOnReadRead_156/DisableCopyOnRead22
Read_156/ReadVariableOpRead_156/ReadVariableOp28
Read_157/DisableCopyOnReadRead_157/DisableCopyOnRead22
Read_157/ReadVariableOpRead_157/ReadVariableOp28
Read_158/DisableCopyOnReadRead_158/DisableCopyOnRead22
Read_158/ReadVariableOpRead_158/ReadVariableOp28
Read_159/DisableCopyOnReadRead_159/DisableCopyOnRead22
Read_159/ReadVariableOpRead_159/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp28
Read_160/DisableCopyOnReadRead_160/DisableCopyOnRead22
Read_160/ReadVariableOpRead_160/ReadVariableOp28
Read_161/DisableCopyOnReadRead_161/DisableCopyOnRead22
Read_161/ReadVariableOpRead_161/ReadVariableOp28
Read_162/DisableCopyOnReadRead_162/DisableCopyOnRead22
Read_162/ReadVariableOpRead_162/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:A=
;
_user_specified_name#!separable_conv2d/depthwise_kernel:A=
;
_user_specified_name#!separable_conv2d/pointwise_kernel:5	1
/
_user_specified_nameseparable_conv2d/bias:;
7
5
_user_specified_namebatch_normalization_1/gamma::6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:C?
=
_user_specified_name%#separable_conv2d_1/depthwise_kernel:C?
=
_user_specified_name%#separable_conv2d_1/pointwise_kernel:73
1
_user_specified_nameseparable_conv2d_1/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:C?
=
_user_specified_name%#separable_conv2d_2/depthwise_kernel:C?
=
_user_specified_name%#separable_conv2d_2/pointwise_kernel:73
1
_user_specified_nameseparable_conv2d_2/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:C?
=
_user_specified_name%#separable_conv2d_3/depthwise_kernel:C?
=
_user_specified_name%#separable_conv2d_3/pointwise_kernel:7 3
1
_user_specified_nameseparable_conv2d_3/bias:;!7
5
_user_specified_namebatch_normalization_4/gamma::"6
4
_user_specified_namebatch_normalization_4/beta:A#=
;
_user_specified_name#!batch_normalization_4/moving_mean:E$A
?
_user_specified_name'%batch_normalization_4/moving_variance:/%+
)
_user_specified_nameconv2d_2/kernel:-&)
'
_user_specified_nameconv2d_2/bias:C'?
=
_user_specified_name%#separable_conv2d_4/depthwise_kernel:C(?
=
_user_specified_name%#separable_conv2d_4/pointwise_kernel:7)3
1
_user_specified_nameseparable_conv2d_4/bias:;*7
5
_user_specified_namebatch_normalization_5/gamma::+6
4
_user_specified_namebatch_normalization_5/beta:A,=
;
_user_specified_name#!batch_normalization_5/moving_mean:E-A
?
_user_specified_name'%batch_normalization_5/moving_variance:C.?
=
_user_specified_name%#separable_conv2d_5/depthwise_kernel:C/?
=
_user_specified_name%#separable_conv2d_5/pointwise_kernel:703
1
_user_specified_nameseparable_conv2d_5/bias:;17
5
_user_specified_namebatch_normalization_6/gamma::26
4
_user_specified_namebatch_normalization_6/beta:A3=
;
_user_specified_name#!batch_normalization_6/moving_mean:E4A
?
_user_specified_name'%batch_normalization_6/moving_variance:/5+
)
_user_specified_nameconv2d_3/kernel:-6)
'
_user_specified_nameconv2d_3/bias:C7?
=
_user_specified_name%#separable_conv2d_6/depthwise_kernel:C8?
=
_user_specified_name%#separable_conv2d_6/pointwise_kernel:793
1
_user_specified_nameseparable_conv2d_6/bias:;:7
5
_user_specified_namebatch_normalization_7/gamma::;6
4
_user_specified_namebatch_normalization_7/beta:A<=
;
_user_specified_name#!batch_normalization_7/moving_mean:E=A
?
_user_specified_name'%batch_normalization_7/moving_variance:,>(
&
_user_specified_namedense/kernel:*?&
$
_user_specified_name
dense/bias:)@%
#
_user_specified_name	iteration:-A)
'
_user_specified_namelearning_rate:4B0
.
_user_specified_nameAdam/m/conv2d/kernel:4C0
.
_user_specified_nameAdam/v/conv2d/kernel:2D.
,
_user_specified_nameAdam/m/conv2d/bias:2E.
,
_user_specified_nameAdam/v/conv2d/bias:@F<
:
_user_specified_name" Adam/m/batch_normalization/gamma:@G<
:
_user_specified_name" Adam/v/batch_normalization/gamma:?H;
9
_user_specified_name!Adam/m/batch_normalization/beta:?I;
9
_user_specified_name!Adam/v/batch_normalization/beta:HJD
B
_user_specified_name*(Adam/m/separable_conv2d/depthwise_kernel:HKD
B
_user_specified_name*(Adam/v/separable_conv2d/depthwise_kernel:HLD
B
_user_specified_name*(Adam/m/separable_conv2d/pointwise_kernel:HMD
B
_user_specified_name*(Adam/v/separable_conv2d/pointwise_kernel:<N8
6
_user_specified_nameAdam/m/separable_conv2d/bias:<O8
6
_user_specified_nameAdam/v/separable_conv2d/bias:BP>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:BQ>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:AR=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:AS=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:JTF
D
_user_specified_name,*Adam/m/separable_conv2d_1/depthwise_kernel:JUF
D
_user_specified_name,*Adam/v/separable_conv2d_1/depthwise_kernel:JVF
D
_user_specified_name,*Adam/m/separable_conv2d_1/pointwise_kernel:JWF
D
_user_specified_name,*Adam/v/separable_conv2d_1/pointwise_kernel:>X:
8
_user_specified_name Adam/m/separable_conv2d_1/bias:>Y:
8
_user_specified_name Adam/v/separable_conv2d_1/bias:BZ>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:B[>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:A\=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:A]=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:6^2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6_2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4`0
.
_user_specified_nameAdam/m/conv2d_1/bias:4a0
.
_user_specified_nameAdam/v/conv2d_1/bias:JbF
D
_user_specified_name,*Adam/m/separable_conv2d_2/depthwise_kernel:JcF
D
_user_specified_name,*Adam/v/separable_conv2d_2/depthwise_kernel:JdF
D
_user_specified_name,*Adam/m/separable_conv2d_2/pointwise_kernel:JeF
D
_user_specified_name,*Adam/v/separable_conv2d_2/pointwise_kernel:>f:
8
_user_specified_name Adam/m/separable_conv2d_2/bias:>g:
8
_user_specified_name Adam/v/separable_conv2d_2/bias:Bh>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:Bi>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:Aj=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:Ak=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:JlF
D
_user_specified_name,*Adam/m/separable_conv2d_3/depthwise_kernel:JmF
D
_user_specified_name,*Adam/v/separable_conv2d_3/depthwise_kernel:JnF
D
_user_specified_name,*Adam/m/separable_conv2d_3/pointwise_kernel:JoF
D
_user_specified_name,*Adam/v/separable_conv2d_3/pointwise_kernel:>p:
8
_user_specified_name Adam/m/separable_conv2d_3/bias:>q:
8
_user_specified_name Adam/v/separable_conv2d_3/bias:Br>
<
_user_specified_name$"Adam/m/batch_normalization_4/gamma:Bs>
<
_user_specified_name$"Adam/v/batch_normalization_4/gamma:At=
;
_user_specified_name#!Adam/m/batch_normalization_4/beta:Au=
;
_user_specified_name#!Adam/v/batch_normalization_4/beta:6v2
0
_user_specified_nameAdam/m/conv2d_2/kernel:6w2
0
_user_specified_nameAdam/v/conv2d_2/kernel:4x0
.
_user_specified_nameAdam/m/conv2d_2/bias:4y0
.
_user_specified_nameAdam/v/conv2d_2/bias:JzF
D
_user_specified_name,*Adam/m/separable_conv2d_4/depthwise_kernel:J{F
D
_user_specified_name,*Adam/v/separable_conv2d_4/depthwise_kernel:J|F
D
_user_specified_name,*Adam/m/separable_conv2d_4/pointwise_kernel:J}F
D
_user_specified_name,*Adam/v/separable_conv2d_4/pointwise_kernel:>~:
8
_user_specified_name Adam/m/separable_conv2d_4/bias:>:
8
_user_specified_name Adam/v/separable_conv2d_4/bias:C�>
<
_user_specified_name$"Adam/m/batch_normalization_5/gamma:C�>
<
_user_specified_name$"Adam/v/batch_normalization_5/gamma:B�=
;
_user_specified_name#!Adam/m/batch_normalization_5/beta:B�=
;
_user_specified_name#!Adam/v/batch_normalization_5/beta:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_5/depthwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_5/depthwise_kernel:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_5/pointwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_5/pointwise_kernel:?�:
8
_user_specified_name Adam/m/separable_conv2d_5/bias:?�:
8
_user_specified_name Adam/v/separable_conv2d_5/bias:C�>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:C�>
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:B�=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:B�=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:7�2
0
_user_specified_nameAdam/m/conv2d_3/kernel:7�2
0
_user_specified_nameAdam/v/conv2d_3/kernel:5�0
.
_user_specified_nameAdam/m/conv2d_3/bias:5�0
.
_user_specified_nameAdam/v/conv2d_3/bias:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_6/depthwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_6/depthwise_kernel:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_6/pointwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_6/pointwise_kernel:?�:
8
_user_specified_name Adam/m/separable_conv2d_6/bias:?�:
8
_user_specified_name Adam/v/separable_conv2d_6/bias:C�>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:C�>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:B�=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:B�=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:4�/
-
_user_specified_nameAdam/m/dense/kernel:4�/
-
_user_specified_nameAdam/v/dense/kernel:2�-
+
_user_specified_nameAdam/m/dense/bias:2�-
+
_user_specified_nameAdam/v/dense/bias:(�#
!
_user_specified_name	total_1:(�#
!
_user_specified_name	count_1:&�!

_user_specified_nametotal:&�!

_user_specified_namecount:>�9

_output_shapes
: 

_user_specified_nameConst
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21638

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
5__inference_batch_normalization_2_layer_call_fn_21589

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_19596�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21579:%!

_user_specified_name21581:%!

_user_specified_name21583:%!

_user_specified_name21585
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21620

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
`
'__inference_dropout_layer_call_fn_22267

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20398p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21228
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_21715

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
c
G__inference_activation_2_layer_call_and_return_conditional_losses_20189

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������ZZ�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21173
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
@__inference_dense_layer_call_and_return_conditional_losses_20410

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
2__inference_separable_conv2d_5_layer_call_fn_22035

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_19939�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name22027:%!

_user_specified_name22029:%!

_user_specified_name22031
�
�
(__inference_conv2d_3_layer_call_fn_22131

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_20351x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name22125:%!

_user_specified_name22127
�
W
"__inference__update_step_xla_21308
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21268
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
(__inference_conv2d_2_layer_call_fn_21894

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_20284x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������--�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs:%!

_user_specified_name21888:%!

_user_specified_name21890
�
�
&__inference_conv2d_layer_call_fn_21360

inputs"
unknown:�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_20142x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������ZZ�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name21354:%!

_user_specified_name21356
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_20142

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������ZZ�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������ZZ�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_19694

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
H
,__inference_activation_6_layer_call_fn_22019

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_20323i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_20398

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_21351

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
"__inference__update_step_xla_21128
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22141

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
X
"__inference__update_step_xla_21278
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21138
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
H
,__inference_activation_5_layer_call_fn_21921

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_20301i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_20017

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_2_layer_call_fn_21602

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_19614�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21592:%!

_user_specified_name21594:%!

_user_specified_name21596:%!

_user_specified_name21598
�
c
G__inference_activation_1_layer_call_and_return_conditional_losses_20167

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������ZZ�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21283
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
X
"__inference__update_step_xla_21218
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21198
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21432

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
"__inference__update_step_xla_21143
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
>__inference_add_layer_call_and_return_conditional_losses_20228

inputs
inputs_1
identityY
addAddV2inputsinputs_1*
T0*0
_output_shapes
:���������--�X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������--�:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs:XT
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_21648

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
G__inference_activation_6_layer_call_and_return_conditional_losses_22024

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21168
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�0
�
#__inference_signature_wrapper_21103
input_1"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�$
	unknown_5:�%
	unknown_6:��
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�%

unknown_12:�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�&

unknown_19:��

unknown_20:	�%

unknown_21:�&

unknown_22:��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�%

unknown_28:�&

unknown_29:��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�&

unknown_35:��

unknown_36:	�%

unknown_37:�&

unknown_38:��

unknown_39:	�

unknown_40:	�

unknown_41:	�

unknown_42:	�

unknown_43:	�%

unknown_44:�&

unknown_45:��

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�&

unknown_51:��

unknown_52:	�%

unknown_53:�&

unknown_54:��

unknown_55:	�

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:	�

unknown_60:	�

unknown_61:
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*a
_read_only_resource_inputsC
A?	
 !"#$%&'()*+,-./0123456789:;<=>?*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_19402o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name20975:%!

_user_specified_name20977:%!

_user_specified_name20979:%!

_user_specified_name20981:%!

_user_specified_name20983:%!

_user_specified_name20985:%!

_user_specified_name20987:%!

_user_specified_name20989:%	!

_user_specified_name20991:%
!

_user_specified_name20993:%!

_user_specified_name20995:%!

_user_specified_name20997:%!

_user_specified_name20999:%!

_user_specified_name21001:%!

_user_specified_name21003:%!

_user_specified_name21005:%!

_user_specified_name21007:%!

_user_specified_name21009:%!

_user_specified_name21011:%!

_user_specified_name21013:%!

_user_specified_name21015:%!

_user_specified_name21017:%!

_user_specified_name21019:%!

_user_specified_name21021:%!

_user_specified_name21023:%!

_user_specified_name21025:%!

_user_specified_name21027:%!

_user_specified_name21029:%!

_user_specified_name21031:%!

_user_specified_name21033:%!

_user_specified_name21035:% !

_user_specified_name21037:%!!

_user_specified_name21039:%"!

_user_specified_name21041:%#!

_user_specified_name21043:%$!

_user_specified_name21045:%%!

_user_specified_name21047:%&!

_user_specified_name21049:%'!

_user_specified_name21051:%(!

_user_specified_name21053:%)!

_user_specified_name21055:%*!

_user_specified_name21057:%+!

_user_specified_name21059:%,!

_user_specified_name21061:%-!

_user_specified_name21063:%.!

_user_specified_name21065:%/!

_user_specified_name21067:%0!

_user_specified_name21069:%1!

_user_specified_name21071:%2!

_user_specified_name21073:%3!

_user_specified_name21075:%4!

_user_specified_name21077:%5!

_user_specified_name21079:%6!

_user_specified_name21081:%7!

_user_specified_name21083:%8!

_user_specified_name21085:%9!

_user_specified_name21087:%:!

_user_specified_name21089:%;!

_user_specified_name21091:%<!

_user_specified_name21093:%=!

_user_specified_name21095:%>!

_user_specified_name21097:%?!

_user_specified_name21099
�
�
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_19753

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
"__inference__update_step_xla_21233
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21258
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_20084

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
5__inference_batch_normalization_3_layer_call_fn_21728

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_19694�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21718:%!

_user_specified_name21720:%!

_user_specified_name21722:%!

_user_specified_name21724
�	
�
2__inference_separable_conv2d_2_layer_call_fn_21700

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_19665�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21692:%!

_user_specified_name21694:%!

_user_specified_name21696
�
H
,__inference_activation_7_layer_call_fn_22246

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_20384i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_activation_5_layer_call_and_return_conditional_losses_20301

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_20131

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_19645

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
G__inference_activation_4_layer_call_and_return_conditional_losses_20256

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������--�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_19712

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_22289

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_19614

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
O
"__inference__update_step_xla_21333
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�: *
	_noinline(:I E

_output_shapes
:	�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_22014

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
"__inference__update_step_xla_21263
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19968

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
H
,__inference_activation_2_layer_call_fn_21545

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_20189i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������ZZ�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������ZZ�:X T
0
_output_shapes
:���������ZZ�
 
_user_specified_nameinputs
�
�w
!__inference__traced_restore_23807
file_prefix9
assignvariableop_conv2d_kernel:�-
assignvariableop_1_conv2d_bias:	�;
,assignvariableop_2_batch_normalization_gamma:	�:
+assignvariableop_3_batch_normalization_beta:	�A
2assignvariableop_4_batch_normalization_moving_mean:	�E
6assignvariableop_5_batch_normalization_moving_variance:	�O
4assignvariableop_6_separable_conv2d_depthwise_kernel:�P
4assignvariableop_7_separable_conv2d_pointwise_kernel:��7
(assignvariableop_8_separable_conv2d_bias:	�=
.assignvariableop_9_batch_normalization_1_gamma:	�=
.assignvariableop_10_batch_normalization_1_beta:	�D
5assignvariableop_11_batch_normalization_1_moving_mean:	�H
9assignvariableop_12_batch_normalization_1_moving_variance:	�R
7assignvariableop_13_separable_conv2d_1_depthwise_kernel:�S
7assignvariableop_14_separable_conv2d_1_pointwise_kernel:��:
+assignvariableop_15_separable_conv2d_1_bias:	�>
/assignvariableop_16_batch_normalization_2_gamma:	�=
.assignvariableop_17_batch_normalization_2_beta:	�D
5assignvariableop_18_batch_normalization_2_moving_mean:	�H
9assignvariableop_19_batch_normalization_2_moving_variance:	�?
#assignvariableop_20_conv2d_1_kernel:��0
!assignvariableop_21_conv2d_1_bias:	�R
7assignvariableop_22_separable_conv2d_2_depthwise_kernel:�S
7assignvariableop_23_separable_conv2d_2_pointwise_kernel:��:
+assignvariableop_24_separable_conv2d_2_bias:	�>
/assignvariableop_25_batch_normalization_3_gamma:	�=
.assignvariableop_26_batch_normalization_3_beta:	�D
5assignvariableop_27_batch_normalization_3_moving_mean:	�H
9assignvariableop_28_batch_normalization_3_moving_variance:	�R
7assignvariableop_29_separable_conv2d_3_depthwise_kernel:�S
7assignvariableop_30_separable_conv2d_3_pointwise_kernel:��:
+assignvariableop_31_separable_conv2d_3_bias:	�>
/assignvariableop_32_batch_normalization_4_gamma:	�=
.assignvariableop_33_batch_normalization_4_beta:	�D
5assignvariableop_34_batch_normalization_4_moving_mean:	�H
9assignvariableop_35_batch_normalization_4_moving_variance:	�?
#assignvariableop_36_conv2d_2_kernel:��0
!assignvariableop_37_conv2d_2_bias:	�R
7assignvariableop_38_separable_conv2d_4_depthwise_kernel:�S
7assignvariableop_39_separable_conv2d_4_pointwise_kernel:��:
+assignvariableop_40_separable_conv2d_4_bias:	�>
/assignvariableop_41_batch_normalization_5_gamma:	�=
.assignvariableop_42_batch_normalization_5_beta:	�D
5assignvariableop_43_batch_normalization_5_moving_mean:	�H
9assignvariableop_44_batch_normalization_5_moving_variance:	�R
7assignvariableop_45_separable_conv2d_5_depthwise_kernel:�S
7assignvariableop_46_separable_conv2d_5_pointwise_kernel:��:
+assignvariableop_47_separable_conv2d_5_bias:	�>
/assignvariableop_48_batch_normalization_6_gamma:	�=
.assignvariableop_49_batch_normalization_6_beta:	�D
5assignvariableop_50_batch_normalization_6_moving_mean:	�H
9assignvariableop_51_batch_normalization_6_moving_variance:	�?
#assignvariableop_52_conv2d_3_kernel:��0
!assignvariableop_53_conv2d_3_bias:	�R
7assignvariableop_54_separable_conv2d_6_depthwise_kernel:�S
7assignvariableop_55_separable_conv2d_6_pointwise_kernel:��:
+assignvariableop_56_separable_conv2d_6_bias:	�>
/assignvariableop_57_batch_normalization_7_gamma:	�=
.assignvariableop_58_batch_normalization_7_beta:	�D
5assignvariableop_59_batch_normalization_7_moving_mean:	�H
9assignvariableop_60_batch_normalization_7_moving_variance:	�3
 assignvariableop_61_dense_kernel:	�,
assignvariableop_62_dense_bias:'
assignvariableop_63_iteration:	 +
!assignvariableop_64_learning_rate: C
(assignvariableop_65_adam_m_conv2d_kernel:�C
(assignvariableop_66_adam_v_conv2d_kernel:�5
&assignvariableop_67_adam_m_conv2d_bias:	�5
&assignvariableop_68_adam_v_conv2d_bias:	�C
4assignvariableop_69_adam_m_batch_normalization_gamma:	�C
4assignvariableop_70_adam_v_batch_normalization_gamma:	�B
3assignvariableop_71_adam_m_batch_normalization_beta:	�B
3assignvariableop_72_adam_v_batch_normalization_beta:	�W
<assignvariableop_73_adam_m_separable_conv2d_depthwise_kernel:�W
<assignvariableop_74_adam_v_separable_conv2d_depthwise_kernel:�X
<assignvariableop_75_adam_m_separable_conv2d_pointwise_kernel:��X
<assignvariableop_76_adam_v_separable_conv2d_pointwise_kernel:��?
0assignvariableop_77_adam_m_separable_conv2d_bias:	�?
0assignvariableop_78_adam_v_separable_conv2d_bias:	�E
6assignvariableop_79_adam_m_batch_normalization_1_gamma:	�E
6assignvariableop_80_adam_v_batch_normalization_1_gamma:	�D
5assignvariableop_81_adam_m_batch_normalization_1_beta:	�D
5assignvariableop_82_adam_v_batch_normalization_1_beta:	�Y
>assignvariableop_83_adam_m_separable_conv2d_1_depthwise_kernel:�Y
>assignvariableop_84_adam_v_separable_conv2d_1_depthwise_kernel:�Z
>assignvariableop_85_adam_m_separable_conv2d_1_pointwise_kernel:��Z
>assignvariableop_86_adam_v_separable_conv2d_1_pointwise_kernel:��A
2assignvariableop_87_adam_m_separable_conv2d_1_bias:	�A
2assignvariableop_88_adam_v_separable_conv2d_1_bias:	�E
6assignvariableop_89_adam_m_batch_normalization_2_gamma:	�E
6assignvariableop_90_adam_v_batch_normalization_2_gamma:	�D
5assignvariableop_91_adam_m_batch_normalization_2_beta:	�D
5assignvariableop_92_adam_v_batch_normalization_2_beta:	�F
*assignvariableop_93_adam_m_conv2d_1_kernel:��F
*assignvariableop_94_adam_v_conv2d_1_kernel:��7
(assignvariableop_95_adam_m_conv2d_1_bias:	�7
(assignvariableop_96_adam_v_conv2d_1_bias:	�Y
>assignvariableop_97_adam_m_separable_conv2d_2_depthwise_kernel:�Y
>assignvariableop_98_adam_v_separable_conv2d_2_depthwise_kernel:�Z
>assignvariableop_99_adam_m_separable_conv2d_2_pointwise_kernel:��[
?assignvariableop_100_adam_v_separable_conv2d_2_pointwise_kernel:��B
3assignvariableop_101_adam_m_separable_conv2d_2_bias:	�B
3assignvariableop_102_adam_v_separable_conv2d_2_bias:	�F
7assignvariableop_103_adam_m_batch_normalization_3_gamma:	�F
7assignvariableop_104_adam_v_batch_normalization_3_gamma:	�E
6assignvariableop_105_adam_m_batch_normalization_3_beta:	�E
6assignvariableop_106_adam_v_batch_normalization_3_beta:	�Z
?assignvariableop_107_adam_m_separable_conv2d_3_depthwise_kernel:�Z
?assignvariableop_108_adam_v_separable_conv2d_3_depthwise_kernel:�[
?assignvariableop_109_adam_m_separable_conv2d_3_pointwise_kernel:��[
?assignvariableop_110_adam_v_separable_conv2d_3_pointwise_kernel:��B
3assignvariableop_111_adam_m_separable_conv2d_3_bias:	�B
3assignvariableop_112_adam_v_separable_conv2d_3_bias:	�F
7assignvariableop_113_adam_m_batch_normalization_4_gamma:	�F
7assignvariableop_114_adam_v_batch_normalization_4_gamma:	�E
6assignvariableop_115_adam_m_batch_normalization_4_beta:	�E
6assignvariableop_116_adam_v_batch_normalization_4_beta:	�G
+assignvariableop_117_adam_m_conv2d_2_kernel:��G
+assignvariableop_118_adam_v_conv2d_2_kernel:��8
)assignvariableop_119_adam_m_conv2d_2_bias:	�8
)assignvariableop_120_adam_v_conv2d_2_bias:	�Z
?assignvariableop_121_adam_m_separable_conv2d_4_depthwise_kernel:�Z
?assignvariableop_122_adam_v_separable_conv2d_4_depthwise_kernel:�[
?assignvariableop_123_adam_m_separable_conv2d_4_pointwise_kernel:��[
?assignvariableop_124_adam_v_separable_conv2d_4_pointwise_kernel:��B
3assignvariableop_125_adam_m_separable_conv2d_4_bias:	�B
3assignvariableop_126_adam_v_separable_conv2d_4_bias:	�F
7assignvariableop_127_adam_m_batch_normalization_5_gamma:	�F
7assignvariableop_128_adam_v_batch_normalization_5_gamma:	�E
6assignvariableop_129_adam_m_batch_normalization_5_beta:	�E
6assignvariableop_130_adam_v_batch_normalization_5_beta:	�Z
?assignvariableop_131_adam_m_separable_conv2d_5_depthwise_kernel:�Z
?assignvariableop_132_adam_v_separable_conv2d_5_depthwise_kernel:�[
?assignvariableop_133_adam_m_separable_conv2d_5_pointwise_kernel:��[
?assignvariableop_134_adam_v_separable_conv2d_5_pointwise_kernel:��B
3assignvariableop_135_adam_m_separable_conv2d_5_bias:	�B
3assignvariableop_136_adam_v_separable_conv2d_5_bias:	�F
7assignvariableop_137_adam_m_batch_normalization_6_gamma:	�F
7assignvariableop_138_adam_v_batch_normalization_6_gamma:	�E
6assignvariableop_139_adam_m_batch_normalization_6_beta:	�E
6assignvariableop_140_adam_v_batch_normalization_6_beta:	�G
+assignvariableop_141_adam_m_conv2d_3_kernel:��G
+assignvariableop_142_adam_v_conv2d_3_kernel:��8
)assignvariableop_143_adam_m_conv2d_3_bias:	�8
)assignvariableop_144_adam_v_conv2d_3_bias:	�Z
?assignvariableop_145_adam_m_separable_conv2d_6_depthwise_kernel:�Z
?assignvariableop_146_adam_v_separable_conv2d_6_depthwise_kernel:�[
?assignvariableop_147_adam_m_separable_conv2d_6_pointwise_kernel:��[
?assignvariableop_148_adam_v_separable_conv2d_6_pointwise_kernel:��B
3assignvariableop_149_adam_m_separable_conv2d_6_bias:	�B
3assignvariableop_150_adam_v_separable_conv2d_6_bias:	�F
7assignvariableop_151_adam_m_batch_normalization_7_gamma:	�F
7assignvariableop_152_adam_v_batch_normalization_7_gamma:	�E
6assignvariableop_153_adam_m_batch_normalization_7_beta:	�E
6assignvariableop_154_adam_v_batch_normalization_7_beta:	�;
(assignvariableop_155_adam_m_dense_kernel:	�;
(assignvariableop_156_adam_v_dense_kernel:	�4
&assignvariableop_157_adam_m_dense_bias:4
&assignvariableop_158_adam_v_dense_bias:&
assignvariableop_159_total_1: &
assignvariableop_160_count_1: $
assignvariableop_161_total: $
assignvariableop_162_count: 
identity_164��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_127�AssignVariableOp_128�AssignVariableOp_129�AssignVariableOp_13�AssignVariableOp_130�AssignVariableOp_131�AssignVariableOp_132�AssignVariableOp_133�AssignVariableOp_134�AssignVariableOp_135�AssignVariableOp_136�AssignVariableOp_137�AssignVariableOp_138�AssignVariableOp_139�AssignVariableOp_14�AssignVariableOp_140�AssignVariableOp_141�AssignVariableOp_142�AssignVariableOp_143�AssignVariableOp_144�AssignVariableOp_145�AssignVariableOp_146�AssignVariableOp_147�AssignVariableOp_148�AssignVariableOp_149�AssignVariableOp_15�AssignVariableOp_150�AssignVariableOp_151�AssignVariableOp_152�AssignVariableOp_153�AssignVariableOp_154�AssignVariableOp_155�AssignVariableOp_156�AssignVariableOp_157�AssignVariableOp_158�AssignVariableOp_159�AssignVariableOp_16�AssignVariableOp_160�AssignVariableOp_161�AssignVariableOp_162�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�G
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�F
value�FB�F�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-7/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-7/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-17/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-17/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-18/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-18/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-18/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/81/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/82/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/83/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/84/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/85/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/86/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/87/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/88/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/89/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/90/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/91/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/92/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/93/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/94/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp4assignvariableop_6_separable_conv2d_depthwise_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp4assignvariableop_7_separable_conv2d_pointwise_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp(assignvariableop_8_separable_conv2d_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_1_gammaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_1_betaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_1_moving_meanIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_1_moving_varianceIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp7assignvariableop_13_separable_conv2d_1_depthwise_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp7assignvariableop_14_separable_conv2d_1_pointwise_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_separable_conv2d_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_2_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_2_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_2_moving_meanIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_2_moving_varianceIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_separable_conv2d_2_depthwise_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp7assignvariableop_23_separable_conv2d_2_pointwise_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_separable_conv2d_2_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp/assignvariableop_25_batch_normalization_3_gammaIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp.assignvariableop_26_batch_normalization_3_betaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp5assignvariableop_27_batch_normalization_3_moving_meanIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp9assignvariableop_28_batch_normalization_3_moving_varianceIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp7assignvariableop_29_separable_conv2d_3_depthwise_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp7assignvariableop_30_separable_conv2d_3_pointwise_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_separable_conv2d_3_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp/assignvariableop_32_batch_normalization_4_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp.assignvariableop_33_batch_normalization_4_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp5assignvariableop_34_batch_normalization_4_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp9assignvariableop_35_batch_normalization_4_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_conv2d_2_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp!assignvariableop_37_conv2d_2_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp7assignvariableop_38_separable_conv2d_4_depthwise_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp7assignvariableop_39_separable_conv2d_4_pointwise_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_separable_conv2d_4_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp/assignvariableop_41_batch_normalization_5_gammaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp.assignvariableop_42_batch_normalization_5_betaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp5assignvariableop_43_batch_normalization_5_moving_meanIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp9assignvariableop_44_batch_normalization_5_moving_varianceIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp7assignvariableop_45_separable_conv2d_5_depthwise_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp7assignvariableop_46_separable_conv2d_5_pointwise_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_separable_conv2d_5_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_batch_normalization_6_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp.assignvariableop_49_batch_normalization_6_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_batch_normalization_6_moving_meanIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp9assignvariableop_51_batch_normalization_6_moving_varianceIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp#assignvariableop_52_conv2d_3_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp!assignvariableop_53_conv2d_3_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp7assignvariableop_54_separable_conv2d_6_depthwise_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp7assignvariableop_55_separable_conv2d_6_pointwise_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp+assignvariableop_56_separable_conv2d_6_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp/assignvariableop_57_batch_normalization_7_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp.assignvariableop_58_batch_normalization_7_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp5assignvariableop_59_batch_normalization_7_moving_meanIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp9assignvariableop_60_batch_normalization_7_moving_varianceIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp assignvariableop_61_dense_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpassignvariableop_62_dense_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpassignvariableop_63_iterationIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp!assignvariableop_64_learning_rateIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_m_conv2d_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_v_conv2d_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp&assignvariableop_67_adam_m_conv2d_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp&assignvariableop_68_adam_v_conv2d_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp4assignvariableop_69_adam_m_batch_normalization_gammaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp4assignvariableop_70_adam_v_batch_normalization_gammaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp3assignvariableop_71_adam_m_batch_normalization_betaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp3assignvariableop_72_adam_v_batch_normalization_betaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp<assignvariableop_73_adam_m_separable_conv2d_depthwise_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp<assignvariableop_74_adam_v_separable_conv2d_depthwise_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp<assignvariableop_75_adam_m_separable_conv2d_pointwise_kernelIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp<assignvariableop_76_adam_v_separable_conv2d_pointwise_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp0assignvariableop_77_adam_m_separable_conv2d_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp0assignvariableop_78_adam_v_separable_conv2d_biasIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_m_batch_normalization_1_gammaIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adam_v_batch_normalization_1_gammaIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp5assignvariableop_81_adam_m_batch_normalization_1_betaIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp5assignvariableop_82_adam_v_batch_normalization_1_betaIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp>assignvariableop_83_adam_m_separable_conv2d_1_depthwise_kernelIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp>assignvariableop_84_adam_v_separable_conv2d_1_depthwise_kernelIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp>assignvariableop_85_adam_m_separable_conv2d_1_pointwise_kernelIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp>assignvariableop_86_adam_v_separable_conv2d_1_pointwise_kernelIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp2assignvariableop_87_adam_m_separable_conv2d_1_biasIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp2assignvariableop_88_adam_v_separable_conv2d_1_biasIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adam_m_batch_normalization_2_gammaIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp6assignvariableop_90_adam_v_batch_normalization_2_gammaIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_m_batch_normalization_2_betaIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp5assignvariableop_92_adam_v_batch_normalization_2_betaIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp*assignvariableop_93_adam_m_conv2d_1_kernelIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_v_conv2d_1_kernelIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp(assignvariableop_95_adam_m_conv2d_1_biasIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp(assignvariableop_96_adam_v_conv2d_1_biasIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp>assignvariableop_97_adam_m_separable_conv2d_2_depthwise_kernelIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp>assignvariableop_98_adam_v_separable_conv2d_2_depthwise_kernelIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp>assignvariableop_99_adam_m_separable_conv2d_2_pointwise_kernelIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp?assignvariableop_100_adam_v_separable_conv2d_2_pointwise_kernelIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp3assignvariableop_101_adam_m_separable_conv2d_2_biasIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp3assignvariableop_102_adam_v_separable_conv2d_2_biasIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp7assignvariableop_103_adam_m_batch_normalization_3_gammaIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adam_v_batch_normalization_3_gammaIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp6assignvariableop_105_adam_m_batch_normalization_3_betaIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp6assignvariableop_106_adam_v_batch_normalization_3_betaIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp?assignvariableop_107_adam_m_separable_conv2d_3_depthwise_kernelIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp?assignvariableop_108_adam_v_separable_conv2d_3_depthwise_kernelIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp?assignvariableop_109_adam_m_separable_conv2d_3_pointwise_kernelIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp?assignvariableop_110_adam_v_separable_conv2d_3_pointwise_kernelIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp3assignvariableop_111_adam_m_separable_conv2d_3_biasIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp3assignvariableop_112_adam_v_separable_conv2d_3_biasIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp7assignvariableop_113_adam_m_batch_normalization_4_gammaIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp7assignvariableop_114_adam_v_batch_normalization_4_gammaIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp6assignvariableop_115_adam_m_batch_normalization_4_betaIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp6assignvariableop_116_adam_v_batch_normalization_4_betaIdentity_116:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp+assignvariableop_117_adam_m_conv2d_2_kernelIdentity_117:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_v_conv2d_2_kernelIdentity_118:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOp)assignvariableop_119_adam_m_conv2d_2_biasIdentity_119:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOp)assignvariableop_120_adam_v_conv2d_2_biasIdentity_120:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOp?assignvariableop_121_adam_m_separable_conv2d_4_depthwise_kernelIdentity_121:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOp?assignvariableop_122_adam_v_separable_conv2d_4_depthwise_kernelIdentity_122:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp?assignvariableop_123_adam_m_separable_conv2d_4_pointwise_kernelIdentity_123:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp?assignvariableop_124_adam_v_separable_conv2d_4_pointwise_kernelIdentity_124:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOp3assignvariableop_125_adam_m_separable_conv2d_4_biasIdentity_125:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOp3assignvariableop_126_adam_v_separable_conv2d_4_biasIdentity_126:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOp7assignvariableop_127_adam_m_batch_normalization_5_gammaIdentity_127:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOp7assignvariableop_128_adam_v_batch_normalization_5_gammaIdentity_128:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_129AssignVariableOp6assignvariableop_129_adam_m_batch_normalization_5_betaIdentity_129:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_130AssignVariableOp6assignvariableop_130_adam_v_batch_normalization_5_betaIdentity_130:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_131AssignVariableOp?assignvariableop_131_adam_m_separable_conv2d_5_depthwise_kernelIdentity_131:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_132AssignVariableOp?assignvariableop_132_adam_v_separable_conv2d_5_depthwise_kernelIdentity_132:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_133AssignVariableOp?assignvariableop_133_adam_m_separable_conv2d_5_pointwise_kernelIdentity_133:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_134AssignVariableOp?assignvariableop_134_adam_v_separable_conv2d_5_pointwise_kernelIdentity_134:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_135AssignVariableOp3assignvariableop_135_adam_m_separable_conv2d_5_biasIdentity_135:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_136AssignVariableOp3assignvariableop_136_adam_v_separable_conv2d_5_biasIdentity_136:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_137AssignVariableOp7assignvariableop_137_adam_m_batch_normalization_6_gammaIdentity_137:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_138AssignVariableOp7assignvariableop_138_adam_v_batch_normalization_6_gammaIdentity_138:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_139AssignVariableOp6assignvariableop_139_adam_m_batch_normalization_6_betaIdentity_139:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_140AssignVariableOp6assignvariableop_140_adam_v_batch_normalization_6_betaIdentity_140:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_141AssignVariableOp+assignvariableop_141_adam_m_conv2d_3_kernelIdentity_141:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_142AssignVariableOp+assignvariableop_142_adam_v_conv2d_3_kernelIdentity_142:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_143AssignVariableOp)assignvariableop_143_adam_m_conv2d_3_biasIdentity_143:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_144AssignVariableOp)assignvariableop_144_adam_v_conv2d_3_biasIdentity_144:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_145AssignVariableOp?assignvariableop_145_adam_m_separable_conv2d_6_depthwise_kernelIdentity_145:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_146AssignVariableOp?assignvariableop_146_adam_v_separable_conv2d_6_depthwise_kernelIdentity_146:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_147AssignVariableOp?assignvariableop_147_adam_m_separable_conv2d_6_pointwise_kernelIdentity_147:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_148AssignVariableOp?assignvariableop_148_adam_v_separable_conv2d_6_pointwise_kernelIdentity_148:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_149AssignVariableOp3assignvariableop_149_adam_m_separable_conv2d_6_biasIdentity_149:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_150AssignVariableOp3assignvariableop_150_adam_v_separable_conv2d_6_biasIdentity_150:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_151AssignVariableOp7assignvariableop_151_adam_m_batch_normalization_7_gammaIdentity_151:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_152AssignVariableOp7assignvariableop_152_adam_v_batch_normalization_7_gammaIdentity_152:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_153AssignVariableOp6assignvariableop_153_adam_m_batch_normalization_7_betaIdentity_153:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_154AssignVariableOp6assignvariableop_154_adam_v_batch_normalization_7_betaIdentity_154:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_155AssignVariableOp(assignvariableop_155_adam_m_dense_kernelIdentity_155:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_156AssignVariableOp(assignvariableop_156_adam_v_dense_kernelIdentity_156:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_157AssignVariableOp&assignvariableop_157_adam_m_dense_biasIdentity_157:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_158AssignVariableOp&assignvariableop_158_adam_v_dense_biasIdentity_158:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_159AssignVariableOpassignvariableop_159_total_1Identity_159:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_160AssignVariableOpassignvariableop_160_count_1Identity_160:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_161AssignVariableOpassignvariableop_161_totalIdentity_161:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_162AssignVariableOpassignvariableop_162_countIdentity_162:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_163Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_164IdentityIdentity_163:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_164Identity_164:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582,
AssignVariableOp_159AssignVariableOp_1592*
AssignVariableOp_16AssignVariableOp_162,
AssignVariableOp_160AssignVariableOp_1602,
AssignVariableOp_161AssignVariableOp_1612,
AssignVariableOp_162AssignVariableOp_1622*
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:A=
;
_user_specified_name#!separable_conv2d/depthwise_kernel:A=
;
_user_specified_name#!separable_conv2d/pointwise_kernel:5	1
/
_user_specified_nameseparable_conv2d/bias:;
7
5
_user_specified_namebatch_normalization_1/gamma::6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:C?
=
_user_specified_name%#separable_conv2d_1/depthwise_kernel:C?
=
_user_specified_name%#separable_conv2d_1/pointwise_kernel:73
1
_user_specified_nameseparable_conv2d_1/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:C?
=
_user_specified_name%#separable_conv2d_2/depthwise_kernel:C?
=
_user_specified_name%#separable_conv2d_2/pointwise_kernel:73
1
_user_specified_nameseparable_conv2d_2/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:C?
=
_user_specified_name%#separable_conv2d_3/depthwise_kernel:C?
=
_user_specified_name%#separable_conv2d_3/pointwise_kernel:7 3
1
_user_specified_nameseparable_conv2d_3/bias:;!7
5
_user_specified_namebatch_normalization_4/gamma::"6
4
_user_specified_namebatch_normalization_4/beta:A#=
;
_user_specified_name#!batch_normalization_4/moving_mean:E$A
?
_user_specified_name'%batch_normalization_4/moving_variance:/%+
)
_user_specified_nameconv2d_2/kernel:-&)
'
_user_specified_nameconv2d_2/bias:C'?
=
_user_specified_name%#separable_conv2d_4/depthwise_kernel:C(?
=
_user_specified_name%#separable_conv2d_4/pointwise_kernel:7)3
1
_user_specified_nameseparable_conv2d_4/bias:;*7
5
_user_specified_namebatch_normalization_5/gamma::+6
4
_user_specified_namebatch_normalization_5/beta:A,=
;
_user_specified_name#!batch_normalization_5/moving_mean:E-A
?
_user_specified_name'%batch_normalization_5/moving_variance:C.?
=
_user_specified_name%#separable_conv2d_5/depthwise_kernel:C/?
=
_user_specified_name%#separable_conv2d_5/pointwise_kernel:703
1
_user_specified_nameseparable_conv2d_5/bias:;17
5
_user_specified_namebatch_normalization_6/gamma::26
4
_user_specified_namebatch_normalization_6/beta:A3=
;
_user_specified_name#!batch_normalization_6/moving_mean:E4A
?
_user_specified_name'%batch_normalization_6/moving_variance:/5+
)
_user_specified_nameconv2d_3/kernel:-6)
'
_user_specified_nameconv2d_3/bias:C7?
=
_user_specified_name%#separable_conv2d_6/depthwise_kernel:C8?
=
_user_specified_name%#separable_conv2d_6/pointwise_kernel:793
1
_user_specified_nameseparable_conv2d_6/bias:;:7
5
_user_specified_namebatch_normalization_7/gamma::;6
4
_user_specified_namebatch_normalization_7/beta:A<=
;
_user_specified_name#!batch_normalization_7/moving_mean:E=A
?
_user_specified_name'%batch_normalization_7/moving_variance:,>(
&
_user_specified_namedense/kernel:*?&
$
_user_specified_name
dense/bias:)@%
#
_user_specified_name	iteration:-A)
'
_user_specified_namelearning_rate:4B0
.
_user_specified_nameAdam/m/conv2d/kernel:4C0
.
_user_specified_nameAdam/v/conv2d/kernel:2D.
,
_user_specified_nameAdam/m/conv2d/bias:2E.
,
_user_specified_nameAdam/v/conv2d/bias:@F<
:
_user_specified_name" Adam/m/batch_normalization/gamma:@G<
:
_user_specified_name" Adam/v/batch_normalization/gamma:?H;
9
_user_specified_name!Adam/m/batch_normalization/beta:?I;
9
_user_specified_name!Adam/v/batch_normalization/beta:HJD
B
_user_specified_name*(Adam/m/separable_conv2d/depthwise_kernel:HKD
B
_user_specified_name*(Adam/v/separable_conv2d/depthwise_kernel:HLD
B
_user_specified_name*(Adam/m/separable_conv2d/pointwise_kernel:HMD
B
_user_specified_name*(Adam/v/separable_conv2d/pointwise_kernel:<N8
6
_user_specified_nameAdam/m/separable_conv2d/bias:<O8
6
_user_specified_nameAdam/v/separable_conv2d/bias:BP>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:BQ>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:AR=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:AS=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:JTF
D
_user_specified_name,*Adam/m/separable_conv2d_1/depthwise_kernel:JUF
D
_user_specified_name,*Adam/v/separable_conv2d_1/depthwise_kernel:JVF
D
_user_specified_name,*Adam/m/separable_conv2d_1/pointwise_kernel:JWF
D
_user_specified_name,*Adam/v/separable_conv2d_1/pointwise_kernel:>X:
8
_user_specified_name Adam/m/separable_conv2d_1/bias:>Y:
8
_user_specified_name Adam/v/separable_conv2d_1/bias:BZ>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:B[>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:A\=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:A]=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:6^2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6_2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4`0
.
_user_specified_nameAdam/m/conv2d_1/bias:4a0
.
_user_specified_nameAdam/v/conv2d_1/bias:JbF
D
_user_specified_name,*Adam/m/separable_conv2d_2/depthwise_kernel:JcF
D
_user_specified_name,*Adam/v/separable_conv2d_2/depthwise_kernel:JdF
D
_user_specified_name,*Adam/m/separable_conv2d_2/pointwise_kernel:JeF
D
_user_specified_name,*Adam/v/separable_conv2d_2/pointwise_kernel:>f:
8
_user_specified_name Adam/m/separable_conv2d_2/bias:>g:
8
_user_specified_name Adam/v/separable_conv2d_2/bias:Bh>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:Bi>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:Aj=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:Ak=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:JlF
D
_user_specified_name,*Adam/m/separable_conv2d_3/depthwise_kernel:JmF
D
_user_specified_name,*Adam/v/separable_conv2d_3/depthwise_kernel:JnF
D
_user_specified_name,*Adam/m/separable_conv2d_3/pointwise_kernel:JoF
D
_user_specified_name,*Adam/v/separable_conv2d_3/pointwise_kernel:>p:
8
_user_specified_name Adam/m/separable_conv2d_3/bias:>q:
8
_user_specified_name Adam/v/separable_conv2d_3/bias:Br>
<
_user_specified_name$"Adam/m/batch_normalization_4/gamma:Bs>
<
_user_specified_name$"Adam/v/batch_normalization_4/gamma:At=
;
_user_specified_name#!Adam/m/batch_normalization_4/beta:Au=
;
_user_specified_name#!Adam/v/batch_normalization_4/beta:6v2
0
_user_specified_nameAdam/m/conv2d_2/kernel:6w2
0
_user_specified_nameAdam/v/conv2d_2/kernel:4x0
.
_user_specified_nameAdam/m/conv2d_2/bias:4y0
.
_user_specified_nameAdam/v/conv2d_2/bias:JzF
D
_user_specified_name,*Adam/m/separable_conv2d_4/depthwise_kernel:J{F
D
_user_specified_name,*Adam/v/separable_conv2d_4/depthwise_kernel:J|F
D
_user_specified_name,*Adam/m/separable_conv2d_4/pointwise_kernel:J}F
D
_user_specified_name,*Adam/v/separable_conv2d_4/pointwise_kernel:>~:
8
_user_specified_name Adam/m/separable_conv2d_4/bias:>:
8
_user_specified_name Adam/v/separable_conv2d_4/bias:C�>
<
_user_specified_name$"Adam/m/batch_normalization_5/gamma:C�>
<
_user_specified_name$"Adam/v/batch_normalization_5/gamma:B�=
;
_user_specified_name#!Adam/m/batch_normalization_5/beta:B�=
;
_user_specified_name#!Adam/v/batch_normalization_5/beta:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_5/depthwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_5/depthwise_kernel:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_5/pointwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_5/pointwise_kernel:?�:
8
_user_specified_name Adam/m/separable_conv2d_5/bias:?�:
8
_user_specified_name Adam/v/separable_conv2d_5/bias:C�>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:C�>
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:B�=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:B�=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:7�2
0
_user_specified_nameAdam/m/conv2d_3/kernel:7�2
0
_user_specified_nameAdam/v/conv2d_3/kernel:5�0
.
_user_specified_nameAdam/m/conv2d_3/bias:5�0
.
_user_specified_nameAdam/v/conv2d_3/bias:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_6/depthwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_6/depthwise_kernel:K�F
D
_user_specified_name,*Adam/m/separable_conv2d_6/pointwise_kernel:K�F
D
_user_specified_name,*Adam/v/separable_conv2d_6/pointwise_kernel:?�:
8
_user_specified_name Adam/m/separable_conv2d_6/bias:?�:
8
_user_specified_name Adam/v/separable_conv2d_6/bias:C�>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:C�>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:B�=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:B�=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:4�/
-
_user_specified_nameAdam/m/dense/kernel:4�/
-
_user_specified_nameAdam/v/dense/kernel:2�-
+
_user_specified_nameAdam/m/dense/bias:2�-
+
_user_specified_nameAdam/v/dense/bias:(�#
!
_user_specified_name	total_1:(�#
!
_user_specified_name	count_1:&�!

_user_specified_nametotal:&�!

_user_specified_namecount
�
�
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_19939

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      �     o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
c
G__inference_activation_6_layer_call_and_return_conditional_losses_20323

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_4_layer_call_fn_21839

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_19800�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21829:%!

_user_specified_name21831:%!

_user_specified_name21833:%!

_user_specified_name21835
�
H
,__inference_activation_4_layer_call_fn_21782

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_20256i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_21643

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_19645�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_20589
input_1'
conv2d_20421:�
conv2d_20423:	�(
batch_normalization_20426:	�(
batch_normalization_20428:	�(
batch_normalization_20430:	�(
batch_normalization_20432:	�1
separable_conv2d_20437:�2
separable_conv2d_20439:��%
separable_conv2d_20441:	�*
batch_normalization_1_20444:	�*
batch_normalization_1_20446:	�*
batch_normalization_1_20448:	�*
batch_normalization_1_20450:	�3
separable_conv2d_1_20454:�4
separable_conv2d_1_20456:��'
separable_conv2d_1_20458:	�*
batch_normalization_2_20461:	�*
batch_normalization_2_20463:	�*
batch_normalization_2_20465:	�*
batch_normalization_2_20467:	�*
conv2d_1_20471:��
conv2d_1_20473:	�3
separable_conv2d_2_20478:�4
separable_conv2d_2_20480:��'
separable_conv2d_2_20482:	�*
batch_normalization_3_20485:	�*
batch_normalization_3_20487:	�*
batch_normalization_3_20489:	�*
batch_normalization_3_20491:	�3
separable_conv2d_3_20495:�4
separable_conv2d_3_20497:��'
separable_conv2d_3_20499:	�*
batch_normalization_4_20502:	�*
batch_normalization_4_20504:	�*
batch_normalization_4_20506:	�*
batch_normalization_4_20508:	�*
conv2d_2_20512:��
conv2d_2_20514:	�3
separable_conv2d_4_20519:�4
separable_conv2d_4_20521:��'
separable_conv2d_4_20523:	�*
batch_normalization_5_20526:	�*
batch_normalization_5_20528:	�*
batch_normalization_5_20530:	�*
batch_normalization_5_20532:	�3
separable_conv2d_5_20536:�4
separable_conv2d_5_20538:��'
separable_conv2d_5_20540:	�*
batch_normalization_6_20543:	�*
batch_normalization_6_20545:	�*
batch_normalization_6_20547:	�*
batch_normalization_6_20549:	�*
conv2d_3_20553:��
conv2d_3_20555:	�3
separable_conv2d_6_20559:�4
separable_conv2d_6_20561:��'
separable_conv2d_6_20563:	�*
batch_normalization_7_20566:	�*
batch_normalization_7_20568:	�*
batch_normalization_7_20570:	�*
batch_normalization_7_20572:	�
dense_20583:	�
dense_20585:
identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�(separable_conv2d/StatefulPartitionedCall�*separable_conv2d_1/StatefulPartitionedCall�*separable_conv2d_2/StatefulPartitionedCall�*separable_conv2d_3/StatefulPartitionedCall�*separable_conv2d_4/StatefulPartitionedCall�*separable_conv2d_5/StatefulPartitionedCall�*separable_conv2d_6/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_20131�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_20421conv2d_20423*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_20142�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_20426batch_normalization_20428batch_normalization_20430batch_normalization_20432*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19438�
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_20161�
activation_1/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_20167�
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0separable_conv2d_20437separable_conv2d_20439separable_conv2d_20441*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_19479�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0batch_normalization_1_20444batch_normalization_1_20446batch_normalization_1_20448batch_normalization_1_20450*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19526�
activation_2/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_20189�
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0separable_conv2d_1_20454separable_conv2d_1_20456separable_conv2d_1_20458*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_19567�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_20461batch_normalization_2_20463batch_normalization_2_20465batch_normalization_2_20467*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������ZZ�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_19614�
max_pooling2d/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_19645�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0conv2d_1_20471conv2d_1_20473*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20217�
add/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_20228�
activation_3/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_20234�
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0separable_conv2d_2_20478separable_conv2d_2_20480separable_conv2d_2_20482*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_19665�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_20485batch_normalization_3_20487batch_normalization_3_20489batch_normalization_3_20491*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_19712�
activation_4/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_20256�
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0separable_conv2d_3_20495separable_conv2d_3_20497separable_conv2d_3_20499*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_19753�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_20502batch_normalization_4_20504batch_normalization_4_20506batch_normalization_4_20508*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������--�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_19800�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19831�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_2_20512conv2d_2_20514*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_20284�
add_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_20295�
activation_5/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_20301�
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0separable_conv2d_4_20519separable_conv2d_4_20521separable_conv2d_4_20523*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_19851�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_20526batch_normalization_5_20528batch_normalization_5_20530batch_normalization_5_20532*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_19898�
activation_6/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_20323�
*separable_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0separable_conv2d_5_20536separable_conv2d_5_20538separable_conv2d_5_20540*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_19939�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_20543batch_normalization_6_20545batch_normalization_6_20547batch_normalization_6_20549*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_19986�
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_20017�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_3_20553conv2d_3_20555*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_20351�
add_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_20362�
*separable_conv2d_6/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0separable_conv2d_6_20559separable_conv2d_6_20561separable_conv2d_6_20563*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_20037�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_6/StatefulPartitionedCall:output:0batch_normalization_7_20566batch_normalization_7_20568batch_normalization_7_20570batch_normalization_7_20572*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_20084�
activation_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_20384�
(global_average_pooling2d/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_20116�
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_20581�
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_20583dense_20585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_20410u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall+^separable_conv2d_5/StatefulPartitionedCall+^separable_conv2d_6/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall2X
*separable_conv2d_5/StatefulPartitionedCall*separable_conv2d_5/StatefulPartitionedCall2X
*separable_conv2d_6/StatefulPartitionedCall*separable_conv2d_6/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name20421:%!

_user_specified_name20423:%!

_user_specified_name20426:%!

_user_specified_name20428:%!

_user_specified_name20430:%!

_user_specified_name20432:%!

_user_specified_name20437:%!

_user_specified_name20439:%	!

_user_specified_name20441:%
!

_user_specified_name20444:%!

_user_specified_name20446:%!

_user_specified_name20448:%!

_user_specified_name20450:%!

_user_specified_name20454:%!

_user_specified_name20456:%!

_user_specified_name20458:%!

_user_specified_name20461:%!

_user_specified_name20463:%!

_user_specified_name20465:%!

_user_specified_name20467:%!

_user_specified_name20471:%!

_user_specified_name20473:%!

_user_specified_name20478:%!

_user_specified_name20480:%!

_user_specified_name20482:%!

_user_specified_name20485:%!

_user_specified_name20487:%!

_user_specified_name20489:%!

_user_specified_name20491:%!

_user_specified_name20495:%!

_user_specified_name20497:% !

_user_specified_name20499:%!!

_user_specified_name20502:%"!

_user_specified_name20504:%#!

_user_specified_name20506:%$!

_user_specified_name20508:%%!

_user_specified_name20512:%&!

_user_specified_name20514:%'!

_user_specified_name20519:%(!

_user_specified_name20521:%)!

_user_specified_name20523:%*!

_user_specified_name20526:%+!

_user_specified_name20528:%,!

_user_specified_name20530:%-!

_user_specified_name20532:%.!

_user_specified_name20536:%/!

_user_specified_name20538:%0!

_user_specified_name20540:%1!

_user_specified_name20543:%2!

_user_specified_name20545:%3!

_user_specified_name20547:%4!

_user_specified_name20549:%5!

_user_specified_name20553:%6!

_user_specified_name20555:%7!

_user_specified_name20559:%8!

_user_specified_name20561:%9!

_user_specified_name20563:%:!

_user_specified_name20566:%;!

_user_specified_name20568:%<!

_user_specified_name20570:%=!

_user_specified_name20572:%>!

_user_specified_name20583:%?!

_user_specified_name20585
�

�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_20284

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������--�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
"__inference__update_step_xla_21213
gradient#
variable:�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:�: *
	_noinline(:Q M
'
_output_shapes
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
@__inference_dense_layer_call_and_return_conditional_losses_22309

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
2__inference_separable_conv2d_3_layer_call_fn_21798

inputs"
unknown:�%
	unknown_0:��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_19753�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21790:%!

_user_specified_name21792:%!

_user_specified_name21794
�
X
"__inference__update_step_xla_21313
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
c
G__inference_activation_3_layer_call_and_return_conditional_losses_20234

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������--�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������--�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������--�:X T
0
_output_shapes
:���������--�
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_21328
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
"__inference__update_step_xla_21243
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
5__inference_batch_normalization_7_layer_call_fn_22205

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_20084�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name22195:%!

_user_specified_name22197:%!

_user_specified_name22199:%!

_user_specified_name22201
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_19596

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_19567

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_21813

inputsC
(separable_conv2d_readvariableop_resource:�F
*separable_conv2d_readvariableop_1_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:��*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:,����������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
3__inference_batch_normalization_layer_call_fn_21383

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19420�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:%!

_user_specified_name21373:%!

_user_specified_name21375:%!

_user_specified_name21377:%!

_user_specified_name21379"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������9
dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�	
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer_with_weights-8
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer-22
layer-23
layer_with_weights-12
layer-24
layer_with_weights-13
layer-25
layer-26
layer_with_weights-14
layer-27
layer_with_weights-15
layer-28
layer-29
layer_with_weights-16
layer-30
 layer-31
!layer_with_weights-17
!layer-32
"layer_with_weights-18
"layer-33
#layer-34
$layer-35
%layer-36
&layer_with_weights-19
&layer-37
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_default_save_signature
.	optimizer
/
signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\depthwise_kernel
]pointwise_kernel
^bias
 __jit_compiled_convolution_op"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
wdepthwise_kernel
xpointwise_kernel
ybias
 z_jit_compiled_convolution_op"
_tf_keras_layer
�
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
<0
=1
F2
G3
H4
I5
\6
]7
^8
g9
h10
i11
j12
w13
x14
y15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62"
trackable_list_wrapper
�
<0
=1
F2
G3
\4
]5
^6
g7
h8
w9
x10
y11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
-_default_save_signature
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
%__inference_model_layer_call_fn_20720
%__inference_model_layer_call_fn_20851�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
@__inference_model_layer_call_and_return_conditional_losses_20417
@__inference_model_layer_call_and_return_conditional_losses_20589�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
 __inference__wrapped_model_19402input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_rescaling_layer_call_fn_21343�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
D__inference_rescaling_layer_call_and_return_conditional_losses_21351�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv2d_layer_call_fn_21360�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_21370�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
(:&�2conv2d/kernel
:�2conv2d/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
F0
G1
H2
I3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_batch_normalization_layer_call_fn_21383
3__inference_batch_normalization_layer_call_fn_21396�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21414
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21432�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
(:&�2batch_normalization/gamma
':%�2batch_normalization/beta
0:.� (2batch_normalization/moving_mean
4:2� (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_activation_layer_call_fn_21437�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_activation_layer_call_and_return_conditional_losses_21442�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_1_layer_call_fn_21447�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_1_layer_call_and_return_conditional_losses_21452�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
5
\0
]1
^2"
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_separable_conv2d_layer_call_fn_21463�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_21478�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
<::�2!separable_conv2d/depthwise_kernel
=:;��2!separable_conv2d/pointwise_kernel
$:"�2separable_conv2d/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
g0
h1
i2
j3"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_1_layer_call_fn_21491
5__inference_batch_normalization_1_layer_call_fn_21504�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21522
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21540�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_1/gamma
):'�2batch_normalization_1/beta
2:0� (2!batch_normalization_1/moving_mean
6:4� (2%batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_2_layer_call_fn_21545�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_2_layer_call_and_return_conditional_losses_21550�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
5
w0
x1
y2"
trackable_list_wrapper
5
w0
x1
y2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_separable_conv2d_1_layer_call_fn_21561�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_21576�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
>:<�2#separable_conv2d_1/depthwise_kernel
?:=��2#separable_conv2d_1/pointwise_kernel
&:$�2separable_conv2d_1/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_2_layer_call_fn_21589
5__inference_batch_normalization_2_layer_call_fn_21602�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21620
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21638�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_2/gamma
):'�2batch_normalization_2/beta
2:0� (2!batch_normalization_2/moving_mean
6:4� (2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling2d_layer_call_fn_21643�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_21648�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_1_layer_call_fn_21657�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_21667�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
+:)��2conv2d_1/kernel
:�2conv2d_1/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
#__inference_add_layer_call_fn_21673�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
>__inference_add_layer_call_and_return_conditional_losses_21679�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_3_layer_call_fn_21684�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_3_layer_call_and_return_conditional_losses_21689�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_separable_conv2d_2_layer_call_fn_21700�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_21715�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
>:<�2#separable_conv2d_2/depthwise_kernel
?:=��2#separable_conv2d_2/pointwise_kernel
&:$�2separable_conv2d_2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_3_layer_call_fn_21728
5__inference_batch_normalization_3_layer_call_fn_21741�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21759
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21777�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_3/gamma
):'�2batch_normalization_3/beta
2:0� (2!batch_normalization_3/moving_mean
6:4� (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_4_layer_call_fn_21782�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_4_layer_call_and_return_conditional_losses_21787�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_separable_conv2d_3_layer_call_fn_21798�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_21813�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
>:<�2#separable_conv2d_3/depthwise_kernel
?:=��2#separable_conv2d_3/pointwise_kernel
&:$�2separable_conv2d_3/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_4_layer_call_fn_21826
5__inference_batch_normalization_4_layer_call_fn_21839�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21857
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21875�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_4/gamma
):'�2batch_normalization_4/beta
2:0� (2!batch_normalization_4/moving_mean
6:4� (2%batch_normalization_4/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_1_layer_call_fn_21880�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_21885�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_2_layer_call_fn_21894�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_21904�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
+:)��2conv2d_2/kernel
:�2conv2d_2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_1_layer_call_fn_21910�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_1_layer_call_and_return_conditional_losses_21916�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_5_layer_call_fn_21921�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_5_layer_call_and_return_conditional_losses_21926�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_separable_conv2d_4_layer_call_fn_21937�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_21952�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
>:<�2#separable_conv2d_4/depthwise_kernel
?:=��2#separable_conv2d_4/pointwise_kernel
&:$�2separable_conv2d_4/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_5_layer_call_fn_21965
5__inference_batch_normalization_5_layer_call_fn_21978�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_21996
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_22014�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_5/gamma
):'�2batch_normalization_5/beta
2:0� (2!batch_normalization_5/moving_mean
6:4� (2%batch_normalization_5/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_6_layer_call_fn_22019�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_6_layer_call_and_return_conditional_losses_22024�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_separable_conv2d_5_layer_call_fn_22035�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_22050�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
>:<�2#separable_conv2d_5/depthwise_kernel
?:=��2#separable_conv2d_5/pointwise_kernel
&:$�2separable_conv2d_5/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_6_layer_call_fn_22063
5__inference_batch_normalization_6_layer_call_fn_22076�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22094
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22112�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_6/gamma
):'�2batch_normalization_6/beta
2:0� (2!batch_normalization_6/moving_mean
6:4� (2%batch_normalization_6/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_2_layer_call_fn_22117�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22122�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_3_layer_call_fn_22131�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22141�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
+:)��2conv2d_3/kernel
:�2conv2d_3/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_2_layer_call_fn_22147�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_2_layer_call_and_return_conditional_losses_22153�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_separable_conv2d_6_layer_call_fn_22164�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_22179�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
>:<�2#separable_conv2d_6/depthwise_kernel
?:=��2#separable_conv2d_6/pointwise_kernel
&:$�2separable_conv2d_6/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_7_layer_call_fn_22192
5__inference_batch_normalization_7_layer_call_fn_22205�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22223
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22241�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_7/gamma
):'�2batch_normalization_7/beta
2:0� (2!batch_normalization_7/moving_mean
6:4� (2%batch_normalization_7/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_7_layer_call_fn_22246�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_7_layer_call_and_return_conditional_losses_22251�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_global_average_pooling2d_layer_call_fn_22256�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_22262�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_dropout_layer_call_fn_22267
'__inference_dropout_layer_call_fn_22272�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_dropout_layer_call_and_return_conditional_losses_22284
B__inference_dropout_layer_call_and_return_conditional_losses_22289�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_22298�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_22309�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
:	�2dense/kernel
:2
dense/bias
�
H0
I1
i2
j3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_20720input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_20851input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_20417input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_20589input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79
�80
�81
�82
�83
�84
�85
�86
�87
�88
�89
�90
�91
�92
�93
�94"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25
�trace_26
�trace_27
�trace_28
�trace_29
�trace_30
�trace_31
�trace_32
�trace_33
�trace_34
�trace_35
�trace_36
�trace_37
�trace_38
�trace_39
�trace_40
�trace_41
�trace_42
�trace_43
�trace_44
�trace_45
�trace_462�
"__inference__update_step_xla_21108
"__inference__update_step_xla_21113
"__inference__update_step_xla_21118
"__inference__update_step_xla_21123
"__inference__update_step_xla_21128
"__inference__update_step_xla_21133
"__inference__update_step_xla_21138
"__inference__update_step_xla_21143
"__inference__update_step_xla_21148
"__inference__update_step_xla_21153
"__inference__update_step_xla_21158
"__inference__update_step_xla_21163
"__inference__update_step_xla_21168
"__inference__update_step_xla_21173
"__inference__update_step_xla_21178
"__inference__update_step_xla_21183
"__inference__update_step_xla_21188
"__inference__update_step_xla_21193
"__inference__update_step_xla_21198
"__inference__update_step_xla_21203
"__inference__update_step_xla_21208
"__inference__update_step_xla_21213
"__inference__update_step_xla_21218
"__inference__update_step_xla_21223
"__inference__update_step_xla_21228
"__inference__update_step_xla_21233
"__inference__update_step_xla_21238
"__inference__update_step_xla_21243
"__inference__update_step_xla_21248
"__inference__update_step_xla_21253
"__inference__update_step_xla_21258
"__inference__update_step_xla_21263
"__inference__update_step_xla_21268
"__inference__update_step_xla_21273
"__inference__update_step_xla_21278
"__inference__update_step_xla_21283
"__inference__update_step_xla_21288
"__inference__update_step_xla_21293
"__inference__update_step_xla_21298
"__inference__update_step_xla_21303
"__inference__update_step_xla_21308
"__inference__update_step_xla_21313
"__inference__update_step_xla_21318
"__inference__update_step_xla_21323
"__inference__update_step_xla_21328
"__inference__update_step_xla_21333
"__inference__update_step_xla_21338�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19z�trace_20z�trace_21z�trace_22z�trace_23z�trace_24z�trace_25z�trace_26z�trace_27z�trace_28z�trace_29z�trace_30z�trace_31z�trace_32z�trace_33z�trace_34z�trace_35z�trace_36z�trace_37z�trace_38z�trace_39z�trace_40z�trace_41z�trace_42z�trace_43z�trace_44z�trace_45z�trace_46
�B�
#__inference_signature_wrapper_21103input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
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
)__inference_rescaling_layer_call_fn_21343inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_rescaling_layer_call_and_return_conditional_losses_21351inputs"�
���
FullArgSpec
args�

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
annotations� *
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
&__inference_conv2d_layer_call_fn_21360inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
A__inference_conv2d_layer_call_and_return_conditional_losses_21370inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
H0
I1"
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
3__inference_batch_normalization_layer_call_fn_21383inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_batch_normalization_layer_call_fn_21396inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21414inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21432inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
*__inference_activation_layer_call_fn_21437inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_activation_layer_call_and_return_conditional_losses_21442inputs"�
���
FullArgSpec
args�

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
annotations� *
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
,__inference_activation_1_layer_call_fn_21447inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_1_layer_call_and_return_conditional_losses_21452inputs"�
���
FullArgSpec
args�

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
annotations� *
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
0__inference_separable_conv2d_layer_call_fn_21463inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_21478inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
i0
j1"
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
5__inference_batch_normalization_1_layer_call_fn_21491inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_1_layer_call_fn_21504inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21522inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21540inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
,__inference_activation_2_layer_call_fn_21545inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_2_layer_call_and_return_conditional_losses_21550inputs"�
���
FullArgSpec
args�

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
annotations� *
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
2__inference_separable_conv2d_1_layer_call_fn_21561inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_21576inputs"�
���
FullArgSpec
args�

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
annotations� *
 
0
�0
�1"
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
5__inference_batch_normalization_2_layer_call_fn_21589inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_2_layer_call_fn_21602inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21620inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21638inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
-__inference_max_pooling2d_layer_call_fn_21643inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_21648inputs"�
���
FullArgSpec
args�

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
annotations� *
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
(__inference_conv2d_1_layer_call_fn_21657inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_21667inputs"�
���
FullArgSpec
args�

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
annotations� *
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
#__inference_add_layer_call_fn_21673inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
>__inference_add_layer_call_and_return_conditional_losses_21679inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
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
,__inference_activation_3_layer_call_fn_21684inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_3_layer_call_and_return_conditional_losses_21689inputs"�
���
FullArgSpec
args�

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
annotations� *
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
2__inference_separable_conv2d_2_layer_call_fn_21700inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_21715inputs"�
���
FullArgSpec
args�

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
annotations� *
 
0
�0
�1"
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
5__inference_batch_normalization_3_layer_call_fn_21728inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_3_layer_call_fn_21741inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21759inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21777inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
,__inference_activation_4_layer_call_fn_21782inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_4_layer_call_and_return_conditional_losses_21787inputs"�
���
FullArgSpec
args�

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
annotations� *
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
2__inference_separable_conv2d_3_layer_call_fn_21798inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_21813inputs"�
���
FullArgSpec
args�

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
annotations� *
 
0
�0
�1"
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
5__inference_batch_normalization_4_layer_call_fn_21826inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_4_layer_call_fn_21839inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21857inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21875inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
/__inference_max_pooling2d_1_layer_call_fn_21880inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_21885inputs"�
���
FullArgSpec
args�

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
annotations� *
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
(__inference_conv2d_2_layer_call_fn_21894inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_21904inputs"�
���
FullArgSpec
args�

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
annotations� *
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
%__inference_add_1_layer_call_fn_21910inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
@__inference_add_1_layer_call_and_return_conditional_losses_21916inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
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
,__inference_activation_5_layer_call_fn_21921inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_5_layer_call_and_return_conditional_losses_21926inputs"�
���
FullArgSpec
args�

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
annotations� *
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
2__inference_separable_conv2d_4_layer_call_fn_21937inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_21952inputs"�
���
FullArgSpec
args�

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
annotations� *
 
0
�0
�1"
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
5__inference_batch_normalization_5_layer_call_fn_21965inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_5_layer_call_fn_21978inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_21996inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_22014inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
,__inference_activation_6_layer_call_fn_22019inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_6_layer_call_and_return_conditional_losses_22024inputs"�
���
FullArgSpec
args�

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
annotations� *
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
2__inference_separable_conv2d_5_layer_call_fn_22035inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_22050inputs"�
���
FullArgSpec
args�

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
annotations� *
 
0
�0
�1"
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
5__inference_batch_normalization_6_layer_call_fn_22063inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_6_layer_call_fn_22076inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22094inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22112inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
/__inference_max_pooling2d_2_layer_call_fn_22117inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22122inputs"�
���
FullArgSpec
args�

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
annotations� *
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
(__inference_conv2d_3_layer_call_fn_22131inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22141inputs"�
���
FullArgSpec
args�

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
annotations� *
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
%__inference_add_2_layer_call_fn_22147inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
@__inference_add_2_layer_call_and_return_conditional_losses_22153inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
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
2__inference_separable_conv2d_6_layer_call_fn_22164inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_22179inputs"�
���
FullArgSpec
args�

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
annotations� *
 
0
�0
�1"
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
5__inference_batch_normalization_7_layer_call_fn_22192inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_7_layer_call_fn_22205inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22223inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22241inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
,__inference_activation_7_layer_call_fn_22246inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_activation_7_layer_call_and_return_conditional_losses_22251inputs"�
���
FullArgSpec
args�

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
annotations� *
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
8__inference_global_average_pooling2d_layer_call_fn_22256inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_22262inputs"�
���
FullArgSpec
args�

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
annotations� *
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
'__inference_dropout_layer_call_fn_22267inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_dropout_layer_call_fn_22272inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_22284inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_22289inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
%__inference_dense_layer_call_fn_22298inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_22309inputs"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
-:+�2Adam/m/conv2d/kernel
-:+�2Adam/v/conv2d/kernel
:�2Adam/m/conv2d/bias
:�2Adam/v/conv2d/bias
-:+�2 Adam/m/batch_normalization/gamma
-:+�2 Adam/v/batch_normalization/gamma
,:*�2Adam/m/batch_normalization/beta
,:*�2Adam/v/batch_normalization/beta
A:?�2(Adam/m/separable_conv2d/depthwise_kernel
A:?�2(Adam/v/separable_conv2d/depthwise_kernel
B:@��2(Adam/m/separable_conv2d/pointwise_kernel
B:@��2(Adam/v/separable_conv2d/pointwise_kernel
):'�2Adam/m/separable_conv2d/bias
):'�2Adam/v/separable_conv2d/bias
/:-�2"Adam/m/batch_normalization_1/gamma
/:-�2"Adam/v/batch_normalization_1/gamma
.:,�2!Adam/m/batch_normalization_1/beta
.:,�2!Adam/v/batch_normalization_1/beta
C:A�2*Adam/m/separable_conv2d_1/depthwise_kernel
C:A�2*Adam/v/separable_conv2d_1/depthwise_kernel
D:B��2*Adam/m/separable_conv2d_1/pointwise_kernel
D:B��2*Adam/v/separable_conv2d_1/pointwise_kernel
+:)�2Adam/m/separable_conv2d_1/bias
+:)�2Adam/v/separable_conv2d_1/bias
/:-�2"Adam/m/batch_normalization_2/gamma
/:-�2"Adam/v/batch_normalization_2/gamma
.:,�2!Adam/m/batch_normalization_2/beta
.:,�2!Adam/v/batch_normalization_2/beta
0:.��2Adam/m/conv2d_1/kernel
0:.��2Adam/v/conv2d_1/kernel
!:�2Adam/m/conv2d_1/bias
!:�2Adam/v/conv2d_1/bias
C:A�2*Adam/m/separable_conv2d_2/depthwise_kernel
C:A�2*Adam/v/separable_conv2d_2/depthwise_kernel
D:B��2*Adam/m/separable_conv2d_2/pointwise_kernel
D:B��2*Adam/v/separable_conv2d_2/pointwise_kernel
+:)�2Adam/m/separable_conv2d_2/bias
+:)�2Adam/v/separable_conv2d_2/bias
/:-�2"Adam/m/batch_normalization_3/gamma
/:-�2"Adam/v/batch_normalization_3/gamma
.:,�2!Adam/m/batch_normalization_3/beta
.:,�2!Adam/v/batch_normalization_3/beta
C:A�2*Adam/m/separable_conv2d_3/depthwise_kernel
C:A�2*Adam/v/separable_conv2d_3/depthwise_kernel
D:B��2*Adam/m/separable_conv2d_3/pointwise_kernel
D:B��2*Adam/v/separable_conv2d_3/pointwise_kernel
+:)�2Adam/m/separable_conv2d_3/bias
+:)�2Adam/v/separable_conv2d_3/bias
/:-�2"Adam/m/batch_normalization_4/gamma
/:-�2"Adam/v/batch_normalization_4/gamma
.:,�2!Adam/m/batch_normalization_4/beta
.:,�2!Adam/v/batch_normalization_4/beta
0:.��2Adam/m/conv2d_2/kernel
0:.��2Adam/v/conv2d_2/kernel
!:�2Adam/m/conv2d_2/bias
!:�2Adam/v/conv2d_2/bias
C:A�2*Adam/m/separable_conv2d_4/depthwise_kernel
C:A�2*Adam/v/separable_conv2d_4/depthwise_kernel
D:B��2*Adam/m/separable_conv2d_4/pointwise_kernel
D:B��2*Adam/v/separable_conv2d_4/pointwise_kernel
+:)�2Adam/m/separable_conv2d_4/bias
+:)�2Adam/v/separable_conv2d_4/bias
/:-�2"Adam/m/batch_normalization_5/gamma
/:-�2"Adam/v/batch_normalization_5/gamma
.:,�2!Adam/m/batch_normalization_5/beta
.:,�2!Adam/v/batch_normalization_5/beta
C:A�2*Adam/m/separable_conv2d_5/depthwise_kernel
C:A�2*Adam/v/separable_conv2d_5/depthwise_kernel
D:B��2*Adam/m/separable_conv2d_5/pointwise_kernel
D:B��2*Adam/v/separable_conv2d_5/pointwise_kernel
+:)�2Adam/m/separable_conv2d_5/bias
+:)�2Adam/v/separable_conv2d_5/bias
/:-�2"Adam/m/batch_normalization_6/gamma
/:-�2"Adam/v/batch_normalization_6/gamma
.:,�2!Adam/m/batch_normalization_6/beta
.:,�2!Adam/v/batch_normalization_6/beta
0:.��2Adam/m/conv2d_3/kernel
0:.��2Adam/v/conv2d_3/kernel
!:�2Adam/m/conv2d_3/bias
!:�2Adam/v/conv2d_3/bias
C:A�2*Adam/m/separable_conv2d_6/depthwise_kernel
C:A�2*Adam/v/separable_conv2d_6/depthwise_kernel
D:B��2*Adam/m/separable_conv2d_6/pointwise_kernel
D:B��2*Adam/v/separable_conv2d_6/pointwise_kernel
+:)�2Adam/m/separable_conv2d_6/bias
+:)�2Adam/v/separable_conv2d_6/bias
/:-�2"Adam/m/batch_normalization_7/gamma
/:-�2"Adam/v/batch_normalization_7/gamma
.:,�2!Adam/m/batch_normalization_7/beta
.:,�2!Adam/v/batch_normalization_7/beta
$:"	�2Adam/m/dense/kernel
$:"	�2Adam/v/dense/kernel
:2Adam/m/dense/bias
:2Adam/v/dense/bias
�B�
"__inference__update_step_xla_21108gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21113gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21118gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21123gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21128gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21133gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21138gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21143gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21148gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21153gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21158gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21163gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21168gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21173gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21178gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21183gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21188gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21193gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21198gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21203gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21208gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21213gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21218gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21223gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21228gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21233gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21238gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21243gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21248gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21253gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21258gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21263gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21268gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21273gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21278gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21283gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21288gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21293gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21298gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21303gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21308gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21313gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21318gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21323gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21328gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21333gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_21338gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__update_step_xla_21108�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21113hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`༐��>
� "
 �
"__inference__update_step_xla_21118hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21123hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21128�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`඲��>
� "
 �
"__inference__update_step_xla_21133�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21138hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ٜ��>
� "
 �
"__inference__update_step_xla_21143hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ڝ��>
� "
 �
"__inference__update_step_xla_21148hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ߝ��>
� "
 �
"__inference__update_step_xla_21153�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21158�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21163hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21168hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21173hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ڮ��>
� "
 �
"__inference__update_step_xla_21178�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21183hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21188�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21193�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21198hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21203hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`����>
� "
 �
"__inference__update_step_xla_21208hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`����>
� "
 �
"__inference__update_step_xla_21213�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21218�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21223hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21228hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21233hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`����>
� "
 �
"__inference__update_step_xla_21238�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`୸��>
� "
 �
"__inference__update_step_xla_21243hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21248�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`�ݲ��>
� "
 �
"__inference__update_step_xla_21253�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21258hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21263hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ֲ��>
� "
 �
"__inference__update_step_xla_21268hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21273�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`����>
� "
 �
"__inference__update_step_xla_21278�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21283hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21288hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21293hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21298�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21303hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21308�z�w
p�m
"�
gradient�
=�:	&�#
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21313�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21318hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21323hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21328hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21333pj�g
`�]
�
gradient	�
5�2	�
�	�
�
p
` VariableSpec 
`�����>
� "
 �
"__inference__update_step_xla_21338f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�����>
� "
 �
 __inference__wrapped_model_19402�n<=FGHI\]^ghijwxy�����������������������������������������������:�7
0�-
+�(
input_1�����������
� "-�*
(
dense�
dense����������
G__inference_activation_1_layer_call_and_return_conditional_losses_21452q8�5
.�+
)�&
inputs���������ZZ�
� "5�2
+�(
tensor_0���������ZZ�
� �
,__inference_activation_1_layer_call_fn_21447f8�5
.�+
)�&
inputs���������ZZ�
� "*�'
unknown���������ZZ��
G__inference_activation_2_layer_call_and_return_conditional_losses_21550q8�5
.�+
)�&
inputs���������ZZ�
� "5�2
+�(
tensor_0���������ZZ�
� �
,__inference_activation_2_layer_call_fn_21545f8�5
.�+
)�&
inputs���������ZZ�
� "*�'
unknown���������ZZ��
G__inference_activation_3_layer_call_and_return_conditional_losses_21689q8�5
.�+
)�&
inputs���������--�
� "5�2
+�(
tensor_0���������--�
� �
,__inference_activation_3_layer_call_fn_21684f8�5
.�+
)�&
inputs���������--�
� "*�'
unknown���������--��
G__inference_activation_4_layer_call_and_return_conditional_losses_21787q8�5
.�+
)�&
inputs���������--�
� "5�2
+�(
tensor_0���������--�
� �
,__inference_activation_4_layer_call_fn_21782f8�5
.�+
)�&
inputs���������--�
� "*�'
unknown���������--��
G__inference_activation_5_layer_call_and_return_conditional_losses_21926q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
,__inference_activation_5_layer_call_fn_21921f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
G__inference_activation_6_layer_call_and_return_conditional_losses_22024q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
,__inference_activation_6_layer_call_fn_22019f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
G__inference_activation_7_layer_call_and_return_conditional_losses_22251q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
,__inference_activation_7_layer_call_fn_22246f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
E__inference_activation_layer_call_and_return_conditional_losses_21442q8�5
.�+
)�&
inputs���������ZZ�
� "5�2
+�(
tensor_0���������ZZ�
� �
*__inference_activation_layer_call_fn_21437f8�5
.�+
)�&
inputs���������ZZ�
� "*�'
unknown���������ZZ��
@__inference_add_1_layer_call_and_return_conditional_losses_21916�l�i
b�_
]�Z
+�(
inputs_0����������
+�(
inputs_1����������
� "5�2
+�(
tensor_0����������
� �
%__inference_add_1_layer_call_fn_21910�l�i
b�_
]�Z
+�(
inputs_0����������
+�(
inputs_1����������
� "*�'
unknown�����������
@__inference_add_2_layer_call_and_return_conditional_losses_22153�l�i
b�_
]�Z
+�(
inputs_0����������
+�(
inputs_1����������
� "5�2
+�(
tensor_0����������
� �
%__inference_add_2_layer_call_fn_22147�l�i
b�_
]�Z
+�(
inputs_0����������
+�(
inputs_1����������
� "*�'
unknown�����������
>__inference_add_layer_call_and_return_conditional_losses_21679�l�i
b�_
]�Z
+�(
inputs_0���������--�
+�(
inputs_1���������--�
� "5�2
+�(
tensor_0���������--�
� �
#__inference_add_layer_call_fn_21673�l�i
b�_
]�Z
+�(
inputs_0���������--�
+�(
inputs_1���������--�
� "*�'
unknown���������--��
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21522�ghijR�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_21540�ghijR�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_1_layer_call_fn_21491�ghijR�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_1_layer_call_fn_21504�ghijR�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21620�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_21638�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_2_layer_call_fn_21589�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_2_layer_call_fn_21602�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21759�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_21777�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_3_layer_call_fn_21728�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_3_layer_call_fn_21741�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21857�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_21875�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_4_layer_call_fn_21826�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_4_layer_call_fn_21839�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_21996�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_22014�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_5_layer_call_fn_21965�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_5_layer_call_fn_21978�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22094�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_22112�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_6_layer_call_fn_22063�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_6_layer_call_fn_22076�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22223�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_22241�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
5__inference_batch_normalization_7_layer_call_fn_22192�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
5__inference_batch_normalization_7_layer_call_fn_22205�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21414�FGHIR�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
N__inference_batch_normalization_layer_call_and_return_conditional_losses_21432�FGHIR�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
3__inference_batch_normalization_layer_call_fn_21383�FGHIR�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
3__inference_batch_normalization_layer_call_fn_21396�FGHIR�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
C__inference_conv2d_1_layer_call_and_return_conditional_losses_21667w��8�5
.�+
)�&
inputs���������ZZ�
� "5�2
+�(
tensor_0���������--�
� �
(__inference_conv2d_1_layer_call_fn_21657l��8�5
.�+
)�&
inputs���������ZZ�
� "*�'
unknown���������--��
C__inference_conv2d_2_layer_call_and_return_conditional_losses_21904w��8�5
.�+
)�&
inputs���������--�
� "5�2
+�(
tensor_0����������
� �
(__inference_conv2d_2_layer_call_fn_21894l��8�5
.�+
)�&
inputs���������--�
� "*�'
unknown�����������
C__inference_conv2d_3_layer_call_and_return_conditional_losses_22141w��8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
(__inference_conv2d_3_layer_call_fn_22131l��8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
A__inference_conv2d_layer_call_and_return_conditional_losses_21370v<=9�6
/�,
*�'
inputs�����������
� "5�2
+�(
tensor_0���������ZZ�
� �
&__inference_conv2d_layer_call_fn_21360k<=9�6
/�,
*�'
inputs�����������
� "*�'
unknown���������ZZ��
@__inference_dense_layer_call_and_return_conditional_losses_22309f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
%__inference_dense_layer_call_fn_22298[��0�-
&�#
!�
inputs����������
� "!�
unknown����������
B__inference_dropout_layer_call_and_return_conditional_losses_22284e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
B__inference_dropout_layer_call_and_return_conditional_losses_22289e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
'__inference_dropout_layer_call_fn_22267Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
'__inference_dropout_layer_call_fn_22272Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_22262�R�O
H�E
C�@
inputs4������������������������������������
� "5�2
+�(
tensor_0������������������
� �
8__inference_global_average_pooling2d_layer_call_fn_22256�R�O
H�E
C�@
inputs4������������������������������������
� "*�'
unknown�������������������
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_21885�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_21880�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_22122�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_2_layer_call_fn_22117�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_21648�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_21643�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
@__inference_model_layer_call_and_return_conditional_losses_20417�n<=FGHI\]^ghijwxy�����������������������������������������������B�?
8�5
+�(
input_1�����������
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_20589�n<=FGHI\]^ghijwxy�����������������������������������������������B�?
8�5
+�(
input_1�����������
p 

 
� ",�)
"�
tensor_0���������
� �
%__inference_model_layer_call_fn_20720�n<=FGHI\]^ghijwxy�����������������������������������������������B�?
8�5
+�(
input_1�����������
p

 
� "!�
unknown����������
%__inference_model_layer_call_fn_20851�n<=FGHI\]^ghijwxy�����������������������������������������������B�?
8�5
+�(
input_1�����������
p 

 
� "!�
unknown����������
D__inference_rescaling_layer_call_and_return_conditional_losses_21351s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_rescaling_layer_call_fn_21343h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_21576�wxyJ�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
2__inference_separable_conv2d_1_layer_call_fn_21561�wxyJ�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_21715����J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
2__inference_separable_conv2d_2_layer_call_fn_21700����J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_21813����J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
2__inference_separable_conv2d_3_layer_call_fn_21798����J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_21952����J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
2__inference_separable_conv2d_4_layer_call_fn_21937����J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_22050����J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
2__inference_separable_conv2d_5_layer_call_fn_22035����J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_22179����J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
2__inference_separable_conv2d_6_layer_call_fn_22164����J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_21478�\]^J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
0__inference_separable_conv2d_layer_call_fn_21463�\]^J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
#__inference_signature_wrapper_21103�n<=FGHI\]^ghijwxy�����������������������������������������������E�B
� 
;�8
6
input_1+�(
input_1�����������"-�*
(
dense�
dense���������
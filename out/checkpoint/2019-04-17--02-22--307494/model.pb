
=
model/inputsPlaceholder*
dtype0*
shape
:dd
>
model/targetsPlaceholder*
dtype0*
shape
:dd
A
model/actual_lengthsPlaceholder*
dtype0*
shape:d
?

model/packConst*
dtype0*
valueB"d   �   
>
model/zeros/ConstConst*
dtype0*
valueB
 *    
;
model/zerosFill
model/packmodel/zeros/Const*
T0
A
model/pack_1Const*
dtype0*
valueB"d   �   
@
model/zeros_1/ConstConst*
dtype0*
valueB
 *    
A
model/zeros_1Fillmodel/pack_1model/zeros_1/Const*
T0
r
model/embeddingVariable"/device:CPU:0*
shared_name *
	container *
dtype0*
shape:
��
�
0model/embedding/Initializer/random_uniform/shapeConst"/device:CPU:0*
dtype0*
valueB"�  �   *"
_class
loc:@model/embedding
�
.model/embedding/Initializer/random_uniform/minConst"/device:CPU:0*
dtype0*
valueB
 *��̽*"
_class
loc:@model/embedding
�
.model/embedding/Initializer/random_uniform/maxConst"/device:CPU:0*
dtype0*
valueB
 *���=*"
_class
loc:@model/embedding
�
8model/embedding/Initializer/random_uniform/RandomUniformRandomUniform0model/embedding/Initializer/random_uniform/shape"/device:CPU:0*
seed2 *
T0*
dtype0*

seed *"
_class
loc:@model/embedding
�
.model/embedding/Initializer/random_uniform/subSub.model/embedding/Initializer/random_uniform/max.model/embedding/Initializer/random_uniform/min"/device:CPU:0*
T0*"
_class
loc:@model/embedding
�
.model/embedding/Initializer/random_uniform/mulMul8model/embedding/Initializer/random_uniform/RandomUniform.model/embedding/Initializer/random_uniform/sub"/device:CPU:0*
T0*"
_class
loc:@model/embedding
�
*model/embedding/Initializer/random_uniformAdd.model/embedding/Initializer/random_uniform/mul.model/embedding/Initializer/random_uniform/min"/device:CPU:0*
T0*"
_class
loc:@model/embedding
�
model/embedding/AssignAssignmodel/embedding*model/embedding/Initializer/random_uniform"/device:CPU:0*
use_locking(*
T0*
validate_shape(*"
_class
loc:@model/embedding
m
model/embedding/readIdentitymodel/embedding"/device:CPU:0*
T0*"
_class
loc:@model/embedding
�
model/GatherGathermodel/embedding/readmodel/inputs"/device:CPU:0*
Tparams0*
validate_indices(*
Tindices0
D
model/dropout/keep_probConst*
dtype0*
valueB
 *fff?
3
model/dropout/ShapeShapemodel/Gather*
T0
M
 model/dropout/random_uniform/minConst*
dtype0*
valueB
 *    
M
 model/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  �?

*model/dropout/random_uniform/RandomUniformRandomUniformmodel/dropout/Shape*
seed2 *
T0*
dtype0*

seed 
t
 model/dropout/random_uniform/subSub model/dropout/random_uniform/max model/dropout/random_uniform/min*
T0
~
 model/dropout/random_uniform/mulMul*model/dropout/random_uniform/RandomUniform model/dropout/random_uniform/sub*
T0
p
model/dropout/random_uniformAdd model/dropout/random_uniform/mul model/dropout/random_uniform/min*
T0
X
model/dropout/addAddmodel/dropout/keep_probmodel/dropout/random_uniform*
T0
8
model/dropout/FloorFloormodel/dropout/add*
T0
:
model/dropout/InvInvmodel/dropout/keep_prob*
T0
B
model/dropout/mulMulmodel/Gathermodel/dropout/Inv*
T0
K
model/dropout/mul_1Mulmodel/dropout/mulmodel/dropout/Floor*
T0
M
model/transpose/permConst*
dtype0*!
valueB"          
P
model/transpose	Transposemodel/dropout/mul_1model/transpose/perm*
T0
@
model/sequence_lengthIdentitymodel/actual_lengths*
T0
2
model/RNN/ShapeShapemodel/transpose*
T0
C
model/RNN/Slice/beginConst*
dtype0*
valueB:
B
model/RNN/Slice/sizeConst*
dtype0*
valueB:
l
model/RNN/SliceSlicemodel/RNN/Shapemodel/RNN/Slice/beginmodel/RNN/Slice/size*
Index0*
T0
M
model/RNN/SqueezeSqueezemodel/RNN/Slice*
T0*
squeeze_dims
 
:
model/RNN/Shape_1Shapemodel/sequence_length*
T0
;
model/RNN/packPackmodel/RNN/Squeeze*
T0*
N
D
model/RNN/EqualEqualmodel/RNN/Shape_1model/RNN/pack*
T0
0
model/RNN/RankRankmodel/RNN/Equal*
T0

?
model/RNN/range/startConst*
dtype0*
value	B : 
?
model/RNN/range/deltaConst*
dtype0*
value	B :
V
model/RNN/rangeRangemodel/RNN/range/startmodel/RNN/Rankmodel/RNN/range/delta
G
model/RNN/AllAllmodel/RNN/Equalmodel/RNN/range*
	keep_dims( 
u
model/RNN/Assert/data_0Const*
dtype0*F
value=B; B5Expected shape for Tensor model/sequence_length:0 is 
P
model/RNN/Assert/data_2Const*
dtype0*!
valueB B but saw shape: 
�
model/RNN/AssertAssertmodel/RNN/Allmodel/RNN/Assert/data_0model/RNN/packmodel/RNN/Assert/data_2model/RNN/Shape_1*
T
2*
	summarize
T
model/RNN/CheckSeqLenIdentitymodel/sequence_length^model/RNN/Assert*
T0
4
model/RNN/Shape_2Shapemodel/transpose*
T0
A
model/RNN/unpackUnpackmodel/RNN/Shape_2*
T0*	
num
=
model/RNN/pack_1/1Const*
dtype0*
value
B :�
R
model/RNN/pack_1Packmodel/RNN/unpack:1model/RNN/pack_1/1*
T0*
N
B
model/RNN/zeros/ConstConst*
dtype0*
valueB
 *    
I
model/RNN/zerosFillmodel/RNN/pack_1model/RNN/zeros/Const*
T0
8
model/RNN/Rank_1Rankmodel/RNN/CheckSeqLen*
T0
A
model/RNN/range_1/startConst*
dtype0*
value	B : 
A
model/RNN/range_1/deltaConst*
dtype0*
value	B :
^
model/RNN/range_1Rangemodel/RNN/range_1/startmodel/RNN/Rank_1model/RNN/range_1/delta
X
model/RNN/MinMinmodel/RNN/CheckSeqLenmodel/RNN/range_1*
T0*
	keep_dims( 
8
model/RNN/Rank_2Rankmodel/RNN/CheckSeqLen*
T0
A
model/RNN/range_2/startConst*
dtype0*
value	B : 
A
model/RNN/range_2/deltaConst*
dtype0*
value	B :
^
model/RNN/range_2Rangemodel/RNN/range_2/startmodel/RNN/Rank_2model/RNN/range_2/delta
X
model/RNN/MaxMaxmodel/RNN/CheckSeqLenmodel/RNN/range_2*
T0*
	keep_dims( 
8
model/RNN/timeConst*
dtype0*
value	B : 
�
model/RNN/TensorArrayTensorArraymodel/RNN/unpack*
dtype0*3
tensor_array_namemodel/RNN/dynamic_rnn/output*
dynamic_size( *
clear_after_read(
r
model/RNN/TensorArray/ConstConst*
dtype0*
valueB
 *    *(
_class
loc:@model/RNN/TensorArray
�
model/RNN/TensorArray_1TensorArraymodel/RNN/unpack*
dtype0*2
tensor_array_namemodel/RNN/dynamic_rnn/input*
dynamic_size( *
clear_after_read(
v
model/RNN/TensorArray_1/ConstConst*
dtype0*
valueB
 *    **
_class 
loc:@model/RNN/TensorArray_1
�
model/RNN/TensorArrayUnpackTensorArrayUnpackmodel/RNN/TensorArray_1model/transposemodel/RNN/TensorArray_1/Const*
T0**
_class 
loc:@model/RNN/TensorArray_1
v
model/RNN/TensorArray_2/ConstConst*
dtype0*
valueB
 *    **
_class 
loc:@model/RNN/TensorArray_1
�
model/RNN/while/EnterEntermodel/RNN/time*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
model/RNN/while/Enter_1Entermodel/RNN/TensorArray/Const*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
model/RNN/while/Enter_2Entermodel/zeros*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
model/RNN/while/Enter_3Entermodel/zeros_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
f
model/RNN/while/MergeMergemodel/RNN/while/Entermodel/RNN/while/NextIteration*
T0*
N
l
model/RNN/while/Merge_1Mergemodel/RNN/while/Enter_1model/RNN/while/NextIteration_1*
T0*
N
l
model/RNN/while/Merge_2Mergemodel/RNN/while/Enter_2model/RNN/while/NextIteration_2*
T0*
N
l
model/RNN/while/Merge_3Mergemodel/RNN/while/Enter_3model/RNN/while/NextIteration_3*
T0*
N
�
model/RNN/while/Less/EnterEntermodel/RNN/unpack*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
X
model/RNN/while/LessLessmodel/RNN/while/Mergemodel/RNN/while/Less/Enter*
T0
:
model/RNN/while/LoopCondLoopCondmodel/RNN/while/Less
�
model/RNN/while/SwitchSwitchmodel/RNN/while/Mergemodel/RNN/while/LoopCond*
T0*(
_class
loc:@model/RNN/while/Merge
�
model/RNN/while/Switch_1Switchmodel/RNN/while/Merge_1model/RNN/while/LoopCond*
T0**
_class 
loc:@model/RNN/while/Merge_1
�
model/RNN/while/Switch_2Switchmodel/RNN/while/Merge_2model/RNN/while/LoopCond*
T0**
_class 
loc:@model/RNN/while/Merge_2
�
model/RNN/while/Switch_3Switchmodel/RNN/while/Merge_3model/RNN/while/LoopCond*
T0**
_class 
loc:@model/RNN/while/Merge_3
G
model/RNN/while/IdentityIdentitymodel/RNN/while/Switch:1*
T0
K
model/RNN/while/Identity_1Identitymodel/RNN/while/Switch_1:1*
T0
K
model/RNN/while/Identity_2Identitymodel/RNN/while/Switch_2:1*
T0
K
model/RNN/while/Identity_3Identitymodel/RNN/while/Switch_3:1*
T0
�
(model/RNN/while/TensorArrayRead/RefEnterRefEntermodel/RNN/TensorArray_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model/RNN/TensorArray_1
�
%model/RNN/while/TensorArrayRead/EnterEntermodel/RNN/TensorArrayUnpack*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model/RNN/TensorArray_1
�
model/RNN/while/TensorArrayReadTensorArrayRead(model/RNN/while/TensorArrayRead/RefEntermodel/RNN/while/Identity%model/RNN/while/TensorArrayRead/Enter*
dtype0**
_class 
loc:@model/RNN/TensorArray_1
�
8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatrixVariable*
shared_name *
	container *
dtype0*
shape:
��
�
Ymodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/shapeConst*
dtype0*
valueB"�     *K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
Wmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/minConst*
dtype0*
valueB
 *��̽*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
Wmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *���=*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
amodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/RandomUniformRandomUniformYmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/shape*
seed2 *
T0*
dtype0*

seed *K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
Wmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/subSubWmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/maxWmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min*
T0*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
Wmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/mulMulamodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/RandomUniformWmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/sub*
T0*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
Smodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniformAddWmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/mulWmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform/min*
T0*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
?model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/AssignAssign8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatrixSmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
=model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/readIdentity8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix*
T0
�
Imodel/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dimConst^model/RNN/while/Identity*
dtype0*
value	B :
�
>model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concatConcatImodel/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dimmodel/RNN/while/TensorArrayReadmodel/RNN/while/Identity_3*
T0*
N
�
Dmodel/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/EnterEnter=model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/read*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
>model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMulMatMul>model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concatDmodel/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter*
transpose_b( *
transpose_a( *
T0
�
6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/BiasVariable*
shared_name *
	container *
dtype0*
shape:�
�
Hmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Initializer/ConstConst*
dtype0*
valueB�*    *I
_class?
=;loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias
�
=model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/AssignAssign6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/BiasHmodel/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Initializer/Const*
use_locking(*
T0*
validate_shape(*I
_class?
=;loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias
�
;model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/readIdentity6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias*
T0
�
:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/EnterEnter;model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/read*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
4model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/addAdd>model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter*
T0
�
@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dimConst^model/RNN/while/Identity*
dtype0*
value	B :
�
6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/splitSplit@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim4model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add*
T0*
	num_split
�
8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1/yConst^model/RNN/while/Identity*
dtype0*
valueB
 *  �?
�
6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1Add8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:28model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1/y*
T0
�
8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/SigmoidSigmoid6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1*
T0
�
4model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mulMulmodel/RNN/while/Identity_28model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid*
T0
�
:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1Sigmoid6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split*
T0
�
5model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/TanhTanh8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:1*
T0
�
6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1Mul:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_15model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh*
T0
�
6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2Add4model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1*
T0
�
7model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1Tanh6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2*
T0
�
:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2Sigmoid8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:3*
T0
�
6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2Mul7model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2*
T0
|
4model/RNN/while/MultiRNNCell/Cell0/dropout/keep_probConst^model/RNN/while/Identity*
dtype0*
valueB
 *fff?
z
0model/RNN/while/MultiRNNCell/Cell0/dropout/ShapeShape6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2*
T0
�
=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/minConst^model/RNN/while/Identity*
dtype0*
valueB
 *    
�
=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/maxConst^model/RNN/while/Identity*
dtype0*
valueB
 *  �?
�
Gmodel/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/RandomUniformRandomUniform0model/RNN/while/MultiRNNCell/Cell0/dropout/Shape*
seed2 *
T0*
dtype0*

seed 
�
=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/subSub=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/max=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/min*
T0
�
=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/mulMulGmodel/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/RandomUniform=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/sub*
T0
�
9model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniformAdd=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/mul=model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/min*
T0
�
.model/RNN/while/MultiRNNCell/Cell0/dropout/addAdd4model/RNN/while/MultiRNNCell/Cell0/dropout/keep_prob9model/RNN/while/MultiRNNCell/Cell0/dropout/random_uniform*
T0
r
0model/RNN/while/MultiRNNCell/Cell0/dropout/FloorFloor.model/RNN/while/MultiRNNCell/Cell0/dropout/add*
T0
t
.model/RNN/while/MultiRNNCell/Cell0/dropout/InvInv4model/RNN/while/MultiRNNCell/Cell0/dropout/keep_prob*
T0
�
.model/RNN/while/MultiRNNCell/Cell0/dropout/mulMul6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2.model/RNN/while/MultiRNNCell/Cell0/dropout/Inv*
T0
�
0model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1Mul.model/RNN/while/MultiRNNCell/Cell0/dropout/mul0model/RNN/while/MultiRNNCell/Cell0/dropout/Floor*
T0
�
"model/RNN/while/GreaterEqual/EnterEntermodel/RNN/CheckSeqLen*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
s
model/RNN/while/GreaterEqualGreaterEqualmodel/RNN/while/Identity"model/RNN/while/GreaterEqual/Enter*
T0
�
model/RNN/while/Select/EnterEntermodel/RNN/zeros*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
model/RNN/while/SelectSelectmodel/RNN/while/GreaterEqualmodel/RNN/while/Select/Enter0model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1*
T0
�
model/RNN/while/Select_1Selectmodel/RNN/while/GreaterEqualmodel/RNN/while/Identity_26model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2*
T0
�
model/RNN/while/Select_2Selectmodel/RNN/while/GreaterEqualmodel/RNN/while/Identity_36model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2*
T0
�
)model/RNN/while/TensorArrayWrite/RefEnterRefEntermodel/RNN/TensorArray*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*(
_class
loc:@model/RNN/TensorArray
�
 model/RNN/while/TensorArrayWriteTensorArrayWrite)model/RNN/while/TensorArrayWrite/RefEntermodel/RNN/while/Identitymodel/RNN/while/Selectmodel/RNN/while/Identity_1*
T0*(
_class
loc:@model/RNN/TensorArray
�
#model/RNN/while/TensorArray_2/ConstConst^model/RNN/while/Identity*
dtype0*
valueB
 *    *(
_class
loc:@model/RNN/TensorArray
Z
model/RNN/while/add/yConst^model/RNN/while/Identity*
dtype0*
value	B :
T
model/RNN/while/addAddmodel/RNN/while/Identitymodel/RNN/while/add/y*
T0
L
model/RNN/while/NextIterationNextIterationmodel/RNN/while/add*
T0
[
model/RNN/while/NextIteration_1NextIteration model/RNN/while/TensorArrayWrite*
T0
S
model/RNN/while/NextIteration_2NextIterationmodel/RNN/while/Select_1*
T0
S
model/RNN/while/NextIteration_3NextIterationmodel/RNN/while/Select_2*
T0
=
model/RNN/while/ExitExitmodel/RNN/while/Switch*
T0
A
model/RNN/while/Exit_1Exitmodel/RNN/while/Switch_1*
T0
A
model/RNN/while/Exit_2Exitmodel/RNN/while/Switch_2*
T0
A
model/RNN/while/Exit_3Exitmodel/RNN/while/Switch_3*
T0
�
model/RNN/TensorArrayPackTensorArrayPackmodel/RNN/TensorArraymodel/RNN/while/Exit_1*
dtype0*(
_class
loc:@model/RNN/TensorArray
Q
model/RNN/transpose/permConst*
dtype0*!
valueB"          
^
model/RNN/transpose	Transposemodel/RNN/TensorArrayPackmodel/RNN/transpose/perm*
T0
H
model/Reshape/shapeConst*
dtype0*
valueB"�����   
K
model/ReshapeReshapemodel/RNN/transposemodel/Reshape/shape*
T0
c
model/softmax_wVariable*
shared_name *
	container *
dtype0*
shape:
��
�
0model/softmax_w/Initializer/random_uniform/shapeConst*
dtype0*
valueB"�   �  *"
_class
loc:@model/softmax_w

.model/softmax_w/Initializer/random_uniform/minConst*
dtype0*
valueB
 *��̽*"
_class
loc:@model/softmax_w

.model/softmax_w/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *���=*"
_class
loc:@model/softmax_w
�
8model/softmax_w/Initializer/random_uniform/RandomUniformRandomUniform0model/softmax_w/Initializer/random_uniform/shape*
seed2 *
T0*
dtype0*

seed *"
_class
loc:@model/softmax_w
�
.model/softmax_w/Initializer/random_uniform/subSub.model/softmax_w/Initializer/random_uniform/max.model/softmax_w/Initializer/random_uniform/min*
T0*"
_class
loc:@model/softmax_w
�
.model/softmax_w/Initializer/random_uniform/mulMul8model/softmax_w/Initializer/random_uniform/RandomUniform.model/softmax_w/Initializer/random_uniform/sub*
T0*"
_class
loc:@model/softmax_w
�
*model/softmax_w/Initializer/random_uniformAdd.model/softmax_w/Initializer/random_uniform/mul.model/softmax_w/Initializer/random_uniform/min*
T0*"
_class
loc:@model/softmax_w
�
model/softmax_w/AssignAssignmodel/softmax_w*model/softmax_w/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*"
_class
loc:@model/softmax_w
^
model/softmax_w/readIdentitymodel/softmax_w*
T0*"
_class
loc:@model/softmax_w
^
model/softmax_bVariable*
shared_name *
	container *
dtype0*
shape:�
�
0model/softmax_b/Initializer/random_uniform/shapeConst*
dtype0*
valueB:�*"
_class
loc:@model/softmax_b

.model/softmax_b/Initializer/random_uniform/minConst*
dtype0*
valueB
 *��̽*"
_class
loc:@model/softmax_b

.model/softmax_b/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *���=*"
_class
loc:@model/softmax_b
�
8model/softmax_b/Initializer/random_uniform/RandomUniformRandomUniform0model/softmax_b/Initializer/random_uniform/shape*
seed2 *
T0*
dtype0*

seed *"
_class
loc:@model/softmax_b
�
.model/softmax_b/Initializer/random_uniform/subSub.model/softmax_b/Initializer/random_uniform/max.model/softmax_b/Initializer/random_uniform/min*
T0*"
_class
loc:@model/softmax_b
�
.model/softmax_b/Initializer/random_uniform/mulMul8model/softmax_b/Initializer/random_uniform/RandomUniform.model/softmax_b/Initializer/random_uniform/sub*
T0*"
_class
loc:@model/softmax_b
�
*model/softmax_b/Initializer/random_uniformAdd.model/softmax_b/Initializer/random_uniform/mul.model/softmax_b/Initializer/random_uniform/min*
T0*"
_class
loc:@model/softmax_b
�
model/softmax_b/AssignAssignmodel/softmax_b*model/softmax_b/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*"
_class
loc:@model/softmax_b
^
model/softmax_b/readIdentitymodel/softmax_b*
T0*"
_class
loc:@model/softmax_b
j
model/MatMulMatMulmodel/Reshapemodel/softmax_w/read*
transpose_b( *
transpose_a( *
T0
=
	model/addAddmodel/MatMulmodel/softmax_b/read*
T0
,
model/SoftmaxSoftmax	model/add*
T0
J
model/Reshape_1/shapeConst*
dtype0*
valueB"'     
I
model/Reshape_1Reshapemodel/targetsmodel/Reshape_1/shape*
T0
=
model/transpose_1/RankRankmodel/softmax_w/read*
T0
A
model/transpose_1/sub/yConst*
dtype0*
value	B :
V
model/transpose_1/subSubmodel/transpose_1/Rankmodel/transpose_1/sub/y*
T0
G
model/transpose_1/Range/startConst*
dtype0*
value	B : 
G
model/transpose_1/Range/deltaConst*
dtype0*
value	B :
v
model/transpose_1/RangeRangemodel/transpose_1/Range/startmodel/transpose_1/Rankmodel/transpose_1/Range/delta
W
model/transpose_1/sub_1Submodel/transpose_1/submodel/transpose_1/Range*
T0
V
model/transpose_1	Transposemodel/softmax_w/readmodel/transpose_1/sub_1*
T0
P
model/sampled_softmax_loss/CastCastmodel/Reshape_1*

SrcT0*

DstT0	
_
(model/sampled_softmax_loss/Reshape/shapeConst*
dtype0*
valueB:
���������
�
"model/sampled_softmax_loss/ReshapeReshapemodel/sampled_softmax_loss/Cast(model/sampled_softmax_loss/Reshape/shape*
T0	
�
5model/sampled_softmax_loss/LogUniformCandidateSamplerLogUniformCandidateSamplermodel/sampled_softmax_loss/Cast*
seed2 *
num_sampledd*
	range_max�*
unique(*
num_true*

seed 
V
,model/sampled_softmax_loss/concat/concat_dimConst*
dtype0*
value	B : 
�
!model/sampled_softmax_loss/concatConcat,model/sampled_softmax_loss/concat/concat_dim"model/sampled_softmax_loss/Reshape5model/sampled_softmax_loss/LogUniformCandidateSampler*
T0	*
N
�
+model/sampled_softmax_loss/embedding_lookupGathermodel/transpose_1!model/sampled_softmax_loss/concat*
Tparams0*
Tindices0	*
validate_indices(*$
_class
loc:@model/transpose_1
�
-model/sampled_softmax_loss/embedding_lookup_1Gathermodel/softmax_b/read!model/sampled_softmax_loss/concat*
Tparams0*
Tindices0	*
validate_indices(*"
_class
loc:@model/softmax_b
V
 model/sampled_softmax_loss/ShapeShape"model/sampled_softmax_loss/Reshape*
T0	
T
&model/sampled_softmax_loss/Slice/beginConst*
dtype0*
valueB: 
S
%model/sampled_softmax_loss/Slice/sizeConst*
dtype0*
valueB:
�
 model/sampled_softmax_loss/SliceSlice model/sampled_softmax_loss/Shape&model/sampled_softmax_loss/Slice/begin%model/sampled_softmax_loss/Slice/size*
Index0*
T0
o
"model/sampled_softmax_loss/SqueezeSqueeze model/sampled_softmax_loss/Slice*
T0*
squeeze_dims
 
T
!model/sampled_softmax_loss/pack/1Const*
dtype0*
valueB :
���������
�
model/sampled_softmax_loss/packPack"model/sampled_softmax_loss/Squeeze!model/sampled_softmax_loss/pack/1*
T0*
N
]
(model/sampled_softmax_loss/Slice_1/beginConst*
dtype0*
valueB"        
�
"model/sampled_softmax_loss/Slice_1Slice+model/sampled_softmax_loss/embedding_lookup(model/sampled_softmax_loss/Slice_1/beginmodel/sampled_softmax_loss/pack*
Index0*
T0
X
"model/sampled_softmax_loss/Shape_1Shape"model/sampled_softmax_loss/Reshape*
T0	
V
(model/sampled_softmax_loss/Slice_2/beginConst*
dtype0*
valueB: 
�
"model/sampled_softmax_loss/Slice_2Slice-model/sampled_softmax_loss/embedding_lookup_1(model/sampled_softmax_loss/Slice_2/begin"model/sampled_softmax_loss/Shape_1*
Index0*
T0
X
"model/sampled_softmax_loss/Shape_2Shape"model/sampled_softmax_loss/Slice_1*
T0
V
(model/sampled_softmax_loss/Slice_3/beginConst*
dtype0*
valueB:
U
'model/sampled_softmax_loss/Slice_3/sizeConst*
dtype0*
valueB:
�
"model/sampled_softmax_loss/Slice_3Slice"model/sampled_softmax_loss/Shape_2(model/sampled_softmax_loss/Slice_3/begin'model/sampled_softmax_loss/Slice_3/size*
Index0*
T0
X
.model/sampled_softmax_loss/concat_1/concat_dimConst*
dtype0*
value	B : 
a
,model/sampled_softmax_loss/concat_1/values_0Const*
dtype0*
valueB"����   
�
#model/sampled_softmax_loss/concat_1Concat.model/sampled_softmax_loss/concat_1/concat_dim,model/sampled_softmax_loss/concat_1/values_0"model/sampled_softmax_loss/Slice_3*
T0*
N
S
)model/sampled_softmax_loss/ExpandDims/dimConst*
dtype0*
value	B :
v
%model/sampled_softmax_loss/ExpandDims
ExpandDimsmodel/Reshape)model/sampled_softmax_loss/ExpandDims/dim*
T0
�
$model/sampled_softmax_loss/Reshape_1Reshape"model/sampled_softmax_loss/Slice_1#model/sampled_softmax_loss/concat_1*
T0
{
model/sampled_softmax_loss/MulMul%model/sampled_softmax_loss/ExpandDims$model/sampled_softmax_loss/Reshape_1*
T0
X
.model/sampled_softmax_loss/concat_2/concat_dimConst*
dtype0*
value	B : 
c
,model/sampled_softmax_loss/concat_2/values_0Const*
dtype0*
valueB:
���������
�
#model/sampled_softmax_loss/concat_2Concat.model/sampled_softmax_loss/concat_2/concat_dim,model/sampled_softmax_loss/concat_2/values_0"model/sampled_softmax_loss/Slice_3*
T0*
N
}
$model/sampled_softmax_loss/Reshape_2Reshapemodel/sampled_softmax_loss/Mul#model/sampled_softmax_loss/concat_2*
T0
Z
"model/sampled_softmax_loss/Shape_3Shape$model/sampled_softmax_loss/Reshape_2*
T0
V
(model/sampled_softmax_loss/Slice_4/beginConst*
dtype0*
valueB:
U
'model/sampled_softmax_loss/Slice_4/sizeConst*
dtype0*
valueB:
�
"model/sampled_softmax_loss/Slice_4Slice"model/sampled_softmax_loss/Shape_3(model/sampled_softmax_loss/Slice_4/begin'model/sampled_softmax_loss/Slice_4/size*
Index0*
T0
s
$model/sampled_softmax_loss/Squeeze_1Squeeze"model/sampled_softmax_loss/Slice_4*
T0*
squeeze_dims
 
M
#model/sampled_softmax_loss/pack_1/1Const*
dtype0*
value	B :
�
!model/sampled_softmax_loss/pack_1Pack$model/sampled_softmax_loss/Squeeze_1#model/sampled_softmax_loss/pack_1/1*
T0*
N
R
%model/sampled_softmax_loss/ones/ConstConst*
dtype0*
valueB
 *  �?
z
model/sampled_softmax_loss/onesFill!model/sampled_softmax_loss/pack_1%model/sampled_softmax_loss/ones/Const*
T0
�
!model/sampled_softmax_loss/MatMulMatMul$model/sampled_softmax_loss/Reshape_2model/sampled_softmax_loss/ones*
transpose_b( *
transpose_a( *
T0
a
*model/sampled_softmax_loss/Reshape_3/shapeConst*
dtype0*
valueB:
���������
�
$model/sampled_softmax_loss/Reshape_3Reshape!model/sampled_softmax_loss/MatMul*model/sampled_softmax_loss/Reshape_3/shape*
T0
_
*model/sampled_softmax_loss/Reshape_4/shapeConst*
dtype0*
valueB"����   
�
$model/sampled_softmax_loss/Reshape_4Reshape$model/sampled_softmax_loss/Reshape_3*model/sampled_softmax_loss/Reshape_4/shape*
T0
_
*model/sampled_softmax_loss/Reshape_5/shapeConst*
dtype0*
valueB"����   
�
$model/sampled_softmax_loss/Reshape_5Reshape"model/sampled_softmax_loss/Slice_2*model/sampled_softmax_loss/Reshape_5/shape*
T0
z
model/sampled_softmax_loss/addAdd$model/sampled_softmax_loss/Reshape_4$model/sampled_softmax_loss/Reshape_5*
T0
X
"model/sampled_softmax_loss/Shape_4Shape"model/sampled_softmax_loss/Reshape*
T0	
V
(model/sampled_softmax_loss/Slice_5/beginConst*
dtype0*
valueB: 
U
'model/sampled_softmax_loss/Slice_5/sizeConst*
dtype0*
valueB:
�
"model/sampled_softmax_loss/Slice_5Slice"model/sampled_softmax_loss/Shape_4(model/sampled_softmax_loss/Slice_5/begin'model/sampled_softmax_loss/Slice_5/size*
Index0*
T0
s
$model/sampled_softmax_loss/Squeeze_2Squeeze"model/sampled_softmax_loss/Slice_5*
T0*
squeeze_dims
 
M
#model/sampled_softmax_loss/pack_2/1Const*
dtype0*
value	B : 
�
!model/sampled_softmax_loss/pack_2Pack$model/sampled_softmax_loss/Squeeze_2#model/sampled_softmax_loss/pack_2/1*
T0*
N
\
'model/sampled_softmax_loss/Slice_6/sizeConst*
dtype0*
valueB"��������
�
"model/sampled_softmax_loss/Slice_6Slice+model/sampled_softmax_loss/embedding_lookup!model/sampled_softmax_loss/pack_2'model/sampled_softmax_loss/Slice_6/size*
Index0*
T0
X
"model/sampled_softmax_loss/Shape_5Shape"model/sampled_softmax_loss/Reshape*
T0	
^
'model/sampled_softmax_loss/Slice_7/sizeConst*
dtype0*
valueB:
���������
�
"model/sampled_softmax_loss/Slice_7Slice-model/sampled_softmax_loss/embedding_lookup_1"model/sampled_softmax_loss/Shape_5'model/sampled_softmax_loss/Slice_7/size*
Index0*
T0
�
#model/sampled_softmax_loss/MatMul_1MatMulmodel/Reshape"model/sampled_softmax_loss/Slice_6*
transpose_b(*
transpose_a( *
T0
y
 model/sampled_softmax_loss/add_1Add#model/sampled_softmax_loss/MatMul_1"model/sampled_softmax_loss/Slice_7*
T0
�
0model/sampled_softmax_loss/ComputeAccidentalHitsComputeAccidentalHitsmodel/sampled_softmax_loss/Cast5model/sampled_softmax_loss/LogUniformCandidateSampler*
seed2 *
num_true*

seed 
_
*model/sampled_softmax_loss/Reshape_6/shapeConst*
dtype0*
valueB"����   
�
$model/sampled_softmax_loss/Reshape_6Reshape0model/sampled_softmax_loss/ComputeAccidentalHits*model/sampled_softmax_loss/Reshape_6/shape*
T0
u
!model/sampled_softmax_loss/Cast_1Cast2model/sampled_softmax_loss/ComputeAccidentalHits:1*

SrcT0	*

DstT0
_
*model/sampled_softmax_loss/Reshape_7/shapeConst*
dtype0*
valueB"����   
�
$model/sampled_softmax_loss/Reshape_7Reshape!model/sampled_softmax_loss/Cast_1*model/sampled_softmax_loss/Reshape_7/shape*
T0
^
4model/sampled_softmax_loss/sparse_indices/concat_dimConst*
dtype0*
value	B :
�
)model/sampled_softmax_loss/sparse_indicesConcat4model/sampled_softmax_loss/sparse_indices/concat_dim$model/sampled_softmax_loss/Reshape_6$model/sampled_softmax_loss/Reshape_7*
T0*
N
U
"model/sampled_softmax_loss/Shape_6Shapemodel/sampled_softmax_loss/Cast*
T0	
V
(model/sampled_softmax_loss/Slice_8/beginConst*
dtype0*
valueB: 
U
'model/sampled_softmax_loss/Slice_8/sizeConst*
dtype0*
valueB:
�
"model/sampled_softmax_loss/Slice_8Slice"model/sampled_softmax_loss/Shape_6(model/sampled_softmax_loss/Slice_8/begin'model/sampled_softmax_loss/Slice_8/size*
Index0*
T0
W
-model/sampled_softmax_loss/ExpandDims_1/inputConst*
dtype0*
value	B :d
U
+model/sampled_softmax_loss/ExpandDims_1/dimConst*
dtype0*
value	B : 
�
'model/sampled_softmax_loss/ExpandDims_1
ExpandDims-model/sampled_softmax_loss/ExpandDims_1/input+model/sampled_softmax_loss/ExpandDims_1/dim*
T0
X
.model/sampled_softmax_loss/concat_3/concat_dimConst*
dtype0*
value	B : 
�
#model/sampled_softmax_loss/concat_3Concat.model/sampled_softmax_loss/concat_3/concat_dim"model/sampled_softmax_loss/Slice_8'model/sampled_softmax_loss/ExpandDims_1*
T0*
N
c
6model/sampled_softmax_loss/SparseToDense/default_valueConst*
dtype0*
valueB
 *    
�
(model/sampled_softmax_loss/SparseToDenseSparseToDense)model/sampled_softmax_loss/sparse_indices#model/sampled_softmax_loss/concat_32model/sampled_softmax_loss/ComputeAccidentalHits:26model/sampled_softmax_loss/SparseToDense/default_value*
T0*
validate_indices( *
Tindices0
|
 model/sampled_softmax_loss/add_2Add model/sampled_softmax_loss/add_1(model/sampled_softmax_loss/SparseToDense*
T0
g
model/sampled_softmax_loss/LogLog7model/sampled_softmax_loss/LogUniformCandidateSampler:1*
T0
n
model/sampled_softmax_loss/subSubmodel/sampled_softmax_loss/addmodel/sampled_softmax_loss/Log*
T0
i
 model/sampled_softmax_loss/Log_1Log7model/sampled_softmax_loss/LogUniformCandidateSampler:2*
T0
t
 model/sampled_softmax_loss/sub_1Sub model/sampled_softmax_loss/add_2 model/sampled_softmax_loss/Log_1*
T0
X
.model/sampled_softmax_loss/concat_4/concat_dimConst*
dtype0*
value	B :
�
#model/sampled_softmax_loss/concat_4Concat.model/sampled_softmax_loss/concat_4/concat_dimmodel/sampled_softmax_loss/sub model/sampled_softmax_loss/sub_1*
T0*
N
\
*model/sampled_softmax_loss/ones_like/ShapeShapemodel/sampled_softmax_loss/sub*
T0
W
*model/sampled_softmax_loss/ones_like/ConstConst*
dtype0*
valueB
 *  �?
�
$model/sampled_softmax_loss/ones_likeFill*model/sampled_softmax_loss/ones_like/Shape*model/sampled_softmax_loss/ones_like/Const*
T0
Q
$model/sampled_softmax_loss/truediv/yConst*
dtype0*
valueB
 *  �?
~
"model/sampled_softmax_loss/truedivDiv$model/sampled_softmax_loss/ones_like$model/sampled_softmax_loss/truediv/y*
T0
]
%model/sampled_softmax_loss/zeros_like	ZerosLike model/sampled_softmax_loss/sub_1*
T0
X
.model/sampled_softmax_loss/concat_5/concat_dimConst*
dtype0*
value	B :
�
#model/sampled_softmax_loss/concat_5Concat.model/sampled_softmax_loss/concat_5/concat_dim"model/sampled_softmax_loss/truediv%model/sampled_softmax_loss/zeros_like*
T0*
N
�
#model/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits#model/sampled_softmax_loss/concat_4#model/sampled_softmax_loss/concat_5*
T0
@

model/RankRank#model/SoftmaxCrossEntropyWithLogits*
T0
;
model/range/startConst*
dtype0*
value	B : 
;
model/range/deltaConst*
dtype0*
value	B :
F
model/rangeRangemodel/range/start
model/Rankmodel/range/delta
\
	model/SumSum#model/SoftmaxCrossEntropyWithLogitsmodel/range*
T0*
	keep_dims( 
<
model/truediv/yConst*
dtype0*
valueB
 *  �B
9
model/truedivDiv	model/Summodel/truediv/y*
T0
6
model/gradients/ShapeShapemodel/truediv*
T0
B
model/gradients/ConstConst*
dtype0*
valueB
 *  �?
S
model/gradients/FillFillmodel/gradients/Shapemodel/gradients/Const*
T0
A
model/gradients/f_countConst*
dtype0*
value	B : 
�
model/gradients/f_count_1Entermodel/gradients/f_count*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
j
model/gradients/MergeMergemodel/gradients/f_count_1model/gradients/NextIteration*
T0*
N
Z
model/gradients/SwitchSwitchmodel/gradients/Mergemodel/RNN/while/LoopCond*
T0
Z
model/gradients/Add/yConst^model/RNN/while/Identity*
dtype0*
value	B :
T
model/gradients/AddAddmodel/gradients/Switch:1model/gradients/Add/y*
T0
�
model/gradients/NextIterationNextIterationmodel/gradients/AddC^model/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPush?^model/gradients/model/RNN/while/Select_1_grad/Select/StackPushC^model/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPushP^model/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPushf^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPushh^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPush_1T^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPushV^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPushd^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPushf^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPush_1R^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPushT^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPushl^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPushn^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPush_1Z^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPush\^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPushl^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPushn^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPush_1j^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPushl^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPush_1X^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPushl^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPushn^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPush_1Z^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPush\^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPushl^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPushn^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPush_1]^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPushj^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPushl^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPush_1g^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPushe^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPushk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPush*
T0
B
model/gradients/f_count_2Exitmodel/gradients/Switch*
T0
A
model/gradients/b_countConst*
dtype0*
value	B :
�
model/gradients/b_count_1Entermodel/gradients/f_count_2*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
n
model/gradients/Merge_1Mergemodel/gradients/b_count_1model/gradients/NextIteration_1*
T0*
N
�
"model/gradients/GreaterEqual/EnterEntermodel/gradients/b_count*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
r
model/gradients/GreaterEqualGreaterEqualmodel/gradients/Merge_1"model/gradients/GreaterEqual/Enter*
T0
C
model/gradients/b_count_2LoopCondmodel/gradients/GreaterEqual
_
model/gradients/Switch_1Switchmodel/gradients/Merge_1model/gradients/b_count_2*
T0
c
model/gradients/SubSubmodel/gradients/Switch_1:1"model/gradients/GreaterEqual/Enter*
T0
�
model/gradients/NextIteration_1NextIterationmodel/gradients/Sub@^model/gradients/model/RNN/while/Select_1_grad/zeros_like/b_sync*
T0
K
model/gradients/zerosConst*
dtype0*
valueB	d�*    
M
model/gradients/zeros_1Const*
dtype0*
valueB	d�*    
E
(model/gradients/model/truediv_grad/ShapeShape	model/Sum*
T0
M
*model/gradients/model/truediv_grad/Shape_1Shapemodel/truediv/y*
T0
�
8model/gradients/model/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs(model/gradients/model/truediv_grad/Shape*model/gradients/model/truediv_grad/Shape_1
a
*model/gradients/model/truediv_grad/truedivDivmodel/gradients/Fillmodel/truediv/y*
T0
�
&model/gradients/model/truediv_grad/SumSum*model/gradients/model/truediv_grad/truediv8model/gradients/model/truediv_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
*model/gradients/model/truediv_grad/ReshapeReshape&model/gradients/model/truediv_grad/Sum(model/gradients/model/truediv_grad/Shape*
T0
A
&model/gradients/model/truediv_grad/NegNeg	model/Sum*
T0
M
)model/gradients/model/truediv_grad/SquareSquaremodel/truediv/y*
T0
�
,model/gradients/model/truediv_grad/truediv_1Div&model/gradients/model/truediv_grad/Neg)model/gradients/model/truediv_grad/Square*
T0
z
&model/gradients/model/truediv_grad/mulMulmodel/gradients/Fill,model/gradients/model/truediv_grad/truediv_1*
T0
�
(model/gradients/model/truediv_grad/Sum_1Sum&model/gradients/model/truediv_grad/mul:model/gradients/model/truediv_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
,model/gradients/model/truediv_grad/Reshape_1Reshape(model/gradients/model/truediv_grad/Sum_1*model/gradients/model/truediv_grad/Shape_1*
T0
�
2model/gradients/model/RNN/while/Exit_2_grad/b_exitEntermodel/gradients/zeros*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
2model/gradients/model/RNN/while/Exit_3_grad/b_exitEntermodel/gradients/zeros_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
[
$model/gradients/model/Sum_grad/ShapeShape#model/SoftmaxCrossEntropyWithLogits*
T0
Z
#model/gradients/model/Sum_grad/SizeSize$model/gradients/model/Sum_grad/Shape*
T0
d
"model/gradients/model/Sum_grad/addAddmodel/range#model/gradients/model/Sum_grad/Size*
T0
{
"model/gradients/model/Sum_grad/modMod"model/gradients/model/Sum_grad/add#model/gradients/model/Sum_grad/Size*
T0
\
&model/gradients/model/Sum_grad/Shape_1Shape"model/gradients/model/Sum_grad/mod*
T0
T
*model/gradients/model/Sum_grad/range/startConst*
dtype0*
value	B : 
T
*model/gradients/model/Sum_grad/range/deltaConst*
dtype0*
value	B :
�
$model/gradients/model/Sum_grad/rangeRange*model/gradients/model/Sum_grad/range/start#model/gradients/model/Sum_grad/Size*model/gradients/model/Sum_grad/range/delta
S
)model/gradients/model/Sum_grad/Fill/valueConst*
dtype0*
value	B :
�
#model/gradients/model/Sum_grad/FillFill&model/gradients/model/Sum_grad/Shape_1)model/gradients/model/Sum_grad/Fill/value*
T0
�
,model/gradients/model/Sum_grad/DynamicStitchDynamicStitch$model/gradients/model/Sum_grad/range"model/gradients/model/Sum_grad/mod$model/gradients/model/Sum_grad/Shape#model/gradients/model/Sum_grad/Fill*
T0*
N
R
(model/gradients/model/Sum_grad/Maximum/yConst*
dtype0*
value	B :
�
&model/gradients/model/Sum_grad/MaximumMaximum,model/gradients/model/Sum_grad/DynamicStitch(model/gradients/model/Sum_grad/Maximum/y*
T0
�
'model/gradients/model/Sum_grad/floordivDiv$model/gradients/model/Sum_grad/Shape&model/gradients/model/Sum_grad/Maximum*
T0
�
&model/gradients/model/Sum_grad/ReshapeReshape*model/gradients/model/truediv_grad/Reshape,model/gradients/model/Sum_grad/DynamicStitch*
T0
�
#model/gradients/model/Sum_grad/TileTile&model/gradients/model/Sum_grad/Reshape'model/gradients/model/Sum_grad/floordiv*
T0
�
6model/gradients/model/RNN/while/Switch_2_grad/b_switchMerge2model/gradients/model/RNN/while/Exit_2_grad/b_exit=model/gradients/model/RNN/while/Switch_2_grad_1/NextIteration*
T0*
N
�
6model/gradients/model/RNN/while/Switch_3_grad/b_switchMerge2model/gradients/model/RNN/while/Exit_3_grad/b_exit=model/gradients/model/RNN/while/Switch_3_grad_1/NextIteration*
T0*
N
�
3model/gradients/model/RNN/while/Merge_2_grad/SwitchSwitch6model/gradients/model/RNN/while/Switch_2_grad/b_switchmodel/gradients/b_count_2*
T0*I
_class?
=;loc:@model/gradients/model/RNN/while/Switch_2_grad/b_switch
�
3model/gradients/model/RNN/while/Merge_3_grad/SwitchSwitch6model/gradients/model/RNN/while/Switch_3_grad/b_switchmodel/gradients/b_count_2*
T0*I
_class?
=;loc:@model/gradients/model/RNN/while/Switch_3_grad/b_switch
W
model/gradients/zeros_like	ZerosLike%model/SoftmaxCrossEntropyWithLogits:1*
T0
z
Gmodel/gradients/model/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
���������
�
Cmodel/gradients/model/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims#model/gradients/model/Sum_grad/TileGmodel/gradients/model/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0
�
<model/gradients/model/SoftmaxCrossEntropyWithLogits_grad/mulMulCmodel/gradients/model/SoftmaxCrossEntropyWithLogits_grad/ExpandDims%model/SoftmaxCrossEntropyWithLogits:1*
T0
�
>model/gradients/model/RNN/while/Select_1_grad/zeros_like/f_accStack*
	elem_type0*

stack_name *-
_class#
!loc:@model/RNN/while/Identity_2
�
Amodel/gradients/model/RNN/while/Select_1_grad/zeros_like/RefEnterRefEnter>model/gradients/model/RNN/while/Select_1_grad/zeros_like/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*-
_class#
!loc:@model/RNN/while/Identity_2
�
Bmodel/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPush	StackPushAmodel/gradients/model/RNN/while/Select_1_grad/zeros_like/RefEntermodel/RNN/while/Identity_2^model/gradients/Add*
T0*
swap_memory( *-
_class#
!loc:@model/RNN/while/Identity_2
�
Jmodel/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPop/RefEnterRefEnter>model/gradients/model/RNN/while/Select_1_grad/zeros_like/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*-
_class#
!loc:@model/RNN/while/Identity_2
�
Amodel/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPopStackPopJmodel/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*-
_class#
!loc:@model/RNN/while/Identity_2
�
?model/gradients/model/RNN/while/Select_1_grad/zeros_like/b_syncControlTriggerB^model/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPop>^model/gradients/model/RNN/while/Select_1_grad/Select/StackPopB^model/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPopO^model/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPope^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopg^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop_1S^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPopU^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPopc^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPope^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop_1Q^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPopS^model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPopk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPopm^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop_1Y^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPop[^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPopk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPopm^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop_1i^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPopk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop_1W^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPopk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPopm^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop_1Y^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPop[^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPopk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPopm^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop_1\^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPopi^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPopk^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop_1f^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPopd^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPopj^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPop
�
8model/gradients/model/RNN/while/Select_1_grad/zeros_like	ZerosLikeAmodel/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPop*
T0
�
:model/gradients/model/RNN/while/Select_1_grad/Select/f_accStack*
	elem_type0
*

stack_name */
_class%
#!loc:@model/RNN/while/GreaterEqual
�
=model/gradients/model/RNN/while/Select_1_grad/Select/RefEnterRefEnter:model/gradients/model/RNN/while/Select_1_grad/Select/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*/
_class%
#!loc:@model/RNN/while/GreaterEqual
�
>model/gradients/model/RNN/while/Select_1_grad/Select/StackPush	StackPush=model/gradients/model/RNN/while/Select_1_grad/Select/RefEntermodel/RNN/while/GreaterEqual^model/gradients/Add*
T0
*
swap_memory( */
_class%
#!loc:@model/RNN/while/GreaterEqual
�
Fmodel/gradients/model/RNN/while/Select_1_grad/Select/StackPop/RefEnterRefEnter:model/gradients/model/RNN/while/Select_1_grad/Select/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*/
_class%
#!loc:@model/RNN/while/GreaterEqual
�
=model/gradients/model/RNN/while/Select_1_grad/Select/StackPopStackPopFmodel/gradients/model/RNN/while/Select_1_grad/Select/StackPop/RefEnter^model/gradients/Sub*
	elem_type0
*/
_class%
#!loc:@model/RNN/while/GreaterEqual
�
4model/gradients/model/RNN/while/Select_1_grad/SelectSelect=model/gradients/model/RNN/while/Select_1_grad/Select/StackPop5model/gradients/model/RNN/while/Merge_2_grad/Switch:18model/gradients/model/RNN/while/Select_1_grad/zeros_like*
T0
�
6model/gradients/model/RNN/while/Select_1_grad/Select_1Select=model/gradients/model/RNN/while/Select_1_grad/Select/StackPop8model/gradients/model/RNN/while/Select_1_grad/zeros_like5model/gradients/model/RNN/while/Merge_2_grad/Switch:1*
T0
�
>model/gradients/model/RNN/while/Select_2_grad/zeros_like/f_accStack*
	elem_type0*

stack_name *-
_class#
!loc:@model/RNN/while/Identity_3
�
Amodel/gradients/model/RNN/while/Select_2_grad/zeros_like/RefEnterRefEnter>model/gradients/model/RNN/while/Select_2_grad/zeros_like/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*-
_class#
!loc:@model/RNN/while/Identity_3
�
Bmodel/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPush	StackPushAmodel/gradients/model/RNN/while/Select_2_grad/zeros_like/RefEntermodel/RNN/while/Identity_3^model/gradients/Add*
T0*
swap_memory( *-
_class#
!loc:@model/RNN/while/Identity_3
�
Jmodel/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPop/RefEnterRefEnter>model/gradients/model/RNN/while/Select_2_grad/zeros_like/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*-
_class#
!loc:@model/RNN/while/Identity_3
�
Amodel/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPopStackPopJmodel/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*-
_class#
!loc:@model/RNN/while/Identity_3
�
8model/gradients/model/RNN/while/Select_2_grad/zeros_like	ZerosLikeAmodel/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPop*
T0
�
4model/gradients/model/RNN/while/Select_2_grad/SelectSelect=model/gradients/model/RNN/while/Select_1_grad/Select/StackPop5model/gradients/model/RNN/while/Merge_3_grad/Switch:18model/gradients/model/RNN/while/Select_2_grad/zeros_like*
T0
�
6model/gradients/model/RNN/while/Select_2_grad/Select_1Select=model/gradients/model/RNN/while/Select_1_grad/Select/StackPop8model/gradients/model/RNN/while/Select_2_grad/zeros_like5model/gradients/model/RNN/while/Merge_3_grad/Switch:1*
T0
�
?model/gradients/model/sampled_softmax_loss/concat_4_grad/ShapeNShapeNmodel/sampled_softmax_loss/sub model/sampled_softmax_loss/sub_1*
T0*
N
�
Emodel/gradients/model/sampled_softmax_loss/concat_4_grad/ConcatOffsetConcatOffset.model/sampled_softmax_loss/concat_4/concat_dim?model/gradients/model/sampled_softmax_loss/concat_4_grad/ShapeNAmodel/gradients/model/sampled_softmax_loss/concat_4_grad/ShapeN:1*
N
�
>model/gradients/model/sampled_softmax_loss/concat_4_grad/SliceSlice<model/gradients/model/SoftmaxCrossEntropyWithLogits_grad/mulEmodel/gradients/model/sampled_softmax_loss/concat_4_grad/ConcatOffset?model/gradients/model/sampled_softmax_loss/concat_4_grad/ShapeN*
Index0*
T0
�
@model/gradients/model/sampled_softmax_loss/concat_4_grad/Slice_1Slice<model/gradients/model/SoftmaxCrossEntropyWithLogits_grad/mulGmodel/gradients/model/sampled_softmax_loss/concat_4_grad/ConcatOffset:1Amodel/gradients/model/sampled_softmax_loss/concat_4_grad/ShapeN:1*
Index0*
T0
o
;model/gradients/model/sampled_softmax_loss/sub_1_grad/ShapeShape model/sampled_softmax_loss/add_2*
T0
q
=model/gradients/model/sampled_softmax_loss/sub_1_grad/Shape_1Shape model/sampled_softmax_loss/Log_1*
T0
�
Kmodel/gradients/model/sampled_softmax_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs;model/gradients/model/sampled_softmax_loss/sub_1_grad/Shape=model/gradients/model/sampled_softmax_loss/sub_1_grad/Shape_1
�
9model/gradients/model/sampled_softmax_loss/sub_1_grad/SumSum@model/gradients/model/sampled_softmax_loss/concat_4_grad/Slice_1Kmodel/gradients/model/sampled_softmax_loss/sub_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
=model/gradients/model/sampled_softmax_loss/sub_1_grad/ReshapeReshape9model/gradients/model/sampled_softmax_loss/sub_1_grad/Sum;model/gradients/model/sampled_softmax_loss/sub_1_grad/Shape*
T0
�
;model/gradients/model/sampled_softmax_loss/sub_1_grad/Sum_1Sum@model/gradients/model/sampled_softmax_loss/concat_4_grad/Slice_1Mmodel/gradients/model/sampled_softmax_loss/sub_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
9model/gradients/model/sampled_softmax_loss/sub_1_grad/NegNeg;model/gradients/model/sampled_softmax_loss/sub_1_grad/Sum_1*
T0
�
?model/gradients/model/sampled_softmax_loss/sub_1_grad/Reshape_1Reshape9model/gradients/model/sampled_softmax_loss/sub_1_grad/Neg=model/gradients/model/sampled_softmax_loss/sub_1_grad/Shape_1*
T0
o
;model/gradients/model/sampled_softmax_loss/add_2_grad/ShapeShape model/sampled_softmax_loss/add_1*
T0
y
=model/gradients/model/sampled_softmax_loss/add_2_grad/Shape_1Shape(model/sampled_softmax_loss/SparseToDense*
T0
�
Kmodel/gradients/model/sampled_softmax_loss/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs;model/gradients/model/sampled_softmax_loss/add_2_grad/Shape=model/gradients/model/sampled_softmax_loss/add_2_grad/Shape_1
�
9model/gradients/model/sampled_softmax_loss/add_2_grad/SumSum=model/gradients/model/sampled_softmax_loss/sub_1_grad/ReshapeKmodel/gradients/model/sampled_softmax_loss/add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
=model/gradients/model/sampled_softmax_loss/add_2_grad/ReshapeReshape9model/gradients/model/sampled_softmax_loss/add_2_grad/Sum;model/gradients/model/sampled_softmax_loss/add_2_grad/Shape*
T0
�
;model/gradients/model/sampled_softmax_loss/add_2_grad/Sum_1Sum=model/gradients/model/sampled_softmax_loss/sub_1_grad/ReshapeMmodel/gradients/model/sampled_softmax_loss/add_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
?model/gradients/model/sampled_softmax_loss/add_2_grad/Reshape_1Reshape;model/gradients/model/sampled_softmax_loss/add_2_grad/Sum_1=model/gradients/model/sampled_softmax_loss/add_2_grad/Shape_1*
T0
k
9model/gradients/model/sampled_softmax_loss/sub_grad/ShapeShapemodel/sampled_softmax_loss/add*
T0
m
;model/gradients/model/sampled_softmax_loss/sub_grad/Shape_1Shapemodel/sampled_softmax_loss/Log*
T0
�
Imodel/gradients/model/sampled_softmax_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9model/gradients/model/sampled_softmax_loss/sub_grad/Shape;model/gradients/model/sampled_softmax_loss/sub_grad/Shape_1
�
7model/gradients/model/sampled_softmax_loss/sub_grad/SumSum>model/gradients/model/sampled_softmax_loss/concat_4_grad/SliceImodel/gradients/model/sampled_softmax_loss/sub_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
;model/gradients/model/sampled_softmax_loss/sub_grad/ReshapeReshape7model/gradients/model/sampled_softmax_loss/sub_grad/Sum9model/gradients/model/sampled_softmax_loss/sub_grad/Shape*
T0
�
9model/gradients/model/sampled_softmax_loss/sub_grad/Sum_1Sum>model/gradients/model/sampled_softmax_loss/concat_4_grad/SliceKmodel/gradients/model/sampled_softmax_loss/sub_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
7model/gradients/model/sampled_softmax_loss/sub_grad/NegNeg9model/gradients/model/sampled_softmax_loss/sub_grad/Sum_1*
T0
�
=model/gradients/model/sampled_softmax_loss/sub_grad/Reshape_1Reshape7model/gradients/model/sampled_softmax_loss/sub_grad/Neg;model/gradients/model/sampled_softmax_loss/sub_grad/Shape_1*
T0
r
;model/gradients/model/sampled_softmax_loss/add_1_grad/ShapeShape#model/sampled_softmax_loss/MatMul_1*
T0
s
=model/gradients/model/sampled_softmax_loss/add_1_grad/Shape_1Shape"model/sampled_softmax_loss/Slice_7*
T0
�
Kmodel/gradients/model/sampled_softmax_loss/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs;model/gradients/model/sampled_softmax_loss/add_1_grad/Shape=model/gradients/model/sampled_softmax_loss/add_1_grad/Shape_1
�
9model/gradients/model/sampled_softmax_loss/add_1_grad/SumSum=model/gradients/model/sampled_softmax_loss/add_2_grad/ReshapeKmodel/gradients/model/sampled_softmax_loss/add_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
=model/gradients/model/sampled_softmax_loss/add_1_grad/ReshapeReshape9model/gradients/model/sampled_softmax_loss/add_1_grad/Sum;model/gradients/model/sampled_softmax_loss/add_1_grad/Shape*
T0
�
;model/gradients/model/sampled_softmax_loss/add_1_grad/Sum_1Sum=model/gradients/model/sampled_softmax_loss/add_2_grad/ReshapeMmodel/gradients/model/sampled_softmax_loss/add_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
?model/gradients/model/sampled_softmax_loss/add_1_grad/Reshape_1Reshape;model/gradients/model/sampled_softmax_loss/add_1_grad/Sum_1=model/gradients/model/sampled_softmax_loss/add_1_grad/Shape_1*
T0
q
9model/gradients/model/sampled_softmax_loss/add_grad/ShapeShape$model/sampled_softmax_loss/Reshape_4*
T0
s
;model/gradients/model/sampled_softmax_loss/add_grad/Shape_1Shape$model/sampled_softmax_loss/Reshape_5*
T0
�
Imodel/gradients/model/sampled_softmax_loss/add_grad/BroadcastGradientArgsBroadcastGradientArgs9model/gradients/model/sampled_softmax_loss/add_grad/Shape;model/gradients/model/sampled_softmax_loss/add_grad/Shape_1
�
7model/gradients/model/sampled_softmax_loss/add_grad/SumSum;model/gradients/model/sampled_softmax_loss/sub_grad/ReshapeImodel/gradients/model/sampled_softmax_loss/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
;model/gradients/model/sampled_softmax_loss/add_grad/ReshapeReshape7model/gradients/model/sampled_softmax_loss/add_grad/Sum9model/gradients/model/sampled_softmax_loss/add_grad/Shape*
T0
�
9model/gradients/model/sampled_softmax_loss/add_grad/Sum_1Sum;model/gradients/model/sampled_softmax_loss/sub_grad/ReshapeKmodel/gradients/model/sampled_softmax_loss/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
=model/gradients/model/sampled_softmax_loss/add_grad/Reshape_1Reshape9model/gradients/model/sampled_softmax_loss/add_grad/Sum_1;model/gradients/model/sampled_softmax_loss/add_grad/Shape_1*
T0
�
?model/gradients/model/sampled_softmax_loss/MatMul_1_grad/MatMulMatMul=model/gradients/model/sampled_softmax_loss/add_1_grad/Reshape"model/sampled_softmax_loss/Slice_6*
transpose_b( *
transpose_a( *
T0
�
Amodel/gradients/model/sampled_softmax_loss/MatMul_1_grad/MatMul_1MatMul=model/gradients/model/sampled_softmax_loss/add_1_grad/Reshapemodel/Reshape*
transpose_b( *
transpose_a(*
T0
|
<model/gradients/model/sampled_softmax_loss/Slice_7_grad/RankRank-model/sampled_softmax_loss/embedding_lookup_1*
T0
s
=model/gradients/model/sampled_softmax_loss/Slice_7_grad/ShapeShape"model/sampled_softmax_loss/Slice_7*
T0
h
>model/gradients/model/sampled_softmax_loss/Slice_7_grad/pack/1Const*
dtype0*
value	B :
�
<model/gradients/model/sampled_softmax_loss/Slice_7_grad/packPack<model/gradients/model/sampled_softmax_loss/Slice_7_grad/Rank>model/gradients/model/sampled_softmax_loss/Slice_7_grad/pack/1*
T0*
N
�
?model/gradients/model/sampled_softmax_loss/Slice_7_grad/ReshapeReshape"model/sampled_softmax_loss/Shape_5<model/gradients/model/sampled_softmax_loss/Slice_7_grad/pack*
T0
�
?model/gradients/model/sampled_softmax_loss/Slice_7_grad/Shape_1Shape-model/sampled_softmax_loss/embedding_lookup_1*
T0
�
;model/gradients/model/sampled_softmax_loss/Slice_7_grad/subSub?model/gradients/model/sampled_softmax_loss/Slice_7_grad/Shape_1=model/gradients/model/sampled_softmax_loss/Slice_7_grad/Shape*
T0
�
=model/gradients/model/sampled_softmax_loss/Slice_7_grad/sub_1Sub;model/gradients/model/sampled_softmax_loss/Slice_7_grad/sub"model/sampled_softmax_loss/Shape_5*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Slice_7_grad/Reshape_1Reshape=model/gradients/model/sampled_softmax_loss/Slice_7_grad/sub_1<model/gradients/model/sampled_softmax_loss/Slice_7_grad/pack*
T0
s
Imodel/gradients/model/sampled_softmax_loss/Slice_7_grad/concat/concat_dimConst*
dtype0*
value	B :
�
>model/gradients/model/sampled_softmax_loss/Slice_7_grad/concatConcatImodel/gradients/model/sampled_softmax_loss/Slice_7_grad/concat/concat_dim?model/gradients/model/sampled_softmax_loss/Slice_7_grad/ReshapeAmodel/gradients/model/sampled_softmax_loss/Slice_7_grad/Reshape_1*
T0*
N
�
;model/gradients/model/sampled_softmax_loss/Slice_7_grad/PadPad?model/gradients/model/sampled_softmax_loss/add_1_grad/Reshape_1>model/gradients/model/sampled_softmax_loss/Slice_7_grad/concat*
T0
w
?model/gradients/model/sampled_softmax_loss/Reshape_4_grad/ShapeShape$model/sampled_softmax_loss/Reshape_3*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Reshape_4_grad/ReshapeReshape;model/gradients/model/sampled_softmax_loss/add_grad/Reshape?model/gradients/model/sampled_softmax_loss/Reshape_4_grad/Shape*
T0
u
?model/gradients/model/sampled_softmax_loss/Reshape_5_grad/ShapeShape"model/sampled_softmax_loss/Slice_2*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Reshape_5_grad/ReshapeReshape=model/gradients/model/sampled_softmax_loss/add_grad/Reshape_1?model/gradients/model/sampled_softmax_loss/Reshape_5_grad/Shape*
T0
z
<model/gradients/model/sampled_softmax_loss/Slice_6_grad/RankRank+model/sampled_softmax_loss/embedding_lookup*
T0
s
=model/gradients/model/sampled_softmax_loss/Slice_6_grad/ShapeShape"model/sampled_softmax_loss/Slice_6*
T0
h
>model/gradients/model/sampled_softmax_loss/Slice_6_grad/pack/1Const*
dtype0*
value	B :
�
<model/gradients/model/sampled_softmax_loss/Slice_6_grad/packPack<model/gradients/model/sampled_softmax_loss/Slice_6_grad/Rank>model/gradients/model/sampled_softmax_loss/Slice_6_grad/pack/1*
T0*
N
�
?model/gradients/model/sampled_softmax_loss/Slice_6_grad/ReshapeReshape!model/sampled_softmax_loss/pack_2<model/gradients/model/sampled_softmax_loss/Slice_6_grad/pack*
T0
~
?model/gradients/model/sampled_softmax_loss/Slice_6_grad/Shape_1Shape+model/sampled_softmax_loss/embedding_lookup*
T0
�
;model/gradients/model/sampled_softmax_loss/Slice_6_grad/subSub?model/gradients/model/sampled_softmax_loss/Slice_6_grad/Shape_1=model/gradients/model/sampled_softmax_loss/Slice_6_grad/Shape*
T0
�
=model/gradients/model/sampled_softmax_loss/Slice_6_grad/sub_1Sub;model/gradients/model/sampled_softmax_loss/Slice_6_grad/sub!model/sampled_softmax_loss/pack_2*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Slice_6_grad/Reshape_1Reshape=model/gradients/model/sampled_softmax_loss/Slice_6_grad/sub_1<model/gradients/model/sampled_softmax_loss/Slice_6_grad/pack*
T0
s
Imodel/gradients/model/sampled_softmax_loss/Slice_6_grad/concat/concat_dimConst*
dtype0*
value	B :
�
>model/gradients/model/sampled_softmax_loss/Slice_6_grad/concatConcatImodel/gradients/model/sampled_softmax_loss/Slice_6_grad/concat/concat_dim?model/gradients/model/sampled_softmax_loss/Slice_6_grad/ReshapeAmodel/gradients/model/sampled_softmax_loss/Slice_6_grad/Reshape_1*
T0*
N
�
;model/gradients/model/sampled_softmax_loss/Slice_6_grad/PadPadAmodel/gradients/model/sampled_softmax_loss/MatMul_1_grad/MatMul_1>model/gradients/model/sampled_softmax_loss/Slice_6_grad/concat*
T0
t
?model/gradients/model/sampled_softmax_loss/Reshape_3_grad/ShapeShape!model/sampled_softmax_loss/MatMul*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Reshape_3_grad/ReshapeReshapeAmodel/gradients/model/sampled_softmax_loss/Reshape_4_grad/Reshape?model/gradients/model/sampled_softmax_loss/Reshape_3_grad/Shape*
T0
|
<model/gradients/model/sampled_softmax_loss/Slice_2_grad/RankRank-model/sampled_softmax_loss/embedding_lookup_1*
T0
s
=model/gradients/model/sampled_softmax_loss/Slice_2_grad/ShapeShape"model/sampled_softmax_loss/Slice_2*
T0
h
>model/gradients/model/sampled_softmax_loss/Slice_2_grad/pack/1Const*
dtype0*
value	B :
�
<model/gradients/model/sampled_softmax_loss/Slice_2_grad/packPack<model/gradients/model/sampled_softmax_loss/Slice_2_grad/Rank>model/gradients/model/sampled_softmax_loss/Slice_2_grad/pack/1*
T0*
N
�
?model/gradients/model/sampled_softmax_loss/Slice_2_grad/ReshapeReshape(model/sampled_softmax_loss/Slice_2/begin<model/gradients/model/sampled_softmax_loss/Slice_2_grad/pack*
T0
�
?model/gradients/model/sampled_softmax_loss/Slice_2_grad/Shape_1Shape-model/sampled_softmax_loss/embedding_lookup_1*
T0
�
;model/gradients/model/sampled_softmax_loss/Slice_2_grad/subSub?model/gradients/model/sampled_softmax_loss/Slice_2_grad/Shape_1=model/gradients/model/sampled_softmax_loss/Slice_2_grad/Shape*
T0
�
=model/gradients/model/sampled_softmax_loss/Slice_2_grad/sub_1Sub;model/gradients/model/sampled_softmax_loss/Slice_2_grad/sub(model/sampled_softmax_loss/Slice_2/begin*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Slice_2_grad/Reshape_1Reshape=model/gradients/model/sampled_softmax_loss/Slice_2_grad/sub_1<model/gradients/model/sampled_softmax_loss/Slice_2_grad/pack*
T0
s
Imodel/gradients/model/sampled_softmax_loss/Slice_2_grad/concat/concat_dimConst*
dtype0*
value	B :
�
>model/gradients/model/sampled_softmax_loss/Slice_2_grad/concatConcatImodel/gradients/model/sampled_softmax_loss/Slice_2_grad/concat/concat_dim?model/gradients/model/sampled_softmax_loss/Slice_2_grad/ReshapeAmodel/gradients/model/sampled_softmax_loss/Slice_2_grad/Reshape_1*
T0*
N
�
;model/gradients/model/sampled_softmax_loss/Slice_2_grad/PadPadAmodel/gradients/model/sampled_softmax_loss/Reshape_5_grad/Reshape>model/gradients/model/sampled_softmax_loss/Slice_2_grad/concat*
T0
�
=model/gradients/model/sampled_softmax_loss/MatMul_grad/MatMulMatMulAmodel/gradients/model/sampled_softmax_loss/Reshape_3_grad/Reshapemodel/sampled_softmax_loss/ones*
transpose_b(*
transpose_a( *
T0
�
?model/gradients/model/sampled_softmax_loss/MatMul_grad/MatMul_1MatMul$model/sampled_softmax_loss/Reshape_2Amodel/gradients/model/sampled_softmax_loss/Reshape_3_grad/Reshape*
transpose_b( *
transpose_a(*
T0
�
model/gradients/AddNAddN;model/gradients/model/sampled_softmax_loss/Slice_7_grad/Pad;model/gradients/model/sampled_softmax_loss/Slice_2_grad/Pad*
T0*
N
w
Hmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/ConstConst*
dtype0*
valueB:�
�
Pmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape/shapeConst*
dtype0*
valueB:
���������
�
Jmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/ReshapeReshapemodel/gradients/AddNPmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape/shape*
T0
�
Rmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape_1/shapeConst*
dtype0*
valueB:
���������
�
Lmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape_1Reshape!model/sampled_softmax_loss/concatRmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape_1/shape*
T0	
�
9model/gradients/model/sampled_softmax_loss/ones_grad/RankRank?model/gradients/model/sampled_softmax_loss/MatMul_grad/MatMul_1*
T0
j
@model/gradients/model/sampled_softmax_loss/ones_grad/range/startConst*
dtype0*
value	B : 
j
@model/gradients/model/sampled_softmax_loss/ones_grad/range/deltaConst*
dtype0*
value	B :
�
:model/gradients/model/sampled_softmax_loss/ones_grad/rangeRange@model/gradients/model/sampled_softmax_loss/ones_grad/range/start9model/gradients/model/sampled_softmax_loss/ones_grad/Rank@model/gradients/model/sampled_softmax_loss/ones_grad/range/delta
�
8model/gradients/model/sampled_softmax_loss/ones_grad/SumSum?model/gradients/model/sampled_softmax_loss/MatMul_grad/MatMul_1:model/gradients/model/sampled_softmax_loss/ones_grad/range*
T0*
	keep_dims( 
q
?model/gradients/model/sampled_softmax_loss/Reshape_2_grad/ShapeShapemodel/sampled_softmax_loss/Mul*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Reshape_2_grad/ReshapeReshape=model/gradients/model/sampled_softmax_loss/MatMul_grad/MatMul?model/gradients/model/sampled_softmax_loss/Reshape_2_grad/Shape*
T0
r
9model/gradients/model/sampled_softmax_loss/Mul_grad/ShapeShape%model/sampled_softmax_loss/ExpandDims*
T0
s
;model/gradients/model/sampled_softmax_loss/Mul_grad/Shape_1Shape$model/sampled_softmax_loss/Reshape_1*
T0
�
Imodel/gradients/model/sampled_softmax_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs9model/gradients/model/sampled_softmax_loss/Mul_grad/Shape;model/gradients/model/sampled_softmax_loss/Mul_grad/Shape_1
�
7model/gradients/model/sampled_softmax_loss/Mul_grad/mulMulAmodel/gradients/model/sampled_softmax_loss/Reshape_2_grad/Reshape$model/sampled_softmax_loss/Reshape_1*
T0
�
7model/gradients/model/sampled_softmax_loss/Mul_grad/SumSum7model/gradients/model/sampled_softmax_loss/Mul_grad/mulImodel/gradients/model/sampled_softmax_loss/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
;model/gradients/model/sampled_softmax_loss/Mul_grad/ReshapeReshape7model/gradients/model/sampled_softmax_loss/Mul_grad/Sum9model/gradients/model/sampled_softmax_loss/Mul_grad/Shape*
T0
�
9model/gradients/model/sampled_softmax_loss/Mul_grad/mul_1Mul%model/sampled_softmax_loss/ExpandDimsAmodel/gradients/model/sampled_softmax_loss/Reshape_2_grad/Reshape*
T0
�
9model/gradients/model/sampled_softmax_loss/Mul_grad/Sum_1Sum9model/gradients/model/sampled_softmax_loss/Mul_grad/mul_1Kmodel/gradients/model/sampled_softmax_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
=model/gradients/model/sampled_softmax_loss/Mul_grad/Reshape_1Reshape9model/gradients/model/sampled_softmax_loss/Mul_grad/Sum_1;model/gradients/model/sampled_softmax_loss/Mul_grad/Shape_1*
T0
a
@model/gradients/model/sampled_softmax_loss/ExpandDims_grad/ShapeShapemodel/Reshape*
T0
�
Bmodel/gradients/model/sampled_softmax_loss/ExpandDims_grad/ReshapeReshape;model/gradients/model/sampled_softmax_loss/Mul_grad/Reshape@model/gradients/model/sampled_softmax_loss/ExpandDims_grad/Shape*
T0
u
?model/gradients/model/sampled_softmax_loss/Reshape_1_grad/ShapeShape"model/sampled_softmax_loss/Slice_1*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Reshape_1_grad/ReshapeReshape=model/gradients/model/sampled_softmax_loss/Mul_grad/Reshape_1?model/gradients/model/sampled_softmax_loss/Reshape_1_grad/Shape*
T0
�
model/gradients/AddN_1AddN?model/gradients/model/sampled_softmax_loss/MatMul_1_grad/MatMulBmodel/gradients/model/sampled_softmax_loss/ExpandDims_grad/Reshape*
T0*
N
O
(model/gradients/model/Reshape_grad/ShapeShapemodel/RNN/transpose*
T0
�
*model/gradients/model/Reshape_grad/ReshapeReshapemodel/gradients/AddN_1(model/gradients/model/Reshape_grad/Shape*
T0
i
:model/gradients/model/RNN/transpose_grad/InvertPermutationInvertPermutationmodel/RNN/transpose/perm
�
2model/gradients/model/RNN/transpose_grad/transpose	Transpose*model/gradients/model/Reshape_grad/Reshape:model/gradients/model/RNN/transpose_grad/InvertPermutation*
T0
�
@model/gradients/model/RNN/TensorArrayPack_grad/TensorArray/ConstConst*
dtype0*
valueB
 *    *(
_class
loc:@model/RNN/TensorArray
�
Nmodel/gradients/model/RNN/TensorArrayPack_grad/TensorArrayGrad/TensorArrayGradTensorArrayGradmodel/RNN/TensorArraymodel/RNN/while/Exit_1*
sourcemodel/gradients*(
_class
loc:@model/RNN/TensorArray
�
Lmodel/gradients/model/RNN/TensorArrayPack_grad/TensorArrayGrad/gradient_flowIdentitymodel/RNN/while/Exit_1O^model/gradients/model/RNN/TensorArrayPack_grad/TensorArrayGrad/TensorArrayGrad*
T0*(
_class
loc:@model/RNN/TensorArray
�
@model/gradients/model/RNN/TensorArrayPack_grad/TensorArrayUnpackTensorArrayUnpackNmodel/gradients/model/RNN/TensorArrayPack_grad/TensorArrayGrad/TensorArrayGrad2model/gradients/model/RNN/transpose_grad/transposeLmodel/gradients/model/RNN/TensorArrayPack_grad/TensorArrayGrad/gradient_flow*
T0*(
_class
loc:@model/RNN/TensorArray
�
Bmodel/gradients/model/RNN/TensorArrayPack_grad/TensorArray_1/ConstConst*
dtype0*
valueB
 *    *(
_class
loc:@model/RNN/TensorArray
�
2model/gradients/model/RNN/while/Exit_1_grad/b_exitEnter@model/gradients/model/RNN/TensorArrayPack_grad/TensorArrayUnpack*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
z
<model/gradients/model/sampled_softmax_loss/Slice_1_grad/RankRank+model/sampled_softmax_loss/embedding_lookup*
T0
s
=model/gradients/model/sampled_softmax_loss/Slice_1_grad/ShapeShape"model/sampled_softmax_loss/Slice_1*
T0
h
>model/gradients/model/sampled_softmax_loss/Slice_1_grad/pack/1Const*
dtype0*
value	B :
�
<model/gradients/model/sampled_softmax_loss/Slice_1_grad/packPack<model/gradients/model/sampled_softmax_loss/Slice_1_grad/Rank>model/gradients/model/sampled_softmax_loss/Slice_1_grad/pack/1*
T0*
N
�
?model/gradients/model/sampled_softmax_loss/Slice_1_grad/ReshapeReshape(model/sampled_softmax_loss/Slice_1/begin<model/gradients/model/sampled_softmax_loss/Slice_1_grad/pack*
T0
~
?model/gradients/model/sampled_softmax_loss/Slice_1_grad/Shape_1Shape+model/sampled_softmax_loss/embedding_lookup*
T0
�
;model/gradients/model/sampled_softmax_loss/Slice_1_grad/subSub?model/gradients/model/sampled_softmax_loss/Slice_1_grad/Shape_1=model/gradients/model/sampled_softmax_loss/Slice_1_grad/Shape*
T0
�
=model/gradients/model/sampled_softmax_loss/Slice_1_grad/sub_1Sub;model/gradients/model/sampled_softmax_loss/Slice_1_grad/sub(model/sampled_softmax_loss/Slice_1/begin*
T0
�
Amodel/gradients/model/sampled_softmax_loss/Slice_1_grad/Reshape_1Reshape=model/gradients/model/sampled_softmax_loss/Slice_1_grad/sub_1<model/gradients/model/sampled_softmax_loss/Slice_1_grad/pack*
T0
s
Imodel/gradients/model/sampled_softmax_loss/Slice_1_grad/concat/concat_dimConst*
dtype0*
value	B :
�
>model/gradients/model/sampled_softmax_loss/Slice_1_grad/concatConcatImodel/gradients/model/sampled_softmax_loss/Slice_1_grad/concat/concat_dim?model/gradients/model/sampled_softmax_loss/Slice_1_grad/ReshapeAmodel/gradients/model/sampled_softmax_loss/Slice_1_grad/Reshape_1*
T0*
N
�
;model/gradients/model/sampled_softmax_loss/Slice_1_grad/PadPadAmodel/gradients/model/sampled_softmax_loss/Reshape_1_grad/Reshape>model/gradients/model/sampled_softmax_loss/Slice_1_grad/concat*
T0
�
6model/gradients/model/RNN/while/Switch_1_grad/b_switchMerge2model/gradients/model/RNN/while/Exit_1_grad/b_exit=model/gradients/model/RNN/while/Switch_1_grad_1/NextIteration*
T0*
N
�
model/gradients/AddN_2AddN;model/gradients/model/sampled_softmax_loss/Slice_6_grad/Pad;model/gradients/model/sampled_softmax_loss/Slice_1_grad/Pad*
T0*
N
{
Fmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/ConstConst*
dtype0*
valueB"�  �   
�
Nmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Reshape/shapeConst*
dtype0*
valueB"�����   
�
Hmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/ReshapeReshapemodel/gradients/AddN_2Nmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Reshape/shape*
T0
�
Pmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Reshape_1/shapeConst*
dtype0*
valueB:
���������
�
Jmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Reshape_1Reshape!model/sampled_softmax_loss/concatPmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Reshape_1/shape*
T0	
�
3model/gradients/model/RNN/while/Merge_1_grad/SwitchSwitch6model/gradients/model/RNN/while/Switch_1_grad/b_switchmodel/gradients/b_count_2*
T0*I
_class?
=;loc:@model/gradients/model/RNN/while/Switch_1_grad/b_switch
f
8model/gradients/model/transpose_1_grad/InvertPermutationInvertPermutationmodel/transpose_1/sub_1
j
<model/gradients/model/transpose_1_grad/transpose/Slice/beginConst*
dtype0*
valueB: 
i
;model/gradients/model/transpose_1_grad/transpose/Slice/sizeConst*
dtype0*
valueB:
�
6model/gradients/model/transpose_1_grad/transpose/SliceSliceFmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Const<model/gradients/model/transpose_1_grad/transpose/Slice/begin;model/gradients/model/transpose_1_grad/transpose/Slice/size*
Index0*
T0
�
8model/gradients/model/transpose_1_grad/transpose/SqueezeSqueeze6model/gradients/model/transpose_1_grad/transpose/Slice*
T0*
squeeze_dims
 
�
2model/gradients/model/transpose_1_grad/transpose/xUnsortedSegmentSumHmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/ReshapeJmodel/gradients/model/sampled_softmax_loss/embedding_lookup_grad/Reshape_18model/gradients/model/transpose_1_grad/transpose/Squeeze*
T0*
Tindices0	
�
0model/gradients/model/transpose_1_grad/transpose	Transpose2model/gradients/model/transpose_1_grad/transpose/x8model/gradients/model/transpose_1_grad/InvertPermutation*
T0
�
Gmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArray/ConstConst^model/gradients/Sub*
dtype0*
valueB
 *    *(
_class
loc:@model/RNN/TensorArray
�
^model/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad/RefEnterRefEntermodel/RNN/TensorArray*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*(
_class
loc:@model/RNN/TensorArray
�
Umodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGradTensorArrayGrad^model/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad/RefEnter5model/gradients/model/RNN/while/Merge_1_grad/Switch:1*
sourcemodel/gradients*(
_class
loc:@model/RNN/TensorArray
�
Smodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/gradient_flowIdentity5model/gradients/model/RNN/while/Merge_1_grad/Switch:1V^model/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad*
T0*(
_class
loc:@model/RNN/TensorArray
�
Kmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/f_accStack*
	elem_type0*

stack_name *G
_class=
;loc:@model/RNN/TensorArrayloc:@model/RNN/while/Identity
�
Nmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/RefEnterRefEnterKmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*G
_class=
;loc:@model/RNN/TensorArrayloc:@model/RNN/while/Identity
�
Omodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPush	StackPushNmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/RefEntermodel/RNN/while/Identity^model/gradients/Add*
T0*
swap_memory( *G
_class=
;loc:@model/RNN/TensorArrayloc:@model/RNN/while/Identity
�
Wmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop/RefEnterRefEnterKmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*G
_class=
;loc:@model/RNN/TensorArrayloc:@model/RNN/while/Identity
�
Nmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPopStackPopWmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*G
_class=
;loc:@model/RNN/TensorArrayloc:@model/RNN/while/Identity
�
Emodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayReadTensorArrayReadUmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGradNmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPopSmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/gradient_flow*
dtype0*(
_class
loc:@model/RNN/TensorArray
�
<model/gradients/model/RNN/while/Select_grad/zeros_like/EnterEntermodel/RNN/zeros*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
6model/gradients/model/RNN/while/Select_grad/zeros_like	ZerosLike<model/gradients/model/RNN/while/Select_grad/zeros_like/Enter^model/gradients/Sub*
T0
�
2model/gradients/model/RNN/while/Select_grad/SelectSelect=model/gradients/model/RNN/while/Select_1_grad/Select/StackPopEmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead6model/gradients/model/RNN/while/Select_grad/zeros_like*
T0
�
4model/gradients/model/RNN/while/Select_grad/Select_1Select=model/gradients/model/RNN/while/Select_1_grad/Select/StackPop6model/gradients/model/RNN/while/Select_grad/zeros_likeEmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead*
T0
m
7model/gradients/model/RNN/while/Select/Enter_grad/b_accConst*
dtype0*
valueB	d�*    
�
9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_1Enter7model/gradients/model/RNN/while/Select/Enter_grad/b_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_2Merge9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_1?model/gradients/model/RNN/while/Select/Enter_grad/NextIteration*
T0*
N
�
8model/gradients/model/RNN/while/Select/Enter_grad/SwitchSwitch9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_2model/gradients/b_count_2*
T0
�
5model/gradients/model/RNN/while/Select/Enter_grad/AddAdd:model/gradients/model/RNN/while/Select/Enter_grad/Switch:12model/gradients/model/RNN/while/Select_grad/Select*
T0
�
?model/gradients/model/RNN/while/Select/Enter_grad/NextIterationNextIteration5model/gradients/model/RNN/while/Select/Enter_grad/Add*
T0
�
9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_3Exit8model/gradients/model/RNN/while/Select/Enter_grad/Switch*
T0
�
Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/ShapeShape.model/RNN/while/MultiRNNCell/Cell0/dropout/mul*
T0
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1Shape0model/RNN/while/MultiRNNCell/Cell0/dropout/Floor*
T0
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape
�
dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/RefEnterRefEnteramodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape
�
emodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPush	StackPushdmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/RefEnterKmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape^model/gradients/Add*
T0*
swap_memory( *^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape
�
mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnterRefEnteramodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape
�
dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopStackPopmmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape
�
cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *`
_classV
TRloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1
�
fmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/RefEnter_1RefEntercmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*`
_classV
TRloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPush_1	StackPushfmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/RefEnter_1Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *`
_classV
TRloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1
�
omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEntercmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*`
_classV
TRloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1
�
fmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop_1StackPopomodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*`
_classV
TRloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Shape_1
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsdmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopfmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop_1
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/f_accStack*
	elem_type0*

stack_name *C
_class9
75loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Floor
�
Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/RefEnterRefEnterOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*C
_class9
75loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Floor
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPush	StackPushRmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/RefEnter0model/RNN/while/MultiRNNCell/Cell0/dropout/Floor^model/gradients/Add*
T0*
swap_memory( *C
_class9
75loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Floor
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPop/RefEnterRefEnterOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*C
_class9
75loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Floor
�
Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPopStackPop[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*C
_class9
75loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Floor
�
Imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mulMul4model/gradients/model/RNN/while/Select_grad/Select_1Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul/StackPop*
T0
�
Imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/SumSumImodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/ReshapeReshapeImodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Sumdmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/f_accStack*
	elem_type0*

stack_name *A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/mul
�
Tmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/RefEnterRefEnterQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/mul
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPush	StackPushTmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/RefEnter.model/RNN/while/MultiRNNCell/Cell0/dropout/mul^model/gradients/Add*
T0*
swap_memory( *A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/mul
�
]model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPop/RefEnterRefEnterQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/mul
�
Tmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPopStackPop]model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/mul
�
Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1MulTmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1/StackPop4model/gradients/model/RNN/while/Select_grad/Select_1*
T0
�
Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Sum_1SumKmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/mul_1]model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Reshape_1ReshapeKmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Sum_1fmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/BroadcastGradientArgs/StackPop_1*
T0
�
=model/gradients/model/RNN/while/Switch_1_grad_1/NextIterationNextIteration5model/gradients/model/RNN/while/Merge_1_grad/Switch:1*
T0
u
)model/gradients/model/RNN/zeros_grad/RankRank9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_3*
T0
Z
0model/gradients/model/RNN/zeros_grad/range/startConst*
dtype0*
value	B : 
Z
0model/gradients/model/RNN/zeros_grad/range/deltaConst*
dtype0*
value	B :
�
*model/gradients/model/RNN/zeros_grad/rangeRange0model/gradients/model/RNN/zeros_grad/range/start)model/gradients/model/RNN/zeros_grad/Rank0model/gradients/model/RNN/zeros_grad/range/delta
�
(model/gradients/model/RNN/zeros_grad/SumSum9model/gradients/model/RNN/while/Select/Enter_grad/b_acc_3*model/gradients/model/RNN/zeros_grad/range*
T0*
	keep_dims( 
�
Imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/ShapeShape6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2*
T0
�
Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1Shape.model/RNN/while/MultiRNNCell/Cell0/dropout/Inv*
T0
�
_model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *\
_classR
PNloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape
�
bmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/RefEnterRefEnter_model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*\
_classR
PNloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape
�
cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPush	StackPushbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/RefEnterImodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape^model/gradients/Add*
T0*
swap_memory( *\
_classR
PNloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnterRefEnter_model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*\
_classR
PNloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape
�
bmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPopStackPopkmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*\
_classR
PNloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1
�
dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1RefEnteramodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1
�
emodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPush_1	StackPushdmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1
�
mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEnteramodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1
�
dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop_1StackPopmmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*^
_classT
RPloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Shape_1
�
Ymodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPopdmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop_1
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/f_accStack*
	elem_type0*

stack_name *A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Inv
�
Pmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/RefEnterRefEnterMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Inv
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPush	StackPushPmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/RefEnter.model/RNN/while/MultiRNNCell/Cell0/dropout/Inv^model/gradients/Add*
T0*
swap_memory( *A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Inv
�
Ymodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPop/RefEnterRefEnterMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Inv
�
Pmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPopStackPopYmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*A
_class7
53loc:@model/RNN/while/MultiRNNCell/Cell0/dropout/Inv
�
Gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mulMulMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/ReshapePmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul/StackPop*
T0
�
Gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/SumSumGmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mulYmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/ReshapeReshapeGmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Sumbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop*
T0
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/f_accStack*
	elem_type0*

stack_name *I
_class?
=;loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2
�
Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/RefEnterRefEnterOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*I
_class?
=;loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPush	StackPushRmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/RefEnter6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2^model/gradients/Add*
T0*
swap_memory( *I
_class?
=;loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPop/RefEnterRefEnterOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*I
_class?
=;loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2
�
Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPopStackPop[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*I
_class?
=;loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2
�
Imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1MulRmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1/StackPopMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_1_grad/Reshape*
T0
�
Imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Sum_1SumImodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/mul_1[model/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Reshape_1ReshapeImodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Sum_1dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/BroadcastGradientArgs/StackPop_1*
T0
�
model/gradients/AddN_3AddN6model/gradients/model/RNN/while/Select_2_grad/Select_1Kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/dropout/mul_grad/Reshape*
T0*
N
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/ShapeShape7model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1Shape:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2*
T0
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPush	StackPushjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/RefEnterQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape^model/gradients/Add*
T0*
swap_memory( *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape
�
smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPopStackPopsmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/RefEnter_1RefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1
�
mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPush_1	StackPushlmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/RefEnter_1Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1
�
umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop_1StackPopumodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Shape_1
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPoplmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop_1
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/f_accStack*
	elem_type0*

stack_name *M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2
�
Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/RefEnterRefEnterUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2
�
Ymodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPush	StackPushXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/RefEnter:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2^model/gradients/Add*
T0*
swap_memory( *M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPop/RefEnterRefEnterUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2
�
Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPopStackPopamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mulMulmodel/gradients/AddN_3Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPop*
T0
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/SumSumOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mulamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/ReshapeReshapeOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Sumjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop*
T0
�
Wmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/f_accStack*
	elem_type0*

stack_name *J
_class@
><loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1
�
Zmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/RefEnterRefEnterWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*J
_class@
><loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPush	StackPushZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/RefEnter7model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1^model/gradients/Add*
T0*
swap_memory( *J
_class@
><loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1
�
cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPop/RefEnterRefEnterWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*J
_class@
><loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1
�
Zmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPopStackPopcmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*J
_class@
><loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1MulZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPopmodel/gradients/AddN_3*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Sum_1SumQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Reshape_1ReshapeQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Sum_1lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/BroadcastGradientArgs/StackPop_1*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/SquareSquareZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul_1/StackPopT^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Reshape*
T0
�
Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/sub/xConstT^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Reshape*
dtype0*
valueB
 *  �?
�
Pmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/subSubRmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/sub/xSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/Square*
T0
�
Pmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/mulMulSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/ReshapePmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/sub*
T0
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/sub/xConstV^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Reshape_1*
dtype0*
valueB
 *  �?
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/subSubUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/sub/xXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPop*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/mulMulXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/mul/StackPopSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/sub*
T0
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/mul_1MulUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2_grad/Reshape_1Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/mul*
T0
�
model/gradients/AddN_4AddN6model/gradients/model/RNN/while/Select_1_grad/Select_1Pmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1_grad/mul*
T0*
N
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/ShapeShape4model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1Shape6model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1*
T0
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPush	StackPushjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/RefEnterQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape^model/gradients/Add*
T0*
swap_memory( *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape
�
smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPopStackPopsmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/RefEnter_1RefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1
�
mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPush_1	StackPushlmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/RefEnter_1Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1
�
umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop_1StackPopumodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Shape_1
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPoplmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop_1
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/SumSummodel/gradients/AddN_4amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/ReshapeReshapeOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Sumjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Sum_1Summodel/gradients/AddN_4cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Reshape_1ReshapeQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Sum_1lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/BroadcastGradientArgs/StackPop_1*
T0
}
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/ShapeShapemodel/RNN/while/Identity_2*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1Shape8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid*
T0
�
emodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape
�
hmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/RefEnterRefEnteremodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPush	StackPushhmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/RefEnterOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape^model/gradients/Add*
T0*
swap_memory( *b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape
�
qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnterRefEnteremodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape
�
hmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPopStackPopqmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/RefEnter_1RefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPush_1	StackPushjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/RefEnter_1Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1
�
smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop_1StackPopsmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Shape_1
�
_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgsBroadcastGradientArgshmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPopjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop_1
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/f_accStack*
	elem_type0*

stack_name *K
_classA
?=loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid
�
Vmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/RefEnterRefEnterSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*K
_classA
?=loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid
�
Wmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPush	StackPushVmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/RefEnter8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid^model/gradients/Add*
T0*
swap_memory( *K
_classA
?=loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid
�
_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPop/RefEnterRefEnterSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*K
_classA
?=loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid
�
Vmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPopStackPop_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*K
_classA
?=loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mulMulSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/ReshapeVmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPop*
T0
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/SumSumMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/ReshapeReshapeMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Sumhmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop*
T0
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul_1MulAmodel/gradients/model/RNN/while/Select_1_grad/zeros_like/StackPopSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Reshape*
T0
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Sum_1SumOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul_1amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Reshape_1ReshapeOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Sum_1jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/BroadcastGradientArgs/StackPop_1*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/ShapeShape:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1Shape5model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh*
T0
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPush	StackPushjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/RefEnterQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape^model/gradients/Add*
T0*
swap_memory( *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape
�
smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPopStackPopsmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1RefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1
�
mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPush_1	StackPushlmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1
�
umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop_1StackPopumodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Shape_1
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPoplmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop_1
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/f_accStack*
	elem_type0*

stack_name *H
_class>
<:loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh
�
Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/RefEnterRefEnterUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*H
_class>
<:loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh
�
Ymodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPush	StackPushXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/RefEnter5model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh^model/gradients/Add*
T0*
swap_memory( *H
_class>
<:loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPop/RefEnterRefEnterUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*H
_class>
<:loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh
�
Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPopStackPopamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*H
_class>
<:loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mulMulUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Reshape_1Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPop*
T0
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/SumSumOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mulamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/ReshapeReshapeOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Sumjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop*
T0
�
Wmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/f_accStack*
	elem_type0*

stack_name *M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1
�
Zmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/RefEnterRefEnterWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPush	StackPushZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/RefEnter:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1^model/gradients/Add*
T0*
swap_memory( *M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1
�
cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPop/RefEnterRefEnterWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1
�
Zmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPopStackPopcmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*M
_classC
A?loc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1MulZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPopUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2_grad/Reshape_1*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Sum_1SumQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Reshape_1ReshapeQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Sum_1lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/BroadcastGradientArgs/StackPop_1*
T0
�
model/gradients/AddN_5AddN4model/gradients/model/RNN/while/Select_1_grad/SelectQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Reshape*
T0*
N
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/sub/xConstT^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Reshape_1*
dtype0*
valueB
 *  �?
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/subSubSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/sub/xVmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPop*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/mulMulVmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/mul/StackPopQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/sub*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/mul_1MulSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_grad/Reshape_1Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/mul*
T0
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/sub/xConstT^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Reshape*
dtype0*
valueB
 *  �?
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/subSubUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/sub/xZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPop*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/mulMulZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul_1/StackPopSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/sub*
T0
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/mul_1MulSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/ReshapeSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/mul*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/SquareSquareXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/mul/StackPopV^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Reshape_1*
T0
�
Pmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/sub/xConstV^model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Reshape_1*
dtype0*
valueB
 *  �?
�
Nmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/subSubPmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/sub/xQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/Square*
T0
�
Nmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/mulMulUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1_grad/Reshape_1Nmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/sub*
T0
o
=model/gradients/model/RNN/while/Switch_2_grad_1/NextIterationNextIterationmodel/gradients/AddN_5*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/ShapeShape8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:2*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1Shape8model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1/y*
T0
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPush	StackPushjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/RefEnterQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape^model/gradients/Add*
T0*
swap_memory( *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape
�
smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPopStackPopsmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/RefEnter_1RefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1
�
mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPush_1	StackPushlmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/RefEnter_1Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1
�
umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEnterimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop_1StackPopumodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*f
_class\
ZXloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Shape_1
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPoplmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop_1
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/SumSumSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/mul_1amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/ReshapeReshapeOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Sumjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Sum_1SumSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_grad/mul_1cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Reshape_1ReshapeQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/Sum_1lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/BroadcastGradientArgs/StackPop_1*
T0
�
Xmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/f_accStack*
	elem_type0*

stack_name *S
_classI
GEloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/RefEnterRefEnterXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*S
_classI
GEloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim
�
\model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPush	StackPush[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/RefEnter@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim^model/gradients/Add*
T0*
swap_memory( *S
_classI
GEloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim
�
dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPop/RefEnterRefEnterXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*S
_classI
GEloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPopStackPopdmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*S
_classI
GEloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim
�
Rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concatConcat[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat/StackPopUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1_grad/mul_1Nmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_grad/mulSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1_grad/ReshapeUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2_grad/mul_1*
T0*
N
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/ShapeShape>model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul*
T0
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1Shape:model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter^model/RNN/while/Identity*
T0
�
emodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/f_accStack*
	elem_type0*

stack_name *b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape
�
hmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/RefEnterRefEnteremodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPush	StackPushhmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/RefEnterOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape^model/gradients/Add*
T0*
swap_memory( *b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape
�
qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop/RefEnterRefEnteremodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape
�
hmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPopStackPopqmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*b
_classX
VTloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/f_acc_1Stack*
	elem_type0*

stack_name *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/RefEnter_1RefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/f_acc_1*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1
�
kmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPush_1	StackPushjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/RefEnter_1Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1^model/gradients/Add*
T0*
swap_memory( *d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1
�
smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnterRefEntergmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/f_acc_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop_1StackPopsmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter^model/gradients/Sub*
	elem_type0*d
_classZ
XVloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Shape_1
�
_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgsBroadcastGradientArgshmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPopjmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop_1
�
Mmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/SumSumRmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concat_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
Qmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/ReshapeReshapeMmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Sumhmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop*
T0
�
Omodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Sum_1SumRmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split_grad/concatamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Reshape_1ReshapeOmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Sum_1jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/BroadcastGradientArgs/StackPop_1*
T0
�
`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul/EnterEnter=model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/read*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
Zmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMulMatMulQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Reshape`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul/Enter*
transpose_b(*
transpose_a( *
T0
�
bmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/f_accStack*
	elem_type0*

stack_name *Q
_classG
ECloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat
�
emodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/RefEnterRefEnterbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*Q
_classG
ECloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat
�
fmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPush	StackPushemodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/RefEnter>model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat^model/gradients/Add*
T0*
swap_memory( *Q
_classG
ECloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat
�
nmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPop/RefEnterRefEnterbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*Q
_classG
ECloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat
�
emodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPopStackPopnmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*Q
_classG
ECloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat
�
\model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1MatMulemodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1/StackPopQmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Reshape*
transpose_b( *
transpose_a(*
T0
�
Umodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_accConst*
dtype0*
valueB�*    
�
Wmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_1EnterUmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
Wmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_2MergeWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_1]model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/NextIteration*
T0*
N
�
Vmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/SwitchSwitchWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_2model/gradients/b_count_2*
T0
�
Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/AddAddXmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/Switch:1Smodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_grad/Reshape_1*
T0
�
]model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/NextIterationNextIterationSmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/Add*
T0
�
Wmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_3ExitVmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/Switch*
T0
�
`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/f_accStack*
	elem_type0*

stack_name **
_class 
loc:@model/RNN/TensorArray_1
�
cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/RefEnterRefEnter`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model/RNN/TensorArray_1
�
dmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPush	StackPushcmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/RefEntermodel/RNN/while/TensorArrayRead^model/gradients/Add*
T0*
swap_memory( **
_class 
loc:@model/RNN/TensorArray_1
�
lmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPop/RefEnterRefEnter`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model/RNN/TensorArray_1
�
cmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPopStackPoplmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPop/RefEnter^model/gradients/Sub*
	elem_type0**
_class 
loc:@model/RNN/TensorArray_1
�
Zmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeNShapeNcmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN/StackPopAmodel/gradients/model/RNN/while/Select_2_grad/zeros_like/StackPop*
T0*
N
�
fmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/f_accStack*
	elem_type0*

stack_name *\
_classR
PNloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/RefEnterRefEnterfmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/f_acc*0

frame_name" model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*\
_classR
PNloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim
�
jmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPush	StackPushimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/RefEnterImodel/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim^model/gradients/Add*
T0*
swap_memory( *\
_classR
PNloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim
�
rmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPop/RefEnterRefEnterfmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/f_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(*\
_classR
PNloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim
�
imodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPopStackPoprmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPop/RefEnter^model/gradients/Sub*
	elem_type0*\
_classR
PNloc:@model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim
�
`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffsetConcatOffsetimodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset/StackPopZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN\model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN:1*
N
�
Ymodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/SliceSliceZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffsetZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN*
Index0*
T0
�
[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/Slice_1SliceZmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMulbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ConcatOffset:1\model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/ShapeN:1*
Index0*
T0
�
_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_accConst*
dtype0*
valueB
��*    
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_1Enter_model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_2Mergeamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_1gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/NextIteration*
T0*
N
�
`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/SwitchSwitchamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_2model/gradients/b_count_2*
T0
�
]model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/AddAddbmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/Switch:1\model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul_grad/MatMul_1*
T0
�
gmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/NextIterationNextIteration]model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/Add*
T0
�
amodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_3Exit`model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/Switch*
T0
�
Fmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArray/ConstConst^model/gradients/Sub*
dtype0*
valueB
 *    **
_class 
loc:@model/RNN/TensorArray_1
�
]model/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGrad/RefEnterRefEntermodel/RNN/TensorArray_1*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model/RNN/TensorArray_1
�
Zmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGrad/EnterEntermodel/RNN/TensorArrayUnpack*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model/RNN/TensorArray_1
�
Tmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGradTensorArrayGrad]model/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGrad/RefEnterZmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGrad/Enter^model/gradients/Sub*
sourcemodel/gradients**
_class 
loc:@model/RNN/TensorArray_1
�
Rmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/gradient_flowIdentityZmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGrad/EnterU^model/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGrad*
T0**
_class 
loc:@model/RNN/TensorArray_1
�
Emodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayWriteTensorArrayWriteTmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/TensorArrayGradNmodel/gradients/model/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPopYmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/SliceRmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayGrad/gradient_flow*
T0**
_class 
loc:@model/RNN/TensorArray_1
�
Hmodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArray_1/ConstConst^model/gradients/Sub*
dtype0*
valueB
 *    **
_class 
loc:@model/RNN/TensorArray_1
�
model/gradients/AddN_6AddN4model/gradients/model/RNN/while/Select_2_grad/Select[model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat_grad/Slice_1*
T0*
N
m
@model/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_accConst*
dtype0*
valueB
 *    
�
Bmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_1Enter@model/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc*@

frame_name20model/gradients/model/RNN/while/model/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
Bmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_2MergeBmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_1Hmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/NextIteration*
T0*
N
�
Amodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/SwitchSwitchBmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_2model/gradients/b_count_2*
T0
�
>model/gradients/model/RNN/while/TensorArrayRead/Enter_grad/AddAddCmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/Switch:1Emodel/gradients/model/RNN/while/TensorArrayRead_grad/TensorArrayWrite*
T0
�
Hmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/NextIterationNextIteration>model/gradients/model/RNN/while/TensorArrayRead/Enter_grad/Add*
T0
�
Bmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_3ExitAmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/Switch*
T0
o
=model/gradients/model/RNN/while/Switch_3_grad_1/NextIterationNextIterationmodel/gradients/AddN_6*
T0
�
Bmodel/gradients/model/RNN/TensorArrayUnpack_grad/TensorArray/ConstConst*
dtype0*
valueB
 *    **
_class 
loc:@model/RNN/TensorArray_1
�
Pmodel/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayGrad/TensorArrayGradTensorArrayGradmodel/RNN/TensorArray_1Bmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_3*
sourcemodel/gradients**
_class 
loc:@model/RNN/TensorArray_1
�
Nmodel/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayGrad/gradient_flowIdentityBmodel/gradients/model/RNN/while/TensorArrayRead/Enter_grad/b_acc_3Q^model/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayGrad/TensorArrayGrad*
T0**
_class 
loc:@model/RNN/TensorArray_1
�
@model/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayPackTensorArrayPackPmodel/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayGrad/TensorArrayGradNmodel/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayGrad/gradient_flow*
dtype0**
_class 
loc:@model/RNN/TensorArray_1
a
6model/gradients/model/transpose_grad/InvertPermutationInvertPermutationmodel/transpose/perm
�
.model/gradients/model/transpose_grad/transpose	Transpose@model/gradients/model/RNN/TensorArrayUnpack_grad/TensorArrayPack6model/gradients/model/transpose_grad/InvertPermutation*
T0
S
.model/gradients/model/dropout/mul_1_grad/ShapeShapemodel/dropout/mul*
T0
W
0model/gradients/model/dropout/mul_1_grad/Shape_1Shapemodel/dropout/Floor*
T0
�
>model/gradients/model/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs.model/gradients/model/dropout/mul_1_grad/Shape0model/gradients/model/dropout/mul_1_grad/Shape_1
�
,model/gradients/model/dropout/mul_1_grad/mulMul.model/gradients/model/transpose_grad/transposemodel/dropout/Floor*
T0
�
,model/gradients/model/dropout/mul_1_grad/SumSum,model/gradients/model/dropout/mul_1_grad/mul>model/gradients/model/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
0model/gradients/model/dropout/mul_1_grad/ReshapeReshape,model/gradients/model/dropout/mul_1_grad/Sum.model/gradients/model/dropout/mul_1_grad/Shape*
T0
�
.model/gradients/model/dropout/mul_1_grad/mul_1Mulmodel/dropout/mul.model/gradients/model/transpose_grad/transpose*
T0
�
.model/gradients/model/dropout/mul_1_grad/Sum_1Sum.model/gradients/model/dropout/mul_1_grad/mul_1@model/gradients/model/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
2model/gradients/model/dropout/mul_1_grad/Reshape_1Reshape.model/gradients/model/dropout/mul_1_grad/Sum_10model/gradients/model/dropout/mul_1_grad/Shape_1*
T0
L
,model/gradients/model/dropout/mul_grad/ShapeShapemodel/Gather*
T0
S
.model/gradients/model/dropout/mul_grad/Shape_1Shapemodel/dropout/Inv*
T0
�
<model/gradients/model/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,model/gradients/model/dropout/mul_grad/Shape.model/gradients/model/dropout/mul_grad/Shape_1

*model/gradients/model/dropout/mul_grad/mulMul0model/gradients/model/dropout/mul_1_grad/Reshapemodel/dropout/Inv*
T0
�
*model/gradients/model/dropout/mul_grad/SumSum*model/gradients/model/dropout/mul_grad/mul<model/gradients/model/dropout/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( 
�
.model/gradients/model/dropout/mul_grad/ReshapeReshape*model/gradients/model/dropout/mul_grad/Sum,model/gradients/model/dropout/mul_grad/Shape*
T0
|
,model/gradients/model/dropout/mul_grad/mul_1Mulmodel/Gather0model/gradients/model/dropout/mul_1_grad/Reshape*
T0
�
,model/gradients/model/dropout/mul_grad/Sum_1Sum,model/gradients/model/dropout/mul_grad/mul_1>model/gradients/model/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( 
�
0model/gradients/model/dropout/mul_grad/Reshape_1Reshape,model/gradients/model/dropout/mul_grad/Sum_1.model/gradients/model/dropout/mul_grad/Shape_1*
T0
\
'model/gradients/model/Gather_grad/ConstConst*
dtype0*
valueB"�  �   
d
/model/gradients/model/Gather_grad/Reshape/shapeConst*
dtype0*
valueB"�����   
�
)model/gradients/model/Gather_grad/ReshapeReshape.model/gradients/model/dropout/mul_grad/Reshape/model/gradients/model/Gather_grad/Reshape/shape*
T0
h
1model/gradients/model/Gather_grad/Reshape_1/shapeConst*
dtype0*
valueB:
���������
�
+model/gradients/model/Gather_grad/Reshape_1Reshapemodel/inputs1model/gradients/model/Gather_grad/Reshape_1/shape*
T0
�
model/global_norm/L2LossL2Loss)model/gradients/model/Gather_grad/Reshape*
T0*<
_class2
0.loc:@model/gradients/model/Gather_grad/Reshape
�
model/global_norm/L2Loss_1L2Lossamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_3*
T0*t
_classj
hfloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_3
�
model/global_norm/L2Loss_2L2LossWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_3*
T0*j
_class`
^\loc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_3
�
model/global_norm/L2Loss_3L2Loss0model/gradients/model/transpose_1_grad/transpose*
T0*C
_class9
75loc:@model/gradients/model/transpose_1_grad/transpose
�
model/global_norm/L2Loss_4L2LossJmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape*
T0*]
_classS
QOloc:@model/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape
�
model/global_norm/packPackmodel/global_norm/L2Lossmodel/global_norm/L2Loss_1model/global_norm/L2Loss_2model/global_norm/L2Loss_3model/global_norm/L2Loss_4*
T0*
N
?
model/global_norm/RankRankmodel/global_norm/pack*
T0
G
model/global_norm/range/startConst*
dtype0*
value	B : 
G
model/global_norm/range/deltaConst*
dtype0*
value	B :
v
model/global_norm/rangeRangemodel/global_norm/range/startmodel/global_norm/Rankmodel/global_norm/range/delta
g
model/global_norm/SumSummodel/global_norm/packmodel/global_norm/range*
T0*
	keep_dims( 
D
model/global_norm/ConstConst*
dtype0*
valueB
 *   @
U
model/global_norm/mulMulmodel/global_norm/Summodel/global_norm/Const*
T0
E
model/global_norm/global_normSqrtmodel/global_norm/mul*
T0
P
#model/clip_by_global_norm/truediv/xConst*
dtype0*
valueB
 *  �?
u
!model/clip_by_global_norm/truedivDiv#model/clip_by_global_norm/truediv/xmodel/global_norm/global_norm*
T0
L
model/clip_by_global_norm/ConstConst*
dtype0*
valueB
 *��L>
y
!model/clip_by_global_norm/MinimumMinimum!model/clip_by_global_norm/truedivmodel/clip_by_global_norm/Const*
T0
L
model/clip_by_global_norm/mul/xConst*
dtype0*
valueB
 *  �@
q
model/clip_by_global_norm/mulMulmodel/clip_by_global_norm/mul/x!model/clip_by_global_norm/Minimum*
T0
�
model/clip_by_global_norm/mul_1Mul)model/gradients/model/Gather_grad/Reshapemodel/clip_by_global_norm/mul*
T0*<
_class2
0.loc:@model/gradients/model/Gather_grad/Reshape
�
6model/clip_by_global_norm/model/clip_by_global_norm/_0Identitymodel/clip_by_global_norm/mul_1*
T0*<
_class2
0.loc:@model/gradients/model/Gather_grad/Reshape
�
model/clip_by_global_norm/mul_2Mulamodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_3model/clip_by_global_norm/mul*
T0*t
_classj
hfloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_3
�
6model/clip_by_global_norm/model/clip_by_global_norm/_1Identitymodel/clip_by_global_norm/mul_2*
T0*t
_classj
hfloc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter_grad/b_acc_3
�
model/clip_by_global_norm/mul_3MulWmodel/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_3model/clip_by_global_norm/mul*
T0*j
_class`
^\loc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_3
�
6model/clip_by_global_norm/model/clip_by_global_norm/_2Identitymodel/clip_by_global_norm/mul_3*
T0*j
_class`
^\loc:@model/gradients/model/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter_grad/b_acc_3
�
model/clip_by_global_norm/mul_4Mul0model/gradients/model/transpose_1_grad/transposemodel/clip_by_global_norm/mul*
T0*C
_class9
75loc:@model/gradients/model/transpose_1_grad/transpose
�
6model/clip_by_global_norm/model/clip_by_global_norm/_3Identitymodel/clip_by_global_norm/mul_4*
T0*C
_class9
75loc:@model/gradients/model/transpose_1_grad/transpose
�
model/clip_by_global_norm/mul_5MulJmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshapemodel/clip_by_global_norm/mul*
T0*]
_classS
QOloc:@model/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape
�
6model/clip_by_global_norm/model/clip_by_global_norm/_4Identitymodel/clip_by_global_norm/mul_5*
T0*]
_classS
QOloc:@model/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape
I
model/Variable/initial_valueConst*
dtype0*
valueB
 *    
X
model/VariableVariable*
shared_name *
	container *
dtype0*
shape: 
�
model/Variable/AssignAssignmodel/Variablemodel/Variable/initial_value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
[
model/Variable/readIdentitymodel/Variable*
T0*!
_class
loc:@model/Variable
�
0model/GradientDescent/update_model/embedding/mulMul6model/clip_by_global_norm/model/clip_by_global_norm/_0model/Variable/read"/device:CPU:0*
T0*"
_class
loc:@model/embedding
�
7model/GradientDescent/update_model/embedding/ScatterSub
ScatterSubmodel/embedding+model/gradients/model/Gather_grad/Reshape_10model/GradientDescent/update_model/embedding/mul"/device:CPU:0*
T0*
use_locking( *
Tindices0*"
_class
loc:@model/embedding
�
jmodel/GradientDescent/update_model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/ApplyGradientDescentApplyGradientDescent8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrixmodel/Variable/read6model/clip_by_global_norm/model/clip_by_global_norm/_1*
T0*
use_locking( *K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
�
hmodel/GradientDescent/update_model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/ApplyGradientDescentApplyGradientDescent6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Biasmodel/Variable/read6model/clip_by_global_norm/model/clip_by_global_norm/_2*
T0*
use_locking( *I
_class?
=;loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias
�
Amodel/GradientDescent/update_model/softmax_w/ApplyGradientDescentApplyGradientDescentmodel/softmax_wmodel/Variable/read6model/clip_by_global_norm/model/clip_by_global_norm/_3*
T0*
use_locking( *"
_class
loc:@model/softmax_w
�
0model/GradientDescent/update_model/softmax_b/mulMul6model/clip_by_global_norm/model/clip_by_global_norm/_4model/Variable/read*
T0*"
_class
loc:@model/softmax_b
�
7model/GradientDescent/update_model/softmax_b/ScatterSub
ScatterSubmodel/softmax_bLmodel/gradients/model/sampled_softmax_loss/embedding_lookup_1_grad/Reshape_10model/GradientDescent/update_model/softmax_b/mul*
T0*
use_locking( *
Tindices0	*"
_class
loc:@model/softmax_b
�
model/GradientDescent/NoOpNoOpk^model/GradientDescent/update_model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/ApplyGradientDescenti^model/GradientDescent/update_model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/ApplyGradientDescentB^model/GradientDescent/update_model/softmax_w/ApplyGradientDescent8^model/GradientDescent/update_model/softmax_b/ScatterSub
m
model/GradientDescent/NoOp_1NoOp8^model/GradientDescent/update_model/embedding/ScatterSub"/device:CPU:0
Y
model/GradientDescentNoOp^model/GradientDescent/NoOp^model/GradientDescent/NoOp_1
?
model_1/inputsPlaceholder*
dtype0*
shape
:dd
@
model_1/targetsPlaceholder*
dtype0*
shape
:dd
C
model_1/actual_lengthsPlaceholder*
dtype0*
shape:d
A
model_1/packConst*
dtype0*
valueB"d   �   
@
model_1/zeros/ConstConst*
dtype0*
valueB
 *    
A
model_1/zerosFillmodel_1/packmodel_1/zeros/Const*
T0
C
model_1/pack_1Const*
dtype0*
valueB"d   �   
B
model_1/zeros_1/ConstConst*
dtype0*
valueB
 *    
G
model_1/zeros_1Fillmodel_1/pack_1model_1/zeros_1/Const*
T0
�
model_1/GatherGathermodel/embedding/readmodel_1/inputs"/device:CPU:0*
Tparams0*
validate_indices(*
Tindices0
O
model_1/transpose/permConst*
dtype0*!
valueB"          
O
model_1/transpose	Transposemodel_1/Gathermodel_1/transpose/perm*
T0
D
model_1/sequence_lengthIdentitymodel_1/actual_lengths*
T0
6
model_1/RNN/ShapeShapemodel_1/transpose*
T0
E
model_1/RNN/Slice/beginConst*
dtype0*
valueB:
D
model_1/RNN/Slice/sizeConst*
dtype0*
valueB:
t
model_1/RNN/SliceSlicemodel_1/RNN/Shapemodel_1/RNN/Slice/beginmodel_1/RNN/Slice/size*
Index0*
T0
Q
model_1/RNN/SqueezeSqueezemodel_1/RNN/Slice*
T0*
squeeze_dims
 
>
model_1/RNN/Shape_1Shapemodel_1/sequence_length*
T0
?
model_1/RNN/packPackmodel_1/RNN/Squeeze*
T0*
N
J
model_1/RNN/EqualEqualmodel_1/RNN/Shape_1model_1/RNN/pack*
T0
4
model_1/RNN/RankRankmodel_1/RNN/Equal*
T0

A
model_1/RNN/range/startConst*
dtype0*
value	B : 
A
model_1/RNN/range/deltaConst*
dtype0*
value	B :
^
model_1/RNN/rangeRangemodel_1/RNN/range/startmodel_1/RNN/Rankmodel_1/RNN/range/delta
M
model_1/RNN/AllAllmodel_1/RNN/Equalmodel_1/RNN/range*
	keep_dims( 
y
model_1/RNN/Assert/data_0Const*
dtype0*H
value?B= B7Expected shape for Tensor model_1/sequence_length:0 is 
R
model_1/RNN/Assert/data_2Const*
dtype0*!
valueB B but saw shape: 
�
model_1/RNN/AssertAssertmodel_1/RNN/Allmodel_1/RNN/Assert/data_0model_1/RNN/packmodel_1/RNN/Assert/data_2model_1/RNN/Shape_1*
T
2*
	summarize
Z
model_1/RNN/CheckSeqLenIdentitymodel_1/sequence_length^model_1/RNN/Assert*
T0
8
model_1/RNN/Shape_2Shapemodel_1/transpose*
T0
E
model_1/RNN/unpackUnpackmodel_1/RNN/Shape_2*
T0*	
num
?
model_1/RNN/pack_1/1Const*
dtype0*
value
B :�
X
model_1/RNN/pack_1Packmodel_1/RNN/unpack:1model_1/RNN/pack_1/1*
T0*
N
D
model_1/RNN/zeros/ConstConst*
dtype0*
valueB
 *    
O
model_1/RNN/zerosFillmodel_1/RNN/pack_1model_1/RNN/zeros/Const*
T0
<
model_1/RNN/Rank_1Rankmodel_1/RNN/CheckSeqLen*
T0
C
model_1/RNN/range_1/startConst*
dtype0*
value	B : 
C
model_1/RNN/range_1/deltaConst*
dtype0*
value	B :
f
model_1/RNN/range_1Rangemodel_1/RNN/range_1/startmodel_1/RNN/Rank_1model_1/RNN/range_1/delta
^
model_1/RNN/MinMinmodel_1/RNN/CheckSeqLenmodel_1/RNN/range_1*
T0*
	keep_dims( 
<
model_1/RNN/Rank_2Rankmodel_1/RNN/CheckSeqLen*
T0
C
model_1/RNN/range_2/startConst*
dtype0*
value	B : 
C
model_1/RNN/range_2/deltaConst*
dtype0*
value	B :
f
model_1/RNN/range_2Rangemodel_1/RNN/range_2/startmodel_1/RNN/Rank_2model_1/RNN/range_2/delta
^
model_1/RNN/MaxMaxmodel_1/RNN/CheckSeqLenmodel_1/RNN/range_2*
T0*
	keep_dims( 
:
model_1/RNN/timeConst*
dtype0*
value	B : 
�
model_1/RNN/TensorArrayTensorArraymodel_1/RNN/unpack*
dtype0*5
tensor_array_name model_1/RNN/dynamic_rnn/output*
dynamic_size( *
clear_after_read(
v
model_1/RNN/TensorArray/ConstConst*
dtype0*
valueB
 *    **
_class 
loc:@model_1/RNN/TensorArray
�
model_1/RNN/TensorArray_1TensorArraymodel_1/RNN/unpack*
dtype0*4
tensor_array_namemodel_1/RNN/dynamic_rnn/input*
dynamic_size( *
clear_after_read(
z
model_1/RNN/TensorArray_1/ConstConst*
dtype0*
valueB
 *    *,
_class"
 loc:@model_1/RNN/TensorArray_1
�
model_1/RNN/TensorArrayUnpackTensorArrayUnpackmodel_1/RNN/TensorArray_1model_1/transposemodel_1/RNN/TensorArray_1/Const*
T0*,
_class"
 loc:@model_1/RNN/TensorArray_1
z
model_1/RNN/TensorArray_2/ConstConst*
dtype0*
valueB
 *    *,
_class"
 loc:@model_1/RNN/TensorArray_1
�
model_1/RNN/while/EnterEntermodel_1/RNN/time*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
model_1/RNN/while/Enter_1Entermodel_1/RNN/TensorArray/Const*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
model_1/RNN/while/Enter_2Entermodel_1/zeros*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant( 
�
model_1/RNN/while/Enter_3Entermodel_1/zeros_1*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant( 
l
model_1/RNN/while/MergeMergemodel_1/RNN/while/Entermodel_1/RNN/while/NextIteration*
T0*
N
r
model_1/RNN/while/Merge_1Mergemodel_1/RNN/while/Enter_1!model_1/RNN/while/NextIteration_1*
T0*
N
r
model_1/RNN/while/Merge_2Mergemodel_1/RNN/while/Enter_2!model_1/RNN/while/NextIteration_2*
T0*
N
r
model_1/RNN/while/Merge_3Mergemodel_1/RNN/while/Enter_3!model_1/RNN/while/NextIteration_3*
T0*
N
�
model_1/RNN/while/Less/EnterEntermodel_1/RNN/unpack*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(
^
model_1/RNN/while/LessLessmodel_1/RNN/while/Mergemodel_1/RNN/while/Less/Enter*
T0
>
model_1/RNN/while/LoopCondLoopCondmodel_1/RNN/while/Less
�
model_1/RNN/while/SwitchSwitchmodel_1/RNN/while/Mergemodel_1/RNN/while/LoopCond*
T0**
_class 
loc:@model_1/RNN/while/Merge
�
model_1/RNN/while/Switch_1Switchmodel_1/RNN/while/Merge_1model_1/RNN/while/LoopCond*
T0*,
_class"
 loc:@model_1/RNN/while/Merge_1
�
model_1/RNN/while/Switch_2Switchmodel_1/RNN/while/Merge_2model_1/RNN/while/LoopCond*
T0*,
_class"
 loc:@model_1/RNN/while/Merge_2
�
model_1/RNN/while/Switch_3Switchmodel_1/RNN/while/Merge_3model_1/RNN/while/LoopCond*
T0*,
_class"
 loc:@model_1/RNN/while/Merge_3
K
model_1/RNN/while/IdentityIdentitymodel_1/RNN/while/Switch:1*
T0
O
model_1/RNN/while/Identity_1Identitymodel_1/RNN/while/Switch_1:1*
T0
O
model_1/RNN/while/Identity_2Identitymodel_1/RNN/while/Switch_2:1*
T0
O
model_1/RNN/while/Identity_3Identitymodel_1/RNN/while/Switch_3:1*
T0
�
*model_1/RNN/while/TensorArrayRead/RefEnterRefEntermodel_1/RNN/TensorArray_1*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(*,
_class"
 loc:@model_1/RNN/TensorArray_1
�
'model_1/RNN/while/TensorArrayRead/EnterEntermodel_1/RNN/TensorArrayUnpack*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(*,
_class"
 loc:@model_1/RNN/TensorArray_1
�
!model_1/RNN/while/TensorArrayReadTensorArrayRead*model_1/RNN/while/TensorArrayRead/RefEntermodel_1/RNN/while/Identity'model_1/RNN/while/TensorArrayRead/Enter*
dtype0*,
_class"
 loc:@model_1/RNN/TensorArray_1
�
Kmodel_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dimConst^model_1/RNN/while/Identity*
dtype0*
value	B :
�
@model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concatConcatKmodel_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concat/concat_dim!model_1/RNN/while/TensorArrayReadmodel_1/RNN/while/Identity_3*
T0*
N
�
Fmodel_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/EnterEnter=model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/read*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
@model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMulMatMul@model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/concatFmodel_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul/Enter*
transpose_b( *
transpose_a( *
T0
�
<model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/EnterEnter;model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/read*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
6model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/addAdd@model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatMul<model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add/Enter*
T0
�
Bmodel_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dimConst^model_1/RNN/while/Identity*
dtype0*
value	B :
�
8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/splitSplitBmodel_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split/split_dim6model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add*
T0*
	num_split
�
:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1/yConst^model_1/RNN/while/Identity*
dtype0*
valueB
 *  �?
�
8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1Add:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:2:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1/y*
T0
�
:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/SigmoidSigmoid8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_1*
T0
�
6model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mulMulmodel_1/RNN/while/Identity_2:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid*
T0
�
<model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_1Sigmoid8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split*
T0
�
7model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/TanhTanh:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:1*
T0
�
8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1Mul<model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_17model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh*
T0
�
8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2Add6model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_1*
T0
�
9model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1Tanh8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2*
T0
�
<model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2Sigmoid:model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/split:3*
T0
�
8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2Mul9model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Tanh_1<model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/Sigmoid_2*
T0
�
$model_1/RNN/while/GreaterEqual/EnterEntermodel_1/RNN/CheckSeqLen*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(
y
model_1/RNN/while/GreaterEqualGreaterEqualmodel_1/RNN/while/Identity$model_1/RNN/while/GreaterEqual/Enter*
T0
�
model_1/RNN/while/Select/EnterEntermodel_1/RNN/zeros*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(
�
model_1/RNN/while/SelectSelectmodel_1/RNN/while/GreaterEqualmodel_1/RNN/while/Select/Enter8model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2*
T0
�
model_1/RNN/while/Select_1Selectmodel_1/RNN/while/GreaterEqualmodel_1/RNN/while/Identity_28model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/add_2*
T0
�
model_1/RNN/while/Select_2Selectmodel_1/RNN/while/GreaterEqualmodel_1/RNN/while/Identity_38model_1/RNN/while/MultiRNNCell/Cell0/BasicLSTMCell/mul_2*
T0
�
+model_1/RNN/while/TensorArrayWrite/RefEnterRefEntermodel_1/RNN/TensorArray*4

frame_name&$model_1/RNN/while/model_1/RNN/while/*
T0*
parallel_iterations *
is_constant(**
_class 
loc:@model_1/RNN/TensorArray
�
"model_1/RNN/while/TensorArrayWriteTensorArrayWrite+model_1/RNN/while/TensorArrayWrite/RefEntermodel_1/RNN/while/Identitymodel_1/RNN/while/Selectmodel_1/RNN/while/Identity_1*
T0**
_class 
loc:@model_1/RNN/TensorArray
�
%model_1/RNN/while/TensorArray_2/ConstConst^model_1/RNN/while/Identity*
dtype0*
valueB
 *    **
_class 
loc:@model_1/RNN/TensorArray
^
model_1/RNN/while/add/yConst^model_1/RNN/while/Identity*
dtype0*
value	B :
Z
model_1/RNN/while/addAddmodel_1/RNN/while/Identitymodel_1/RNN/while/add/y*
T0
P
model_1/RNN/while/NextIterationNextIterationmodel_1/RNN/while/add*
T0
_
!model_1/RNN/while/NextIteration_1NextIteration"model_1/RNN/while/TensorArrayWrite*
T0
W
!model_1/RNN/while/NextIteration_2NextIterationmodel_1/RNN/while/Select_1*
T0
W
!model_1/RNN/while/NextIteration_3NextIterationmodel_1/RNN/while/Select_2*
T0
A
model_1/RNN/while/ExitExitmodel_1/RNN/while/Switch*
T0
E
model_1/RNN/while/Exit_1Exitmodel_1/RNN/while/Switch_1*
T0
E
model_1/RNN/while/Exit_2Exitmodel_1/RNN/while/Switch_2*
T0
E
model_1/RNN/while/Exit_3Exitmodel_1/RNN/while/Switch_3*
T0
�
model_1/RNN/TensorArrayPackTensorArrayPackmodel_1/RNN/TensorArraymodel_1/RNN/while/Exit_1*
dtype0**
_class 
loc:@model_1/RNN/TensorArray
S
model_1/RNN/transpose/permConst*
dtype0*!
valueB"          
d
model_1/RNN/transpose	Transposemodel_1/RNN/TensorArrayPackmodel_1/RNN/transpose/perm*
T0
J
model_1/Reshape/shapeConst*
dtype0*
valueB"�����   
Q
model_1/ReshapeReshapemodel_1/RNN/transposemodel_1/Reshape/shape*
T0
n
model_1/MatMulMatMulmodel_1/Reshapemodel/softmax_w/read*
transpose_b( *
transpose_a( *
T0
A
model_1/addAddmodel_1/MatMulmodel/softmax_b/read*
T0
0
model_1/SoftmaxSoftmaxmodel_1/add*
T0
L
model_1/Reshape_1/shapeConst*
dtype0*
valueB"'     
O
model_1/Reshape_1Reshapemodel_1/targetsmodel_1/Reshape_1/shape*
T0
?
model_1/transpose_1/RankRankmodel/softmax_w/read*
T0
C
model_1/transpose_1/sub/yConst*
dtype0*
value	B :
\
model_1/transpose_1/subSubmodel_1/transpose_1/Rankmodel_1/transpose_1/sub/y*
T0
I
model_1/transpose_1/Range/startConst*
dtype0*
value	B : 
I
model_1/transpose_1/Range/deltaConst*
dtype0*
value	B :
~
model_1/transpose_1/RangeRangemodel_1/transpose_1/Range/startmodel_1/transpose_1/Rankmodel_1/transpose_1/Range/delta
]
model_1/transpose_1/sub_1Submodel_1/transpose_1/submodel_1/transpose_1/Range*
T0
Z
model_1/transpose_1	Transposemodel/softmax_w/readmodel_1/transpose_1/sub_1*
T0
T
!model_1/sampled_softmax_loss/CastCastmodel_1/Reshape_1*

SrcT0*

DstT0	
a
*model_1/sampled_softmax_loss/Reshape/shapeConst*
dtype0*
valueB:
���������
�
$model_1/sampled_softmax_loss/ReshapeReshape!model_1/sampled_softmax_loss/Cast*model_1/sampled_softmax_loss/Reshape/shape*
T0	
�
7model_1/sampled_softmax_loss/LogUniformCandidateSamplerLogUniformCandidateSampler!model_1/sampled_softmax_loss/Cast*
seed2 *
num_sampledd*
	range_max�*
unique(*
num_true*

seed 
X
.model_1/sampled_softmax_loss/concat/concat_dimConst*
dtype0*
value	B : 
�
#model_1/sampled_softmax_loss/concatConcat.model_1/sampled_softmax_loss/concat/concat_dim$model_1/sampled_softmax_loss/Reshape7model_1/sampled_softmax_loss/LogUniformCandidateSampler*
T0	*
N
�
-model_1/sampled_softmax_loss/embedding_lookupGathermodel_1/transpose_1#model_1/sampled_softmax_loss/concat*
Tparams0*
Tindices0	*
validate_indices(*&
_class
loc:@model_1/transpose_1
�
/model_1/sampled_softmax_loss/embedding_lookup_1Gathermodel/softmax_b/read#model_1/sampled_softmax_loss/concat*
Tparams0*
Tindices0	*
validate_indices(*"
_class
loc:@model/softmax_b
Z
"model_1/sampled_softmax_loss/ShapeShape$model_1/sampled_softmax_loss/Reshape*
T0	
V
(model_1/sampled_softmax_loss/Slice/beginConst*
dtype0*
valueB: 
U
'model_1/sampled_softmax_loss/Slice/sizeConst*
dtype0*
valueB:
�
"model_1/sampled_softmax_loss/SliceSlice"model_1/sampled_softmax_loss/Shape(model_1/sampled_softmax_loss/Slice/begin'model_1/sampled_softmax_loss/Slice/size*
Index0*
T0
s
$model_1/sampled_softmax_loss/SqueezeSqueeze"model_1/sampled_softmax_loss/Slice*
T0*
squeeze_dims
 
V
#model_1/sampled_softmax_loss/pack/1Const*
dtype0*
valueB :
���������
�
!model_1/sampled_softmax_loss/packPack$model_1/sampled_softmax_loss/Squeeze#model_1/sampled_softmax_loss/pack/1*
T0*
N
_
*model_1/sampled_softmax_loss/Slice_1/beginConst*
dtype0*
valueB"        
�
$model_1/sampled_softmax_loss/Slice_1Slice-model_1/sampled_softmax_loss/embedding_lookup*model_1/sampled_softmax_loss/Slice_1/begin!model_1/sampled_softmax_loss/pack*
Index0*
T0
\
$model_1/sampled_softmax_loss/Shape_1Shape$model_1/sampled_softmax_loss/Reshape*
T0	
X
*model_1/sampled_softmax_loss/Slice_2/beginConst*
dtype0*
valueB: 
�
$model_1/sampled_softmax_loss/Slice_2Slice/model_1/sampled_softmax_loss/embedding_lookup_1*model_1/sampled_softmax_loss/Slice_2/begin$model_1/sampled_softmax_loss/Shape_1*
Index0*
T0
\
$model_1/sampled_softmax_loss/Shape_2Shape$model_1/sampled_softmax_loss/Slice_1*
T0
X
*model_1/sampled_softmax_loss/Slice_3/beginConst*
dtype0*
valueB:
W
)model_1/sampled_softmax_loss/Slice_3/sizeConst*
dtype0*
valueB:
�
$model_1/sampled_softmax_loss/Slice_3Slice$model_1/sampled_softmax_loss/Shape_2*model_1/sampled_softmax_loss/Slice_3/begin)model_1/sampled_softmax_loss/Slice_3/size*
Index0*
T0
Z
0model_1/sampled_softmax_loss/concat_1/concat_dimConst*
dtype0*
value	B : 
c
.model_1/sampled_softmax_loss/concat_1/values_0Const*
dtype0*
valueB"����   
�
%model_1/sampled_softmax_loss/concat_1Concat0model_1/sampled_softmax_loss/concat_1/concat_dim.model_1/sampled_softmax_loss/concat_1/values_0$model_1/sampled_softmax_loss/Slice_3*
T0*
N
U
+model_1/sampled_softmax_loss/ExpandDims/dimConst*
dtype0*
value	B :
|
'model_1/sampled_softmax_loss/ExpandDims
ExpandDimsmodel_1/Reshape+model_1/sampled_softmax_loss/ExpandDims/dim*
T0
�
&model_1/sampled_softmax_loss/Reshape_1Reshape$model_1/sampled_softmax_loss/Slice_1%model_1/sampled_softmax_loss/concat_1*
T0
�
 model_1/sampled_softmax_loss/MulMul'model_1/sampled_softmax_loss/ExpandDims&model_1/sampled_softmax_loss/Reshape_1*
T0
Z
0model_1/sampled_softmax_loss/concat_2/concat_dimConst*
dtype0*
value	B : 
e
.model_1/sampled_softmax_loss/concat_2/values_0Const*
dtype0*
valueB:
���������
�
%model_1/sampled_softmax_loss/concat_2Concat0model_1/sampled_softmax_loss/concat_2/concat_dim.model_1/sampled_softmax_loss/concat_2/values_0$model_1/sampled_softmax_loss/Slice_3*
T0*
N
�
&model_1/sampled_softmax_loss/Reshape_2Reshape model_1/sampled_softmax_loss/Mul%model_1/sampled_softmax_loss/concat_2*
T0
^
$model_1/sampled_softmax_loss/Shape_3Shape&model_1/sampled_softmax_loss/Reshape_2*
T0
X
*model_1/sampled_softmax_loss/Slice_4/beginConst*
dtype0*
valueB:
W
)model_1/sampled_softmax_loss/Slice_4/sizeConst*
dtype0*
valueB:
�
$model_1/sampled_softmax_loss/Slice_4Slice$model_1/sampled_softmax_loss/Shape_3*model_1/sampled_softmax_loss/Slice_4/begin)model_1/sampled_softmax_loss/Slice_4/size*
Index0*
T0
w
&model_1/sampled_softmax_loss/Squeeze_1Squeeze$model_1/sampled_softmax_loss/Slice_4*
T0*
squeeze_dims
 
O
%model_1/sampled_softmax_loss/pack_1/1Const*
dtype0*
value	B :
�
#model_1/sampled_softmax_loss/pack_1Pack&model_1/sampled_softmax_loss/Squeeze_1%model_1/sampled_softmax_loss/pack_1/1*
T0*
N
T
'model_1/sampled_softmax_loss/ones/ConstConst*
dtype0*
valueB
 *  �?
�
!model_1/sampled_softmax_loss/onesFill#model_1/sampled_softmax_loss/pack_1'model_1/sampled_softmax_loss/ones/Const*
T0
�
#model_1/sampled_softmax_loss/MatMulMatMul&model_1/sampled_softmax_loss/Reshape_2!model_1/sampled_softmax_loss/ones*
transpose_b( *
transpose_a( *
T0
c
,model_1/sampled_softmax_loss/Reshape_3/shapeConst*
dtype0*
valueB:
���������
�
&model_1/sampled_softmax_loss/Reshape_3Reshape#model_1/sampled_softmax_loss/MatMul,model_1/sampled_softmax_loss/Reshape_3/shape*
T0
a
,model_1/sampled_softmax_loss/Reshape_4/shapeConst*
dtype0*
valueB"����   
�
&model_1/sampled_softmax_loss/Reshape_4Reshape&model_1/sampled_softmax_loss/Reshape_3,model_1/sampled_softmax_loss/Reshape_4/shape*
T0
a
,model_1/sampled_softmax_loss/Reshape_5/shapeConst*
dtype0*
valueB"����   
�
&model_1/sampled_softmax_loss/Reshape_5Reshape$model_1/sampled_softmax_loss/Slice_2,model_1/sampled_softmax_loss/Reshape_5/shape*
T0
�
 model_1/sampled_softmax_loss/addAdd&model_1/sampled_softmax_loss/Reshape_4&model_1/sampled_softmax_loss/Reshape_5*
T0
\
$model_1/sampled_softmax_loss/Shape_4Shape$model_1/sampled_softmax_loss/Reshape*
T0	
X
*model_1/sampled_softmax_loss/Slice_5/beginConst*
dtype0*
valueB: 
W
)model_1/sampled_softmax_loss/Slice_5/sizeConst*
dtype0*
valueB:
�
$model_1/sampled_softmax_loss/Slice_5Slice$model_1/sampled_softmax_loss/Shape_4*model_1/sampled_softmax_loss/Slice_5/begin)model_1/sampled_softmax_loss/Slice_5/size*
Index0*
T0
w
&model_1/sampled_softmax_loss/Squeeze_2Squeeze$model_1/sampled_softmax_loss/Slice_5*
T0*
squeeze_dims
 
O
%model_1/sampled_softmax_loss/pack_2/1Const*
dtype0*
value	B : 
�
#model_1/sampled_softmax_loss/pack_2Pack&model_1/sampled_softmax_loss/Squeeze_2%model_1/sampled_softmax_loss/pack_2/1*
T0*
N
^
)model_1/sampled_softmax_loss/Slice_6/sizeConst*
dtype0*
valueB"��������
�
$model_1/sampled_softmax_loss/Slice_6Slice-model_1/sampled_softmax_loss/embedding_lookup#model_1/sampled_softmax_loss/pack_2)model_1/sampled_softmax_loss/Slice_6/size*
Index0*
T0
\
$model_1/sampled_softmax_loss/Shape_5Shape$model_1/sampled_softmax_loss/Reshape*
T0	
`
)model_1/sampled_softmax_loss/Slice_7/sizeConst*
dtype0*
valueB:
���������
�
$model_1/sampled_softmax_loss/Slice_7Slice/model_1/sampled_softmax_loss/embedding_lookup_1$model_1/sampled_softmax_loss/Shape_5)model_1/sampled_softmax_loss/Slice_7/size*
Index0*
T0
�
%model_1/sampled_softmax_loss/MatMul_1MatMulmodel_1/Reshape$model_1/sampled_softmax_loss/Slice_6*
transpose_b(*
transpose_a( *
T0

"model_1/sampled_softmax_loss/add_1Add%model_1/sampled_softmax_loss/MatMul_1$model_1/sampled_softmax_loss/Slice_7*
T0
�
2model_1/sampled_softmax_loss/ComputeAccidentalHitsComputeAccidentalHits!model_1/sampled_softmax_loss/Cast7model_1/sampled_softmax_loss/LogUniformCandidateSampler*
seed2 *
num_true*

seed 
a
,model_1/sampled_softmax_loss/Reshape_6/shapeConst*
dtype0*
valueB"����   
�
&model_1/sampled_softmax_loss/Reshape_6Reshape2model_1/sampled_softmax_loss/ComputeAccidentalHits,model_1/sampled_softmax_loss/Reshape_6/shape*
T0
y
#model_1/sampled_softmax_loss/Cast_1Cast4model_1/sampled_softmax_loss/ComputeAccidentalHits:1*

SrcT0	*

DstT0
a
,model_1/sampled_softmax_loss/Reshape_7/shapeConst*
dtype0*
valueB"����   
�
&model_1/sampled_softmax_loss/Reshape_7Reshape#model_1/sampled_softmax_loss/Cast_1,model_1/sampled_softmax_loss/Reshape_7/shape*
T0
`
6model_1/sampled_softmax_loss/sparse_indices/concat_dimConst*
dtype0*
value	B :
�
+model_1/sampled_softmax_loss/sparse_indicesConcat6model_1/sampled_softmax_loss/sparse_indices/concat_dim&model_1/sampled_softmax_loss/Reshape_6&model_1/sampled_softmax_loss/Reshape_7*
T0*
N
Y
$model_1/sampled_softmax_loss/Shape_6Shape!model_1/sampled_softmax_loss/Cast*
T0	
X
*model_1/sampled_softmax_loss/Slice_8/beginConst*
dtype0*
valueB: 
W
)model_1/sampled_softmax_loss/Slice_8/sizeConst*
dtype0*
valueB:
�
$model_1/sampled_softmax_loss/Slice_8Slice$model_1/sampled_softmax_loss/Shape_6*model_1/sampled_softmax_loss/Slice_8/begin)model_1/sampled_softmax_loss/Slice_8/size*
Index0*
T0
Y
/model_1/sampled_softmax_loss/ExpandDims_1/inputConst*
dtype0*
value	B :d
W
-model_1/sampled_softmax_loss/ExpandDims_1/dimConst*
dtype0*
value	B : 
�
)model_1/sampled_softmax_loss/ExpandDims_1
ExpandDims/model_1/sampled_softmax_loss/ExpandDims_1/input-model_1/sampled_softmax_loss/ExpandDims_1/dim*
T0
Z
0model_1/sampled_softmax_loss/concat_3/concat_dimConst*
dtype0*
value	B : 
�
%model_1/sampled_softmax_loss/concat_3Concat0model_1/sampled_softmax_loss/concat_3/concat_dim$model_1/sampled_softmax_loss/Slice_8)model_1/sampled_softmax_loss/ExpandDims_1*
T0*
N
e
8model_1/sampled_softmax_loss/SparseToDense/default_valueConst*
dtype0*
valueB
 *    
�
*model_1/sampled_softmax_loss/SparseToDenseSparseToDense+model_1/sampled_softmax_loss/sparse_indices%model_1/sampled_softmax_loss/concat_34model_1/sampled_softmax_loss/ComputeAccidentalHits:28model_1/sampled_softmax_loss/SparseToDense/default_value*
T0*
validate_indices( *
Tindices0
�
"model_1/sampled_softmax_loss/add_2Add"model_1/sampled_softmax_loss/add_1*model_1/sampled_softmax_loss/SparseToDense*
T0
k
 model_1/sampled_softmax_loss/LogLog9model_1/sampled_softmax_loss/LogUniformCandidateSampler:1*
T0
t
 model_1/sampled_softmax_loss/subSub model_1/sampled_softmax_loss/add model_1/sampled_softmax_loss/Log*
T0
m
"model_1/sampled_softmax_loss/Log_1Log9model_1/sampled_softmax_loss/LogUniformCandidateSampler:2*
T0
z
"model_1/sampled_softmax_loss/sub_1Sub"model_1/sampled_softmax_loss/add_2"model_1/sampled_softmax_loss/Log_1*
T0
Z
0model_1/sampled_softmax_loss/concat_4/concat_dimConst*
dtype0*
value	B :
�
%model_1/sampled_softmax_loss/concat_4Concat0model_1/sampled_softmax_loss/concat_4/concat_dim model_1/sampled_softmax_loss/sub"model_1/sampled_softmax_loss/sub_1*
T0*
N
`
,model_1/sampled_softmax_loss/ones_like/ShapeShape model_1/sampled_softmax_loss/sub*
T0
Y
,model_1/sampled_softmax_loss/ones_like/ConstConst*
dtype0*
valueB
 *  �?
�
&model_1/sampled_softmax_loss/ones_likeFill,model_1/sampled_softmax_loss/ones_like/Shape,model_1/sampled_softmax_loss/ones_like/Const*
T0
S
&model_1/sampled_softmax_loss/truediv/yConst*
dtype0*
valueB
 *  �?
�
$model_1/sampled_softmax_loss/truedivDiv&model_1/sampled_softmax_loss/ones_like&model_1/sampled_softmax_loss/truediv/y*
T0
a
'model_1/sampled_softmax_loss/zeros_like	ZerosLike"model_1/sampled_softmax_loss/sub_1*
T0
Z
0model_1/sampled_softmax_loss/concat_5/concat_dimConst*
dtype0*
value	B :
�
%model_1/sampled_softmax_loss/concat_5Concat0model_1/sampled_softmax_loss/concat_5/concat_dim$model_1/sampled_softmax_loss/truediv'model_1/sampled_softmax_loss/zeros_like*
T0*
N
�
%model_1/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits%model_1/sampled_softmax_loss/concat_4%model_1/sampled_softmax_loss/concat_5*
T0
D
model_1/RankRank%model_1/SoftmaxCrossEntropyWithLogits*
T0
=
model_1/range/startConst*
dtype0*
value	B : 
=
model_1/range/deltaConst*
dtype0*
value	B :
N
model_1/rangeRangemodel_1/range/startmodel_1/Rankmodel_1/range/delta
b
model_1/SumSum%model_1/SoftmaxCrossEntropyWithLogitsmodel_1/range*
T0*
	keep_dims( 
>
model_1/truediv/yConst*
dtype0*
valueB
 *  �B
?
model_1/truedivDivmodel_1/Summodel_1/truediv/y*
T0
4
PlaceholderPlaceholder*
dtype0*
shape: 
6
Placeholder_1Placeholder*
dtype0*
shape: 
C
ScalarSummaryScalarSummaryPlaceholderPlaceholder_1*
T0
A
MergeSummary/MergeSummaryMergeSummaryScalarSummary*
N
D
Reshape/shapeConst*
dtype0*
valueB:
���������
;
ReshapeReshapemodel_1/targetsReshape/shape*
T0
5
range/startConst*
dtype0*
value	B : 
6
range/limitConst*
dtype0*
value
B :�N
5
range/deltaConst*
dtype0*
value	B :
5
rangeRangerange/startrange/limitrange/delta
0
mul/yConst*
dtype0*
value
B :�
!
mulMulrangemul/y*
T0
!
addAddReshapemul*
T0
F
Reshape_1/shapeConst*
dtype0*
valueB:
���������
?
	Reshape_1Reshapemodel_1/SoftmaxReshape_1/shape*
T0
W
GatherGather	Reshape_1add*
Tparams0*
validate_indices(*
Tindices0
4
add_1/yConst*
dtype0*
valueB
 *���.
&
add_1AddGatheradd_1/y*
T0

LogLogadd_1*
T0

NegNegLog*
T0
$
AbsAbsmodel_1/targets*
T0

SignSignAbs*
T0
F
Reshape_2/shapeConst*
dtype0*
valueB:
���������
4
	Reshape_2ReshapeSignReshape_2/shape*
T0
/
CastCast	Reshape_2*

SrcT0*

DstT0
 
mul_1MulNegCast*
T0

RankRankmul_1*
T0
7
range_1/startConst*
dtype0*
value	B : 
7
range_1/deltaConst*
dtype0*
value	B :
4
range_1Rangerange_1/startRankrange_1/delta
4
SumSummul_1range_1*
T0*
	keep_dims( 
6
Placeholder_2Placeholder*
dtype0*
shape: 
6
Placeholder_3Placeholder*
dtype0*
shape: 
G
ScalarSummary_1ScalarSummaryPlaceholder_2Placeholder_3*
T0
E
MergeSummary_1/MergeSummaryMergeSummaryScalarSummary_1*
N
6
Placeholder_4Placeholder*
dtype0*
shape: 
6
Placeholder_5Placeholder*
dtype0*
shape: 
G
ScalarSummary_2ScalarSummaryPlaceholder_4Placeholder_5*
T0
E
MergeSummary_2/MergeSummaryMergeSummaryScalarSummary_2*
N
8

save/ConstConst*
dtype0*
valueB Bmodel
�
save/save/tensor_namesConst*
dtype0*�
value�B�B6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/BiasB8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/MatrixBmodel/embeddingBmodel/softmax_bBmodel/softmax_w
P
save/save/shapes_and_slicesConst*
dtype0*
valueBB B B B B 
�
	save/save
SaveSlices
save/Constsave/save/tensor_namessave/save/shapes_and_slices6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrixmodel/embeddingmodel/softmax_bmodel/softmax_w*
T	
2
c
save/control_dependencyIdentity
save/Const
^save/save*
T0*
_class
loc:@save/Const
}
save/restore_slice/tensor_nameConst*
dtype0*G
value>B< B6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias
K
"save/restore_slice/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
dt0*
preferred_shard���������
�
save/AssignAssign6model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Biassave/restore_slice*
use_locking(*
T0*
validate_shape(*I
_class?
=;loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias
�
 save/restore_slice_1/tensor_nameConst*
dtype0*I
value@B> B8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
M
$save/restore_slice_1/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
preferred_shard���������
�
save/Assign_1Assign8model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrixsave/restore_slice_1*
use_locking(*
T0*
validate_shape(*K
_classA
?=loc:@model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix
g
 save/restore_slice_2/tensor_nameConst"/device:CPU:0*
dtype0* 
valueB Bmodel/embedding
\
$save/restore_slice_2/shape_and_sliceConst"/device:CPU:0*
dtype0*
valueB B 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice"/device:CPU:0*
dt0*
preferred_shard���������
�
save/Assign_2Assignmodel/embeddingsave/restore_slice_2"/device:CPU:0*
use_locking(*
T0*
validate_shape(*"
_class
loc:@model/embedding
X
 save/restore_slice_3/tensor_nameConst*
dtype0* 
valueB Bmodel/softmax_b
M
$save/restore_slice_3/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
dt0*
preferred_shard���������
�
save/Assign_3Assignmodel/softmax_bsave/restore_slice_3*
use_locking(*
T0*
validate_shape(*"
_class
loc:@model/softmax_b
X
 save/restore_slice_4/tensor_nameConst*
dtype0* 
valueB Bmodel/softmax_w
M
$save/restore_slice_4/shape_and_sliceConst*
dtype0*
valueB B 
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
dt0*
preferred_shard���������
�
save/Assign_4Assignmodel/softmax_wsave/restore_slice_4*
use_locking(*
T0*
validate_shape(*"
_class
loc:@model/softmax_w
[
save/restore_all/NoOpNoOp^save/Assign^save/Assign_1^save/Assign_3^save/Assign_4
>
save/restore_all/NoOp_1NoOp^save/Assign_2"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
�
	init/NoOpNoOp@^model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Matrix/Assign>^model/RNN/MultiRNNCell/Cell0/BasicLSTMCell/Linear/Bias/Assign^model/softmax_w/Assign^model/softmax_b/Assign^model/Variable/Assign
;
init/NoOp_1NoOp^model/embedding/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1
9
Assign/valueConst*
dtype0*
valueB
 *  �?
�
AssignAssignmodel/VariableAssign/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_1/valueConst*
dtype0*
valueB
 *  �?
�
Assign_1Assignmodel/VariableAssign_1/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_2/valueConst*
dtype0*
valueB
 *  �?
�
Assign_2Assignmodel/VariableAssign_2/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_3/valueConst*
dtype0*
valueB
 *  �?
�
Assign_3Assignmodel/VariableAssign_3/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_4/valueConst*
dtype0*
valueB
 *  �?
�
Assign_4Assignmodel/VariableAssign_4/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_5/valueConst*
dtype0*
valueB
 *  �?
�
Assign_5Assignmodel/VariableAssign_5/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_6/valueConst*
dtype0*
valueB
 *  �?
�
Assign_6Assignmodel/VariableAssign_6/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_7/valueConst*
dtype0*
valueB
 *  �?
�
Assign_7Assignmodel/VariableAssign_7/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_8/valueConst*
dtype0*
valueB
 *  �?
�
Assign_8Assignmodel/VariableAssign_8/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
;
Assign_9/valueConst*
dtype0*
valueB
 *  �?
�
Assign_9Assignmodel/VariableAssign_9/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
<
Assign_10/valueConst*
dtype0*
valueB
 *  �?
�
	Assign_10Assignmodel/VariableAssign_10/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
<
Assign_11/valueConst*
dtype0*
valueB
 *fff?
�
	Assign_11Assignmodel/VariableAssign_11/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
<
Assign_12/valueConst*
dtype0*
valueB
 *fff?
�
	Assign_12Assignmodel/VariableAssign_12/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
<
Assign_13/valueConst*
dtype0*
valueB
 *fff?
�
	Assign_13Assignmodel/VariableAssign_13/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable
<
Assign_14/valueConst*
dtype0*
valueB
 *fff?
�
	Assign_14Assignmodel/VariableAssign_14/value*
use_locking(*
T0*
validate_shape(*!
_class
loc:@model/Variable"	
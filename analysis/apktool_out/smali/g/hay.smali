.class public final enum Lg/hay;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AGET:Lg/hay;

.field public static final enum APUT:Lg/hay;

.field public static final enum ARITH:Lg/hay;

.field public static final enum ARRAY_LENGTH:Lg/hay;

.field public static final enum BREAK:Lg/hay;

.field public static final enum CAST:Lg/hay;

.field public static final enum CHECK_CAST:Lg/hay;

.field public static final enum CMP_G:Lg/hay;

.field public static final enum CMP_L:Lg/hay;

.field public static final enum CONST:Lg/hay;

.field public static final enum CONSTRUCTOR:Lg/hay;

.field public static final enum CONST_CLASS:Lg/hay;

.field public static final enum CONST_STR:Lg/hay;

.field public static final enum CONTINUE:Lg/hay;

.field public static final enum FILLED_NEW_ARRAY:Lg/hay;

.field public static final enum FILL_ARRAY:Lg/hay;

.field public static final enum FILL_ARRAY_DATA:Lg/hay;

.field public static final enum GOTO:Lg/hay;

.field public static final enum IF:Lg/hay;

.field public static final enum IGET:Lg/hay;

.field public static final enum INSTANCE_OF:Lg/hay;

.field public static final enum INVOKE:Lg/hay;

.field public static final enum IPUT:Lg/hay;

.field public static final enum JAVA_JSR:Lg/hay;

.field public static final enum JAVA_RET:Lg/hay;

.field public static final enum MONITOR_ENTER:Lg/hay;

.field public static final enum MONITOR_EXIT:Lg/hay;

.field public static final enum MOVE:Lg/hay;

.field public static final enum MOVE_EXCEPTION:Lg/hay;

.field public static final enum MOVE_MULTI:Lg/hay;

.field public static final enum MOVE_RESULT:Lg/hay;

.field public static final enum NEG:Lg/hay;

.field public static final enum NEW_ARRAY:Lg/hay;

.field public static final enum NEW_INSTANCE:Lg/hay;

.field public static final enum NOP:Lg/hay;

.field public static final enum NOT:Lg/hay;

.field public static final enum ONE_ARG:Lg/hay;

.field public static final enum PHI:Lg/hay;

.field public static final enum REGION_ARG:Lg/hay;

.field public static final enum RETURN:Lg/hay;

.field public static final enum SGET:Lg/hay;

.field public static final enum SPUT:Lg/hay;

.field public static final enum STR_CONCAT:Lg/hay;

.field public static final enum SWITCH:Lg/hay;

.field public static final enum SWITCH_DATA:Lg/hay;

.field public static final enum TERNARY:Lg/hay;

.field public static final enum THROW:Lg/hay;

.field public static final synthetic a:[Lg/hay;


# direct methods
.method static constructor <clinit>()V
    .locals 71

    new-instance v0, Lg/hay;

    const-string v1, "CONST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->CONST:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v3, "CONST_STR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->CONST_STR:Lg/hay;

    new-instance v3, Lg/hay;

    const-string v5, "CONST_CLASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/hay;->CONST_CLASS:Lg/hay;

    new-instance v5, Lg/hay;

    const-string v7, "ARITH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/hay;->ARITH:Lg/hay;

    new-instance v7, Lg/hay;

    const-string v9, "NEG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/hay;->NEG:Lg/hay;

    new-instance v9, Lg/hay;

    const-string v11, "NOT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/hay;->NOT:Lg/hay;

    new-instance v11, Lg/hay;

    const-string v13, "MOVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/hay;->MOVE:Lg/hay;

    new-instance v13, Lg/hay;

    const-string v15, "MOVE_MULTI"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/hay;->MOVE_MULTI:Lg/hay;

    new-instance v15, Lg/hay;

    const/16 v17, 0x7

    const-string v2, "CAST"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/hay;->CAST:Lg/hay;

    new-instance v2, Lg/hay;

    const/16 v19, 0x8

    const-string v4, "RETURN"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/hay;->RETURN:Lg/hay;

    new-instance v4, Lg/hay;

    const/16 v21, 0x9

    const-string v6, "GOTO"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/hay;->GOTO:Lg/hay;

    new-instance v6, Lg/hay;

    const/16 v23, 0xa

    const-string v8, "THROW"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/hay;->THROW:Lg/hay;

    new-instance v8, Lg/hay;

    const/16 v25, 0xb

    const-string v10, "MOVE_EXCEPTION"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lg/hay;->MOVE_EXCEPTION:Lg/hay;

    new-instance v10, Lg/hay;

    const/16 v27, 0xc

    const-string v12, "CMP_L"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lg/hay;->CMP_L:Lg/hay;

    new-instance v12, Lg/hay;

    const/16 v29, 0xd

    const-string v14, "CMP_G"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lg/hay;->CMP_G:Lg/hay;

    new-instance v14, Lg/hay;

    const/16 v31, 0xe

    const-string v0, "IF"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg/hay;->IF:Lg/hay;

    new-instance v0, Lg/hay;

    const/16 v33, 0xf

    const-string v1, "SWITCH"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->SWITCH:Lg/hay;

    new-instance v1, Lg/hay;

    const/16 v35, 0x10

    const-string v2, "SWITCH_DATA"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->SWITCH_DATA:Lg/hay;

    new-instance v2, Lg/hay;

    const/16 v37, 0x11

    const-string v0, "MONITOR_ENTER"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/hay;->MONITOR_ENTER:Lg/hay;

    new-instance v0, Lg/hay;

    const/16 v39, 0x12

    const-string v1, "MONITOR_EXIT"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->MONITOR_EXIT:Lg/hay;

    new-instance v1, Lg/hay;

    const/16 v41, 0x13

    const-string v2, "CHECK_CAST"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->CHECK_CAST:Lg/hay;

    new-instance v2, Lg/hay;

    const/16 v43, 0x14

    const-string v0, "INSTANCE_OF"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/hay;->INSTANCE_OF:Lg/hay;

    new-instance v0, Lg/hay;

    const/16 v45, 0x15

    const-string v1, "ARRAY_LENGTH"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->ARRAY_LENGTH:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "FILL_ARRAY"

    move-object/from16 v47, v0

    const/16 v0, 0x17

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->FILL_ARRAY:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "FILL_ARRAY_DATA"

    move-object/from16 v48, v1

    const/16 v1, 0x18

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->FILL_ARRAY_DATA:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "FILLED_NEW_ARRAY"

    move-object/from16 v49, v0

    const/16 v0, 0x19

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->FILLED_NEW_ARRAY:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "AGET"

    move-object/from16 v50, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->AGET:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "APUT"

    move-object/from16 v51, v0

    const/16 v0, 0x1b

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->APUT:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "NEW_ARRAY"

    move-object/from16 v52, v1

    const/16 v1, 0x1c

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->NEW_ARRAY:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "NEW_INSTANCE"

    move-object/from16 v53, v0

    const/16 v0, 0x1d

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->NEW_INSTANCE:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "IGET"

    move-object/from16 v54, v1

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->IGET:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "IPUT"

    move-object/from16 v55, v0

    const/16 v0, 0x1f

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->IPUT:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "SGET"

    move-object/from16 v56, v1

    const/16 v1, 0x20

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->SGET:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "SPUT"

    move-object/from16 v57, v0

    const/16 v0, 0x21

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->SPUT:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "INVOKE"

    move-object/from16 v58, v1

    const/16 v1, 0x22

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->INVOKE:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "MOVE_RESULT"

    move-object/from16 v59, v0

    const/16 v0, 0x23

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->MOVE_RESULT:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "NOP"

    move-object/from16 v60, v1

    const/16 v1, 0x24

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->NOP:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "TERNARY"

    move-object/from16 v61, v0

    const/16 v0, 0x25

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->TERNARY:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "CONSTRUCTOR"

    move-object/from16 v62, v1

    const/16 v1, 0x26

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->CONSTRUCTOR:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "BREAK"

    move-object/from16 v63, v0

    const/16 v0, 0x27

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->BREAK:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "CONTINUE"

    move-object/from16 v64, v1

    const/16 v1, 0x28

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->CONTINUE:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "STR_CONCAT"

    move-object/from16 v65, v0

    const/16 v0, 0x29

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->STR_CONCAT:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "ONE_ARG"

    move-object/from16 v66, v1

    const/16 v1, 0x2a

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->ONE_ARG:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "PHI"

    move-object/from16 v67, v0

    const/16 v0, 0x2b

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->PHI:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "REGION_ARG"

    move-object/from16 v68, v1

    const/16 v1, 0x2c

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->REGION_ARG:Lg/hay;

    new-instance v1, Lg/hay;

    const-string v2, "JAVA_JSR"

    move-object/from16 v69, v0

    const/16 v0, 0x2d

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hay;->JAVA_JSR:Lg/hay;

    new-instance v0, Lg/hay;

    const-string v2, "JAVA_RET"

    move-object/from16 v70, v1

    const/16 v1, 0x2e

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hay;->JAVA_RET:Lg/hay;

    const/16 v1, 0x2f

    new-array v1, v1, [Lg/hay;

    aput-object v30, v1, v16

    aput-object v32, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v17

    aput-object v15, v1, v19

    aput-object v34, v1, v21

    aput-object v4, v1, v23

    aput-object v6, v1, v25

    aput-object v8, v1, v27

    aput-object v10, v1, v29

    aput-object v12, v1, v31

    aput-object v14, v1, v33

    aput-object v36, v1, v35

    aput-object v38, v1, v37

    aput-object v40, v1, v39

    aput-object v42, v1, v41

    aput-object v44, v1, v43

    aput-object v46, v1, v45

    const/16 v2, 0x16

    aput-object v47, v1, v2

    const/16 v2, 0x17

    aput-object v48, v1, v2

    const/16 v2, 0x18

    aput-object v49, v1, v2

    const/16 v2, 0x19

    aput-object v50, v1, v2

    const/16 v2, 0x1a

    aput-object v51, v1, v2

    const/16 v2, 0x1b

    aput-object v52, v1, v2

    const/16 v2, 0x1c

    aput-object v53, v1, v2

    const/16 v2, 0x1d

    aput-object v54, v1, v2

    const/16 v2, 0x1e

    aput-object v55, v1, v2

    const/16 v2, 0x1f

    aput-object v56, v1, v2

    const/16 v2, 0x20

    aput-object v57, v1, v2

    const/16 v2, 0x21

    aput-object v58, v1, v2

    const/16 v2, 0x22

    aput-object v59, v1, v2

    const/16 v2, 0x23

    aput-object v60, v1, v2

    const/16 v2, 0x24

    aput-object v61, v1, v2

    const/16 v2, 0x25

    aput-object v62, v1, v2

    const/16 v2, 0x26

    aput-object v63, v1, v2

    const/16 v2, 0x27

    aput-object v64, v1, v2

    const/16 v2, 0x28

    aput-object v65, v1, v2

    const/16 v2, 0x29

    aput-object v66, v1, v2

    const/16 v2, 0x2a

    aput-object v67, v1, v2

    const/16 v2, 0x2b

    aput-object v68, v1, v2

    const/16 v2, 0x2c

    aput-object v69, v1, v2

    const/16 v2, 0x2d

    aput-object v70, v1, v2

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    sput-object v1, Lg/hay;->a:[Lg/hay;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/hay;
    .locals 1

    const-class v0, Lg/hay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/hay;

    return-object p0
.end method

.method public static values()[Lg/hay;
    .locals 1

    sget-object v0, Lg/hay;->a:[Lg/hay;

    invoke-virtual {v0}, [Lg/hay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/hay;

    return-object v0
.end method

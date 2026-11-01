.class public final enum Lg/csv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADDED_TO_REGION:Lg/csv;

.field public static final enum ALLOW_MULTIPLE_INSNS_LOOP_COND:Lg/csv;

.field public static final enum ANDROID_R_CLASS:Lg/csv;

.field public static final enum ANONYMOUS_CONSTRUCTOR:Lg/csv;

.field public static final enum ARITH_ONEARG:Lg/csv;

.field public static final enum CLASS_DEEP_RELOAD:Lg/csv;

.field public static final enum CLASS_UNLOADED:Lg/csv;

.field public static final enum COMMENT_OUT:Lg/csv;

.field public static final enum COMPUTE_POST_DOM:Lg/csv;

.field public static final enum CUSTOM_DECLARE:Lg/csv;

.field public static final enum DECLARE_VAR:Lg/csv;

.field public static final enum DISABLE_BLOCKS_LOCK:Lg/csv;

.field public static final enum DONT_GENERATE:Lg/csv;

.field public static final enum DONT_INLINE:Lg/csv;

.field public static final enum DONT_INLINE_CONST:Lg/csv;

.field public static final enum DONT_INVERT:Lg/csv;

.field public static final enum DONT_RENAME:Lg/csv;

.field public static final enum DONT_UNLOAD_CLASS:Lg/csv;

.field public static final enum DONT_WRAP:Lg/csv;

.field public static final enum ELSE_IF_CHAIN:Lg/csv;

.field public static final enum EXC_BOTTOM_SPLITTER:Lg/csv;

.field public static final enum EXC_TOP_SPLITTER:Lg/csv;

.field public static final enum EXPLICIT_CAST:Lg/csv;

.field public static final enum EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

.field public static final enum FALL_THROUGH:Lg/csv;

.field public static final enum FINALLY_INSNS:Lg/csv;

.field public static final enum FORCE_ASSIGN_INLINE:Lg/csv;

.field public static final enum FORCE_RAW_NAME:Lg/csv;

.field public static final enum HIDDEN:Lg/csv;

.field public static final enum IGNORE_THROW_SPLIT:Lg/csv;

.field public static final enum IMMUTABLE_TYPE:Lg/csv;

.field public static final enum INCONSISTENT_CODE:Lg/csv;

.field public static final enum INLINE_INSTANCE_FIELD:Lg/csv;

.field public static final enum LOOP_END:Lg/csv;

.field public static final enum LOOP_START:Lg/csv;

.field public static final enum METHOD_ARGUMENT:Lg/csv;

.field public static final enum METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

.field public static final enum MOVE_INLINED:Lg/csv;

.field public static final enum MTH_ENTER_BLOCK:Lg/csv;

.field public static final enum MTH_EXIT_BLOCK:Lg/csv;

.field public static final enum NO_SKIP_ARGS:Lg/csv;

.field public static final enum ORIG_RETURN:Lg/csv;

.field public static final enum PACKAGE_INFO:Lg/csv;

.field public static final enum RELOAD_AT_CODEGEN_STAGE:Lg/csv;

.field public static final enum REMOVE:Lg/csv;

.field public static final enum REMOVE_SUPER_CLASS:Lg/csv;

.field public static final enum REQUEST_CODE_SHRINK:Lg/csv;

.field public static final enum REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

.field public static final enum RESOLVE_JAVA_JSR:Lg/csv;

.field public static final enum RESTART_CODEGEN:Lg/csv;

.field public static final enum RETURN:Lg/csv;

.field public static final enum SKIP_ARG:Lg/csv;

.field public static final enum SKIP_FIRST_ARG:Lg/csv;

.field public static final enum SOFT_CAST:Lg/csv;

.field public static final enum SUPER:Lg/csv;

.field public static final enum SYNTHETIC:Lg/csv;

.field public static final enum THIS:Lg/csv;

.field public static final enum TRY_ENTER:Lg/csv;

.field public static final enum TRY_LEAVE:Lg/csv;

.field public static final enum USE_LINES_HINTS:Lg/csv;

.field public static final enum VARARG_CALL:Lg/csv;

.field public static final enum WRAPPED:Lg/csv;

.field public static final synthetic a:[Lg/csv;


# direct methods
.method static constructor <clinit>()V
    .locals 86

    new-instance v0, Lg/csv;

    const-string v1, "MTH_ENTER_BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->MTH_ENTER_BLOCK:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v3, "MTH_EXIT_BLOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->MTH_EXIT_BLOCK:Lg/csv;

    new-instance v3, Lg/csv;

    const-string v5, "TRY_ENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/csv;->TRY_ENTER:Lg/csv;

    new-instance v5, Lg/csv;

    const-string v7, "TRY_LEAVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/csv;->TRY_LEAVE:Lg/csv;

    new-instance v7, Lg/csv;

    const-string v9, "LOOP_START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/csv;->LOOP_START:Lg/csv;

    new-instance v9, Lg/csv;

    const-string v11, "LOOP_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/csv;->LOOP_END:Lg/csv;

    new-instance v11, Lg/csv;

    const-string v13, "SYNTHETIC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/csv;->SYNTHETIC:Lg/csv;

    new-instance v13, Lg/csv;

    const-string v15, "RETURN"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/csv;->RETURN:Lg/csv;

    new-instance v15, Lg/csv;

    const/16 v17, 0x7

    const-string v2, "ORIG_RETURN"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/csv;->ORIG_RETURN:Lg/csv;

    new-instance v2, Lg/csv;

    const/16 v19, 0x8

    const-string v4, "DONT_WRAP"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/csv;->DONT_WRAP:Lg/csv;

    new-instance v4, Lg/csv;

    const/16 v21, 0x9

    const-string v6, "DONT_INLINE"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/csv;->DONT_INLINE:Lg/csv;

    new-instance v6, Lg/csv;

    const/16 v23, 0xa

    const-string v8, "DONT_INLINE_CONST"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/csv;->DONT_INLINE_CONST:Lg/csv;

    new-instance v8, Lg/csv;

    const/16 v25, 0xb

    const-string v10, "DONT_INVERT"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lg/csv;->DONT_INVERT:Lg/csv;

    new-instance v10, Lg/csv;

    const/16 v27, 0xc

    const-string v12, "DONT_GENERATE"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lg/csv;->DONT_GENERATE:Lg/csv;

    new-instance v12, Lg/csv;

    const/16 v29, 0xd

    const-string v14, "COMMENT_OUT"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lg/csv;->COMMENT_OUT:Lg/csv;

    new-instance v14, Lg/csv;

    const/16 v31, 0xe

    const-string v0, "REMOVE"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg/csv;->REMOVE:Lg/csv;

    new-instance v0, Lg/csv;

    const/16 v33, 0xf

    const-string v1, "REMOVE_SUPER_CLASS"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->REMOVE_SUPER_CLASS:Lg/csv;

    new-instance v1, Lg/csv;

    const/16 v35, 0x10

    const-string v2, "HIDDEN"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->HIDDEN:Lg/csv;

    new-instance v2, Lg/csv;

    const/16 v37, 0x11

    const-string v0, "DONT_RENAME"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/csv;->DONT_RENAME:Lg/csv;

    new-instance v0, Lg/csv;

    const/16 v39, 0x12

    const-string v1, "FORCE_RAW_NAME"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->FORCE_RAW_NAME:Lg/csv;

    new-instance v1, Lg/csv;

    const/16 v41, 0x13

    const-string v2, "ADDED_TO_REGION"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    new-instance v2, Lg/csv;

    const/16 v43, 0x14

    const-string v0, "ALLOW_MULTIPLE_INSNS_LOOP_COND"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/csv;->ALLOW_MULTIPLE_INSNS_LOOP_COND:Lg/csv;

    new-instance v0, Lg/csv;

    const/16 v45, 0x15

    const-string v1, "EXC_TOP_SPLITTER"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->EXC_TOP_SPLITTER:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "EXC_BOTTOM_SPLITTER"

    move-object/from16 v47, v0

    const/16 v0, 0x17

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "FINALLY_INSNS"

    move-object/from16 v48, v1

    const/16 v1, 0x18

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->FINALLY_INSNS:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "IGNORE_THROW_SPLIT"

    move-object/from16 v49, v0

    const/16 v0, 0x19

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->IGNORE_THROW_SPLIT:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "SKIP_FIRST_ARG"

    move-object/from16 v50, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->SKIP_FIRST_ARG:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "SKIP_ARG"

    move-object/from16 v51, v0

    const/16 v0, 0x1b

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->SKIP_ARG:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "NO_SKIP_ARGS"

    move-object/from16 v52, v1

    const/16 v1, 0x1c

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->NO_SKIP_ARGS:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "ANONYMOUS_CONSTRUCTOR"

    move-object/from16 v53, v0

    const/16 v0, 0x1d

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "INLINE_INSTANCE_FIELD"

    move-object/from16 v54, v1

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->INLINE_INSTANCE_FIELD:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "THIS"

    move-object/from16 v55, v0

    const/16 v0, 0x1f

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->THIS:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "SUPER"

    move-object/from16 v56, v1

    const/16 v1, 0x20

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->SUPER:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "PACKAGE_INFO"

    move-object/from16 v57, v0

    const/16 v0, 0x21

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->PACKAGE_INFO:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "ANDROID_R_CLASS"

    move-object/from16 v58, v1

    const/16 v1, 0x22

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->ANDROID_R_CLASS:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "METHOD_ARGUMENT"

    move-object/from16 v59, v0

    const/16 v0, 0x23

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->METHOD_ARGUMENT:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "IMMUTABLE_TYPE"

    move-object/from16 v60, v1

    const/16 v1, 0x24

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "FORCE_ASSIGN_INLINE"

    move-object/from16 v61, v0

    const/16 v0, 0x25

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->FORCE_ASSIGN_INLINE:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "MOVE_INLINED"

    move-object/from16 v62, v1

    const/16 v1, 0x26

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->MOVE_INLINED:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "CUSTOM_DECLARE"

    move-object/from16 v63, v0

    const/16 v0, 0x27

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->CUSTOM_DECLARE:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "DECLARE_VAR"

    move-object/from16 v64, v1

    const/16 v1, 0x28

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->DECLARE_VAR:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "ELSE_IF_CHAIN"

    move-object/from16 v65, v0

    const/16 v0, 0x29

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->ELSE_IF_CHAIN:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "WRAPPED"

    move-object/from16 v66, v1

    const/16 v1, 0x2a

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->WRAPPED:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "ARITH_ONEARG"

    move-object/from16 v67, v0

    const/16 v0, 0x2b

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->ARITH_ONEARG:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "FALL_THROUGH"

    move-object/from16 v68, v1

    const/16 v1, 0x2c

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->FALL_THROUGH:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "VARARG_CALL"

    move-object/from16 v69, v0

    const/16 v0, 0x2d

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->VARARG_CALL:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "EXPLICIT_PRIMITIVE_TYPE"

    move-object/from16 v70, v1

    const/16 v1, 0x2e

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->EXPLICIT_PRIMITIVE_TYPE:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "EXPLICIT_CAST"

    move-object/from16 v71, v0

    const/16 v0, 0x2f

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "SOFT_CAST"

    move-object/from16 v72, v1

    const/16 v1, 0x30

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->SOFT_CAST:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "INCONSISTENT_CODE"

    move-object/from16 v73, v0

    const/16 v0, 0x31

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->INCONSISTENT_CODE:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "REQUEST_IF_REGION_OPTIMIZE"

    move-object/from16 v74, v1

    const/16 v1, 0x32

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->REQUEST_IF_REGION_OPTIMIZE:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "REQUEST_CODE_SHRINK"

    move-object/from16 v75, v0

    const/16 v0, 0x33

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->REQUEST_CODE_SHRINK:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "METHOD_CANDIDATE_FOR_INLINE"

    move-object/from16 v76, v1

    const/16 v1, 0x34

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "USE_LINES_HINTS"

    move-object/from16 v77, v0

    const/16 v0, 0x35

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->USE_LINES_HINTS:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "DISABLE_BLOCKS_LOCK"

    move-object/from16 v78, v1

    const/16 v1, 0x36

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->DISABLE_BLOCKS_LOCK:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "RESTART_CODEGEN"

    move-object/from16 v79, v0

    const/16 v0, 0x37

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "RELOAD_AT_CODEGEN_STAGE"

    move-object/from16 v80, v1

    const/16 v1, 0x38

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->RELOAD_AT_CODEGEN_STAGE:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "CLASS_DEEP_RELOAD"

    move-object/from16 v81, v0

    const/16 v0, 0x39

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->CLASS_DEEP_RELOAD:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "CLASS_UNLOADED"

    move-object/from16 v82, v1

    const/16 v1, 0x3a

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "DONT_UNLOAD_CLASS"

    move-object/from16 v83, v0

    const/16 v0, 0x3b

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->DONT_UNLOAD_CLASS:Lg/csv;

    new-instance v0, Lg/csv;

    const-string v2, "RESOLVE_JAVA_JSR"

    move-object/from16 v84, v1

    const/16 v1, 0x3c

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/csv;->RESOLVE_JAVA_JSR:Lg/csv;

    new-instance v1, Lg/csv;

    const-string v2, "COMPUTE_POST_DOM"

    move-object/from16 v85, v0

    const/16 v0, 0x3d

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/csv;->COMPUTE_POST_DOM:Lg/csv;

    const/16 v0, 0x3e

    new-array v0, v0, [Lg/csv;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v34, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v33

    aput-object v36, v0, v35

    aput-object v38, v0, v37

    aput-object v40, v0, v39

    aput-object v42, v0, v41

    aput-object v44, v0, v43

    aput-object v46, v0, v45

    const/16 v2, 0x16

    aput-object v47, v0, v2

    const/16 v2, 0x17

    aput-object v48, v0, v2

    const/16 v2, 0x18

    aput-object v49, v0, v2

    const/16 v2, 0x19

    aput-object v50, v0, v2

    const/16 v2, 0x1a

    aput-object v51, v0, v2

    const/16 v2, 0x1b

    aput-object v52, v0, v2

    const/16 v2, 0x1c

    aput-object v53, v0, v2

    const/16 v2, 0x1d

    aput-object v54, v0, v2

    const/16 v2, 0x1e

    aput-object v55, v0, v2

    const/16 v2, 0x1f

    aput-object v56, v0, v2

    const/16 v2, 0x20

    aput-object v57, v0, v2

    const/16 v2, 0x21

    aput-object v58, v0, v2

    const/16 v2, 0x22

    aput-object v59, v0, v2

    const/16 v2, 0x23

    aput-object v60, v0, v2

    const/16 v2, 0x24

    aput-object v61, v0, v2

    const/16 v2, 0x25

    aput-object v62, v0, v2

    const/16 v2, 0x26

    aput-object v63, v0, v2

    const/16 v2, 0x27

    aput-object v64, v0, v2

    const/16 v2, 0x28

    aput-object v65, v0, v2

    const/16 v2, 0x29

    aput-object v66, v0, v2

    const/16 v2, 0x2a

    aput-object v67, v0, v2

    const/16 v2, 0x2b

    aput-object v68, v0, v2

    const/16 v2, 0x2c

    aput-object v69, v0, v2

    const/16 v2, 0x2d

    aput-object v70, v0, v2

    const/16 v2, 0x2e

    aput-object v71, v0, v2

    const/16 v2, 0x2f

    aput-object v72, v0, v2

    const/16 v2, 0x30

    aput-object v73, v0, v2

    const/16 v2, 0x31

    aput-object v74, v0, v2

    const/16 v2, 0x32

    aput-object v75, v0, v2

    const/16 v2, 0x33

    aput-object v76, v0, v2

    const/16 v2, 0x34

    aput-object v77, v0, v2

    const/16 v2, 0x35

    aput-object v78, v0, v2

    const/16 v2, 0x36

    aput-object v79, v0, v2

    const/16 v2, 0x37

    aput-object v80, v0, v2

    const/16 v2, 0x38

    aput-object v81, v0, v2

    const/16 v2, 0x39

    aput-object v82, v0, v2

    const/16 v2, 0x3a

    aput-object v83, v0, v2

    const/16 v2, 0x3b

    aput-object v84, v0, v2

    const/16 v2, 0x3c

    aput-object v85, v0, v2

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sput-object v0, Lg/csv;->a:[Lg/csv;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/csv;
    .locals 1

    const-class v0, Lg/csv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/csv;

    return-object p0
.end method

.method public static values()[Lg/csv;
    .locals 1

    sget-object v0, Lg/csv;->a:[Lg/csv;

    invoke-virtual {v0}, [Lg/csv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/csv;

    return-object v0
.end method

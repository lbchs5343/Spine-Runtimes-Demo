.class public abstract Lg/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lg/ahb;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v11, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v13, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v19

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v25

    const/16 v0, 0xca

    new-array v1, v0, [Lg/ahb;

    sput-object v1, Lg/t;->a:[Lg/ahb;

    sget-object v32, Lg/cqf;->NOP:Lg/cqf;

    sget-object v33, Lg/enn;->NONE:Lg/enn;

    const/16 v28, 0x0

    const-string v29, "nop"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v0, v32

    sget-object v30, Lg/cqf;->CONST:Lg/cqf;

    const-wide/16 v31, 0x0

    const/16 v28, 0x1

    const-string v29, "aconst_null"

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_m1"

    const-wide/16 v31, -0x1

    const/16 v28, 0x2

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_0"

    const-wide/16 v31, 0x0

    const/16 v28, 0x3

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_1"

    const-wide/16 v31, 0x1

    const/16 v28, 0x4

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_2"

    const-wide/16 v31, 0x2

    const/16 v28, 0x5

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_3"

    const-wide/16 v31, 0x3

    const/16 v28, 0x6

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_4"

    const-wide/16 v31, 0x4

    const/16 v28, 0x7

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "iconst_5"

    const-wide/16 v31, 0x5

    const/16 v28, 0x8

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    move-object/from16 v16, v30

    sget-object v30, Lg/cqf;->CONST_WIDE:Lg/cqf;

    const-wide/16 v31, 0x0

    const/16 v28, 0x9

    const-string v29, "lconst_0"

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const-string v29, "lconst_1"

    const-wide/16 v31, 0x1

    const/16 v28, 0xa

    invoke-static/range {v27 .. v32}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const/16 v2, 0xb

    const-string v3, "fconst_0"

    move-object/from16 v4, v16

    invoke-static/range {v1 .. v6}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const/16 v8, 0xc

    const-string v9, "fconst_1"

    move-object/from16 v10, v16

    move-object/from16 v7, v27

    invoke-static/range {v7 .. v12}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    move-wide/from16 v17, v13

    const/16 v14, 0xd

    const-string v15, "fconst_2"

    move-object/from16 v13, v27

    invoke-static/range {v13 .. v18}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    move-object/from16 v32, v16

    const/16 v16, 0xe

    const-string v17, "dconst_0"

    move-object/from16 v15, v27

    move-object/from16 v18, v30

    invoke-static/range {v15 .. v20}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    const/16 v22, 0xf

    const-string v23, "dconst_1"

    move-object/from16 v21, v27

    move-object/from16 v24, v30

    invoke-static/range {v21 .. v26}, Lg/t;->j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V

    new-instance v1, Lg/bfb;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x10

    const-string v29, "bipush"

    const/16 v30, 0x1

    const/16 v31, 0x2

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v30, v32

    new-instance v1, Lg/bfb;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x11

    const-string v29, "sipush"

    move-object/from16 v16, v30

    const/16 v30, 0x2

    move-object/from16 v34, v1

    move-object/from16 v32, v16

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v1, v27

    const-string v2, "ldc"

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-static {v1, v4, v2, v3}, Lg/t;->d([Lg/ahb;ILjava/lang/String;Z)V

    const/16 v2, 0x13

    const-string v3, "ldc_w"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lg/t;->d([Lg/ahb;ILjava/lang/String;Z)V

    const/16 v2, 0x14

    const-string v3, "ldc2_w"

    invoke-static {v1, v2, v3, v4}, Lg/t;->d([Lg/ahb;ILjava/lang/String;Z)V

    sget-object v32, Lg/cqf;->MOVE:Lg/cqf;

    new-instance v2, Lg/gxs;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x15

    const-string v29, "iload"

    const/16 v30, 0x1

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v1, v32

    sget-object v32, Lg/cqf;->MOVE_WIDE:Lg/cqf;

    new-instance v2, Lg/gxs;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x16

    const-string v29, "lload"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v2, v32

    new-instance v3, Lg/gxs;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x17

    const-string v29, "fload"

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/fqi;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x18

    const-string v29, "dload"

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/fqi;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x19

    const-string v29, "aload"

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/kf;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lg/kf;-><init>(I)V

    const/16 v28, 0x1a

    const-string v29, "iload_0"

    const/16 v30, 0x0

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/kf;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lg/kf;-><init>(I)V

    const/16 v28, 0x1b

    const-string v29, "iload_1"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/kf;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Lg/kf;-><init>(I)V

    const/16 v28, 0x1c

    const-string v29, "iload_2"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x1d

    const-string v29, "iload_3"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v1, v32

    new-instance v3, Lg/gxs;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x1e

    const-string v29, "lload_0"

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x1f

    const-string v29, "lload_1"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v2, Lg/fqi;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x20

    const-string v29, "lload_2"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v2, Lg/fqi;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x21

    const-string v29, "lload_3"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v2, v32

    new-instance v3, Lg/fqi;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x22

    const-string v29, "fload_0"

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/kf;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lg/kf;-><init>(I)V

    const/16 v28, 0x23

    const-string v29, "fload_1"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/kf;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Lg/kf;-><init>(I)V

    const/16 v28, 0x24

    const-string v29, "fload_2"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/kf;

    const/16 v3, 0x14

    invoke-direct {v1, v3}, Lg/kf;-><init>(I)V

    const/16 v28, 0x25

    const-string v29, "fload_3"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v1, v32

    new-instance v3, Lg/bfb;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x26

    const-string v29, "dload_0"

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v2, Lg/bfb;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x27

    const-string v29, "dload_1"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v2, Lg/bfb;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x28

    const-string v29, "dload_2"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v2, Lg/bfb;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x29

    const-string v29, "dload_3"

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v2, v32

    new-instance v3, Lg/bfb;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x2a

    const-string v29, "aload_0"

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/bfb;

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x2b

    const-string v29, "aload_1"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/bfb;

    const/16 v3, 0x1d

    invoke-direct {v1, v3}, Lg/bfb;-><init>(I)V

    const/16 v28, 0x2c

    const-string v29, "aload_2"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x2d

    const-string v29, "aload_3"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v1, v32

    sget-object v32, Lg/cqf;->AGET:Lg/cqf;

    new-instance v3, Lg/kf;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lg/kf;-><init>(I)V

    const/16 v28, 0x2e

    const-string v29, "iaload"

    const/16 v31, 0x3

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v3, v32

    sget-object v32, Lg/cqf;->AGET_WIDE:Lg/cqf;

    new-instance v4, Lg/kf;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lg/kf;-><init>(I)V

    const/16 v28, 0x2f

    const-string v29, "laload"

    move-object/from16 v34, v4

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v4, v32

    new-instance v5, Lg/kf;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Lg/kf;-><init>(I)V

    const/16 v28, 0x30

    const-string v29, "faload"

    move-object/from16 v32, v3

    move-object/from16 v34, v5

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/kf;

    const/16 v5, 0x13

    invoke-direct {v3, v5}, Lg/kf;-><init>(I)V

    const/16 v28, 0x31

    const-string v29, "daload"

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->AGET_OBJECT:Lg/cqf;

    new-instance v3, Lg/kf;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lg/kf;-><init>(I)V

    const/16 v28, 0x32

    const-string v29, "aaload"

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->AGET_BYTE_BOOLEAN:Lg/cqf;

    new-instance v3, Lg/kf;

    invoke-direct {v3, v4}, Lg/kf;-><init>(I)V

    const/16 v28, 0x33

    const-string v29, "baload"

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->AGET_CHAR:Lg/cqf;

    new-instance v3, Lg/kf;

    invoke-direct {v3, v4}, Lg/kf;-><init>(I)V

    const/16 v28, 0x34

    const-string v29, "caload"

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->AGET_SHORT:Lg/cqf;

    new-instance v3, Lg/kf;

    invoke-direct {v3, v4}, Lg/kf;-><init>(I)V

    const/16 v28, 0x35

    const-string v29, "saload"

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/gxs;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x36

    const-string v29, "istore"

    const/16 v30, 0x1

    const/16 v31, 0x2

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/gxs;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x37

    const-string v29, "lstore"

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/gxs;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x38

    const-string v29, "fstore"

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v3, Lg/gxs;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x39

    const-string v29, "dstore"

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v3, Lg/gxs;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x3a

    const-string v29, "astore"

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x3b

    const-string v29, "istore_0"

    const/16 v30, 0x0

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x3c

    const-string v29, "istore_1"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x3d

    const-string v29, "istore_2"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x3e

    const-string v29, "istore_3"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v1, v32

    new-instance v3, Lg/gxs;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x3f

    const-string v29, "lstore_0"

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x40

    const-string v29, "lstore_1"

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x41

    const-string v29, "lstore_2"

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x42

    const-string v29, "lstore_3"

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v2, v32

    new-instance v3, Lg/gxs;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x43

    const-string v29, "fstore_0"

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x44

    const-string v29, "fstore_1"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0x14

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x45

    const-string v29, "fstore_2"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x46

    const-string v29, "fstore_3"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v1, v32

    new-instance v3, Lg/gxs;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x47

    const-string v29, "dstore_0"

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x48

    const-string v29, "dstore_1"

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x49

    const-string v29, "dstore_2"

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x4a

    const-string v29, "dstore_3"

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/gxs;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x4b

    const-string v29, "astore_0"

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/gxs;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lg/gxs;-><init>(I)V

    const/16 v28, 0x4c

    const-string v29, "astore_1"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x4d

    const-string v29, "astore_2"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x4e

    const-string v29, "astore_3"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v1, v32

    sget-object v32, Lg/cqf;->APUT:Lg/cqf;

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x4f

    const-string v29, "iastore"

    const/16 v31, 0x3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v2, v32

    sget-object v32, Lg/cqf;->APUT_WIDE:Lg/cqf;

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x50

    const-string v29, "lastore"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v3, v32

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x51

    const-string v29, "fastore"

    move-object/from16 v32, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x52

    const-string v29, "dastore"

    move-object/from16 v32, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->APUT_OBJECT:Lg/cqf;

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x53

    const-string v29, "aastore"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->APUT_BYTE_BOOLEAN:Lg/cqf;

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x54

    const-string v29, "bastore"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->APUT_CHAR:Lg/cqf;

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x55

    const-string v29, "castore"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->APUT_SHORT:Lg/cqf;

    invoke-static {}, Lg/t;->e()Lg/kf;

    move-result-object v33

    const/16 v28, 0x56

    const-string v29, "sastore"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v2, Lg/fqi;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x57

    const-string v29, "pop"

    const/16 v31, 0x0

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v0, Lg/fqi;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x58

    const-string v29, "pop2"

    move-object/from16 v33, v0

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v0, v32

    new-instance v2, Lg/fqi;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x59

    const-string v29, "dup"

    const/16 v31, 0x2

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->MOVE_MULTI:Lg/cqf;

    new-instance v1, Lg/fqi;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x5a

    const-string v29, "dup_x1"

    const/16 v31, 0x6

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x5b

    const-string v29, "dup_x2"

    const/16 v31, 0x8

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x5c

    const-string v29, "dup2"

    const/16 v31, 0x4

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x5d

    const-string v29, "dup2_x1"

    const/16 v31, 0xa

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x5e

    const-string v29, "dup2_x2"

    const/16 v31, 0xc

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/fqi;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x5f

    const-string v29, "swap"

    const/16 v31, 0x6

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->ADD_INT:Lg/cqf;

    sget-object v1, Lg/cqz;->NARROW:Lg/cqz;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x60

    const-string v29, "iadd"

    const/16 v31, 0x3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->ADD_LONG:Lg/cqf;

    sget-object v2, Lg/cqz;->WIDE:Lg/cqz;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x61

    const-string v29, "ladd"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->ADD_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x62

    const-string v29, "fadd"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->ADD_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x63

    const-string v29, "dadd"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SUB_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x64

    const-string v29, "isub"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SUB_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x65

    const-string v29, "lsub"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SUB_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x66

    const-string v29, "fsub"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SUB_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x67

    const-string v29, "dsub"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->MUL_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x68

    const-string v29, "imul"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->MUL_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x69

    const-string v29, "lmul"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->MUL_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x6a

    const-string v29, "fmul"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->MUL_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x6b

    const-string v29, "dmul"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DIV_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x6c

    const-string v29, "idiv"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DIV_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x6d

    const-string v29, "ldiv"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DIV_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x6e

    const-string v29, "fdiv"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DIV_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x6f

    const-string v29, "ddiv"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->REM_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x70

    const-string v29, "irem"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->REM_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x71

    const-string v29, "lrem"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->REM_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x72

    const-string v29, "frem"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->REM_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x73

    const-string v29, "drem"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->NEG_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x74

    const-string v29, "ineg"

    const/16 v31, 0x2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->NEG_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x75

    const-string v29, "lneg"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->NEG_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x76

    const-string v29, "fneg"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->NEG_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x77

    const-string v29, "dneg"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SHL_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x78

    const-string v29, "ishl"

    const/16 v31, 0x3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SHL_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x79

    const-string v29, "lshl"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SHR_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x7a

    const-string v29, "ishr"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SHR_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x7b

    const-string v29, "lshr"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->USHR_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x7c

    const-string v29, "iushr"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->USHR_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x7d

    const-string v29, "lushr"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->AND_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x7e

    const-string v29, "iand"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->AND_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x7f

    const-string v29, "land"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->OR_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x80

    const-string v29, "ior"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->OR_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x81

    const-string v29, "lor"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->XOR_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x82

    const-string v29, "ixor"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->XOR_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x83

    const-string v29, "lxor"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->ADD_INT_LIT:Lg/cqf;

    new-instance v3, Lg/fqi;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lg/fqi;-><init>(I)V

    const/16 v28, 0x84

    const-string v29, "iinc"

    const/16 v30, 0x2

    const/16 v31, 0x2

    move-object/from16 v33, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->INT_TO_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x85

    const-string v29, "i2l"

    const/16 v30, 0x0

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->INT_TO_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x86

    const-string v29, "i2f"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->INT_TO_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x87

    const-string v29, "i2d"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->LONG_TO_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x88

    const-string v29, "l2i"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->LONG_TO_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x89

    const-string v29, "l2f"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->LONG_TO_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x8a

    const-string v29, "l2d"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->FLOAT_TO_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x8b

    const-string v29, "f2i"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->FLOAT_TO_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x8c

    const-string v29, "f2l"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->FLOAT_TO_DOUBLE:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x8d

    const-string v29, "f2d"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DOUBLE_TO_INT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x8e

    const-string v29, "d2i"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DOUBLE_TO_LONG:Lg/cqf;

    invoke-static {v2}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x8f

    const-string v29, "d2l"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->DOUBLE_TO_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x90

    const-string v29, "d2f"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->INT_TO_BYTE:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x91

    const-string v29, "i2b"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->INT_TO_CHAR:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x92

    const-string v29, "i2c"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->INT_TO_SHORT:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x93

    const-string v29, "i2s"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->CMP_LONG:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x94

    const-string v29, "lcmp"

    const/16 v31, 0x3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->CMPL_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x95

    const-string v29, "fcmpl"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->CMPG_FLOAT:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x96

    const-string v29, "fcmpg"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->CMPL_DOUBLE:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x97

    const-string v29, "dcmpl"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->CMPG_DOUBLE:Lg/cqf;

    invoke-static {v1}, Lg/t;->g(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0x98

    const-string v29, "dcmpg"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_EQZ:Lg/cqf;

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0x99

    const-string v29, "ifeq"

    const/16 v30, 0x2

    const/16 v31, 0x1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v2, v32

    sget-object v32, Lg/cqf;->IF_NEZ:Lg/cqf;

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0x9a

    const-string v29, "ifne"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v3, v32

    sget-object v32, Lg/cqf;->IF_LTZ:Lg/cqf;

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0x9b

    const-string v29, "iflt"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_GEZ:Lg/cqf;

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0x9c

    const-string v29, "ifge"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_GTZ:Lg/cqf;

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0x9d

    const-string v29, "ifgt"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_LEZ:Lg/cqf;

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0x9e

    const-string v29, "ifle"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_EQ:Lg/cqf;

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0x9f

    const-string v29, "if_icmpeq"

    const/16 v31, 0x2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v4, v32

    sget-object v32, Lg/cqf;->IF_NE:Lg/cqf;

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa0

    const-string v29, "if_icmpne"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v5, v32

    sget-object v32, Lg/cqf;->IF_LT:Lg/cqf;

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa1

    const-string v29, "if_icmplt"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_GE:Lg/cqf;

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa2

    const-string v29, "if_icmpge"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_GT:Lg/cqf;

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa3

    const-string v29, "if_icmpgt"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->IF_LE:Lg/cqf;

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa4

    const-string v29, "if_icmple"

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa5

    const-string v29, "if_acmpeq"

    move-object/from16 v32, v4

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    invoke-static {}, Lg/t;->h()Lg/kf;

    move-result-object v33

    const/16 v28, 0xa6

    const-string v29, "if_acmpne"

    move-object/from16 v32, v5

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->GOTO:Lg/cqf;

    new-instance v4, Lg/fqi;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xa7

    const-string v29, "goto"

    const/16 v31, 0x0

    move-object/from16 v33, v4

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v4, v32

    sget-object v32, Lg/cqf;->JAVA_JSR:Lg/cqf;

    new-instance v5, Lg/fqi;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xa8

    const-string v29, "jsr"

    const/16 v31, 0x1

    move-object/from16 v33, v5

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    move-object/from16 v5, v32

    sget-object v32, Lg/cqf;->JAVA_RET:Lg/cqf;

    new-instance v6, Lg/fqi;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xa9

    const-string v29, "ret"

    const/16 v30, 0x1

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->PACKED_SWITCH:Lg/cqf;

    new-instance v6, Lg/fbc;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, Lg/fbc;-><init>(I)V

    const/16 v28, 0xaa

    const-string v29, "tableswitch"

    const/16 v30, -0x1

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SPARSE_SWITCH:Lg/cqf;

    new-instance v6, Lg/cfg;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Lg/cfg;-><init>(I)V

    const/16 v28, 0xab

    const-string v29, "lookupswitch"

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->RETURN:Lg/cqf;

    new-instance v6, Lg/fqi;

    const/16 v7, 0x12

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xac

    const-string v29, "ireturn"

    const/16 v30, 0x0

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v6, Lg/fqi;

    const/16 v7, 0x13

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xad

    const-string v29, "lreturn"

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v6, Lg/fqi;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xae

    const-string v29, "freturn"

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v6, Lg/fqi;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xaf

    const-string v29, "dreturn"

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v6, Lg/fqi;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xb0

    const-string v29, "areturn"

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->RETURN_VOID:Lg/cqf;

    const/16 v33, 0x0

    const/16 v28, 0xb1

    const-string v29, "return"

    const/16 v31, 0x0

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->SGET:Lg/cqf;

    sget-object v33, Lg/enn;->FIELD_REF:Lg/enn;

    new-instance v6, Lg/fqi;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xb2

    const-string v29, "getstatic"

    const/16 v30, 0x2

    const/16 v31, 0x1

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->SPUT:Lg/cqf;

    new-instance v6, Lg/fqi;

    const/16 v7, 0x19

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xb3

    const-string v29, "putstatic"

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->IGET:Lg/cqf;

    new-instance v6, Lg/fqi;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xb4

    const-string v29, "getfield"

    const/16 v31, 0x2

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->IPUT:Lg/cqf;

    new-instance v6, Lg/fqi;

    const/16 v7, 0x1c

    invoke-direct {v6, v7}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xb5

    const-string v29, "putfield"

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v7, v27

    sget-object v6, Lg/cqf;->INVOKE_VIRTUAL:Lg/cqf;

    const/16 v8, 0xb6

    const-string v9, "invokevirtual"

    const/4 v10, 0x2

    invoke-static {v7, v8, v9, v10, v6}, Lg/t;->c([Lg/ahb;ILjava/lang/String;ILg/cqf;)V

    const-string v6, "invokespecial"

    sget-object v8, Lg/cqf;->INVOKE_SPECIAL:Lg/cqf;

    const/16 v9, 0xb7

    invoke-static {v7, v9, v6, v10, v8}, Lg/t;->c([Lg/ahb;ILjava/lang/String;ILg/cqf;)V

    const-string v6, "invokestatic"

    sget-object v8, Lg/cqf;->INVOKE_STATIC:Lg/cqf;

    const/16 v9, 0xb8

    invoke-static {v7, v9, v6, v10, v8}, Lg/t;->c([Lg/ahb;ILjava/lang/String;ILg/cqf;)V

    sget-object v6, Lg/cqf;->INVOKE_INTERFACE:Lg/cqf;

    const/16 v8, 0xb9

    const-string v9, "invokeinterface"

    const/4 v10, 0x4

    invoke-static {v7, v8, v9, v10, v6}, Lg/t;->c([Lg/ahb;ILjava/lang/String;ILg/cqf;)V

    const-string v6, "invokedynamic"

    sget-object v8, Lg/cqf;->INVOKE_CUSTOM:Lg/cqf;

    const/16 v9, 0xba

    invoke-static {v7, v9, v6, v10, v8}, Lg/t;->c([Lg/ahb;ILjava/lang/String;ILg/cqf;)V

    sget-object v32, Lg/cqf;->NEW_INSTANCE:Lg/cqf;

    sget-object v33, Lg/enn;->TYPE_REF:Lg/enn;

    new-instance v6, Lg/fqi;

    const/16 v8, 0x1d

    invoke-direct {v6, v8}, Lg/fqi;-><init>(I)V

    const/16 v28, 0xbb

    const-string v29, "new"

    const/16 v31, 0x1

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->NEW_ARRAY:Lg/cqf;

    new-instance v6, Lg/kf;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lg/kf;-><init>(I)V

    const/16 v28, 0xbc

    const-string v29, "newarray"

    const/16 v30, 0x1

    const/16 v31, 0x2

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    new-instance v6, Lg/kf;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lg/kf;-><init>(I)V

    const/16 v28, 0xbd

    const-string v29, "anewarray"

    const/16 v30, 0x2

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v7, v32

    move-object/from16 v6, v33

    sget-object v32, Lg/cqf;->ARRAY_LENGTH:Lg/cqf;

    invoke-static {v1}, Lg/t;->f(Lg/cqz;)Lg/apa;

    move-result-object v33

    const/16 v28, 0xbe

    const-string v29, "arraylength"

    const/16 v30, 0x0

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->THROW:Lg/cqf;

    new-instance v1, Lg/kf;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Lg/kf;-><init>(I)V

    const/16 v28, 0xbf

    const-string v29, "athrow"

    const/16 v31, 0x1

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->CHECK_CAST:Lg/cqf;

    new-instance v1, Lg/kf;

    const/4 v8, 0x3

    invoke-direct {v1, v8}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc0

    const-string v29, "checkcast"

    const/16 v30, 0x2

    const/16 v31, 0x2

    move-object/from16 v34, v1

    move-object/from16 v33, v6

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    sget-object v32, Lg/cqf;->INSTANCE_OF:Lg/cqf;

    new-instance v1, Lg/kf;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc1

    const-string v29, "instanceof"

    move-object/from16 v34, v1

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    move-object/from16 v6, v33

    sget-object v32, Lg/cqf;->MONITOR_ENTER:Lg/cqf;

    new-instance v1, Lg/kf;

    const/4 v8, 0x6

    invoke-direct {v1, v8}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc2

    const-string v29, "monitorenter"

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    sget-object v32, Lg/cqf;->MONITOR_EXIT:Lg/cqf;

    new-instance v1, Lg/kf;

    const/4 v8, 0x7

    invoke-direct {v1, v8}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc3

    const-string v29, "monitorexit"

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v1, Lg/cfg;

    const/16 v8, 0xe

    invoke-direct {v1, v8}, Lg/cfg;-><init>(I)V

    const/16 v28, 0xc4

    const-string v29, "wide"

    const/16 v30, -0x1

    const/16 v31, -0x1

    move-object/from16 v32, v0

    move-object/from16 v33, v1

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v0, Lg/kf;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc5

    const-string v29, "multianewarray"

    const/16 v30, 0x3

    move-object/from16 v34, v0

    move-object/from16 v33, v6

    move-object/from16 v32, v7

    invoke-static/range {v27 .. v34}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    const/16 v31, 0x1

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0xc6

    const-string v29, "ifnull"

    const/16 v30, 0x2

    move-object/from16 v32, v2

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    invoke-static {}, Lg/t;->i()Lg/kf;

    move-result-object v33

    const/16 v28, 0xc7

    const-string v29, "ifnonnull"

    move-object/from16 v32, v3

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v0, Lg/kf;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc8

    const-string v29, "goto_w"

    const/16 v30, 0x4

    const/16 v31, 0x0

    move-object/from16 v33, v0

    move-object/from16 v32, v4

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    new-instance v0, Lg/kf;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const/16 v28, 0xc9

    const-string v29, "jsr_w"

    const/16 v31, 0x1

    move-object/from16 v33, v0

    move-object/from16 v32, v5

    invoke-static/range {v27 .. v33}, Lg/t;->k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V

    return-void
.end method

.method public static b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V
    .locals 8

    aget-object v0, p0, p1

    if-nez v0, :cond_0

    new-instance v0, Lg/ahb;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lg/ahb;-><init>(ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    aput-object v0, p0, p1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate opcode init: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c([Lg/ahb;ILjava/lang/String;ILg/cqf;)V
    .locals 9

    sget-object v0, Lg/cqf;->INVOKE_CUSTOM:Lg/cqf;

    if-ne p4, v0, :cond_0

    sget-object v0, Lg/enn;->CALL_SITE:Lg/enn;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lg/enn;->METHOD_REF:Lg/enn;

    goto :goto_0

    :goto_1
    new-instance v8, Lg/gqc;

    const/16 v0, 0x9

    invoke-direct {v8, p3, p4, v0}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    const/4 v5, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    return-void
.end method

.method public static d([Lg/ahb;ILjava/lang/String;Z)V
    .locals 9

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x1

    :goto_0
    sget-object v6, Lg/cqf;->CONST:Lg/cqf;

    sget-object v7, Lg/enn;->NONE:Lg/enn;

    new-instance v8, Lg/gum;

    invoke-direct {v8, p3}, Lg/gum;-><init>(Z)V

    const/4 v5, 0x2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    return-void
.end method

.method public static e()Lg/kf;
    .locals 2

    new-instance v0, Lg/kf;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    return-object v0
.end method

.method public static f(Lg/cqz;)Lg/apa;
    .locals 2

    new-instance v0, Lg/apa;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg/apa;-><init>(ILg/cqz;)V

    return-object v0
.end method

.method public static g(Lg/cqz;)Lg/apa;
    .locals 2

    new-instance v0, Lg/apa;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/apa;-><init>(ILg/cqz;)V

    return-object v0
.end method

.method public static h()Lg/kf;
    .locals 2

    new-instance v0, Lg/kf;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    return-object v0
.end method

.method public static i()Lg/kf;
    .locals 2

    new-instance v0, Lg/kf;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    return-object v0
.end method

.method public static j([Lg/ahb;ILjava/lang/String;Lg/cqf;J)V
    .locals 8

    sget-object v6, Lg/enn;->NONE:Lg/enn;

    new-instance v7, Lg/egf;

    invoke-direct {v7, p4, p5, p3}, Lg/egf;-><init>(JLjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    return-void
.end method

.method public static k([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/dle;)V
    .locals 8

    sget-object v6, Lg/enn;->NONE:Lg/enn;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lg/t;->b([Lg/ahb;ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V

    return-void
.end method

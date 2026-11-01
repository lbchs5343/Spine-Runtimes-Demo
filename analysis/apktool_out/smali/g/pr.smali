.class public final Lg/pr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static final b:Lg/dba;


# instance fields
.field public final c:S

.field public final d:Z

.field public final e:B

.field public final f:Ljava/lang/String;

.field public final g:B

.field public final h:B

.field public final i:B

.field public final j:S

.field public final k:B

.field public final l:B

.field public final m:B

.field public final n:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/pr;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/pr;->b:Lg/dba;

    const/4 v0, 0x0

    sput v0, Lg/pr;->a:I

    return-void
.end method

.method public constructor <init>(SS[C[CBBIBBBBSSSBBSSS[C[CBBI)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p15

    move/from16 v9, p17

    move/from16 v10, p18

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x3

    const/16 v16, 0x0

    sget-object v14, Lg/pr;->b:Lg/dba;

    if-ltz v4, :cond_1

    if-le v4, v15, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v11, "Invalid orientation value: {}"

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v14, v4, v11}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v11, 0x1

    :goto_1
    if-ltz v5, :cond_2

    if-le v5, v15, :cond_3

    :cond_2
    const-string v11, "Invalid touchscreen value: {}"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v14, v5, v11}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v11, 0x1

    :cond_3
    const/4 v15, -0x1

    move/from16 p5, v11

    move/from16 v11, p7

    if-ge v11, v15, :cond_4

    const-string v15, "Invalid density value: {}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11, v15}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    move/from16 v15, p5

    :goto_2
    if-ltz v6, :cond_5

    move/from16 p5, v15

    const/4 v15, 0x3

    if-le v6, v15, :cond_6

    :cond_5
    const-string v15, "Invalid keyboard value: {}"

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v14, v6, v15}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p5, 0x1

    const/4 v6, 0x0

    :cond_6
    const/4 v15, 0x4

    if-ltz v7, :cond_8

    if-le v7, v15, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v14, p5

    goto :goto_4

    :cond_8
    :goto_3
    const-string v15, "Invalid navigation value: {}"

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v14, v7, v15}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v14, 0x1

    :goto_4
    if-eqz v12, :cond_9

    array-length v15, v12

    if-eqz v15, :cond_9

    aget-char v15, v12, v16

    if-nez v15, :cond_a

    :cond_9
    const/4 v12, 0x0

    :cond_a
    if-eqz v13, :cond_b

    array-length v15, v13

    if-eqz v15, :cond_b

    aget-char v15, v13, v16

    if-nez v15, :cond_c

    :cond_b
    const/4 v13, 0x0

    :cond_c
    iput-byte v4, v0, Lg/pr;->h:B

    iput-byte v5, v0, Lg/pr;->k:B

    iput-byte v6, v0, Lg/pr;->m:B

    iput-byte v7, v0, Lg/pr;->e:B

    move/from16 v4, p10

    iput-byte v4, v0, Lg/pr;->g:B

    move/from16 v4, p11

    iput-byte v4, v0, Lg/pr;->i:B

    move/from16 v4, p12

    iput-short v4, v0, Lg/pr;->n:S

    move/from16 v4, p13

    iput-short v4, v0, Lg/pr;->c:S

    move/from16 v4, p14

    iput-short v4, v0, Lg/pr;->j:S

    move/from16 v4, p22

    iput-byte v4, v0, Lg/pr;->l:B

    iput-boolean v14, v0, Lg/pr;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-mnc"

    const/16 v6, 0x20

    if-eqz p1, :cond_10

    const-string v7, "-mcc"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v7, v15, v16

    const-string v7, "%03d"

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, -0x1

    if-eq v1, v14, :cond_f

    if-eqz v1, :cond_11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p24

    if-gt v5, v6, :cond_e

    if-lez v1, :cond_d

    const/16 v5, 0xa

    if-ge v1, v5, :cond_d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v16

    const-string v1, "%02d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    const/4 v14, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v16

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    const-string v1, "-mnc00"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    const/16 v7, 0x2d

    if-nez v13, :cond_13

    if-nez v12, :cond_13

    aget-char v14, v3, v16

    if-nez v14, :cond_12

    aget-char v14, v2, v16

    if-eqz v14, :cond_13

    :cond_12
    array-length v14, v3

    const/4 v15, 0x3

    if-eq v14, v15, :cond_13

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    aget-char v2, v3, v16

    if-eqz v2, :cond_1a

    const-string v2, "-r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_13
    aget-char v14, v2, v16

    if-nez v14, :cond_14

    aget-char v14, v3, v16

    if-nez v14, :cond_14

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_14
    const-string v14, "-b+"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v14, v2, v16

    if-eqz v14, :cond_15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_15
    const/16 v2, 0x2b

    if-eqz v12, :cond_16

    array-length v14, v12

    const/4 v15, 0x4

    if-ne v14, v15, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_16
    array-length v12, v3

    if-eq v12, v5, :cond_17

    array-length v12, v3

    const/4 v15, 0x3

    if-ne v12, v15, :cond_18

    :cond_17
    aget-char v12, v3, v16

    if-eqz v12, :cond_18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_18
    if-eqz v13, :cond_1a

    array-length v3, v13

    const/4 v12, 0x5

    if-lt v3, v12, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v13

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_19

    aget-char v14, v13, v12

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v0, Lg/pr;->i:B

    const/4 v14, 0x1

    if-eq v1, v14, :cond_1d

    if-eq v1, v5, :cond_1c

    const/4 v15, 0x3

    if-eq v1, v15, :cond_1b

    goto :goto_9

    :cond_1b
    const-string v1, "-masculine"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1c
    const-string v1, "-feminine"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1d
    const-string v1, "-neuter"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    and-int/lit16 v1, v8, 0xc0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1f

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1e

    goto :goto_a

    :cond_1e
    const-string v1, "-ldrtl"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_1f
    const-string v1, "-ldltr"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string v1, "dp"

    if-eqz v9, :cond_20

    const-string v2, "-sw"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    if-eqz v10, :cond_21

    const-string v2, "-w"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    if-eqz p19, :cond_22

    const-string v2, "-h"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p19

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_22
    move/from16 v2, p19

    :goto_b
    and-int/lit8 v1, v8, 0xf

    const/4 v14, 0x1

    if-eq v1, v14, :cond_26

    if-eq v1, v5, :cond_25

    const/4 v15, 0x3

    if-eq v1, v15, :cond_24

    const/4 v15, 0x4

    if-eq v1, v15, :cond_23

    goto :goto_c

    :cond_23
    const-string v1, "-xlarge"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_24
    const-string v1, "-large"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_25
    const-string v1, "-normal"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_26
    const-string v1, "-small"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    and-int/lit8 v1, v8, 0x30

    const/16 v3, 0x10

    if-eq v1, v3, :cond_28

    if-eq v1, v6, :cond_27

    goto :goto_d

    :cond_27
    const-string v1, "-long"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_28
    const-string v1, "-notlong"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    iget-byte v1, v0, Lg/pr;->l:B

    const/16 v18, 0x3

    and-int/lit8 v1, v1, 0x3

    const/4 v14, 0x1

    if-eq v1, v14, :cond_2a

    if-eq v1, v5, :cond_29

    goto :goto_e

    :cond_29
    const-string v1, "-round"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_2a
    const-string v1, "-notround"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    and-int/lit8 v1, p23, 0xc

    const/16 v12, 0x8

    const/4 v15, 0x4

    if-eq v1, v15, :cond_2c

    if-eq v1, v12, :cond_2b

    :goto_f
    const/16 v18, 0x3

    goto :goto_10

    :cond_2b
    const-string v13, "-highdr"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_2c
    const-string v13, "-lowdr"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :goto_10
    and-int/lit8 v13, p23, 0x3

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2e

    if-eq v13, v5, :cond_2d

    goto :goto_11

    :cond_2d
    const-string v15, "-widecg"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_2e
    const-string v15, "-nowidecg"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    iget-byte v15, v0, Lg/pr;->h:B

    if-eq v15, v14, :cond_31

    if-eq v15, v5, :cond_30

    const/4 v14, 0x3

    if-eq v15, v14, :cond_2f

    goto :goto_12

    :cond_2f
    const-string v14, "-square"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_30
    const-string v14, "-land"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_31
    const-string v14, "-port"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    and-int/lit8 v14, p16, 0xf

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_13

    :pswitch_1
    const-string v15, "-hugeui"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_2
    const-string v15, "-largeui"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_3
    const-string v15, "-mediumui"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_4
    const-string v15, "-smallui"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_5
    const-string v15, "-godzillaui"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_6
    const-string v15, "-vrheadset"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_7
    const-string v15, "-watch"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_8
    const-string v15, "-appliance"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_9
    const-string v15, "-television"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_a
    const-string v15, "-car"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_b
    const-string v15, "-desk"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    and-int/lit8 v15, p16, 0x30

    if-eq v15, v3, :cond_33

    if-eq v15, v6, :cond_32

    goto :goto_14

    :cond_32
    const-string v3, "-night"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_33
    const-string v3, "-notnight"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14
    if-eqz v11, :cond_3b

    const/16 v3, 0x78

    if-eq v11, v3, :cond_3a

    const/16 v3, 0xa0

    if-eq v11, v3, :cond_39

    const/16 v3, 0xd5

    if-eq v11, v3, :cond_38

    const/16 v3, 0xf0

    if-eq v11, v3, :cond_37

    const/16 v3, 0x140

    if-eq v11, v3, :cond_36

    const/16 v3, 0x1e0

    if-eq v11, v3, :cond_35

    const/16 v3, 0x280

    if-eq v11, v3, :cond_34

    packed-switch v11, :pswitch_data_1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "dpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :pswitch_c
    const-string v3, "-nodpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :pswitch_d
    const-string v3, "-anydpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_34
    const-string v3, "-xxxhdpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_35
    const-string v3, "-xxhdpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_36
    const-string v3, "-xhdpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_37
    const-string v3, "-hdpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_38
    const-string v3, "-tvdpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_39
    const-string v3, "-mdpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_3a
    const-string v3, "-ldpi"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_15
    iget-byte v3, v0, Lg/pr;->k:B

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3e

    if-eq v3, v5, :cond_3d

    const/4 v15, 0x3

    if-eq v3, v15, :cond_3c

    goto :goto_16

    :cond_3c
    const-string v3, "-finger"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_3d
    const-string v3, "-stylus"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_3e
    const-string v3, "-notouch"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_16
    iget-byte v3, v0, Lg/pr;->g:B

    const/4 v15, 0x3

    and-int/2addr v3, v15

    const/4 v6, 0x1

    if-eq v3, v6, :cond_41

    if-eq v3, v5, :cond_40

    if-eq v3, v15, :cond_3f

    goto :goto_17

    :cond_3f
    const-string v3, "-keyssoft"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_40
    const-string v3, "-keyshidden"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_41
    const-string v3, "-keysexposed"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    iget-byte v3, v0, Lg/pr;->m:B

    const/4 v6, 0x1

    if-eq v3, v6, :cond_44

    if-eq v3, v5, :cond_43

    const/4 v15, 0x3

    if-eq v3, v15, :cond_42

    goto :goto_18

    :cond_42
    const-string v3, "-12key"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_43
    const-string v3, "-qwerty"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_44
    const-string v3, "-nokeys"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    iget-byte v3, v0, Lg/pr;->g:B

    and-int/lit8 v3, v3, 0xc

    const/4 v15, 0x4

    if-eq v3, v15, :cond_46

    if-eq v3, v12, :cond_45

    goto :goto_19

    :cond_45
    const-string v3, "-navhidden"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_46
    const-string v3, "-navexposed"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    iget-byte v3, v0, Lg/pr;->e:B

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4a

    if-eq v3, v5, :cond_49

    const/4 v15, 0x3

    if-eq v3, v15, :cond_48

    const/4 v15, 0x4

    if-eq v3, v15, :cond_47

    goto :goto_1a

    :cond_47
    const-string v3, "-wheel"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_48
    const/4 v15, 0x4

    const-string v3, "-trackball"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_49
    const/4 v15, 0x4

    const-string v3, "-dpad"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_4a
    const/4 v15, 0x4

    const-string v3, "-nonav"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    iget-short v3, v0, Lg/pr;->n:S

    if-eqz v3, :cond_4c

    iget-short v6, v0, Lg/pr;->c:S

    if-eqz v6, :cond_4c

    const-string v7, "-%dx%d"

    if-le v3, v6, :cond_4b

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v6, v0, Lg/pr;->c:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v16

    const/16 v17, 0x1

    aput-object v6, v5, v17

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_4b
    const/16 v17, 0x1

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v6, v0, Lg/pr;->n:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v16

    aput-object v6, v5, v17

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    :goto_1b
    iget-short v3, v0, Lg/pr;->j:S

    if-lez v3, :cond_56

    const/4 v5, 0x7

    if-eq v14, v5, :cond_55

    if-nez v13, :cond_55

    if-eqz v1, :cond_4d

    goto :goto_1e

    :cond_4d
    iget-byte v1, v0, Lg/pr;->l:B

    const/16 v18, 0x3

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_4e

    const/16 v14, 0x17

    goto :goto_1f

    :cond_4e
    const v1, 0xfffe

    if-ne v11, v1, :cond_4f

    const/16 v14, 0x15

    goto :goto_1f

    :cond_4f
    if-nez v9, :cond_54

    if-nez v10, :cond_54

    if-eqz v2, :cond_50

    goto :goto_1d

    :cond_50
    and-int/lit8 v1, p16, 0x3f

    if-eqz v1, :cond_51

    const/16 v14, 0x8

    goto :goto_1f

    :cond_51
    and-int/lit8 v1, v8, 0x3f

    if-nez v1, :cond_53

    if-eqz v11, :cond_52

    goto :goto_1c

    :cond_52
    const/4 v14, 0x0

    goto :goto_1f

    :cond_53
    :goto_1c
    const/4 v14, 0x4

    goto :goto_1f

    :cond_54
    :goto_1d
    const/16 v14, 0xd

    goto :goto_1f

    :cond_55
    :goto_1e
    const/16 v14, 0x1a

    :goto_1f
    if-lt v3, v14, :cond_56

    const-string v1, "-v"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, v0, Lg/pr;->j:S

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_56
    iget-boolean v1, v0, Lg/pr;->d:Z

    if-eqz v1, :cond_57

    const-string v1, "-ERR"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lg/pr;->a:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lg/pr;->a:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/pr;->f:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffe
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lg/pr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lg/pr;

    iget-object v0, p0, Lg/pr;->f:Ljava/lang/String;

    iget-object p1, p1, Lg/pr;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/pr;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/pr;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "[DEFAULT]"

    return-object v0
.end method

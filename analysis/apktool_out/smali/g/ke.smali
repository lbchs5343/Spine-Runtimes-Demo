.class public final Lg/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final synthetic d:I

.field public e:Ljava/io/Serializable;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg/ke;->d:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lg/ke;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/ke;->e:Ljava/io/Serializable;

    const/4 v0, -0x1

    iput v0, p0, Lg/ke;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ke;->h:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lg/cjg;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/ke;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lg/ke;->k()V

    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v0, p1}, Lg/ke;->l([ILg/cjg;)V

    return-void
.end method

.method public constructor <init>(Lg/dsg;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/ke;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ke;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lg/dsg;->u()Lg/dsg;

    move-result-object p1

    iput-object p1, p0, Lg/ke;->c:Ljava/lang/Object;

    new-array p1, p2, [Lg/baw;

    iput-object p1, p0, Lg/ke;->e:Ljava/io/Serializable;

    iput p3, p0, Lg/ke;->g:I

    return-void
.end method


# virtual methods
.method public j(Lg/baw;I)V
    .locals 1

    iget-boolean v0, p1, Lg/baw;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/baw;->b:Z

    iput p2, p1, Lg/baw;->g:I

    iget-object p2, p0, Lg/ke;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k()V
    .locals 2

    new-instance v0, Lg/cjg;

    invoke-direct {v0}, Lg/cjg;-><init>()V

    iput-object v0, p0, Lg/ke;->b:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v1, v0, [[I

    iput-object v1, p0, Lg/ke;->c:Ljava/lang/Object;

    new-array v0, v0, [Lg/cjg;

    iput-object v0, p0, Lg/ke;->e:Ljava/io/Serializable;

    return-void
.end method

.method public l([ILg/cjg;)V
    .locals 5

    iget v0, p0, Lg/ke;->g:I

    if-eqz v0, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    iput-object p2, p0, Lg/ke;->b:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lg/ke;->c:Ljava/lang/Object;

    check-cast v1, [[I

    array-length v2, v1

    if-lt v0, v2, :cond_2

    add-int/lit8 v2, v0, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lg/ke;->c:Ljava/lang/Object;

    new-array v1, v2, [Lg/cjg;

    iget-object v2, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v2, [Lg/cjg;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lg/ke;->e:Ljava/io/Serializable;

    :cond_2
    iget-object v0, p0, Lg/ke;->c:Ljava/lang/Object;

    check-cast v0, [[I

    iget v1, p0, Lg/ke;->g:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast p1, [Lg/cjg;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/ke;->g:I

    return-void
.end method

.method public m(Lg/eyn;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lg/ke;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "input"

    invoke-static {v2, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lg/erq;->c:[B

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v2}, Lg/erq;->w(IILjava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v6, v2}, Lg/erq;->l(IILjava/lang/String;)I

    move-result v6

    sub-int v7, v6, v4

    const/16 v8, 0x5b

    const/16 v9, 0x3a

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ge v7, v11, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v12, 0x61

    invoke-static {v7, v12}, Lg/bff;->ad(II)I

    move-result v13

    const/16 v14, 0x41

    if-ltz v13, :cond_1

    const/16 v13, 0x7a

    invoke-static {v7, v13}, Lg/bff;->ad(II)I

    move-result v13

    if-lez v13, :cond_2

    :cond_1
    invoke-static {v7, v14}, Lg/bff;->ad(II)I

    move-result v13

    if-ltz v13, :cond_9

    const/16 v13, 0x5a

    invoke-static {v7, v13}, Lg/bff;->ad(II)I

    move-result v7

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v4, 0x1

    :goto_0
    if-ge v7, v6, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v12, v13, :cond_3

    const/16 v15, 0x7b

    if-ge v13, v15, :cond_3

    goto :goto_1

    :cond_3
    if-gt v14, v13, :cond_4

    if-ge v13, v8, :cond_4

    goto :goto_1

    :cond_4
    const/16 v15, 0x30

    if-gt v15, v13, :cond_5

    if-ge v13, v9, :cond_5

    goto :goto_1

    :cond_5
    const/16 v15, 0x2b

    if-ne v13, v15, :cond_6

    goto :goto_1

    :cond_6
    const/16 v15, 0x2d

    if-ne v13, v15, :cond_7

    goto :goto_1

    :cond_7
    const/16 v15, 0x2e

    if-ne v13, v15, :cond_8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    if-ne v13, v9, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, -0x1

    :goto_3
    const-string v12, "http"

    const-string v13, "https"

    const-string v14, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    const/4 v15, 0x1

    if-eq v7, v10, :cond_c

    const-string v8, "https:"

    invoke-static {v2, v4, v8, v15}, Lg/dmc;->bz(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    iput-object v13, v0, Lg/ke;->b:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x6

    goto :goto_4

    :cond_a
    const-string v8, "http:"

    invoke-static {v2, v4, v8, v15}, Lg/dmc;->bz(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    iput-object v12, v0, Lg/ke;->b:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x5

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    if-eqz v1, :cond_33

    iget-object v7, v1, Lg/eyn;->e:Ljava/lang/String;

    iput-object v7, v0, Lg/ke;->b:Ljava/lang/Object;

    :goto_4
    move v7, v4

    const/4 v8, 0x0

    const/16 v16, 0x1

    :goto_5
    const/16 v15, 0x2f

    const/16 v9, 0x5c

    if-ge v7, v6, :cond_e

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_d

    if-ne v10, v15, :cond_e

    :cond_d
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0x3a

    const/4 v10, -0x1

    goto :goto_5

    :cond_e
    const-string v7, " \"\'<>#"

    const-string v10, ""

    const/16 v9, 0x23

    if-ge v8, v11, :cond_12

    if-eqz v1, :cond_12

    iget-object v11, v1, Lg/eyn;->e:Ljava/lang/String;

    iget-object v15, v0, Lg/ke;->b:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v11, v15}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Lg/eyn;->n()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lg/ke;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lg/eyn;->o()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lg/ke;->e:Ljava/io/Serializable;

    iget-object v8, v1, Lg/eyn;->c:Ljava/lang/String;

    iput-object v8, v0, Lg/ke;->i:Ljava/lang/Object;

    iget v8, v1, Lg/eyn;->d:I

    iput v8, v0, Lg/ke;->g:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lg/eyn;->r()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v4, v6, :cond_10

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_23

    :cond_10
    invoke-virtual {v1}, Lg/eyn;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 v8, 0xd3

    invoke-static {v5, v5, v8, v1, v7}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/gpu;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    iput-object v1, v0, Lg/ke;->a:Ljava/lang/Object;

    goto/16 :goto_13

    :cond_12
    :goto_7
    add-int/2addr v4, v8

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_8
    const-string v11, "@/\\?#"

    invoke-static {v4, v6, v2, v11}, Lg/erq;->t(IILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eq v11, v6, :cond_13

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    :goto_9
    const/4 v5, -0x1

    goto :goto_a

    :cond_13
    const/4 v15, -0x1

    goto :goto_9

    :goto_a
    if-eq v15, v5, :cond_18

    if-eq v15, v9, :cond_18

    const/16 v5, 0x2f

    if-eq v15, v5, :cond_18

    const/16 v5, 0x5c

    if-eq v15, v5, :cond_18

    const/16 v5, 0x3f

    if-eq v15, v5, :cond_18

    const/16 v5, 0x40

    if-eq v15, v5, :cond_14

    const/4 v5, 0x0

    goto :goto_8

    :cond_14
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const-string v15, "%40"

    if-nez v1, :cond_17

    move/from16 p1, v1

    const/16 v9, 0x3a

    invoke-static {v2, v4, v11, v9}, Lg/erq;->ae(Ljava/lang/String;IIC)I

    move-result v1

    const/16 v9, 0xf0

    invoke-static {v4, v1, v9, v2, v5}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lg/ke;->c:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v15, v4, v8}, Lg/awf;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    :cond_15
    iput-object v4, v0, Lg/ke;->c:Ljava/lang/Object;

    if-eq v1, v11, :cond_16

    add-int/lit8 v1, v1, 0x1

    const/16 v9, 0xf0

    invoke-static {v1, v11, v9, v2, v5}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/ke;->e:Ljava/io/Serializable;

    const/4 v1, 0x1

    goto :goto_b

    :cond_16
    const/16 v9, 0xf0

    move/from16 v1, p1

    :goto_b
    const/4 v8, 0x1

    goto :goto_c

    :cond_17
    move/from16 p1, v1

    const/16 v9, 0xf0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xf0

    invoke-static {v4, v11, v9, v2, v5}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/ke;->e:Ljava/io/Serializable;

    move/from16 v1, p1

    :goto_c
    add-int/lit8 v4, v11, 0x1

    const/4 v5, 0x0

    const/16 v9, 0x23

    goto/16 :goto_8

    :cond_18
    move v1, v4

    :goto_d
    if-ge v1, v11, :cond_1d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5b

    if-ne v5, v8, :cond_1b

    :cond_19
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v11, :cond_1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x5d

    if-ne v5, v9, :cond_19

    :cond_1a
    const/16 v9, 0x3a

    goto :goto_e

    :cond_1b
    const/16 v9, 0x3a

    if-ne v5, v9, :cond_1c

    goto :goto_f

    :cond_1c
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    move v1, v11

    :goto_f
    add-int/lit8 v5, v1, 0x1

    const/4 v8, 0x4

    const/16 v9, 0x22

    if-ge v5, v11, :cond_20

    invoke-static {v2, v4, v1, v8}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lg/byh;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lg/ke;->i:Ljava/lang/Object;

    const/16 v8, 0xf8

    :try_start_0
    invoke-static {v5, v11, v8, v2, v10}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x1

    if-gt v12, v8, :cond_1e

    const/high16 v12, 0x10000

    if-ge v8, v12, :cond_1e

    goto :goto_10

    :catch_0
    nop

    :cond_1e
    const/4 v8, -0x1

    :goto_10
    iput v8, v0, Lg/ke;->g:I

    const/4 v15, -0x1

    if-eq v8, v15, :cond_1f

    goto :goto_12

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URL port: \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    const/4 v15, -0x1

    invoke-static {v2, v4, v1, v8}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg/byh;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lg/ke;->i:Ljava/lang/Object;

    iget-object v5, v0, Lg/ke;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    const/16 v5, 0x50

    goto :goto_11

    :cond_21
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v5, 0x1bb

    goto :goto_11

    :cond_22
    const/4 v5, -0x1

    :goto_11
    iput v5, v0, Lg/ke;->g:I

    :goto_12
    iget-object v5, v0, Lg/ke;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_32

    move v4, v11

    :cond_23
    :goto_13
    const-string v1, "?#"

    invoke-static {v4, v6, v2, v1}, Lg/erq;->t(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v4, v1, :cond_24

    goto/16 :goto_1a

    :cond_24
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x2f

    if-eq v5, v8, :cond_26

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_25

    goto :goto_14

    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_26
    :goto_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :goto_15
    if-ge v4, v1, :cond_2f

    const-string v5, "/\\"

    invoke-static {v4, v1, v2, v5}, Lg/erq;->t(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ge v5, v1, :cond_27

    const/4 v12, 0x1

    goto :goto_16

    :cond_27
    const/4 v12, 0x0

    :goto_16
    const-string v8, " \"<>^`{}|/\\?#"

    const/16 v9, 0xf0

    invoke-static {v4, v5, v9, v2, v8}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    const-string v8, "%2e"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    goto/16 :goto_19

    :cond_28
    const-string v8, ".."

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string v8, "%2e."

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string v8, ".%2e"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string v8, "%2e%2e"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    goto :goto_18

    :cond_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_2a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    if-eqz v12, :cond_2d

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2b
    :goto_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2c
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_19
    if-eqz v12, :cond_2e

    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_15

    :cond_2e
    move v4, v5

    goto/16 :goto_15

    :cond_2f
    :goto_1a
    if-ge v1, v6, :cond_30

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_30

    const/16 v3, 0x23

    invoke-static {v2, v1, v6, v3}, Lg/erq;->ae(Ljava/lang/String;IIC)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xd0

    invoke-static {v1, v4, v3, v2, v7}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/gpu;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lg/ke;->a:Ljava/lang/Object;

    move v1, v4

    :cond_30
    if-ge v1, v6, :cond_31

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_31

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xb0

    invoke-static {v1, v6, v3, v2, v10}, Lg/gpu;->k(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/ke;->f:Ljava/lang/Object;

    :cond_31
    return-void

    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URL host: \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_34

    invoke-static {v3, v2}, Lg/dcv;->bu(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_34
    move-object v1, v2

    :goto_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-static {v3, v1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public n()Lg/eyn;
    .locals 13

    iget-object v0, p0, Lg/ke;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lg/ke;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v1, v1, v3}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1, v1, v3}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg/ke;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lg/ke;->o()I

    move-result v6

    iget-object v7, p0, Lg/ke;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v8, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v1, v1, v3}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lg/ke;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    const/4 v12, 0x3

    invoke-static {v11, v1, v1, v12}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_1
    move-object v11, v9

    :goto_2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v8, v10

    goto :goto_3

    :cond_3
    move-object v8, v9

    :goto_3
    iget-object v10, p0, Lg/ke;->f:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_4

    invoke-static {v10, v1, v1, v3}, Lg/gpu;->h(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-virtual {p0}, Lg/ke;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lg/eyn;

    move-object v3, v0

    invoke-direct/range {v1 .. v10}, Lg/eyn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()I
    .locals 3

    iget v0, p0, Lg/ke;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lg/ke;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1bb

    :cond_2
    :goto_0
    return v1
.end method

.method public p(Lg/baw;I)V
    .locals 3

    iget v0, p1, Lg/baw;->c:I

    iget-object v1, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v1, [Lg/baw;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lg/ke;->j(Lg/baw;I)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p1, Lg/baw;->b:Z

    iput p2, p1, Lg/baw;->d:I

    aput-object p1, v1, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lg/ke;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/ke;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lg/ke;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lg/ke;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lg/ke;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Lg/dcv;->bg(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ke;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lg/ke;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, Lg/ke;->g:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lg/ke;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_6
    invoke-virtual {p0}, Lg/ke;->o()I

    move-result v1

    iget-object v4, p0, Lg/ke;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x50

    goto :goto_3

    :cond_7
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x1bb

    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lg/ke;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_b

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lg/ke;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ke;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lg/gpu;->i(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_c
    iget-object v1, p0, Lg/ke;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ke;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;
    }
.end annotation


# instance fields
.field protected d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

.field public dq:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

.field private ox:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

.field private p:Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;


# direct methods
.method public constructor <init>(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/d/mp;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;-><init>(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/d/mp;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;
    .locals 16

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    iget v2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->m()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->wi()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->xv()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->cc()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->dc()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->jw()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->fd()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->bu()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->cv()Ljava/lang/String;

    move-result-object v11

    iget v12, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ox:F

    iget v13, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->p:F

    const-string v14, "0"

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v7, :cond_0

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    add-float/2addr v1, v12

    sub-float/2addr v1, v5

    sub-float v1, v1, p3

    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    :goto_1
    add-float v2, v0, v4

    goto :goto_3

    :cond_2
    if-eqz v10, :cond_8

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    :goto_2
    add-float/2addr v0, v13

    sub-float/2addr v0, v6

    sub-float v2, v0, p4

    goto :goto_3

    :cond_3
    const-string v14, "1"

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v14, :cond_5

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    sub-float v12, v12, p3

    div-float/2addr v12, v15

    add-float/2addr v1, v12

    if-eqz v9, :cond_4

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_8

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    goto :goto_2

    :cond_5
    const-string v4, "2"

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    sub-float v13, v13, p4

    div-float/2addr v13, v15

    add-float/2addr v2, v13

    if-eqz v7, :cond_6

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    add-float v1, v0, v3

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_8

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    add-float/2addr v0, v12

    sub-float/2addr v0, v5

    sub-float v1, v0, p3

    goto :goto_3

    :cond_7
    const-string v3, "3"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    sub-float v12, v12, p3

    div-float/2addr v12, v15

    add-float/2addr v1, v12

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    sub-float v13, v13, p4

    div-float/2addr v13, v15

    add-float v2, v13, v0

    :cond_8
    :goto_3
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;-><init>(FF)V

    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->m()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->wi()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->xv()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->cc()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->dc()Z

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->jw()Z

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->fd()Z

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->bu()Z

    move-result p1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->p:Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;->dq:F

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_1

    iget v4, p2, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    :goto_0
    sub-float/2addr v0, v2

    iget v2, p3, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->p:Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;->d:F

    cmpl-float v1, p1, v7

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p2, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->d:F

    :goto_2
    sub-float/2addr p1, v3

    iget p2, p3, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->d:F

    sub-float v1, p1, p2

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;-><init>(FF)V

    return-object p1
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;F)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    if-nez v2, :cond_0

    goto/16 :goto_1a

    :cond_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->i()V

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->fw()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    goto/16 :goto_1a

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->s()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->fw()F

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->f()F

    move-result v6

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->q()F

    move-result v7

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->jy()F

    move-result v8

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ig()F

    move-result v9

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->nh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->vf()Ljava/lang/String;

    move-result-object v11

    iget v12, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    add-float/2addr v12, v8

    iget v13, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    add-float/2addr v13, v5

    iget v14, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ox:F

    sub-float/2addr v14, v8

    sub-float/2addr v14, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v9, v9, v6

    sub-float/2addr v14, v9

    iget v8, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->p:F

    sub-float/2addr v8, v5

    sub-float/2addr v8, v7

    sub-float/2addr v8, v9

    new-instance v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;

    invoke-direct {v5, v12, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;-><init>(FF)V

    iget-object v7, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    const/high16 v16, 0x40000000    # 2.0f

    iget-object v6, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v6, v15}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Ljava/util/List;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v6

    if-eqz v6, :cond_3

    iget v6, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->d:F

    add-float/2addr v13, v6

    :cond_3
    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    const/high16 v16, 0x40000000    # 2.0f

    const-string v6, "space-between"

    const-string v7, "space-around"

    const-string v15, "flex-end"

    const-string v9, "center"

    move-object/from16 v18, v2

    const/4 v2, 0x1

    cmpg-float v19, v13, v8

    if-gez v19, :cond_8

    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    sub-float/2addr v8, v13

    div-float v8, v8, v16

    :goto_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v11, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    sub-float/2addr v8, v13

    goto :goto_1

    :cond_6
    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    sub-float/2addr v8, v13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v2

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-static {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/o;->dq(F)F

    move-result v8

    move v11, v8

    goto :goto_2

    :cond_7
    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v2, :cond_8

    sub-float/2addr v8, v13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-static {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/o;->dq(F)F

    move-result v8

    move v11, v8

    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    :goto_2
    iget v13, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->d:F

    add-float/2addr v13, v8

    iput v13, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->d:F

    move/from16 v13, p2

    const/4 v8, 0x0

    :goto_3
    const/16 v20, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_24

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v8, v3, :cond_9

    iget-object v3, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v8, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_a

    move/from16 p2, v3

    iget-object v3, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    move/from16 v23, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v23, 0x1

    move/from16 v3, p2

    goto :goto_4

    :cond_9
    move-object/from16 v22, v4

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    move-object/from16 p2, v3

    if-eqz v23, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v3, v23

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->s()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;

    move-result-object v23

    move/from16 v24, v4

    invoke-virtual/range {v23 .. v23}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ji()Ljava/lang/String;

    move-result-object v4

    move/from16 v25, v11

    invoke-virtual/range {v23 .. v23}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v11

    move/from16 v23, v13

    const-string v13, "flex"

    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    if-eq v11, v4, :cond_c

    const/4 v4, 0x2

    if-eq v11, v4, :cond_c

    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v3

    if-eqz v3, :cond_b

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    add-float v4, v24, v3

    goto :goto_6

    :cond_b
    move/from16 v4, v24

    :goto_6
    move-object/from16 v3, p2

    move/from16 v13, v23

    :goto_7
    move/from16 v11, v25

    const/16 v20, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v3, p2

    move/from16 v13, v23

    move/from16 v4, v24

    goto :goto_7

    :cond_d
    move/from16 v24, v4

    move/from16 v25, v11

    move/from16 v23, v13

    sub-float v3, v14, v24

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->s()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;

    move-result-object v17

    move-object/from16 p2, v11

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v11

    move/from16 v26, v13

    const/4 v13, 0x1

    if-eq v11, v13, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_f

    iget-object v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v4

    if-eqz v4, :cond_e

    iget v4, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    add-float v13, v26, v4

    goto :goto_9

    :cond_e
    move/from16 v13, v26

    :goto_9
    move-object/from16 v11, p2

    :goto_a
    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    move-object/from16 v11, p2

    move/from16 v13, v26

    goto :goto_a

    :cond_10
    move/from16 v26, v13

    cmpg-float v4, v26, v14

    if-gez v4, :cond_14

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    sub-float v4, v14, v26

    div-float v4, v4, v16

    :goto_b
    const/4 v11, 0x0

    goto :goto_c

    :cond_11
    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    sub-float v4, v14, v26

    goto :goto_b

    :cond_12
    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    sub-float v4, v14, v26

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    int-to-float v11, v11

    div-float/2addr v4, v11

    invoke-static {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/o;->dq(F)F

    move-result v4

    move v11, v4

    goto :goto_c

    :cond_13
    const/4 v13, 0x1

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_14

    sub-float v4, v14, v26

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    int-to-float v11, v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v11, v13

    div-float/2addr v4, v11

    invoke-static {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/o;->dq(F)F

    move-result v4

    move v11, v4

    const/4 v4, 0x0

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    goto :goto_b

    :goto_c
    iget v13, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->dq:F

    add-float/2addr v13, v4

    iput v13, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->dq:F

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v13, 0x0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p2, v4

    move-object/from16 v4, v17

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    move-object/from16 v17, v6

    iget-object v6, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v6

    iget v6, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->d:F

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->s()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;

    move-result-object v4

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v4

    move/from16 v27, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_17

    invoke-virtual/range {v26 .. v26}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_16

    goto :goto_f

    :cond_16
    move/from16 v6, v27

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v6, 0x0

    :goto_10
    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move-object/from16 v4, p2

    move-object/from16 v6, v17

    goto :goto_d

    :cond_18
    move-object/from16 v17, v6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    move-object/from16 p2, v4

    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v4

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v26

    move-object/from16 v27, v7

    invoke-virtual/range {v26 .. v26}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->s()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;

    move-result-object v7

    move-object/from16 v26, v10

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->t()I

    move-result v10

    int-to-float v10, v10

    move/from16 v28, v10

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->uh()I

    move-result v10

    int-to-float v10, v10

    move/from16 v29, v10

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->gx()I

    move-result v10

    int-to-float v10, v10

    move/from16 v30, v10

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->by()I

    move-result v10

    int-to-float v10, v10

    move/from16 v31, v10

    if-nez v4, :cond_19

    const/4 v10, 0x0

    goto :goto_12

    :cond_19
    iget v10, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    :goto_12
    if-nez v4, :cond_1a

    const/16 v32, 0x0

    goto :goto_13

    :cond_1a
    iget v4, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->d:F

    move/from16 v32, v4

    :goto_13
    invoke-virtual/range {v18 .. v18}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->ox()Ljava/lang/String;

    move-result-object v4

    move/from16 v33, v10

    const-string v10, "root"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    int-to-float v4, v8

    goto :goto_14

    :cond_1b
    move/from16 v4, v23

    :goto_14
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v10

    move/from16 v34, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    sub-float v10, v33, v29

    sub-float v10, v10, v31

    sub-float v11, v32, v28

    sub-float v11, v11, v30

    invoke-direct {v0, v1, v7, v10, v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;

    move-result-object v10

    goto :goto_15

    :cond_1c
    move-object v10, v5

    :goto_15
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v11

    move-object/from16 v23, v10

    const/4 v10, 0x2

    if-ne v11, v10, :cond_1d

    iget-object v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    iget-object v11, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-virtual {v10, v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v10

    sub-float v11, v33, v29

    sub-float v11, v11, v31

    sub-float v23, v32, v28

    move/from16 v35, v13

    sub-float v13, v23, v30

    move/from16 v36, v14

    new-instance v14, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    invoke-direct {v14, v11, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;-><init>(FF)V

    invoke-direct {v0, v7, v10, v14}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;

    move-result-object v10

    goto :goto_16

    :cond_1d
    move/from16 v35, v13

    move/from16 v36, v14

    move-object/from16 v10, v23

    :goto_16
    invoke-virtual/range {v22 .. v22}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->mc()Ljava/lang/String;

    move-result-object v11

    cmpl-float v13, v35, v32

    if-lez v13, :cond_20

    const-string v13, "flex-start"

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_20

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    goto :goto_17

    :cond_1e
    sub-float v13, v35, v32

    goto :goto_18

    :cond_1f
    sub-float v13, v35, v32

    div-float v13, v13, v16

    goto :goto_18

    :cond_20
    :goto_17
    const/4 v13, 0x0

    :goto_18
    new-instance v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    invoke-direct {v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;-><init>()V

    iget v14, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->dq:F

    add-float v14, v14, v31

    iput v14, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    iget v10, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->d:F

    add-float v10, v10, v28

    add-float/2addr v10, v13

    iput v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    sub-float v10, v33, v29

    sub-float v10, v10, v31

    iput v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ox:F

    sub-float v32, v32, v28

    sub-float v10, v32, v30

    iput v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->p:F

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->s:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->ox()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->s:Ljava/lang/String;

    iput-object v1, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ia:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    iput-object v6, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iput v3, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->kk:F

    iput-object v2, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->o:Ljava/util/List;

    iget v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->ox(F)V

    iget-object v6, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iget v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->p(F)V

    iget-object v6, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iget v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ox:F

    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->s(F)V

    iget-object v6, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iget v10, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->p:F

    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->iw(F)V

    invoke-virtual {v0, v11, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;F)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    move-result-object v6

    iget-object v10, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v6

    const/4 v13, 0x1

    if-eq v6, v13, :cond_21

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->ha()I

    move-result v6

    const/4 v10, 0x2

    if-eq v6, v10, :cond_22

    iget v6, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->dq:F

    add-float v7, v33, v34

    add-float/2addr v7, v6

    iput v7, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->dq:F

    goto :goto_19

    :cond_21
    const/4 v10, 0x2

    :cond_22
    :goto_19
    move/from16 v23, v4

    move-object/from16 v10, v26

    move-object/from16 v7, v27

    move/from16 v11, v34

    move/from16 v13, v35

    move/from16 v14, v36

    move-object/from16 v4, p2

    goto/16 :goto_11

    :cond_23
    move-object/from16 v27, v7

    move-object/from16 v26, v10

    move/from16 v35, v13

    move/from16 v36, v14

    const/4 v13, 0x1

    iput v12, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->dq:F

    iget v2, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->d:F

    add-float v3, v35, v25

    add-float/2addr v3, v2

    iput v3, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/kk;->d:F

    move-object/from16 v6, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v13, v23

    move/from16 v11, v25

    goto/16 :goto_3

    :cond_24
    :goto_1a
    return-object v1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->getType()Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->mn:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;FF)V
    .locals 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->ox:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->ia()F

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->kk()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->o()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/s;->s()Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/iw;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fixed"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x47800000    # 65536.0f

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v3, p1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->ox(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;)Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;-><init>()V

    iput p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->dq:F

    iput p3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget v0, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->dq:F

    :goto_1
    iput v0, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ox:F

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget v1, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/p/d$ox;->d:F

    :goto_2
    iput v1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->p:F

    const-string p3, "root"

    iput-object p3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->s:Ljava/lang/String;

    const/high16 p3, 0x44a00000    # 1280.0f

    iput p3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->kk:F

    iput-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->ox(F)V

    iget-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iget p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->d:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->p(F)V

    iget-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iget p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->ox:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->s(F)V

    iget-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->iw:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;

    iget p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;->p:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ox/ia;->iw(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;F)Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq:Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/p/s;->p:Lcom/bytedance/sdk/component/adexpress/dynamic/p/s$dq;

    return-void
.end method

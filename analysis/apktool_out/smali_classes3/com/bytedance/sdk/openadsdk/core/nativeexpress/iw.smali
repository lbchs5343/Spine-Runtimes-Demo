.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;
.super Lcom/bytedance/sdk/openadsdk/core/d/d;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

.field protected ig:I

.field protected mp:I

.field private no:Z

.field protected q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->ig:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->mp:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->no:Z

    return-void
.end method

.method private dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mn()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    array-length v6, v2

    if-ne v6, v3, :cond_0

    aget v6, v2, v5

    aget v7, v2, v4

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->ig:I

    if-nez v8, :cond_1

    iget-boolean v8, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->no:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v10

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v11

    invoke-static {v9, v11}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v11

    invoke-static {v9, v11}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v11

    invoke-static {v9, v11}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    :goto_0
    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v8

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result v9

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v10

    new-array v11, v3, [I

    const/4 v12, -0x1

    aput v12, v11, v5

    aput v12, v11, v4

    new-array v13, v3, [I

    aput v12, v13, v5

    aput v12, v13, v4

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz v12, :cond_3

    iget-boolean v14, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->no:Z

    if-eqz v14, :cond_3

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    const/4 v15, 0x1

    iget-wide v3, v12, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-virtual {v14, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    move v14, v6

    const/4 v12, 0x0

    iget-wide v5, v4, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-virtual {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->ig:I

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/core/r/k;->mn:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v14

    aput v3, v11, v12

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/core/r/k;->ia:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v7

    aput v3, v11, v15

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/core/r/k;->kk:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/r/k;->o:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v4, v3, Lcom/bytedance/sdk/openadsdk/core/r/k;->mn:I

    aput v4, v11, v12

    iget v4, v3, Lcom/bytedance/sdk/openadsdk/core/r/k;->ia:I

    aput v4, v11, v15

    iget v4, v3, Lcom/bytedance/sdk/openadsdk/core/r/k;->kk:I

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/core/r/k;->o:I

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_1
    aput v3, v13, v12

    aput v4, v13, v15

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw()Landroid/view/View;

    move-result-object v5

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v11

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    const/4 v15, 0x1

    :cond_4
    :goto_2
    iput v12, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->ig:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->ox()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    :goto_3
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->mp:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->q:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/kk;)V

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    return-void
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->mp:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->no:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->no:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->ig:I

    return-void
.end method

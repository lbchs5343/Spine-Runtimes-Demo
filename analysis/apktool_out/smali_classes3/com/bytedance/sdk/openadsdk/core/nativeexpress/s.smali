.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

.field protected ig:I

.field protected mp:I

.field private no:Z

.field protected q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->ig:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->mp:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->no:Z

    const-class p3, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->dq(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/no/s/dq;->dq()Lcom/bytedance/sdk/component/no/s/dq;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/no/s/dq;->dq(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "is_express_ad"

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk;
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

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->ig:I

    if-nez v8, :cond_1

    iget-boolean v8, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->no:Z

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
    new-array v8, v3, [I

    const/4 v9, -0x1

    aput v9, v8, v5

    aput v9, v8, v4

    new-array v9, v3, [I

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz v10, :cond_4

    iget-boolean v11, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->no:Z

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-wide v12, v10, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-virtual {v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-wide v11, v11, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-virtual {v10, v11, v12}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->ig:I

    if-nez v10, :cond_2

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v11, v11, Lcom/bytedance/sdk/openadsdk/core/r/k;->mn:I

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v10

    add-int/2addr v10, v6

    aput v10, v8, v5

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v10, v10, Lcom/bytedance/sdk/openadsdk/core/r/k;->ia:I

    int-to-float v10, v10

    invoke-static {v6, v10}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, v7

    aput v6, v8, v4

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v7, v7, Lcom/bytedance/sdk/openadsdk/core/r/k;->kk:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v10, v10, Lcom/bytedance/sdk/openadsdk/core/r/k;->o:I

    int-to-float v10, v10

    invoke-static {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v7

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v7, v6, Lcom/bytedance/sdk/openadsdk/core/r/k;->mn:I

    aput v7, v8, v5

    iget v7, v6, Lcom/bytedance/sdk/openadsdk/core/r/k;->ia:I

    aput v7, v8, v4

    iget v7, v6, Lcom/bytedance/sdk/openadsdk/core/r/k;->kk:I

    iget v6, v6, Lcom/bytedance/sdk/openadsdk/core/r/k;->o:I

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-object v10, v10, Lcom/bytedance/sdk/openadsdk/core/r/k;->no:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    :goto_2
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/r/k;->ig:Ljava/lang/String;

    iget-object v13, v11, Lcom/bytedance/sdk/openadsdk/core/r/k;->mp:Ljava/lang/String;

    iget-object v11, v11, Lcom/bytedance/sdk/openadsdk/core/r/k;->q:Ljava/lang/String;

    aput v6, v9, v5

    aput v7, v9, v4

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw()Landroid/view/View;

    move-result-object v14

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz v14, :cond_5

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v8

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v9

    goto :goto_3

    :cond_4
    const-string v12, ""

    move-object/from16 v10, p1

    move-object v11, v12

    move-object v13, v11

    :cond_5
    :goto_3
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->ig:I

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v5

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result v6

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->mn:Landroid/content/Context;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v7

    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v14}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v14

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v14

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v14

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v14

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

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

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x2

    :goto_4
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->mp:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->q:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->gh()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ia(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v1

    return-object v1
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/kk;)V

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq:Lcom/bytedance/sdk/openadsdk/core/r/k;

    return-void
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->mp:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->no:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->no:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->ig:I

    return-void
.end method

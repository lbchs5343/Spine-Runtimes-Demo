.class public Lcom/bytedance/sdk/openadsdk/core/ir/fw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;
    }
.end annotation


# direct methods
.method public static dq([BI)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/mp/d;IILcom/bytedance/sdk/openadsdk/core/ir/fw$dq;Ljava/lang/String;)V
    .locals 7

    const-string v0, " getImageBytes url "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox()Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;

    invoke-direct {v3, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;)V

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILjava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/mp/d;IILcom/bytedance/sdk/openadsdk/core/ir/fw$dq;Ljava/lang/String;ILcom/bytedance/sdk/component/iw/q;Z)V
    .locals 10

    const-string v0, " getImageBytes url "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox()Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ir/fw$2;

    invoke-direct {v3, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/fw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;)V

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILjava/lang/String;ILcom/bytedance/sdk/component/iw/q;Z)V

    return-void
.end method

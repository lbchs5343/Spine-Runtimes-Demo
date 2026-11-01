.class public Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$dq;,
        Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$dq;-><init>()V

    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/component/iw/no;)I
    .locals 1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->mn()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "image_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/no;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;)V
    .locals 3

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/component/iw/no;)I

    move-result v1

    instance-of v2, v0, [B

    if-eqz v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    check-cast v0, [B

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/le/dq/d;-><init>([BI)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;->dq(Lcom/bytedance/sdk/component/iw/no;Lcom/bytedance/sdk/openadsdk/core/le/dq/d;)V

    return-void

    :cond_0
    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/le/dq/d;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;->dq(Lcom/bytedance/sdk/component/iw/no;Lcom/bytedance/sdk/openadsdk/core/le/dq/d;)V

    return-void

    :cond_1
    const-string p1, "not bitmap or gif result!"

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/mp/d;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v0

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/mp/d;->d:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/o;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->dq(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/bytedance/sdk/component/iw/o;->d(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p6}, Lcom/bytedance/sdk/component/iw/o;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->d(Z)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$1;

    invoke-direct {p3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;)V

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;)Lcom/bytedance/sdk/component/iw/kk;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/component/iw/q;Z)V
    .locals 1

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/mp/d;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v0

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/mp/d;->d:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/o;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->dq(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/bytedance/sdk/component/iw/o;->d(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p6}, Lcom/bytedance/sdk/component/iw/o;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p8}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/q;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, p9}, Lcom/bytedance/sdk/component/iw/o;->dq(Z)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/iw/o;->d(Z)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$2;

    invoke-direct {p3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;)V

    invoke-interface {p1, p3, p7}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;I)Lcom/bytedance/sdk/component/iw/kk;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILjava/lang/String;)V
    .locals 7

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILjava/lang/String;ILcom/bytedance/sdk/component/iw/q;Z)V
    .locals 10

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/le/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/component/iw/q;Z)V

    return-void
.end method

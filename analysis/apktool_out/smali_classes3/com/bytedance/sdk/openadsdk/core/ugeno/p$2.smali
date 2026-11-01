.class Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/p;->dq(Lg/dmm;Ljava/lang/String;Landroid/widget/ImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/widget/ImageView;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p;Landroid/widget/ImageView;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->d:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->ox:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/no;)V
    .locals 10
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ia()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;->d([B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;->dq([B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->d:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->ox:I

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq(Landroid/widget/ImageView;[BII)V

    return-void

    :cond_1
    new-instance v3, Lcom/bytedance/sdk/component/iw/ox/d/dq;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->d:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->ox:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->d:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->ox:I

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/iw/ox/d/dq;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/iw/ox/d/dq;->dq([B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt p1, v1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    check-cast v0, [B

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p;[BLandroid/widget/ImageView;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    check-cast v0, [B

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->d:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->ox:I

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/p/s;->dq(Landroid/widget/ImageView;[BII)V

    return-void

    :cond_4
    instance-of p1, v0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p$2;->dq:Landroid/widget/ImageView;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    return-void
.end method

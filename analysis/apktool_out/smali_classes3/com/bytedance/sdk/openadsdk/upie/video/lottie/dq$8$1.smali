.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lg/hcl;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_4

    iget v0, p1, Lg/hcl;->h:I

    iget v1, p1, Lg/hcl;->e:I

    iget-object p1, p1, Lg/hcl;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "${"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->o(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v2, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;II)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

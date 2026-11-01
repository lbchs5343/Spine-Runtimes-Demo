.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/upie/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/upie/d$dq<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->i(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->le(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->dq:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    const/16 p2, 0x2713

    const-string v0, "\u5e7f\u544a\u4e3b\u56feurl\u52a0\u8f7d\u5931\u8d25"

    const v1, 0xea68

    invoke-direct {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;->dq(Landroid/graphics/Bitmap;)V

    return-void
.end method

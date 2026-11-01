.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;->dq:I

    invoke-interface {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->h(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ji(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bl(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;Z)Z

    :cond_0
    return-void
.end method

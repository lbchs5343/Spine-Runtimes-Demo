.class public Lcom/bytedance/sdk/openadsdk/core/wp/d/dq;
.super Ljava/lang/Object;


# direct methods
.method public static dq()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp/ox/dq;->ox()Lcom/bytedance/sdk/openadsdk/core/wp/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/ox/dq;->s()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/wp/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/dq/dq;->s()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/wp/d/dq$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/d/dq$1;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/o;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

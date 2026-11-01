.class public Lcom/bytedance/msdk/ox/dq/dq/mn;
.super Lcom/bytedance/msdk/ox/dq/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/dq/dq/ox;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/dq/dq/mn;->ox(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ox(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->iw()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e41

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x1fb1

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

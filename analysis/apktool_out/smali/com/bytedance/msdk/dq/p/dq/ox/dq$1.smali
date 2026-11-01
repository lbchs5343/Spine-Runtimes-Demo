.class Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/ia/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/p/dq/ox/dq;->by()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/p/dq/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/p/dq/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;->dq:Lcom/bytedance/msdk/dq/p/dq/ox/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;->dq:Lcom/bytedance/msdk/dq/p/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->dq(Lcom/bytedance/msdk/dq/p/dq/ox/dq;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e41

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;->dq:Lcom/bytedance/msdk/dq/p/dq/ox/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->dq(Lcom/bytedance/msdk/dq/p/dq/ox/dq;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 v2, 0x17b8

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p1, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1$1;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1$1;-><init>(Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

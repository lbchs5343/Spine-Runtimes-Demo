.class Lcom/bytedance/msdk/dq/ox/kk$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/kk;->dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic dq:Lcom/bytedance/msdk/dq/dq;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/msdk/dq/ox/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/kk;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->p:Lcom/bytedance/msdk/dq/ox/kk;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->dq:Lcom/bytedance/msdk/dq/dq;

    iput-object p4, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-boolean p5, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->ox:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->dq:Lcom/bytedance/msdk/dq/dq;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/no;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PangleNativeAd_onFeedAdLoad_SupportRenderControl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->p:Lcom/bytedance/msdk/dq/ox/kk;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-boolean v2, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->ox:Z

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/msdk/dq/ox/kk;->dq(Lcom/bytedance/msdk/dq/ox/kk;Ljava/util/List;Lcom/bytedance/msdk/dq/dq;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    new-instance v2, Lcom/bytedance/msdk/dq/ox/kk$dq;

    iget-boolean v3, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->ox:Z

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/bytedance/msdk/dq/ox/kk$dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;ZZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->d(Ljava/util/List;)V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/kk$1;->dq:Lcom/bytedance/msdk/dq/dq;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "load\u6210\u529f\u4f46\u8fd4\u56de\u5e7f\u544a\u662f\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

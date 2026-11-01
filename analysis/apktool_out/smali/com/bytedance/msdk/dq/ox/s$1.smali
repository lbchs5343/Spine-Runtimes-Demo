.class Lcom/bytedance/msdk/dq/ox/s$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/s;->dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lcom/bytedance/msdk/dq/dq;

.field final synthetic ox:Lcom/bytedance/msdk/dq/ox/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/s;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/dq/dq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$1;->ox:Lcom/bytedance/msdk/dq/ox/s;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/s$1;->dq:Lcom/bytedance/msdk/dq/dq;

    iput-boolean p4, p0, Lcom/bytedance/msdk/dq/ox/s$1;->d:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/s$1;->dq:Lcom/bytedance/msdk/dq/dq;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/jy;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/bytedance/msdk/dq/ox/s$dq;

    iget-boolean v3, p0, Lcom/bytedance/msdk/dq/ox/s$1;->d:Z

    invoke-direct {v2, v1, v3}, Lcom/bytedance/msdk/dq/ox/s$dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$1;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->d(Ljava/util/List;)V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/s$1;->dq:Lcom/bytedance/msdk/dq/dq;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "load\u6210\u529f\u4f46\u8fd4\u56de\u5e7f\u544a\u662f\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

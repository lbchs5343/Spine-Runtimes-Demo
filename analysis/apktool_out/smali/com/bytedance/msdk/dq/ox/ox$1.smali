.class Lcom/bytedance/msdk/dq/ox/ox$1;
.super Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ox;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/dq/ox/ox;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/ox$1;->dq:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 3
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

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/bytedance/msdk/dq/ox/ox$d;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox;

    iget-object v2, p0, Lcom/bytedance/msdk/dq/ox/ox$1;->dq:Landroid/content/Context;

    invoke-direct {p1, v1, v2, v0}, Lcom/bytedance/msdk/dq/ox/ox$d;-><init>(Lcom/bytedance/msdk/dq/ox/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/dq/ox/ox$d;->no()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const v1, 0x13881

    const-string v2, "load list is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

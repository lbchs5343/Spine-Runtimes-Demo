.class Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->s(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p2

    instance-of p2, p2, Lcom/bytedance/msdk/dq/d/dq;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    iget-object p2, p2, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->p(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p2

    instance-of p2, p2, Lcom/bytedance/msdk/dq/d/dq;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v0, p3, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

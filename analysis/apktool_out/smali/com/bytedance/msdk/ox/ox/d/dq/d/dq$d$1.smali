.class Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;
.super Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;Z)Z

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/dq;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d$1;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;->ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$d;)Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->C_()V

    :cond_1
    :goto_0
    return-void
.end method

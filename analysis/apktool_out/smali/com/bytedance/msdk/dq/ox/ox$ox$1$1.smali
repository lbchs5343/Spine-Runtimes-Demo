.class Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;
.super Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ox$ox$1;->dq(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ox$ox$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;

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

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq(Lcom/bytedance/msdk/dq/ox/ox$ox;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq(Lcom/bytedance/msdk/dq/ox/ox$ox;Z)Z

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/ox$ox;->d(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/dq;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox;->p:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-virtual {p1}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$1$1;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/ox$ox$1;->d:Lcom/bytedance/msdk/dq/ox/ox$ox;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/ox$ox;->ox(Lcom/bytedance/msdk/dq/ox/ox$ox;)Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->C_()V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/kk$dq;


# instance fields
.field dq:Lcom/bytedance/sdk/component/ox/d/r$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/r$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/d;->dq:Lcom/bytedance/sdk/component/ox/d/r$dq;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/d;->dq:Lcom/bytedance/sdk/component/ox/d/r$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/d;->dq:Lcom/bytedance/sdk/component/ox/d/r$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->iw()Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/mn;->dq()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/net/URL;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;-><init>(Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v1
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/q;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/d;->dq:Lcom/bytedance/sdk/component/ox/d/r$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;-><init>(Lcom/bytedance/sdk/component/ox/d/kx;)V

    return-object v0
.end method

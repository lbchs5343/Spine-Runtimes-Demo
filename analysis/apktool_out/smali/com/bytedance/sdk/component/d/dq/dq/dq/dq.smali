.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/d;


# instance fields
.field dq:Lcom/bytedance/sdk/component/ox/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/s;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->p()Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/s;->d()V

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/d/s;->dq()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;-><init>(Lcom/bytedance/sdk/component/ox/d/bl;)V

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/ox;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/s;

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;-><init>(Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;Lcom/bytedance/sdk/component/d/dq/ox;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/s;->dq(Lcom/bytedance/sdk/component/ox/d/iw;)V

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/s;->ox()Z

    move-result v0

    return v0
.end method

.method public p()Lcom/bytedance/sdk/component/d/dq/d;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/d/s;->p()Lcom/bytedance/sdk/component/ox/d/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/s;)V

    return-object v0
.end method

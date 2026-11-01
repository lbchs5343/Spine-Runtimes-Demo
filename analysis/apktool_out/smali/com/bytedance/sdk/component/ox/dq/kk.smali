.class public Lcom/bytedance/sdk/component/ox/dq/kk;
.super Lcom/bytedance/sdk/component/ox/dq/r;


# instance fields
.field private dq:Lcom/bytedance/sdk/component/ox/dq/r;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/r;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/dq/r;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public H_()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->H_()J

    move-result-wide v0

    return-wide v0
.end method

.method public I_()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->I_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final dq(Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/kk;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    return-object v0
.end method

.method public dq(J)Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(J)Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object p1

    return-object p1
.end method

.method public dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object p1

    return-object p1
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->iw()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    return-object v0
.end method

.method public mn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->mn()V

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->ox()Z

    move-result v0

    return v0
.end method

.method public s()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/kk;->dq:Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/r;->s()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    return-object v0
.end method

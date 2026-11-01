.class public final Lcom/bytedance/sdk/component/ox/d/ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/ox$dq;,
        Lcom/bytedance/sdk/component/ox/d/ox$d;
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;


# direct methods
.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox;->d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->close()V

    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox;->d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->delete()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox;->d:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->flush()V

    return-void
.end method

.method public update(Lcom/bytedance/sdk/component/ox/d/bl;Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/ox$d;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/component/ox/d/ox$d;-><init>(Lcom/bytedance/sdk/component/ox/d/bl;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/ox$dq;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/ox$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;->dq()Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/ox$d;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    const/4 p1, 0x0

    :catch_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;)V

    return-void
.end method

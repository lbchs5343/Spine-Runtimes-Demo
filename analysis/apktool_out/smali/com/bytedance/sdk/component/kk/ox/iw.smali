.class public Lcom/bytedance/sdk/component/kk/ox/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/kk;


# instance fields
.field private dq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/kk$dq;)Lcom/bytedance/sdk/component/d/dq/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/dq/kk$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/kk/ox/iw;->dq:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/ox/s;->d()Lcom/bytedance/sdk/component/kk/ox/dq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/kk/ox/iw;->dq:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/ox/s;->d()Lcom/bytedance/sdk/component/kk/ox/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/ox/dq;->s()V

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/mn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/kk/ox/iw;->dq:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/kk/ox/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q;->mn()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/d/dq/kk$dq;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/component/kk/ox/iw;->dq:I

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/bytedance/sdk/component/kk/ox/s;->dq(Lcom/bytedance/sdk/component/d/dq/q;Ljava/lang/Exception;)V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq()Lcom/bytedance/sdk/component/kk/ox/mn;

    move-result-object v2

    iget v4, p0, Lcom/bytedance/sdk/component/kk/ox/iw;->dq:I

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/kk/ox/mn;->dq(I)Lcom/bytedance/sdk/component/kk/ox/s;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/kk/ox/s;->dq(Lcom/bytedance/sdk/component/d/dq/q;Lcom/bytedance/sdk/component/d/dq/f;)V

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/d/dq/kk$dq;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    throw v3
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/kk/ox/iw;->dq:I

    return-void
.end method

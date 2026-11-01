.class final Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;
.super Lcom/bytedance/sdk/component/d/dq/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/d/dq/dq/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "dq"
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

.field private final ox:Lcom/bytedance/sdk/component/d/dq/ox;

.field private final p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/dq/d/dq;Lcom/bytedance/sdk/component/d/dq/ox;Lcom/bytedance/sdk/component/d/dq/dq/d/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "net-async-call"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/d/dq/d/s;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->ox:Lcom/bytedance/sdk/component/d/dq/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/ji;->dq()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->p()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->ox:Lcom/bytedance/sdk/component/d/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/d/dq/ox;->onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->ox:Lcom/bytedance/sdk/component/d/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/d/dq/ox;->onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->d:Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/d/dq/dq/d/p;->d(Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_2
    :try_start_2
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->ox:Lcom/bytedance/sdk/component/d/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/d/dq/ox;->onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->ox:Lcom/bytedance/sdk/component/d/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->dq:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/ox;->onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->d:Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/d/dq/dq/d/p;->d(Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->d:Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/d/dq/dq/d/p;->d(Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    throw v0
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq$dq;->p:Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;->p:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/ji;->no()V

    :cond_0
    return-void
.end method

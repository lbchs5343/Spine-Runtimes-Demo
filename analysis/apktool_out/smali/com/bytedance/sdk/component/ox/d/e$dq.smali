.class final Lcom/bytedance/sdk/component/ox/d/e$dq;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "dq"
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/e;

.field private final ox:Lcom/bytedance/sdk/component/ox/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/e;Lcom/bytedance/sdk/component/ox/d/iw;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/e;->mn()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->ox:Lcom/bytedance/sdk/component/ox/d/iw;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/ji;->no()V

    :cond_0
    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/ji;->dq()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/e;->ia()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/d/e;->d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/o;->d()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->ox:Lcom/bytedance/sdk/component/ox/d/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/component/ox/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/s;Ljava/io/IOException;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v0, 0x1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->ox:Lcom/bytedance/sdk/component/ox/d/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/component/ox/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/bl;)V

    :goto_1
    iget v0, v1, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/ox/d/q;->d(Lcom/bytedance/sdk/component/ox/d/e$dq;)V

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/bl;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/e;->dq(Lcom/bytedance/sdk/component/ox/d/e;)Lcom/bytedance/sdk/component/ox/d/f;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->ox:Lcom/bytedance/sdk/component/ox/d/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/s;Ljava/io/IOException;)V

    goto :goto_2

    :goto_4
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callback failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/e;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/e;->dq(Lcom/bytedance/sdk/component/ox/d/e;)Lcom/bytedance/sdk/component/ox/d/f;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->ox:Lcom/bytedance/sdk/component/ox/d/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/s;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_5
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e$dq;->dq:Lcom/bytedance/sdk/component/ox/d/e;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/ox/d/q;->d(Lcom/bytedance/sdk/component/ox/d/e$dq;)V

    throw v0
.end method

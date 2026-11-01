.class final Lcom/bytedance/sdk/component/ox/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/e$dq;
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

.field final dq:Lcom/bytedance/sdk/component/ox/d/k;

.field private iw:Z

.field final ox:Lcom/bytedance/sdk/component/ox/d/kx;

.field final p:Z

.field private s:Lcom/bytedance/sdk/component/ox/d/f;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/kx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/ox/d/e;->p:Z

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    invoke-direct {p2, p1, p3}, Lcom/bytedance/sdk/component/ox/d/dq/ox/o;-><init>(Lcom/bytedance/sdk/component/ox/d/k;Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/e;->d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/kx;Z)Lcom/bytedance/sdk/component/ox/d/e;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/e;-><init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/kx;Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/k;->wp()Lcom/bytedance/sdk/component/ox/d/f$dq;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/ox/d/f$dq;->dq(Lcom/bytedance/sdk/component/ox/d/s;)Lcom/bytedance/sdk/component/ox/d/f;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/component/ox/d/e;->s:Lcom/bytedance/sdk/component/ox/d/f;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ox/d/e;)Lcom/bytedance/sdk/component/ox/d/f;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ox/d/e;->s:Lcom/bytedance/sdk/component/ox/d/f;

    return-object p0
.end method

.method private kk()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/o;->dq(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/e;->s()Lcom/bytedance/sdk/component/ox/d/e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/o;->dq()V

    return-void
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->iw:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->iw:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/e;->kk()V

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/ji;->dq()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/ox/d/q;->dq(Lcom/bytedance/sdk/component/ox/d/e;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/e;->ia()Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/bytedance/sdk/component/ox/d/bl;->ox:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/ox/d/q;->d(Lcom/bytedance/sdk/component/ox/d/e;)V

    return-object v1

    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/bl;->p:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/ox/d/q;->d(Lcom/bytedance/sdk/component/ox/d/e;)V

    return-object v0

    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/ox/d/q;->d(Lcom/bytedance/sdk/component/ox/d/e;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/iw;)V
    .locals 2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->iw:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->iw:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/e;->kk()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/e$dq;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/ox/d/e$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/e;Lcom/bytedance/sdk/component/ox/d/iw;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/q;->dq(Lcom/bytedance/sdk/component/ox/d/e$dq;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v1}, Lcom/bytedance/sdk/component/ox/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/s;Ljava/io/IOException;)V

    :cond_1
    return-void
.end method

.method public ia()Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->le()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/k;->iw()Lcom/bytedance/sdk/component/ox/d/mp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/mp;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/k;->mn()Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/d/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/k;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/d;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->p:Z

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/d;-><init>(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    iget-object v8, p0, Lcom/bytedance/sdk/component/ox/d/e;->s:Lcom/bytedance/sdk/component/ox/d/f;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/k;->dq()I

    move-result v9

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/k;->d()I

    move-result v10

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/k;->ox()I

    move-result v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;ILcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;III)V

    iget-object v1, v7, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/r$dq;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v0

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/e;->ox()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->p:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/e;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->mp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->d:Lcom/bytedance/sdk/component/ox/d/dq/ox/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/o;->d()Z

    move-result v0

    return v0
.end method

.method public synthetic p()Lcom/bytedance/sdk/component/ox/d/s;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/e;->s()Lcom/bytedance/sdk/component/ox/d/e;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/ox/d/e;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/e;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/e;->ox:Lcom/bytedance/sdk/component/ox/d/kx;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/e;->p:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/e;->dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/kx;Z)Lcom/bytedance/sdk/component/ox/d/e;

    move-result-object v0

    return-object v0
.end method

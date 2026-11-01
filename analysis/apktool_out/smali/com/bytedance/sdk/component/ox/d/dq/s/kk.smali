.class public final Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;,
        Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;,
        Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;
    }
.end annotation


# static fields
.field static final synthetic kk:Z = true


# instance fields
.field d:J

.field dq:J

.field ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

.field private ig:Z

.field final iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

.field final mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

.field private final mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

.field private no:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;"
        }
    .end annotation
.end field

.field final ox:I

.field final p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

.field final s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;


# direct methods
.method public constructor <init>(ILcom/bytedance/sdk/component/ox/d/dq/s/mn;ZZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/mn;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq:J

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p1, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    iget-object p2, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;J)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    iput-boolean p4, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    iput-boolean p3, p2, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->o:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)Z
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    const/4 p1, 0x1

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    iget-boolean v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->dq:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    iget-boolean v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ig:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    return v0
.end method

.method public dq(J)V
    .locals 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/s;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->dq(Lcom/bytedance/sdk/component/ox/dq/s;J)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ig:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ia()Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ig:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ig()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    return-object v0
.end method

.method public kk()V
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    return-object v0
.end method

.method public no()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->dq:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    :cond_5
    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized ox(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ox()Z
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-boolean v3, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d:Z

    if-ne v3, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public declared-synchronized p()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    throw v0

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public s()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    return-object v0
.end method

.class public final Lcom/bytedance/sdk/component/ox/d/dq/s/mn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;,
        Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;,
        Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;
    }
.end annotation


# static fields
.field static final dq:Ljava/util/concurrent/ExecutorService;

.field static final synthetic gh:Z = true


# instance fields
.field final cd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field final f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

.field final fw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ig;",
            ">;"
        }
    .end annotation
.end field

.field ia:Z

.field ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

.field iw:I

.field final jy:Ljava/net/Socket;

.field final kk:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

.field private le:I

.field mn:I

.field final mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

.field no:J

.field o:J

.field final ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

.field final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/kk;",
            ">;"
        }
    .end annotation
.end field

.field q:Z

.field private final r:Ljava/util/concurrent/ExecutorService;

.field final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Http2Connection"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->o:J

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->q:Z

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->cd:Ljava/util/Set;

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

    iput-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->kk:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

    iget-boolean v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->mn:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d:Z

    iget-object v3, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

    iput-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    iput v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mn:I

    if-eqz v2, :cond_1

    add-int/2addr v5, v3

    iput v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mn:I

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->le:I

    const/4 v3, 0x7

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v3, v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq(II)Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    :cond_3
    iget-object v5, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->d:Ljava/lang/String;

    iput-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string v1, "OkHttp %s Push Observer"

    invoke-static {v1, v7}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    invoke-direct/range {v6 .. v13}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->r:Ljava/util/concurrent/ExecutorService;

    const v1, 0xffff

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq(II)Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq(II)Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->dq:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->jy:Ljava/net/Socket;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;-><init>(Lcom/bytedance/sdk/component/ox/dq/p;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$dq;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-direct {v1, p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;-><init>(Lcom/bytedance/sdk/component/ox/dq/s;Z)V

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Lcom/bytedance/sdk/component/ox/d/dq/s/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->fw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    return-void
.end method

.method private d(ILjava/util/List;Z)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/kk;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v3, p3, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    monitor-enter v6

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ia:Z

    if-nez v0, :cond_6

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mn:I

    add-int/lit8 v0, v1, 0x2

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mn:I

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p2

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;-><init>(ILcom/bytedance/sdk/component/ox/d/dq/s/mn;ZZLjava/util/List;)V

    if-eqz p3, :cond_1

    iget-wide p2, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    const-wide/16 v7, 0x0

    cmp-long v4, p2, v7

    if-eqz v4, :cond_1

    iget-wide p2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    cmp-long v4, p2, v7

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_5

    :cond_1
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :try_start_3
    iget-object p3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p3, v3, v1, p1, v5}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ZIILjava/util/List;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_6

    :cond_3
    iget-boolean p3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d:Z

    if-nez p3, :cond_5

    iget-object p3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p3, p1, v1, v5}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IILjava/util/List;)V

    :goto_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_4

    iget-object p1, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d()V

    :cond_4
    return-object v0

    :cond_5
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :cond_6
    move-object v2, p0

    :try_start_5
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/s/dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/dq;-><init>()V

    throw p1

    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_3
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :goto_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method

.method public declared-synchronized d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d()V

    return-void
.end method

.method public d(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method

.method public d(ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ig;->dq()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p4, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ZII)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->ox(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized dq(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(Ljava/util/List;Z)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/kk;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(ILjava/util/List;Z)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    move-result-object p1

    return-object p1
.end method

.method public dq(IJ)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v4, v5, v2

    move-object v2, p0

    move-wide v6, p2

    move-object v4, v5

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$2;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;

    const-string v3, "OkHttp %s stream %d"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v4, v5, v2

    move-object v2, p0

    move-object v6, p2

    move-object v4, v5

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$1;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(ILcom/bytedance/sdk/component/ox/dq/s;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v5}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(J)V

    invoke-interface {p2, v5, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/ox/dq/ox;IZ)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v6, p3

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " != "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->cd:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    sget-object p2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->cd:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v4, v5, v2

    move-object v2, p0

    move-object v6, p2

    move-object v4, v5

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$4;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_0
    move-object p1, v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public dq(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$5;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$5;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(IZLcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p4, p2, p1, p3, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ZILcom/bytedance/sdk/component/ox/dq/ox;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->ox()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ZILcom/bytedance/sdk/component/ox/dq/ox;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public dq(J)V
    .locals 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ia:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ia:Z

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->iw:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;[B)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->gh:Z

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
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_2
    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->i:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->i:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/bytedance/sdk/component/ox/d/dq/s/ig;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/bytedance/sdk/component/ox/d/dq/s/ig;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->i:Ljava/util/Map;

    move-object v0, v2

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    :try_start_2
    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    if-eqz p1, :cond_4

    move-object p1, v5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    array-length p2, v0

    :goto_5
    if-ge v2, p2, :cond_6

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/ig;->ox()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    :try_start_3
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    if-nez p1, :cond_7

    move-object p1, p2

    :cond_7
    :goto_6
    :try_start_4
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->jy:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    if-nez p1, :cond_8

    return-void

    :cond_8
    throw p1

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public dq(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->d(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    sub-int/2addr p1, v0

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(IJ)V

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/o/p/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->fw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    const-string v1, "Http2Connection"

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "csj_http2_connection"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/p/ox;->start()V

    return-void
.end method

.method public dq(ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V
    .locals 9

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;

    const-string v3, "OkHttp %s ping %08x%08x"

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v4, v6, v2

    const/4 v2, 0x2

    aput-object v5, v6, v2

    move-object v2, p0

    move v5, p1

    move v7, p3

    move-object v8, p4

    move-object v4, v6

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$3;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public declared-synchronized ox(I)Lcom/bytedance/sdk/component/ox/d/dq/s/ig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq/s/ig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ox()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Z)V

    return-void
.end method

.method public ox(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

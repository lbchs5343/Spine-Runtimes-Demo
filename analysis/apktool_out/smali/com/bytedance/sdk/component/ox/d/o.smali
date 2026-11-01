.class public final Lcom/bytedance/sdk/component/ox/d/o;
.super Ljava/lang/Object;


# static fields
.field static final synthetic ox:Z = true

.field private static final p:Ljava/util/concurrent/Executor;


# instance fields
.field d:Z

.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/d/p;

.field private ia:J

.field private iw:J

.field private final kk:Ljava/lang/Runnable;

.field private mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/bytedance/sdk/component/ox/d/dq/d/ox;",
            ">;"
        }
    .end annotation
.end field

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp ConnectionPool"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x14

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/o;->p:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x5

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/o;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/o$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/o$1;-><init>(Lcom/bytedance/sdk/component/ox/d/o;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->kk:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/p;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->dq:Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/o;->s:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->iw:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "keepAliveDuration <= 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;J)I
    .locals 6

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/bytedance/sdk/component/ox/d/dq/d/mn$dq;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v5

    iget-object v3, v3, Lcom/bytedance/sdk/component/ox/d/dq/d/mn$dq;->dq:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq:Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/d/o;->iw:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s:J

    return v1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method private ox(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/o;->mn:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/op;->dq()Lcom/bytedance/sdk/component/ox/d/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/gh;->mn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/o;->mn:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/o;->ox:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->s:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public dq(J)J
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-direct {v1, v10, v2, v3}, Lcom/bytedance/sdk/component/ox/d/o;->dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;J)I

    move-result v13

    if-lez v13, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    iget-wide v13, v10, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s:J

    sub-long v13, v2, v13

    const-wide/16 v15, 0x0

    iget-wide v11, v1, Lcom/bytedance/sdk/component/ox/d/o;->ia:J

    cmp-long v17, v11, v15

    if-lez v17, :cond_2

    invoke-direct {v1, v10}, Lcom/bytedance/sdk/component/ox/d/o;->ox(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v11, v1, Lcom/bytedance/sdk/component/ox/d/o;->ia:J

    sub-long/2addr v13, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    cmp-long v11, v13, v6

    if-lez v11, :cond_0

    move-object v5, v10

    move-wide v6, v13

    goto :goto_0

    :cond_3
    const-wide/16 v15, 0x0

    iget-wide v2, v1, Lcom/bytedance/sdk/component/ox/d/o;->iw:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_7

    iget v0, v1, Lcom/bytedance/sdk/component/ox/d/o;->s:I

    if-le v8, v0, :cond_4

    goto :goto_2

    :cond_4
    if-lez v8, :cond_5

    sub-long/2addr v2, v6

    monitor-exit p0

    return-wide v2

    :cond_5
    if-lez v9, :cond_6

    monitor-exit p0

    return-wide v2

    :cond_6
    iput-boolean v4, v1, Lcom/bytedance/sdk/component/ox/d/o;->d:Z

    const-wide/16 v2, -0x1

    monitor-exit p0

    return-wide v2

    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    invoke-interface {v0, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ox()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v15

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    iget-wide v2, v1, Lcom/bytedance/sdk/component/ox/d/o;->iw:J

    return-wide v2
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/op;)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/o;->ox:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual {v1, p1, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/op;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p2, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;Z)V

    :cond_3
    return-object v1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;)Ljava/net/Socket;
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/o;->ox:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/op;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method public dq(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "white_extra_idle_time"

    const-string v1, "white_hosts"

    const-string v2, "max_idle_time"

    const-string v3, "max_idle_cnt"

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/bytedance/sdk/component/ox/d/o;->s:I

    :goto_0
    iput v3, p0, Lcom/bytedance/sdk/component/ox/d/o;->s:I

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/d/o;->iw:J

    :goto_1
    iput-wide v2, p0, Lcom/bytedance/sdk/component/ox/d/o;->iw:J

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/d/o;->mn:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    :cond_4
    iput-wide v2, p0, Lcom/bytedance/sdk/component/ox/d/o;->ia:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)V
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/o;->ox:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->d:Z

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/o;->p:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/o;->kk:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/o;->o:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

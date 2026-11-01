.class public Lg/boo;
.super Lg/dme;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final e:J

.field public static f:Lg/boo;

.field public static final g:Ljava/util/concurrent/locks/Condition;

.field public static final h:J


# instance fields
.field public i:Z

.field public j:Lg/boo;

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lg/boo;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    const-string v1, "newCondition(...)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg/boo;->g:Ljava/util/concurrent/locks/Condition;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lg/boo;->h:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lg/boo;->e:J

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 10

    iget-wide v0, p0, Lg/dme;->q:J

    iget-boolean v2, p0, Lg/dme;->o:Z

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lg/boo;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v4, p0, Lg/boo;->i:Z

    if-nez v4, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, p0, Lg/boo;->i:Z

    sget-object v6, Lg/boo;->f:Lg/boo;

    if-nez v6, :cond_1

    new-instance v6, Lg/boo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Lg/boo;->f:Lg/boo;

    new-instance v6, Lg/gzk;

    const-string v7, "Okio Watchdog"

    invoke-direct {v6, v7}, Lg/gzk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lg/dme;->u()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lg/boo;->k:J

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    add-long/2addr v0, v6

    iput-wide v0, p0, Lg/boo;->k:J

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lg/dme;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lg/boo;->k:J

    :goto_1
    iget-wide v0, p0, Lg/boo;->k:J

    sub-long/2addr v0, v6

    sget-object v2, Lg/boo;->f:Lg/boo;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    :goto_2
    iget-object v4, v2, Lg/boo;->j:Lg/boo;

    if-eqz v4, :cond_5

    iget-wide v8, v4, Lg/boo;->k:J

    sub-long/2addr v8, v6

    cmp-long v5, v0, v8

    if-gez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v4

    goto :goto_2

    :cond_5
    :goto_3
    iput-object v4, p0, Lg/boo;->j:Lg/boo;

    iput-object p0, v2, Lg/boo;->j:Lg/boo;

    sget-object v0, Lg/boo;->f:Lg/boo;

    if-ne v2, v0, :cond_6

    sget-object v0, Lg/boo;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    const-string v0, "Unbalanced enter/exit"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final m()Z
    .locals 4

    sget-object v0, Lg/boo;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lg/boo;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_0
    :try_start_1
    iput-boolean v2, p0, Lg/boo;->i:Z

    sget-object v1, Lg/boo;->f:Lg/boo;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lg/boo;->j:Lg/boo;

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lg/boo;->j:Lg/boo;

    iput-object v3, v1, Lg/boo;->j:Lg/boo;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/boo;->j:Lg/boo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

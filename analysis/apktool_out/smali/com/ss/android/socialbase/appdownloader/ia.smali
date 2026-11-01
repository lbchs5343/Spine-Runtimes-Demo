.class public Lcom/ss/android/socialbase/appdownloader/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/ia$dq;
    }
.end annotation


# instance fields
.field private d:Z

.field private final dq:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Landroid/os/Handler;

.field private mn:Ljava/lang/Runnable;

.field private ox:J

.field private p:J

.field private s:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/ia$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/ia$1;-><init>(Lcom/ss/android/socialbase/appdownloader/ia;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->mn:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/ia$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/ia$2;-><init>(Lcom/ss/android/socialbase/appdownloader/ia;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/socialbase/appdownloader/ia$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/ia;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;IZ)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ox;->d(Landroid/content/Context;IZ)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iput-boolean p2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->d:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->ox:J

    return p1
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/appdownloader/ia;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/ia;Landroid/content/Context;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ia;->d(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/ia;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->p:J

    return-wide p1
.end method

.method public static dq()Lcom/ss/android/socialbase/appdownloader/ia;
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/ia$dq;->dq()Lcom/ss/android/socialbase/appdownloader/ia;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/appdownloader/ia;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/ia;->ox()V

    return-void
.end method

.method public static synthetic ox(Lcom/ss/android/socialbase/appdownloader/ia;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->p:J

    return-wide v0
.end method

.method private ox()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->mn:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/ox;->ob()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/ia$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/ss/android/socialbase/appdownloader/ia$3;-><init>(Lcom/ss/android/socialbase/appdownloader/ia;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/ia;->d(Landroid/content/Context;IZ)I

    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->mn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->d:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic p(Lcom/ss/android/socialbase/appdownloader/ia;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->mn:Ljava/lang/Runnable;

    return-object p0
.end method

.method private p()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->ox:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic s(Lcom/ss/android/socialbase/appdownloader/ia;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->s:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    :goto_0
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->s:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public dq(Landroid/content/Context;IZ)I
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ia;->d(Landroid/content/Context;IZ)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/ia;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/ia$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ia$4;-><init>(Lcom/ss/android/socialbase/appdownloader/ia;Landroid/content/Context;IZ)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "leaves"

    const-string v1, "on Foreground"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ia;->d(Landroid/content/Context;IZ)I

    move-result p1

    return p1

    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->d:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/ia;->d(Landroid/content/Context;IZ)I

    move-result p1

    return p1

    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string p3, "install_queue_size"

    const/4 v2, 0x3

    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result p1

    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    monitor-enter p3

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, p1, :cond_6

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/ia;->mn:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(I)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object p1

    const-string p3, "install_queue_timeout"

    const-wide/16 v2, 0x4e20

    invoke-virtual {p1, p3, v2, v3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->iw:Landroid/os/Handler;

    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/ia;->mn:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    monitor-enter p1

    :try_start_1
    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/ia;->dq:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    :cond_8
    :goto_2
    monitor-exit p1

    return v1

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :goto_4
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia;->s:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/ia;->ox()V

    :cond_0
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzaps;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzapb;

.field public final b:Lcom/google/android/gms/internal/ads/zzapg;

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final d:Lcom/google/android/gms/internal/ads/zzaoz;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Lcom/google/android/gms/internal/ads/zzapi;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/HashSet;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final k:[Lcom/google/android/gms/internal/ads/zzapj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaoz;Lcom/google/android/gms/internal/ads/zzapi;I)V
    .locals 2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->j:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaps;->d:Lcom/google/android/gms/internal/ads/zzaoz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaps;->f:Lcom/google/android/gms/internal/ads/zzapi;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzapj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaps;->k:[Lcom/google/android/gms/internal/ads/zzapj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaps;->b:Lcom/google/android/gms/internal/ads/zzapg;

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaps;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzapq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzapq;->zza()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapp;)Lcom/google/android/gms/internal/ads/zzapp;
    .locals 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzapp;->zzf(Lcom/google/android/gms/internal/ads/zzaps;)Lcom/google/android/gms/internal/ads/zzapp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->h:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaps;->h:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzg(I)Lcom/google/android/gms/internal/ads/zzapp;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaps;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->j:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaps;->a:Lcom/google/android/gms/internal/ads/zzapb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapb;->zzb()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaps;->k:[Lcom/google/android/gms/internal/ads/zzapj;

    if-ge v1, v2, :cond_2

    aget-object v2, v3, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapj;->zza()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaps;->j:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaps;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaps;->d:Lcom/google/android/gms/internal/ads/zzaoz;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaps;->b:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzapb;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzaoz;Lcom/google/android/gms/internal/ads/zzapg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaps;->a:Lcom/google/android/gms/internal/ads/zzapb;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    if-ge v0, v2, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaps;->f:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-direct {v1, v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapi;Lcom/google/android/gms/internal/ads/zzaoz;Lcom/google/android/gms/internal/ads/zzapg;)V

    aput-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

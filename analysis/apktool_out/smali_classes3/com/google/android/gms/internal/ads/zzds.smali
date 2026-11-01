.class public final Lcom/google/android/gms/internal/ads/zzds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Lcom/google/android/gms/internal/ads/zzdc;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Z

.field public final g:Lcom/google/android/gms/internal/ads/zzdm;

.field public final h:Lcom/google/android/gms/internal/ads/zzdq;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdc;Lcom/google/android/gms/internal/ads/zzdq;)V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdc;Lcom/google/android/gms/internal/ads/zzdq;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdc;Lcom/google/android/gms/internal/ads/zzdq;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzds;->d:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzds;->h:Lcom/google/android/gms/internal/ads/zzdq;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->i:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->c:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->e:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdn;-><init>(Lcom/google/android/gms/internal/ads/zzds;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->g:Lcom/google/android/gms/internal/ads/zzdm;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzds;->f:Z

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzds;Landroid/os/Message;)Z
    .locals 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ddi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzds;->h:Lcom/google/android/gms/internal/ads/zzdq;

    iget-boolean v3, v0, Lg/ddi;->a:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lg/ddi;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lg/ddi;->c:Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    iput-object v4, v0, Lg/ddi;->c:Lcom/google/android/gms/internal/ads/zzx;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lg/ddi;->d:Z

    iget-object v0, v0, Lg/ddi;->b:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->g:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdm;->zzg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzds;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->g:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdm;->zza()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    return-void
.end method

.method public final zza(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdq;)Lcom/google/android/gms/internal/ads/zzds;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzds;->d:Lcom/google/android/gms/internal/ads/zzdc;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzds;->f:Z

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdc;Lcom/google/android/gms/internal/ads/zzdq;Z)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzds;->a:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lg/ddi;

    invoke-direct {v2, p1}, Lg/ddi;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzds;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->g:Lcom/google/android/gms/internal/ads/zzdm;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzg(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzk(Lcom/google/android/gms/internal/ads/zzdl;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzdp;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzds;->j()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdo;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdo;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzdp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzds;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzds;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzds;->a:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ddi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzds;->h:Lcom/google/android/gms/internal/ads/zzdq;

    iput-boolean v1, v2, Lg/ddi;->a:Z

    iget-boolean v4, v2, Lg/ddi;->d:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v2, Lg/ddi;->d:Z

    iget-object v4, v2, Lg/ddi;->b:Ljava/lang/Object;

    iget-object v2, v2, Lg/ddi;->c:Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzdq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzz;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzds;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ddi;

    iget-object v3, v2, Lg/ddi;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lg/ddi;->a:Z

    iget-boolean v3, v2, Lg/ddi;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lg/ddi;->d:Z

    iget-object v3, v2, Lg/ddi;->b:Ljava/lang/Object;

    iget-object v4, v2, Lg/ddi;->c:Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzds;->h:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzdq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

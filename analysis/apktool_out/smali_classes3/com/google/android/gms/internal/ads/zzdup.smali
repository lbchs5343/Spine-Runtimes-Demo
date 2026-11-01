.class public final Lcom/google/android/gms/internal/ads/zzdup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdqd;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lcom/google/android/gms/internal/ads/zzddk;

.field public final d:Lj$/util/concurrent/ConcurrentHashMap;

.field public final e:J

.field public final f:Lcom/google/android/gms/internal/ads/zzdsw;

.field public final g:Lcom/google/android/gms/internal/ads/zzcao;

.field public h:Z

.field public final i:Landroid/content/Context;

.field public final j:Lcom/google/android/gms/internal/ads/zzfko;

.field public final k:Lg/akx;

.field public final l:Ljava/util/concurrent/Executor;

.field public m:Z

.field public final n:Ljava/util/concurrent/Executor;

.field public o:Z

.field public p:Z

.field public final q:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdqd;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdsw;Lg/akx;Lcom/google/android/gms/internal/ads/zzddk;Lcom/google/android/gms/internal/ads/zzfko;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->p:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->g:Lcom/google/android/gms/internal/ads/zzcao;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->d:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->o:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdup;->a:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdup;->i:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdup;->q:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdup;->l:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdup;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdup;->n:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdup;->f:Lcom/google/android/gms/internal/ads/zzdsw;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdup;->k:Lg/akx;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdup;->c:Lcom/google/android/gms/internal/ads/zzddk;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdup;->j:Lcom/google/android/gms/internal/ads/zzfko;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->v:Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdup;->e:J

    const-string p1, ""

    const-string p2, "com.google.android.gms.ads.MobileAds"

    invoke-virtual {p0, p2, v0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized r()Lg/dcy;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v1, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v1

    check-cast v1, Lg/cmo;

    invoke-virtual {v1}, Lg/cmo;->av()Lcom/google/android/gms/internal/ads/zzbzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzt;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdui;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzdui;-><init>(Lcom/google/android/gms/internal/ads/zzdup;Lcom/google/android/gms/internal/ads/zzcao;)V

    check-cast v0, Lg/cmo;

    iget-object v0, v0, Lg/cmo;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final s(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblp;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzblp;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdup;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzg()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzblp;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzblp;

    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzblp;->zzb:Z

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzblp;->zzc:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzblp;->zzd:Ljava/lang/String;

    invoke-direct {v5, v3, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzblp;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzl()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->o:Z

    return-void
.end method

.method public final zzr()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbet;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->k:Lg/akx;

    iget v0, v0, Lg/akx;->clientJarVersion:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzbT:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->o:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->h:Z

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->f:Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsw;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->c:Lcom/google/android/gms/internal/ads/zzddk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddk;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->g:Lcom/google/android/gms/internal/ads/zzcao;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdul;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>(Lcom/google/android/gms/internal/ads/zzdup;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdup;->l:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzcao;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdup;->r()Lg/dcy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdue;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdue;-><init>(Lcom/google/android/gms/internal/ads/zzdup;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzbV:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Lg/cbu;

    invoke-direct {v1, p0}, Lg/cbu;-><init>(Lcom/google/android/gms/internal/ads/zzdup;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdup;->l:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->h:Z

    if-nez v0, :cond_3

    const-string v0, ""

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->g:Lcom/google/android/gms/internal/ads/zzcao;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->m:Z

    :cond_3
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzblw;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzduj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzduj;-><init>(Lcom/google/android/gms/internal/ads/zzdup;Lcom/google/android/gms/internal/ads/zzblw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdup;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdup;->g:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->m:Z

    return v0
.end method

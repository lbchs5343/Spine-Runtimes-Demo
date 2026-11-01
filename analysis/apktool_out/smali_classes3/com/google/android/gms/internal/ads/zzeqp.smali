.class public final Lcom/google/android/gms/internal/ads/zzeqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/google/android/gms/internal/ads/zzevz;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Lg/cvb;

.field public final g:Lcom/google/android/gms/internal/ads/zzdsm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzevz;JLg/cvb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqp;->f:Lg/cvb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->d:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqp;->a:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeqp;->g:Lcom/google/android/gms/internal/ads/zzdsm;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqp;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeqp;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqn;-><init>(Lcom/google/android/gms/internal/ads/zzeqp;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzevz;->zza()I

    move-result v0

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlw:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gvu;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/gvu;->c:Lg/cvb;

    iget-wide v2, v0, Lg/gvu;->b:J

    check-cast v1, Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzeqp;->d:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeqp;->f:Lg/cvb;

    new-instance v4, Lg/gvu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzevz;->zzb()Lg/dcy;

    move-result-object v0

    invoke-direct {v4, v0, v1, v2, v3}, Lg/gvu;-><init>(Lg/dcy;JLg/cvb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlv:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeqm;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeqm;-><init>(Lcom/google/android/gms/internal/ads/zzeqp;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzeqp;->d:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v4

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gvu;

    if-nez v0, :cond_3

    new-instance v0, Lg/gvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzevz;->zzb()Lg/dcy;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->d:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeqp;->f:Lg/cvb;

    invoke-direct {v0, v1, v2, v3, v4}, Lg/gvu;-><init>(Lg/dcy;JLg/cvb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lg/gvu;->c:Lg/cvb;

    iget-wide v3, v0, Lg/gvu;->b:J

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_6

    iget-object v0, v0, Lg/gvu;->a:Lg/dcy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeqp;->d:J

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeqp;->f:Lg/cvb;

    new-instance v6, Lg/gvu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzevz;->zzb()Lg/dcy;

    move-result-object v2

    invoke-direct {v6, v2, v3, v4, v5}, Lg/gvu;-><init>(Lg/dcy;JLg/cvb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzlx:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzly:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqp;->g:Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zza()Lcom/google/android/gms/internal/ads/zzdsl;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "scs"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsl;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzevz;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sid"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsl;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsl;->zzf()V

    :cond_4
    return-object v0

    :cond_5
    move-object v0, v6

    :cond_6
    :goto_0
    iget-object v0, v0, Lg/gvu;->a:Lg/dcy;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

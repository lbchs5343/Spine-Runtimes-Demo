.class public final Lcom/google/android/gms/internal/ads/zzgei;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgeg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeg;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgeg;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;Z)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgeg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeg;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgeg;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;Z)V

    return-object v0
.end method

.method public static varargs zzc([Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgeg;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeg;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgeg;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;Z)V

    return-object v0
.end method

.method public static zzd(Ljava/lang/Iterable;)Lg/dcy;
    .locals 2

    new-instance v0, Lg/fpz;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/fpz;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;Z)V

    return-object v0
.end method

.method public static zze(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 1

    new-instance v0, Lg/ct;

    invoke-direct {v0, p0, p1, p2}, Lg/del;-><init>(Lg/dcy;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzgey;->a(Ljava/util/concurrent/Executor;Lg/axh;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 1

    new-instance v0, Lg/ddg;

    invoke-direct {v0, p0, p1, p2}, Lg/del;-><init>(Lg/dcy;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzgey;->a(Ljava/util/concurrent/Executor;Lg/axh;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzg(Ljava/lang/Throwable;)Lg/dcy;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/hdg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzd(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static zzh(Ljava/lang/Object;)Lg/dcy;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lg/eba;->b:Lg/eba;

    return-object p0

    :cond_0
    new-instance v0, Lg/eba;

    invoke-direct {v0, p0}, Lg/eba;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzi()Lg/dcy;
    .locals 1

    sget-object v0, Lg/eba;->b:Lg/eba;

    return-object v0
.end method

.method public static zzj(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 1

    new-instance v0, Lg/due;

    invoke-direct {v0, p0}, Lg/due;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzgdo;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 2

    new-instance v0, Lg/due;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/bod;

    invoke-direct {v1, v0, p0}, Lg/bod;-><init>(Lg/due;Lcom/google/android/gms/internal/ads/zzgdo;)V

    iput-object v1, v0, Lg/due;->a:Lg/eye;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs zzl([Lg/dcy;)Lg/dcy;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lg/fpz;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fpz;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;Z)V

    return-object v0
.end method

.method public static zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 1

    new-instance v0, Lg/ciy;

    invoke-direct {v0, p1, p0}, Lg/aub;-><init>(Ljava/lang/Object;Lg/dcy;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgey;->a(Ljava/util/concurrent/Executor;Lg/axh;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 1

    sget v0, Lg/aub;->a:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/gzd;

    invoke-direct {v0, p1, p0}, Lg/aub;-><init>(Ljava/lang/Object;Lg/dcy;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzgey;->a(Ljava/util/concurrent/Executor;Lg/axh;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;
    .locals 3

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lg/hz;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lg/hz;->a:Lg/dcy;

    new-instance v1, Lg/aku;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lg/aku;-><init>(I)V

    iput-object v0, v1, Lg/aku;->b:Ljava/lang/Object;

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lg/hz;->b:Ljava/util/concurrent/ScheduledFuture;

    sget-object p1, Lg/eaf;->zza:Lg/eaf;

    invoke-interface {p0, v1, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfj;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfj;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdx;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgdx;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/fuy;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Lg/fuy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p0, v0, p2}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

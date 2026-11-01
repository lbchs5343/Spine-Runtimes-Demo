.class public final Lcom/google/android/gms/internal/ads/zzgey;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/concurrent/Executor;Lg/axh;)Ljava/util/concurrent/Executor;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/eaf;->zza:Lg/eaf;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lg/gzz;

    invoke-direct {v0, p0, p1}, Lg/gzz;-><init>(Ljava/util/concurrent/Executor;Lg/axh;)V

    return-object v0
.end method

.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzges;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzges;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lg/dld;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lg/dld;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_1
    new-instance v0, Lg/gjx;

    invoke-direct {v0, p0}, Lg/gjx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static zzb()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lg/eaf;->zza:Lg/eaf;

    return-object v0
.end method

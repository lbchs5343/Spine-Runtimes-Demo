.class public final Lcom/google/android/gms/internal/ads/zzblo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapi;


# instance fields
.field public volatile a:Lcom/google/android/gms/internal/ads/zzblb;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblo;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzapp;)Lcom/google/android/gms/internal/ads/zzapl;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzapy;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "ms"

    const-string v3, "Http assets remote cache took "

    sget-object v0, Lcom/google/android/gms/internal/ads/zzblc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapp;->zzl()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v5, v7

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v7

    add-int/2addr v7, v9

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblc;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapp;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v5, v4}, Lcom/google/android/gms/internal/ads/zzblc;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v5, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v5, 0x0

    :try_start_0
    new-instance v10, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    new-instance v14, Lg/fdy;

    const/16 v11, 0x17

    invoke-direct {v14, v11, v1, v10, v6}, Lg/fdy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    new-instance v15, Lg/dcq;

    const/16 v11, 0x1b

    invoke-direct {v15, v11, v10}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzblb;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzblo;->b:Landroid/content/Context;

    iget-object v13, v4, Lg/ti;->q:Lg/fkn;

    invoke-virtual {v13}, Lg/fkn;->f()Landroid/os/Looper;

    move-result-object v13

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzbwh;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v12

    const/16 v16, 0xa6

    invoke-direct/range {v11 .. v16}, Lg/adw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzblo;->a:Lcom/google/android/gms/internal/ads/zzblb;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzblo;->a:Lcom/google/android/gms/internal/ads/zzblb;

    invoke-virtual {v11}, Lg/adw;->checkAvailabilityAndConnect()V

    new-instance v11, Lg/yj;

    invoke-direct {v11, v0, v9}, Lg/yj;-><init>(Lg/exk;I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcn;->zzex:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v11, Lg/edt;->a:Lg/edt;

    iget-object v11, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzcaj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object v9

    new-instance v10, Lg/aku;

    invoke-direct {v10, v6, v1}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-interface {v9, v10, v0}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbvv;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbvv;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzble;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbvv;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzble;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzble;->zza:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzble;->zze:[Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzble;->zzf:[Ljava/lang/String;

    array-length v2, v2

    array-length v3, v3

    if-eq v2, v3, :cond_2

    :goto_1
    return-object v5

    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzble;->zze:[Ljava/lang/String;

    array-length v3, v2

    if-ge v6, v3, :cond_3

    aget-object v2, v2, v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzble;->zzf:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzble;->zzc:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzble;->zzd:[B

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzble;->zzg:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzble;->zzh:J

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapl;

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v7

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzapy;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapy;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->e(Ljava/lang/String;)V

    throw v0

    :catch_0
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    return-object v5
.end method

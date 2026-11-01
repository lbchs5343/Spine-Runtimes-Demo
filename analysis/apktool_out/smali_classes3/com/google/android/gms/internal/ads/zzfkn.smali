.class public final synthetic Lcom/google/android/gms/internal/ads/zzfkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfko;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfke;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfko;Lcom/google/android/gms/internal/ads/zzfke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Lcom/google/android/gms/internal/ads/zzfko;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzb:Lcom/google/android/gms/internal/ads/zzfke;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzb:Lcom/google/android/gms/internal/ads/zzfke;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfko;->b:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzfko;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v8

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzfko;->c:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfko;->zza()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    :try_start_1
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->z:Lg/esy;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfko;->h:Landroid/content/Context;

    invoke-static {v0}, Lg/esy;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzfko;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lg/gna;->i:Lg/gna;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfko;->h:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lg/gna;->j(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzfko;->g:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zziq:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzlB:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    :cond_2
    move v2, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfko;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v7, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfko;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfko;->e:Lcom/google/android/gms/internal/ads/zzfkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zza()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzir:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v5, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_4

    monitor-exit v2

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfks;->zza()Lcom/google/android/gms/internal/ads/zzfkp;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzm()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzu(I)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzl()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzq(Z)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzb()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfkp;->zzg(J)Lcom/google/android/gms/internal/ads/zzfkp;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzw(I)Lcom/google/android/gms/internal/ads/zzfkp;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfko;->j:Lg/akx;

    iget-object v3, v3, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfko;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzr(I)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzo()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzv(I)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zza()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzj(I)Lcom/google/android/gms/internal/ads/zzfkp;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfko;->g:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfkp;->zze(J)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzn()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzt(I)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfko;->k:Lcom/google/android/gms/internal/ads/zzdqa;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzd()Lcom/google/android/gms/internal/ads/zzfkq;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzm(Lcom/google/android/gms/internal/ads/zzfkq;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfke;->zzc()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfkp;->zzp(J)Lcom/google/android/gms/internal/ads/zzfkp;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zziv:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfko;->d:Ljava/util/AbstractCollection;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkp;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfkp;

    :cond_5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfko;->e:Lcom/google/android/gms/internal/ads/zzfkt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkv;->zza()Lcom/google/android/gms/internal/ads/zzfku;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfku;->zza(Lcom/google/android/gms/internal/ads/zzfkp;)Lcom/google/android/gms/internal/ads/zzfku;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfkt;->zzb(Lcom/google/android/gms/internal/ads/zzfku;)Lcom/google/android/gms/internal/ads/zzfkt;

    monitor-exit v2

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    :goto_5
    return-void

    :goto_6
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

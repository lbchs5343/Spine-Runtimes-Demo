.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcea;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdz;->zza:Lcom/google/android/gms/internal/ads/zzcea;

    const-string v0, "Timeout reached. Limit: "

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcea;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcea;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v18, "error"

    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzH:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v6, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzr:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v8, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzbW:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v10, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v10, Lg/ti;->a:Lg/ti;

    iget-object v10, v10, Lg/ti;->v:Lg/czz;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzcea;->j:J

    sub-long/2addr v10, v12

    cmp-long v12, v10, v6

    if-gtz v12, :cond_b

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzcea;->k:Z

    if-nez v0, :cond_a

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzcea;->f:Z

    if-eqz v0, :cond_0

    monitor-exit v2

    goto/16 :goto_9

    :cond_0
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzces;->zzV()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzces;->zzz()J

    move-result-wide v6

    const-wide/16 v19, 0x0

    cmp-long v0, v6, v19

    if-lez v0, :cond_7

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzces;->zzv()J

    move-result-wide v10

    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzcea;->g:J

    cmp-long v0, v10, v12

    if-eqz v0, :cond_5

    cmp-long v0, v10, v19

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v12, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcea;->i:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzces;->zzA()J

    move-result-wide v15

    goto :goto_2

    :cond_2
    const-wide/16 v15, -0x1

    :goto_2
    if-eqz v12, :cond_3

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzces;->zzx()J

    move-result-wide v13

    goto :goto_3

    :cond_3
    const-wide/16 v13, -0x1

    :goto_3
    if-eqz v12, :cond_4

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzces;->zzB()J

    move-result-wide v21

    :goto_4
    move-wide/from16 v23, v6

    move-object v7, v5

    move-wide v5, v10

    move-wide v10, v15

    goto :goto_5

    :cond_4
    const-wide/16 v21, -0x1

    goto :goto_4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbw;->zzs()I

    move-result v16

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbw;->zzu()I

    move-result v17

    move-wide v12, v13

    move-wide/from16 v14, v21

    move-wide/from16 v21, v8

    move v9, v0

    move-object v0, v7

    move-wide/from16 v7, v23

    invoke-virtual/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzcdr;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V

    iput-wide v5, v2, Lcom/google/android/gms/internal/ads/zzcea;->g:J

    goto :goto_6

    :cond_5
    move-object v0, v5

    move-wide/from16 v21, v8

    move-wide v7, v6

    move-wide v5, v10

    :goto_6
    cmp-long v3, v5, v7

    if-ltz v3, :cond_6

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcea;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzcdr;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit v2

    goto/16 :goto_9

    :cond_6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcea;->h:Lcom/google/android/gms/internal/ads/zzces;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzces;->zzw()J

    move-result-wide v7

    cmp-long v3, v7, v21

    if-ltz v3, :cond_8

    cmp-long v3, v5, v19

    if-lez v3, :cond_8

    monitor-exit v2

    goto/16 :goto_9

    :cond_7
    move-object v0, v5

    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzI:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v0, Lg/esy;->a:Lg/gfx;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcdz;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zzcdz;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    :try_start_2
    const-string v18, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v3, "ExoPlayer was released during preloading."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v18, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v3, "Abort requested before buffering finished. "

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v18, "downloadTimeout"

    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :goto_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_8
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcea;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to preload url "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Exception: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg/agd;->b(Ljava/lang/String;)V

    const-string v5, "VideoStreamExoPlayerCache.preload"

    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcea;->release()V

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzcea;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcea;->i:Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->x:Lcom/google/android/gms/internal/ads/zzcdk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcea;->e:Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcdk;->zzc(Lcom/google/android/gms/internal/ads/zzcdj;)V

    return-void
.end method

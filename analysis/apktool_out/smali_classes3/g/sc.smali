.class public final Lg/sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    iput p7, p0, Lg/sc;->d:I

    iput-object p2, p0, Lg/sc;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/sc;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/sc;->c:Ljava/lang/Object;

    iput-wide p5, p0, Lg/sc;->e:J

    iput-object p1, p0, Lg/sc;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lg/sc;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/sc;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/bcm;

    iget-object v0, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lg/sc;->b:Ljava/lang/Object;

    check-cast v2, Lg/ein;

    iget-object v3, p0, Lg/sc;->c:Ljava/lang/Object;

    check-cast v3, Lg/ein;

    iget-wide v4, p0, Lg/sc;->e:J

    const-string v6, "screen_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "screen_class"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v6, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/cyg;

    iget-object v6, v6, Lg/cyg;->m:Lg/dkq;

    invoke-static {v6}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v7, "screen_view"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Lg/dkq;->bi(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lg/bcm;->w(Lg/ein;Lg/ein;JZLandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/sc;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/csp;

    iget-object v0, p0, Lg/sc;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lg/sc;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v5, p0, Lg/sc;->c:Ljava/lang/Object;

    iget-wide v3, p0, Lg/sc;->e:J

    invoke-virtual/range {v1 .. v6}, Lg/csp;->ax(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/sc;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/sc;->f:Ljava/lang/Object;

    check-cast v1, Lg/zs;

    iget-object v1, v1, Lg/zs;->b:Lg/bsz;

    iget-object v2, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    invoke-virtual {v2}, Lg/fth;->_e()V

    iget-object v2, v1, Lg/bsz;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lg/bsz;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v1, Lg/bsz;->k:Lg/ein;

    goto :goto_0

    :cond_1
    new-instance v3, Lg/ein;

    iget-object v4, p0, Lg/sc;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lg/sc;->e:J

    invoke-direct {v3, v4, v2, v5, v6}, Lg/ein;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v2

    invoke-virtual {v2}, Lg/fth;->_e()V

    iget-object v2, v1, Lg/bsz;->i:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    iput-object v0, v1, Lg/bsz;->i:Ljava/lang/String;

    iput-object v3, v1, Lg/bsz;->k:Lg/ein;

    :goto_0
    return-void

    :pswitch_2
    const-string v0, "Could not finish the full JS engine loading in "

    const-string v1, ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is "

    const-string v2, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock"

    invoke-static {v2}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lg/sc;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired"

    invoke-static {v3}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcav;->zze()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcav;->zze()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzhq:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v5, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbnt;

    new-instance v5, Ljava/util/concurrent/TimeoutException;

    const-string v6, "Unable to fully load JS engine."

    invoke-direct {v5, v6}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    const-string v6, "SdkJavascriptFactory.loadJavascriptEngine.Runnable"

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzcav;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    iget-object v3, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcav;->zzg()V

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    iget-object v5, p0, Lg/sc;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbmx;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbnh;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzbnh;-><init>(Lcom/google/android/gms/internal/ads/zzbmp;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzc:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/sc;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcav;->zze()I

    move-result v4

    iget-object v5, p0, Lg/sc;->f:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbnu;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    iget-object v6, p0, Lg/sc;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v1, ". Still waiting for the engine to be loaded"

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lg/sc;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->v:Lg/czz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lg/sc;->e:J

    sub-long/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms. JS engine session reference status(fullLoadTimeout) is "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Update status(fullLoadTimeout) is "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms. Total latency(fullLoadTimeout) is "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms at timeout. Rejecting."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_3
    :try_start_1
    const-string v0, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    monitor-exit v2

    :goto_4
    return-void

    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

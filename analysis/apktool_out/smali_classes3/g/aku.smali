.class public final Lg/aku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/aku;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/aku;->a:I

    iput-object p2, p0, Lg/aku;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfol;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lg/aku;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfol;->f:Landroid/webkit/WebView;

    iput-object p1, p0, Lg/aku;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/bsz;Lg/gyf;)V
    .locals 0

    const/16 p2, 0x11

    iput p2, p0, Lg/aku;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aku;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/gwx;Z)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lg/aku;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aku;->b:Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 3

    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/cmo;

    iget-boolean v1, v0, Lg/cmo;->v:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/cmo;->ba()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lg/cmo;->ag()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbee;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, v0, Lg/cmo;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_4

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lg/cmo;->j:Lcom/google/android/gms/internal/ads/zzazl;

    if-nez v2, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/ads/zzazl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzazl;-><init>()V

    iput-object v2, v0, Lg/cmo;->j:Lcom/google/android/gms/internal/ads/zzazl;

    :cond_5
    iget-object v0, v0, Lg/cmo;->j:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->zzd()V

    const-string v0, "start fetching content..."

    invoke-static {v0}, Lg/agd;->k(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lg/aku;->a:I

    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zzL()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    new-instance v1, Lg/yh;

    invoke-direct {v1, v0}, Lg/yh;-><init>(Lg/bsz;)V

    iput-object v1, v0, Lg/bsz;->n:Lg/yh;

    new-instance v1, Lg/ggz;

    invoke-direct {v1, v0}, Lg/ggz;-><init>(Lg/bsz;)V

    invoke-virtual {v1}, Lg/aiq;->m()V

    iput-object v1, v0, Lg/bsz;->l:Lg/ggz;

    invoke-virtual {v0}, Lg/bsz;->bm()Lg/dsd;

    move-result-object v1

    iget-object v2, v0, Lg/bsz;->u:Lg/dqu;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object v2, v1, Lg/dsd;->b:Lg/auz;

    new-instance v1, Lg/aaq;

    invoke-direct {v1, v0}, Lg/aaq;-><init>(Lg/bsz;)V

    invoke-virtual {v1}, Lg/aiq;->m()V

    iput-object v1, v0, Lg/bsz;->y:Lg/aaq;

    new-instance v1, Lg/dqg;

    invoke-direct {v1, v0}, Lg/aiq;-><init>(Lg/bsz;)V

    invoke-virtual {v1}, Lg/aiq;->m()V

    iput-object v1, v0, Lg/bsz;->af:Lg/dqg;

    new-instance v1, Lg/fit;

    invoke-direct {v1, v0, v5}, Lg/fit;-><init>(Lg/bsz;I)V

    invoke-virtual {v1}, Lg/aiq;->m()V

    iput-object v1, v0, Lg/bsz;->b:Lg/fit;

    new-instance v1, Lg/uk;

    invoke-direct {v1, v0}, Lg/uk;-><init>(Lg/bsz;)V

    invoke-virtual {v1}, Lg/aiq;->m()V

    iput-object v1, v0, Lg/bsz;->s:Lg/uk;

    new-instance v1, Lg/gwx;

    invoke-direct {v1, v0}, Lg/gwx;-><init>(Lg/bsz;)V

    iput-object v1, v0, Lg/bsz;->q:Lg/gwx;

    iget v1, v0, Lg/bsz;->ad:I

    iget v2, v0, Lg/bsz;->t:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Not all upload components initialized"

    iget v3, v0, Lg/bsz;->ad:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lg/bsz;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iput-boolean v5, v0, Lg/bsz;->ae:Z

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    iget-object v1, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v1}, Lg/ggz;->at()V

    iget-object v1, v0, Lg/bsz;->y:Lg/aaq;

    iget-object v1, v1, Lg/aaq;->b:Lg/fou;

    invoke-virtual {v1}, Lg/fou;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lg/bsz;->y:Lg/aaq;

    iget-object v1, v1, Lg/aaq;->b:Lg/fou;

    invoke-virtual {v0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v2

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/fou;->g(J)V

    :cond_1
    invoke-virtual {v0}, Lg/bsz;->ar()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/eod;

    iget-object v1, v0, Lg/eod;->a:Lg/cis;

    iget-wide v7, v0, Lg/eod;->b:J

    iget-wide v2, v0, Lg/eod;->c:J

    iget-object v0, v1, Lg/cis;->b:Ljava/lang/Object;

    check-cast v0, Lg/cjv;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v0, v1, Lg/cis;->b:Ljava/lang/Object;

    check-cast v0, Lg/cjv;

    iget-object v1, v0, Lg/cjv;->k:Lg/fcw;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v6, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v6, Lg/bgm;->o:Lg/dvb;

    const-string v9, "Application going to the background"

    invoke-virtual {v6, v9}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v6, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v6}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v6, Lg/gmr;->x:Lg/avz;

    invoke-virtual {v6, v5}, Lg/avz;->f(Z)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v5}, Lg/dsd;->j()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v5, Lg/rd;

    invoke-virtual {v5}, Lg/emo;->i()V

    invoke-virtual {v1, v2, v3, v4, v4}, Lg/fcw;->f(JZZ)Z

    :cond_2
    iget-object v6, v0, Lg/cyg;->c:Lg/csp;

    invoke-static {v6}, Lg/cyg;->aj(Lg/os;)V

    const-string v10, "auto"

    const-string v11, "_ab"

    invoke-virtual/range {v6 .. v11}, Lg/csp;->ba(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    iget-object v0, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lg/fpd;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_set_id_last_used_time"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_3

    const-wide v9, 0x7d8702800L

    add-long/2addr v7, v9

    goto :goto_0

    :cond_3
    move-wide v7, v5

    :goto_0
    cmp-long v1, v7, v5

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-lez v1, :cond_7

    const-string v1, "AppSet"

    invoke-static {v0}, Lg/fpd;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "app_set_id"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Failed to clear app set ID generated for App "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v3, "app_set_id_storage"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to clear app set ID last used time for App "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :pswitch_3
    invoke-direct {p0}, Lg/aku;->c()V

    return-void

    :pswitch_4
    const-string v0, "Timed out (timeout delayed by "

    iget-object v4, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v4, Lg/hz;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    iget-object v6, v4, Lg/hz;->a:Lg/dcy;

    if-eqz v6, :cond_b

    iput-object v3, p0, Lg/aku;->b:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzgcy;->af(Lg/dcy;)V

    goto :goto_6

    :cond_9
    :try_start_0
    iget-object v7, v4, Lg/hz;->b:Ljava/util/concurrent/ScheduledFuture;

    iput-object v3, v4, Lg/hz;->b:Ljava/util/concurrent/ScheduledFuture;

    const-string v3, "Timed out"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_a

    :try_start_1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms after scheduled time)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_a
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lg/cty;

    invoke-direct {v1, v0, v5}, Lg/cty;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzd(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v6, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_4
    :try_start_3
    new-instance v1, Lg/cty;

    invoke-direct {v1, v3, v5}, Lg/cty;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzd(Ljava/lang/Throwable;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    invoke-interface {v6, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0

    :cond_b
    :goto_6
    return-void

    :pswitch_5
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v1, v0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/err;

    iget-object v0, v0, Lg/err;->b:Ljava/lang/Object;

    check-cast v0, Lg/brm;

    invoke-interface {v0}, Lg/brm;->a()V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_6
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbxj;

    if-eqz v0, :cond_c

    :try_start_5
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbxj;->zze(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_c
    :goto_7
    return-void

    :pswitch_7
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpb;->g:Lcom/google/android/gms/internal/ads/zzfov;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfov;->zzb()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/fip;

    iget-object v0, v0, Lg/fip;->a:Lcom/google/android/gms/internal/ads/zzblw;

    if-eqz v0, :cond_d

    :try_start_6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzblw;->zzb(Ljava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    :catch_1
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_d
    :goto_8
    return-void

    :pswitch_a
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/drz;

    iget-object v0, v0, Lg/drz;->a:Lg/ejp;

    if-eqz v0, :cond_e

    :try_start_7
    invoke-interface {v0, v5}, Lg/ejp;->zze(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    :catch_2
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_e
    :goto_9
    return-void

    :pswitch_b
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/afs;

    iget-object v0, v0, Lg/afs;->a:Lg/gkf;

    iget-object v0, v0, Lg/gkf;->a:Lg/ejp;

    if-eqz v0, :cond_f

    :try_start_8
    invoke-interface {v0, v5}, Lg/ejp;->zze(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    :catch_3
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :cond_f
    :goto_a
    return-void

    :pswitch_c
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/gwx;

    iget-object v0, v0, Lg/gwx;->a:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ar()V

    return-void

    :pswitch_d
    const-string v0, "Timed out (timeout delayed by "

    iget-object v6, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v6, Lg/alw;

    if-nez v6, :cond_10

    goto/16 :goto_f

    :cond_10
    iget-object v7, v6, Lg/alw;->i:Lg/gew;

    if-eqz v7, :cond_18

    iput-object v3, p0, Lg/aku;->b:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v0, v6, Lg/ail;->f:Ljava/lang/Object;

    if-nez v0, :cond_13

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v7}, Lg/alw;->p(Lg/gew;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/ail;->a:Lg/cro;

    invoke-virtual {v1, v6, v3, v0}, Lg/cro;->i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v6}, Lg/alw;->n(Lg/alw;)V

    goto/16 :goto_f

    :cond_11
    new-instance v1, Lg/ffj;

    invoke-direct {v1, v6, v7}, Lg/ffj;-><init>(Lg/alw;Lg/gew;)V

    sget-object v0, Lg/ail;->a:Lg/cro;

    invoke-virtual {v0, v6, v3, v1}, Lg/cro;->i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :try_start_9
    sget-object v0, Lg/fyh;->zza:Lg/fyh;

    invoke-interface {v7, v1, v0}, Lg/gew;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_f

    :catchall_3
    move-exception v0

    :try_start_a
    new-instance v2, Lg/fjg;

    invoke-direct {v2, v0}, Lg/fjg;-><init>(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_b

    :catch_4
    sget-object v2, Lg/fjg;->a:Lg/fjg;

    :goto_b
    sget-object v0, Lg/ail;->a:Lg/cro;

    invoke-virtual {v0, v6, v1, v2}, Lg/cro;->i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_12
    iget-object v0, v6, Lg/ail;->f:Ljava/lang/Object;

    :cond_13
    instance-of v1, v0, Lg/ahl;

    if-eqz v1, :cond_18

    check-cast v0, Lg/ahl;

    iget-boolean v0, v0, Lg/ahl;->c:Z

    invoke-interface {v7, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_f

    :cond_14
    :try_start_b
    iget-object v8, v6, Lg/alw;->j:Ljava/util/concurrent/ScheduledFuture;

    iput-object v3, v6, Lg/alw;->j:Ljava/util/concurrent/ScheduledFuture;

    const-string v9, "Timed out"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v8, :cond_15

    :try_start_c
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v10}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v8, v10, v1

    if-lez v8, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms after scheduled time)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :catchall_4
    move-exception v0

    goto :goto_d

    :cond_15
    :goto_c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    new-instance v1, Lg/cty;

    invoke-direct {v1, v0, v4}, Lg/cty;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lg/fjg;

    invoke-direct {v0, v1}, Lg/fjg;-><init>(Ljava/lang/Throwable;)V

    sget-object v1, Lg/ail;->a:Lg/cro;

    invoke-virtual {v1, v6, v3, v0}, Lg/cro;->i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v6}, Lg/alw;->n(Lg/alw;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_16
    invoke-interface {v7, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_e

    :goto_d
    :try_start_e
    new-instance v1, Lg/cty;

    invoke-direct {v1, v9, v4}, Lg/cty;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lg/fjg;

    invoke-direct {v2, v1}, Lg/fjg;-><init>(Ljava/lang/Throwable;)V

    sget-object v1, Lg/ail;->a:Lg/cro;

    invoke-virtual {v1, v6, v3, v2}, Lg/cro;->i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v6}, Lg/alw;->n(Lg/alw;)V

    :cond_17
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_e
    invoke-interface {v7, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0

    :cond_18
    :goto_f
    return-void

    :pswitch_e
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lg/cwg;

    invoke-virtual {v0}, Lg/cwg;->zzc()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/v;->az(Lcom/google/android/gms/internal/ads/v;)V

    return-void

    :pswitch_10
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->x:Lcom/google/android/gms/internal/ads/zzcdk;

    iget-object v1, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdk;->zzc(Lcom/google/android/gms/internal/ads/zzcdj;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lg/aku;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzblo;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzblo;->a:Lcom/google/android/gms/internal/ads/zzblb;

    if-nez v1, :cond_19

    goto :goto_10

    :cond_19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzblo;->a:Lcom/google/android/gms/internal/ads/zzblb;

    invoke-virtual {v0}, Lg/adw;->disconnect()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

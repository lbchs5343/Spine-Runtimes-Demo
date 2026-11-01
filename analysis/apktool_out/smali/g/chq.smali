.class public final Lg/chq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/chq;->d:I

    iput-object p1, p0, Lg/chq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/chq;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/chq;->a:Ljava/lang/Object;

    iput-object p4, p0, Lg/chq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p5, p0, Lg/chq;->d:I

    iput-object p1, p0, Lg/chq;->e:Ljava/lang/Object;

    iput-object p2, p0, Lg/chq;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/chq;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/chq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lg/chq;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    check-cast v0, Lg/bgq;

    iget-object v1, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsh;

    iget-object v2, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    iget-object v3, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    const-string v4, "to"

    invoke-virtual {v0, v1, v2, v4}, Lg/bgq;->m(Lcom/google/android/gms/internal/ads/zzdsh;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    const-string v2, "of"

    invoke-virtual {v0, v1, v3, v2}, Lg/bgq;->m(Lcom/google/android/gms/internal/ads/zzdsh;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v2

    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lg/brv;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lg/acn;->_e()V

    invoke-virtual {v2}, Lg/os;->zza()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v5

    new-instance v1, Lg/fup;

    const/4 v7, 0x2

    invoke-direct/range {v1 .. v7}, Lg/fup;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/brv;

    iget-object v0, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v0, Lg/dbb;->l:Lg/ake;

    if-nez v4, :cond_0

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {v0, v4}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0, v1, v3}, Lg/dkq;->bh(Lg/brv;[B)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v5, p0, Lg/chq;->e:Ljava/lang/Object;

    check-cast v5, Lg/ctf;

    iget-object v6, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lg/ake;->w(Lg/ctf;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0}, Lg/dbb;->x()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0, v1, v3}, Lg/dkq;->bh(Lg/brv;[B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v4, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Failed to send event to the service to bundle"

    invoke-virtual {v4, v0, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0, v1, v3}, Lg/dkq;->bh(Lg/brv;[B)V

    :goto_0
    return-void

    :goto_1
    iget-object v2, v2, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v2, v1, v3}, Lg/dkq;->bh(Lg/brv;[B)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v2

    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/brv;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/ctf;

    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lg/acn;->_e()V

    invoke-virtual {v2}, Lg/os;->zza()V

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    sget-object v6, Lg/gna;->i:Lg/gna;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    const v7, 0xbdfcb8

    invoke-virtual {v6, v1, v7}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v5, v1}, Lg/dkq;->bh(Lg/brv;[B)V

    goto :goto_2

    :cond_1
    new-instance v1, Lg/chq;

    const/16 v6, 0x8

    invoke-direct/range {v1 .. v6}, Lg/chq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v2

    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lg/acn;->_e()V

    invoke-virtual {v2}, Lg/os;->zza()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v6

    new-instance v1, Lg/fup;

    invoke-direct/range {v1 .. v6}, Lg/fup;-><init>(Lg/dbb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lg/afh;)V

    invoke-virtual {v2, v1}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v2, Lg/awn;

    iget-object v3, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v3, Lg/byk;

    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbxl;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbxl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v2, Lg/awn;->a:Lg/qo;

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbxl;->zzb(Lg/qo;Lg/byk;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    const-string v2, "RewardedAd.load"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_5
    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v2, Lg/awn;

    iget-object v3, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v3, Lg/gsq;

    :try_start_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbxw;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbxw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v2, Lg/awn;->a:Lg/qo;

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbxw;->zza(Lg/qo;Lg/gsq;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    const-string v2, "RewardedInterstitialAd.load"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_6
    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v0, Lg/awn;

    iget-object v1, p0, Lg/chq;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lg/fle;

    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzban;

    iget-object v4, v0, Lg/awn;->a:Lg/qo;

    const/4 v5, 0x3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/qo;ILg/fle;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzban;->zza()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    const-string v2, "AppOpenAd.load"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_7
    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v0, Lg/awn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtx;

    iget-object v0, v0, Lg/awn;->a:Lg/qo;

    iget-object v2, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v2, Lg/emg;

    iget-object v3, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v3, Lg/bme;

    iget-object v4, p0, Lg/chq;->e:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzbtx;-><init>(Landroid/content/Context;Lg/bme;Lg/qo;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbtx;->zzb(Lg/emg;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lg/chq;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v2, Lg/awn;

    iget-object v3, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v3, Lg/gsg;

    :try_start_6
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbml;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbml;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v2, Lg/awn;->a:Lg/qo;

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbml;->zza(Lg/qo;Lg/df;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    const-string v2, "InterstitialAd.load"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_6
    return-void

    :pswitch_9
    iget-object v0, p0, Lg/chq;->c:Ljava/lang/Object;

    check-cast v0, Lg/aoy;

    iget-object v0, v0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/ezq;

    iget-object v1, p0, Lg/chq;->a:Ljava/lang/Object;

    check-cast v1, Lg/far;

    iget-object v2, p0, Lg/chq;->e:Ljava/lang/Object;

    check-cast v2, Lg/czb;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v0, Lg/ezq;->y:Z

    iget-object v2, v2, Lg/czb;->b:Lg/ftn;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lg/ftn;->at(Z)V

    iput-boolean v3, v0, Lg/ezq;->y:Z

    :cond_2
    invoke-virtual {v1}, Lg/far;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lg/far;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/chq;->b:Ljava/lang/Object;

    check-cast v0, Lg/ftn;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lg/ftn;->ar(Landroid/view/MenuItem;Lg/us;I)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

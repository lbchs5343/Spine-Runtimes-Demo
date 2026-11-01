.class public final Lg/eax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/eax;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lg/cer;Lg/akj;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lg/eax;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eax;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/eax;->a:Ljava/lang/Object;

    iput-object p4, p0, Lg/eax;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/bww;Ljava/lang/String;Ljava/net/URL;Lg/yh;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lg/eax;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eax;->a:Ljava/lang/Object;

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p3, p0, Lg/eax;->d:Ljava/lang/Object;

    iput-object p4, p0, Lg/eax;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/eax;->c:I

    iput-object p1, p0, Lg/eax;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/eax;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/eax;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p4, p0, Lg/eax;->c:I

    iput-object p1, p0, Lg/eax;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/eax;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/eax;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f()V
    .locals 8

    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/afh;

    const-string v1, "Failed to get app instance id"

    iget-object v2, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v2, Lg/brv;

    iget-object v3, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v3, Lg/dbb;

    iget-object v4, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v4, Lg/cyg;->b:Lg/gmr;

    invoke-static {v6}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v6}, Lg/gmr;->as()Lg/rs;

    move-result-object v6

    sget-object v7, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v6, v7}, Lg/rs;->g(Lg/gxx;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, v4, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v4, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->h:Lg/dxb;

    invoke-virtual {v0, v5}, Lg/dxb;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, v4, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0, v5, v2}, Lg/dkq;->ax(Ljava/lang/String;Lg/brv;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v6, v3, Lg/dbb;->l:Lg/ake;

    if-nez v6, :cond_1

    iget-object v0, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6, v0}, Lg/ake;->l(Lg/afh;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, v4, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v4, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->h:Lg/dxb;

    invoke-virtual {v0, v5}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lg/dbb;->x()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v3, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v3, v0, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v1, v4, Lg/cyg;->m:Lg/dkq;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v1, v5, v2}, Lg/dkq;->ax(Ljava/lang/String;Lg/brv;)V

    throw v0
.end method

.method private final g()V
    .locals 7

    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, [Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsu;->zzc()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    const-string v4, "action"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-object v4, v2, v1

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsu;->zzf(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public e(ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/bww;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/bk;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lg/bk;-><init>(Lg/eax;ILjava/lang/Exception;[BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 14

    iget v0, p0, Lg/eax;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/axs;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v0, v0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lg/eax;->g()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/ecv;

    iget-object v0, v0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ap()Lg/dkq;

    move-result-object v1

    const-string v2, "_err"

    iget-object v3, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Lg/bsz;->zzav()Lg/cvb;

    move-result-object v4

    check-cast v4, Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v4, "auto"

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lg/dkq;->cb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lg/ctf;

    move-result-object v1

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/bsz;->be(Lg/ctf;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/ccp;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Lg/bgm;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/job/JobParameters;

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v3, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v1, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, v0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    check-cast v0, Lg/ir;

    invoke-interface {v0, v2}, Lg/ir;->c(Landroid/app/job/JobParameters;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/afh;

    const-string v1, "Failed to send default event parameters to service"

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/dbb;

    iget-object v3, v2, Lg/dbb;->l:Lg/ake;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    if-nez v3, :cond_1

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v3, v4, v0}, Lg/ake;->j(Landroid/os/Bundle;Lg/afh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v2, v0, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_4
    invoke-direct {p0}, Lg/eax;->f()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/gmr;->as()Lg/rs;

    move-result-object v0

    sget-object v2, Lg/gxx;->zzb:Lg/gxx;

    invoke-virtual {v0, v2}, Lg/rs;->g(Lg/gxx;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->c:Lg/csp;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, v0, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->h:Lg/dxb;

    invoke-virtual {v0, v3}, Lg/dxb;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    iget-object v2, v0, Lg/dbb;->l:Lg/ake;

    if-nez v2, :cond_3

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_5
    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/afh;

    iget-object v3, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {v2, v0}, Lg/ake;->l(Lg/afh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/dbb;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->c:Lg/csp;

    invoke-static {v2}, Lg/cyg;->aj(Lg/os;)V

    iget-object v2, v2, Lg/csp;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/dbb;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->b:Lg/gmr;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v2, v2, Lg/gmr;->h:Lg/dxb;

    invoke-virtual {v2, v0}, Lg/dxb;->l(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/dbb;

    invoke-virtual {v0}, Lg/dbb;->x()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_7
    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/dbb;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_2

    :goto_4
    monitor-exit v1

    :goto_5
    return-void

    :goto_6
    iget-object v2, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0

    :goto_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :pswitch_6
    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/bww;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v1}, Lg/fth;->r()V

    :try_start_9
    iget-object v1, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    instance-of v5, v1, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_7

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0xea60

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0xee48

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/16 v7, 0x400

    :try_start_d
    new-array v7, v7, [B

    :goto_8
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v0, v7, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0, v2, v3, v0, v5}, Lg/eax;->e(ILjava/io/IOException;[BLjava/util/Map;)V

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v6, v3

    :goto_9
    if-eqz v6, :cond_6

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_a
    move v4, v2

    goto :goto_f

    :goto_b
    move v4, v2

    goto :goto_11

    :catchall_5
    move-exception v0

    move v4, v2

    :goto_c
    move-object v5, v3

    goto :goto_f

    :catch_3
    move-exception v0

    move v4, v2

    :goto_d
    move-object v5, v3

    goto :goto_11

    :catchall_6
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_10

    :cond_7
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to obtain HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_e
    move-object v1, v3

    move-object v5, v1

    :goto_f
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    invoke-virtual {p0, v4, v3, v3, v5}, Lg/eax;->e(ILjava/io/IOException;[BLjava/util/Map;)V

    throw v0

    :goto_10
    move-object v1, v3

    move-object v5, v1

    :goto_11
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-virtual {p0, v4, v0, v3, v5}, Lg/eax;->e(ILjava/io/IOException;[BLjava/util/Map;)V

    :goto_12
    return-void

    :pswitch_7
    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/afh;

    iget-object v1, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v1, Lg/zs;

    iget-object v1, v1, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v1}, Lg/bsz;->ay()V

    iget-object v2, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v2, Lg/cmd;

    invoke-virtual {v2}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-virtual {v1, v2, v0}, Lg/bsz;->an(Lg/cmd;Lg/afh;)V

    goto :goto_13

    :cond_a
    invoke-virtual {v1, v2, v0}, Lg/bsz;->aq(Lg/cmd;Lg/afh;)V

    :goto_13
    return-void

    :pswitch_8
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v1, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v1, Lg/ctf;

    iget-object v2, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/bsz;->be(Lg/ctf;Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lg/zs;

    iget-object v1, v0, Lg/zs;->b:Lg/bsz;

    iget-object v4, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v4, Lg/ctf;

    const-string v5, "_cmp"

    iget-object v6, v4, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v4, Lg/ctf;->zzb:Lg/cde;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lg/cde;->zza()I

    move-result v5

    if-nez v5, :cond_b

    goto :goto_14

    :cond_b
    iget-object v5, v4, Lg/ctf;->zzb:Lg/cde;

    const-string v6, "_cis"

    invoke-virtual {v5, v6}, Lg/cde;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "referrer broadcast"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "referrer API"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v5

    iget-object v5, v5, Lg/bgm;->p:Lg/dvb;

    const-string v6, "Event has been filtered "

    invoke-virtual {v4}, Lg/ctf;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lg/ctf;

    const-string v9, "_cmpx"

    iget-object v10, v4, Lg/ctf;->zzb:Lg/cde;

    iget-object v11, v4, Lg/ctf;->zzc:Ljava/lang/String;

    iget-wide v12, v4, Lg/ctf;->zzd:J

    invoke-direct/range {v8 .. v13}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    move-object v4, v8

    :cond_d
    :goto_14
    iget-object v5, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v5, Lg/afh;

    iget-object v6, v1, Lg/bsz;->u:Lg/dqu;

    iget-object v7, v1, Lg/bsz;->e:Lg/fit;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v8, v5, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto/16 :goto_19

    :cond_e
    iget-object v6, v6, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v6, v8}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/clv;

    if-nez v6, :cond_f

    goto/16 :goto_19

    :cond_f
    invoke-virtual {v6}, Lg/clv;->j()I

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v6

    iget-object v6, v6, Lg/bgm;->c:Lg/dvb;

    const-string v8, "EES config found for"

    iget-object v9, v5, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lg/bsz;->u:Lg/dqu;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v8, v5, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_15

    :cond_10
    iget-object v3, v6, Lg/dqu;->o:Lg/arr;

    invoke-virtual {v3, v8}, Lg/ctw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eqg;

    :goto_15
    if-eqz v3, :cond_14

    :try_start_11
    iget-object v6, v3, Lg/eqg;->d:Lg/dzh;

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v8, v4, Lg/ctf;->zzb:Lg/cde;

    invoke-virtual {v8}, Lg/cde;->zzc()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v2}, Lg/fit;->x(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    move-result-object v2

    iget-object v8, v4, Lg/ctf;->zza:Ljava/lang/String;

    sget-object v9, Lg/dyd;->q:[Ljava/lang/String;

    sget-object v10, Lg/dyd;->i:[Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lg/cux;->ai(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_11

    iget-object v8, v4, Lg/ctf;->zza:Ljava/lang/String;

    :cond_11
    new-instance v9, Lg/guq;

    iget-wide v10, v4, Lg/ctf;->zzd:J

    invoke-direct {v9, v8, v10, v11, v2}, Lg/guq;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    invoke-virtual {v3, v9}, Lg/eqg;->f(Lg/guq;)Z

    move-result v2
    :try_end_11
    .catch Lg/egg; {:try_start_11 .. :try_end_11} :catch_6

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    iget-object v2, v6, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Lg/guq;

    iget-object v3, v6, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v3, Lg/guq;

    invoke-virtual {v2, v3}, Lg/guq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    const-string v3, "EES edited event"

    iget-object v4, v4, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, v6, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Lg/guq;

    invoke-static {v2}, Lg/fit;->g(Lg/guq;)Lg/ctf;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lg/zs;->i(Lg/ctf;Lg/afh;)V

    goto :goto_16

    :cond_13
    invoke-virtual {v0, v4, v5}, Lg/zs;->i(Lg/ctf;Lg/afh;)V

    :goto_16
    iget-object v2, v6, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v6, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/guq;

    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    const-string v6, "EES logging created event"

    iget-object v8, v3, Lg/guq;->a:Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {v3}, Lg/fit;->g(Lg/guq;)Lg/ctf;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lg/zs;->i(Lg/ctf;Lg/afh;)V

    goto :goto_17

    :catch_6
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v2

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "EES error. appId, eventName"

    iget-object v6, v5, Lg/afh;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v7}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_18
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "EES was not applied to event"

    iget-object v3, v4, Lg/ctf;->zza:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lg/zs;->i(Lg/ctf;Lg/afh;)V

    goto :goto_1a

    :cond_14
    invoke-virtual {v1}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v1

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "EES not loaded for"

    iget-object v3, v5, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lg/zs;->i(Lg/ctf;Lg/afh;)V

    goto :goto_1a

    :cond_15
    :goto_19
    invoke-virtual {v0, v4, v5}, Lg/zs;->i(Lg/ctf;Lg/afh;)V

    :cond_16
    :goto_1a
    return-void

    :pswitch_a
    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/afh;

    iget-object v1, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v1, Lg/zs;

    iget-object v1, v1, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v1}, Lg/bsz;->ay()V

    iget-object v2, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v2, Lg/bou;

    iget-object v3, v2, Lg/bou;->zzc:Lg/cmd;

    invoke-virtual {v3}, Lg/cmd;->zza()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-virtual {v1, v2, v0}, Lg/bsz;->bj(Lg/bou;Lg/afh;)V

    goto :goto_1b

    :cond_17
    invoke-virtual {v1, v2, v0}, Lg/bsz;->bg(Lg/bou;Lg/afh;)V

    :goto_1b
    return-void

    :pswitch_b
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/zs;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    iget-object v0, v0, Lg/bsz;->l:Lg/ggz;

    invoke-static {v0}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/aiq;->n()V

    iget-object v5, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lg/cyg;

    const-string v6, ""

    const-string v7, "dep"

    invoke-static {v1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v7}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_18

    iget-object v7, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v7, v7, Lg/bgm;->b:Lg/dvb;

    const-string v8, "Param name can\'t be null"

    invoke-virtual {v7, v8}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    :cond_18
    iget-object v8, v5, Lg/cyg;->m:Lg/dkq;

    invoke-static {v8}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lg/dkq;->be(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_19

    iget-object v8, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->g:Lg/dvb;

    const-string v9, "Param value can\'t be null"

    iget-object v10, v5, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v10, v7}, Lg/ebl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7, v9}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    :cond_19
    iget-object v9, v5, Lg/cyg;->m:Lg/dkq;

    invoke-static {v9}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v9, v6, v7, v8}, Lg/dkq;->az(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_1a
    new-instance v2, Lg/cde;

    invoke-direct {v2, v6}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_1b
    new-instance v2, Lg/cde;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v6}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    :goto_1d
    iget-object v6, v0, Lg/af;->a:Lg/bsz;

    iget-object v6, v6, Lg/bsz;->e:Lg/fit;

    invoke-static {v6}, Lg/bsz;->ag(Lg/aiq;)V

    invoke-static {}, Lg/kk;->g()Lg/btw;

    move-result-object v7

    iget-boolean v8, v7, Lg/crf;->i:Z

    if-eqz v8, :cond_1c

    invoke-virtual {v7}, Lg/crf;->p()V

    iput-boolean v4, v7, Lg/crf;->i:Z

    :cond_1c
    iget-object v4, v7, Lg/crf;->k:Lg/cys;

    check-cast v4, Lg/kk;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4}, Lg/kk;->h(JLg/kk;)V

    invoke-static {v2}, Lg/cde;->zzb(Lg/cde;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lg/asm;->i()Lg/bd;

    move-result-object v9

    invoke-virtual {v9, v8}, Lg/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lg/cde;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v6, v9, v8}, Lg/fit;->at(Lg/bd;Ljava/lang/Object;)V

    invoke-virtual {v7, v9}, Lg/btw;->e(Lg/bd;)V

    goto :goto_1e

    :cond_1d
    invoke-virtual {v7}, Lg/crf;->o()Lg/cys;

    move-result-object v2

    check-cast v2, Lg/kk;

    invoke-virtual {v2}, Lg/cir;->z()[B

    move-result-object v2

    iget-object v4, v5, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v6, v4, Lg/bgm;->c:Lg/dvb;

    const-string v7, "Saving default event parameters, appId, data size"

    iget-object v5, v5, Lg/cyg;->af:Lg/ebl;

    invoke-virtual {v5, v1}, Lg/ebl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "app_id"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "parameters"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_12
    invoke-virtual {v0}, Lg/ggz;->bg()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "default_event_params"

    const/4 v6, 0x5

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_1e

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v4, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to insert default event parameters (got -1). appId"

    invoke-static {v1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_1f

    :catch_7
    move-exception v0

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v4, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Error storing default event parameters. appId"

    invoke-static {v1}, Lg/bgm;->t(Ljava/lang/String;)Lg/dfq;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    :goto_1f
    return-void

    :pswitch_c
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/sq;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    iget-object v3, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v5, v0, Lg/sq;->d:Ljava/util/HashMap;

    instance-of v6, v1, Landroid/webkit/WebView;

    if-nez v6, :cond_1f

    goto :goto_20

    :cond_1f
    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->k:Lg/lp;

    invoke-virtual {v6}, Lg/lp;->a()Landroid/webkit/CookieManager;

    move-result-object v6

    if-nez v6, :cond_20

    goto :goto_20

    :cond_20
    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v6, v1}, Landroid/webkit/CookieManager;->acceptThirdPartyCookies(Landroid/webkit/WebView;)Z

    move-result v4

    :goto_20
    iget-object v1, v0, Lg/sq;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gai;

    if-eqz v1, :cond_22

    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->v:Lg/czz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lg/gai;->e:J

    cmp-long v10, v8, v6

    if-gtz v10, :cond_21

    goto :goto_21

    :cond_21
    invoke-virtual {v0, v1, v3, v2}, Lg/sq;->f(Lg/gai;Landroid/util/Pair;Z)V

    goto :goto_22

    :cond_22
    :goto_21
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    return-void

    :pswitch_d
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbk;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void

    :pswitch_e
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/bpy;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Lg/czw;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/dzt;

    invoke-static {v0, v1, v2}, Lg/bpy;->bn(Lg/bpy;Lg/czw;Lg/dzt;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/bpy;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/emr;

    invoke-static {v0, v1, v2}, Lg/bpy;->bm(Lg/bpy;Lg/aoy;Lg/emr;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/ad;

    iget-object v2, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v3, Lg/dm;

    sget-object v5, Lg/ti;->a:Lg/ti;

    iget-object v5, v5, Lg/ti;->k:Lg/lp;

    iget-object v6, v0, Lg/ad;->f:Landroid/content/Context;

    invoke-virtual {v5}, Lg/lp;->a()Landroid/webkit/CookieManager;

    move-result-object v5

    if-eqz v5, :cond_25

    iget-object v0, v0, Lg/ad;->i:Landroid/webkit/WebView;

    invoke-virtual {v5, v0}, Landroid/webkit/CookieManager;->acceptThirdPartyCookies(Landroid/webkit/WebView;)Z

    move-result v4

    :cond_25
    const-string v0, "accept_3p_cookie"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lg/bme;->BANNER:Lg/bme;

    new-instance v4, Lg/dcq;

    invoke-direct {v4, v1}, Lg/dcq;-><init>(I)V

    invoke-virtual {v4, v2}, Lg/dcq;->h(Landroid/os/Bundle;)V

    new-instance v1, Lg/awn;

    invoke-direct {v1, v4}, Lg/awn;-><init>(Lg/dcq;)V

    invoke-static {v6, v0, v1, v3}, Lg/emr;->t(Landroid/content/Context;Lg/bme;Lg/awn;Lg/emg;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzw()Z

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapv;->zzc()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzapv;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapp;->q(Ljava/lang/Object;)V

    goto :goto_23

    :cond_26
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzapv;->zzc:Lcom/google/android/gms/internal/ads/zzapy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzn(Lcom/google/android/gms/internal/ads/zzapy;)V

    :goto_23
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzapv;->zzd:Z

    if-eqz v1, :cond_27

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    goto :goto_24

    :cond_27
    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapp;->r(Ljava/lang/String;)V

    :goto_24
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_28
    return-void

    :pswitch_12
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Lg/akj;

    invoke-static {v0, v1}, Lg/cuo;->m(Landroid/view/View;Lg/akj;)V

    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v2, Lg/gtb;

    :try_start_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f12021e

    if-eqz v3, :cond_29

    if-nez v0, :cond_29

    iget-object v0, v2, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lg/bid;

    invoke-interface {v0, v4}, Lg/dmn;->showTipMessage(I)V

    goto :goto_27

    :catch_8
    move-exception v0

    goto :goto_26

    :cond_29
    invoke-virtual {v2, v0, v1}, Lg/gtb;->v(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Lg/xy; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    iget-object v3, v2, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v3, Lg/bid;

    if-nez v0, :cond_2a

    :try_start_14
    invoke-interface {v3, v4}, Lg/dmn;->showTipMessage(I)V

    goto :goto_27

    :cond_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const v0, 0x7f120216

    invoke-interface {v3, v0}, Lg/dmn;->showTipMessage(I)V

    goto :goto_27

    :cond_2b
    invoke-static {v0}, Lg/gtb;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v1, ""

    goto :goto_25

    :cond_2c
    invoke-static {v1}, Lg/buj;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_25
    invoke-interface {v3, v0, v1}, Lg/dmn;->showData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lg/xy; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_27

    :goto_26
    const-string v1, "ViewerPresenter read file"

    invoke-static {v1, v0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v2, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lg/bid;

    const v1, 0x7f120226

    invoke-interface {v0, v1}, Lg/dmn;->showTipMessage(I)V

    goto :goto_27

    :catch_9
    iget-object v0, v2, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lg/bid;

    const v1, 0x7f120217

    invoke-interface {v0, v1}, Lg/dmn;->showTipMessage(I)V

    :goto_27
    return-void

    :pswitch_14
    :try_start_15
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/dq;

    invoke-virtual {v0}, Lg/dq;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    :catch_a
    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Lg/gmv;

    iget-object v1, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lg/gfh;

    const/16 v4, 0x15

    invoke-direct {v2, v0, v4, v3}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_15
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v2, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {v2}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2d

    new-instance v4, Lg/gtf;

    invoke-direct {v4, v2, v1}, Lg/gtf;-><init>(Landroid/content/Context;I)V

    const-wide/16 v5, 0x9c4

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    new-instance v1, Lg/gtf;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lg/gtf;-><init>(Landroid/content/Context;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    :cond_2d
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    :goto_28
    return-void

    :pswitch_16
    iget-object v0, p0, Lg/eax;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    :try_start_16
    const-string v3, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    sget v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {v0, v4, v3}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {v0, v3, v5}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {v0, v3, v6}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v0, v3, v2}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_8
    move-exception v0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0

    :pswitch_17
    iget-object v0, p0, Lg/eax;->d:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    iget-object v1, p0, Lg/eax;->b:Ljava/lang/Object;

    check-cast v1, Lg/eas;

    iget-object v1, v1, Lg/csm;->e:Lg/efx;

    invoke-virtual {v0, v1, v2}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lg/eax;->a:Ljava/lang/Object;

    check-cast v1, Lg/bcq;

    iget-object v1, v1, Lg/bcq;->ak:Landroid/widget/ImageView;

    new-instance v2, Lg/gfh;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0, v0, v4}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

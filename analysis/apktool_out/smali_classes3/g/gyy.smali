.class public final Lg/gyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lg/bjb;
.implements Lg/lb;


# instance fields
.field public final synthetic a:Lg/dbb;

.field public volatile b:Z

.field public volatile c:Lg/cfu;


# direct methods
.method public constructor <init>(Lg/dbb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gyy;->a:Lg/dbb;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 7

    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v2, v0, Lg/cyg;->v:Landroid/content/Context;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/gyy;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v4, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/gyy;->c:Lg/cfu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {v0}, Lg/adw;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {v0}, Lg/adw;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_2
    new-instance v1, Lg/cfu;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x5d

    move-object v5, p0

    move-object v4, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lg/adw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V

    iput-object v1, v4, Lg/gyy;->c:Lg/cfu;

    iget-object v0, v4, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lg/gyy;->b:Z

    iget-object v0, v4, Lg/gyy;->c:Lg/cfu;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v4, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {v0}, Lg/adw;->checkAvailabilityAndConnect()V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onConnected"

    invoke-static {p1}, Lg/ckd;->aj(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lg/gyy;->c:Lg/cfu;

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {p1}, Lg/adw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lg/ake;

    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/bzl;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lg/bzl;-><init>(Lg/gyy;Lg/ake;I)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Lg/gyy;->c:Lg/cfu;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/gyy;->b:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionFailed(Lg/nk;)V
    .locals 3

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lg/bkw;->am:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v2, "Service connection failed"

    invoke-virtual {v0, p1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lg/gyy;->b:Z

    iput-object v1, p0, Lg/gyy;->c:Lg/cfu;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/agz;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/agz;-><init>(Lg/gyy;I)V

    invoke-virtual {p1, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {p1}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-object p1, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object v0, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Service connection suspended"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/agz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/agz;-><init>(Lg/gyy;I)V

    invoke-virtual {p1, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {p1}, Lg/ckd;->aj(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lg/gyy;->b:Z

    iget-object p1, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lg/ake;

    if-eqz v2, :cond_1

    check-cast v1, Lg/ake;

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v1, Lg/ckg;

    invoke-direct {v1, p2}, Lg/ckg;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p2, p2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p2, Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p2, p2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p2, Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object p2, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p2, p2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p2, Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_3

    iput-boolean p1, p0, Lg/gyy;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lg/aoy;->m()Lg/aoy;

    move-result-object p1

    iget-object p2, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, p2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    iget-object p2, p2, Lg/dbb;->k:Lg/gyy;

    invoke-virtual {p1, v0, p2}, Lg/aoy;->s(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_4
    iget-object p1, p0, Lg/gyy;->a:Lg/dbb;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance p2, Lg/bzl;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lg/bzl;-><init>(Lg/gyy;Lg/ake;I)V

    invoke-virtual {p1, p2}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lg/ckd;->aj(Ljava/lang/String;)V

    iget-object v0, p0, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Service disconnected"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/fuy;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

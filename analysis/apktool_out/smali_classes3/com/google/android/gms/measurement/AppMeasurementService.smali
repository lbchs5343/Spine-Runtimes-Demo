.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lg/ir;


# instance fields
.field public a:Lg/ccp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lg/erx;->b:Landroid/util/SparseArray;

    const-string v0, "androidx.contentpager.content.wakelockid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lg/erx;->b:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroid/app/job/JobParameters;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final d()Lg/ccp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lg/ccp;

    if-nez v0, :cond_0

    new-instance v0, Lg/ccp;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/ccp;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lg/ccp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lg/ccp;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lg/ccp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string v0, "onBind called with null intent"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lg/zs;

    iget-object v0, v0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    invoke-static {v0}, Lg/bsz;->ai(Landroid/content/Context;)Lg/bsz;

    move-result-object v0

    invoke-direct {p1, v0}, Lg/zs;-><init>(Lg/bsz;)V

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v2, "onBind received unknown action"

    invoke-virtual {v0, p1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lg/ccp;

    move-result-object v0

    iget-object v0, v0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lg/cyg;->al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;

    move-result-object v0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lg/ccp;

    move-result-object v0

    iget-object v0, v0, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lg/cyg;->al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;

    move-result-object v0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lg/ccp;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, p1, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lg/ccp;

    move-result-object p2

    iget-object v0, p2, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lg/cyg;->al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;

    move-result-object v0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    if-nez p1, :cond_0

    iget-object p1, v0, Lg/bgm;->g:Lg/dvb;

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lg/bk;

    invoke-direct {v1, p2, p3, v0, p1}, Lg/bk;-><init>(Lg/ccp;ILg/bgm;Landroid/content/Intent;)V

    iget-object p1, p2, Lg/ccp;->d:Ljava/lang/Object;

    check-cast p1, Landroid/app/Service;

    invoke-static {p1}, Lg/bsz;->ai(Landroid/content/Context;)Lg/bsz;

    move-result-object p1

    invoke-virtual {p1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object p2

    new-instance p3, Lg/fuy;

    const/16 v0, 0xe

    invoke-direct {p3, p1, v0, v1}, Lg/fuy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lg/ccp;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object p1

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string v0, "onUnbind called with null intent"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lg/ccp;->e()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "onUnbind called for intent. action"

    invoke-virtual {v0, p1, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

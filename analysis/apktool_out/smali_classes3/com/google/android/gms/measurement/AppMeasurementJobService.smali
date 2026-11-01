.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Lg/ir;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field public a:Lg/ccp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final d()Lg/ccp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Lg/ccp;

    if-nez v0, :cond_0

    new-instance v0, Lg/ccp;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/ccp;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Lg/ccp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->a:Lg/ccp;

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()Lg/ccp;

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

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()Lg/ccp;

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

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()Lg/ccp;

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

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()Lg/ccp;

    move-result-object v1

    iget-object v0, v1, Lg/ccp;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lg/cyg;->al(Landroid/content/Context;Lg/apu;Ljava/lang/Long;)Lg/cyg;

    move-result-object v0

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lg/bgm;->c:Lg/dvb;

    const-string v4, "Local AppMeasurementJobService called. action"

    invoke-virtual {v3, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/eax;

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, v1, Lg/ccp;->d:Ljava/lang/Object;

    check-cast p1, Landroid/app/Service;

    invoke-static {p1}, Lg/bsz;->ai(Landroid/content/Context;)Lg/bsz;

    move-result-object p1

    invoke-virtual {p1}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    new-instance v2, Lg/fuy;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3, v0}, Lg/fuy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->d()Lg/ccp;

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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

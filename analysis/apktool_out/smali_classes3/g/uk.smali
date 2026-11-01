.class public final Lg/uk;
.super Lg/aiq;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Integer;

.field public final c:Landroid/app/AlarmManager;

.field public e:Lg/rd;


# direct methods
.method public constructor <init>(Lg/bsz;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/aiq;-><init>(Lg/bsz;)V

    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->v:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lg/uk;->c:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public final _as()I
    .locals 2

    iget-object v0, p0, Lg/uk;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "measurement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lg/uk;->b:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lg/uk;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final g()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Lg/fsg;->a:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lg/emo;
    .locals 3

    iget-object v0, p0, Lg/uk;->e:Lg/rd;

    if-nez v0, :cond_0

    new-instance v0, Lg/rd;

    iget-object v1, p0, Lg/af;->a:Lg/bsz;

    iget-object v1, v1, Lg/bsz;->m:Lg/cyg;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lg/rd;-><init>(Ljava/lang/Object;Lg/gan;I)V

    iput-object v0, p0, Lg/uk;->e:Lg/rd;

    :cond_0
    iget-object v0, p0, Lg/uk;->e:Lg/rd;

    return-object v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lg/uk;->c:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/uk;->g()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/uk;->_as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    return-void
.end method

.method public final zza()V
    .locals 3

    invoke-virtual {p0}, Lg/aiq;->n()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Unscheduling upload"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lg/uk;->c:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg/uk;->g()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-virtual {p0}, Lg/uk;->h()Lg/emo;

    move-result-object v1

    invoke-virtual {v1}, Lg/emo;->i()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/uk;->_as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    return-void
.end method

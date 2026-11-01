.class public Ld/b/a;
.super Lg/cdo;
.source "SourceFile"

# interfaces
.implements Lg/eha;


# instance fields
.field public d:Lg/fdp;

.field public e:Lg/aco;

.field public f:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/guy;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12015f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 6

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ld/b/a;->d:Lg/fdp;

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    sget v1, Lg/cdo;->i:I

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lg/cdo;->j:Landroid/media/projection/MediaProjectionManager;

    invoke-static {}, Lg/fvr;->e()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lg/fvr;->p(Landroid/media/projection/MediaProjectionManager;Landroid/media/projection/MediaProjectionConfig;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lg/cdo;->j:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const-string v0, "cn.trinea.action.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ld/b/a;->d:Lg/fdp;

    if-eqz p1, :cond_4

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x186a1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v3}, Lg/dyd;->bp(I)Z

    move-result v3

    const v4, 0x7f120168

    if-eqz v3, :cond_2

    invoke-static {}, Lg/cch;->s()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lg/cch;->v(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-static {v3}, Lg/cch;->x(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cch;->h(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cch;->n(Landroid/app/NotificationChannel;)V

    invoke-static {v3}, Lg/cch;->m(Landroid/app/NotificationChannel;)V

    invoke-static {v0, v3}, Lg/cch;->ad(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc000000

    const/4 v5, 0x0

    invoke-static {p1, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Lg/zc;

    invoke-direct {v3, p1, v2}, Lg/zc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0800c5

    iget-object v5, v3, Lg/zc;->s:Landroid/app/Notification;

    iput v2, v5, Landroid/app/Notification;->icon:I

    const/4 v2, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lg/zc;->u(IZ)V

    const-string v2, "service"

    iput-object v2, v3, Lg/zc;->d:Ljava/lang/String;

    iput-object v0, v3, Lg/zc;->r:Landroid/app/PendingIntent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/zc;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lg/zc;->g:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lg/zc;->y()Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x1d

    invoke-static {v2}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v0}, Lg/doa;->d(Lg/fdp;Landroid/app/Notification;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lg/cdo;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lg/guy;->k:Lg/guy;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    iget-object v0, p0, Lg/guy;->k:Lg/guy;

    invoke-static {v0, p1}, Lg/cro;->ba(Lg/dms;Lg/cgg;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lg/dzm;->bd(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x8c5

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance p1, Lg/aco;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ld/b/a;->e:Lg/aco;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Ld/a/a;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Ld/b/a;->f:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Ld/b/a;->f:Landroid/content/Intent;

    iget-object v0, p0, Ld/b/a;->e:Lg/aco;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final onDenied(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lg/guy;->k:Lg/guy;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v0}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Ld/b/a;->d:Lg/fdp;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/fdp;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/b/a;->e:Lg/aco;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Ld/b/a;->f:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    invoke-super {p0}, Lg/dms;->onDestroy()V

    return-void
.end method

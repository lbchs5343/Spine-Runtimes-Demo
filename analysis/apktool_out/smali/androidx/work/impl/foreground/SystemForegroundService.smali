.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Lg/fus;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public b:Lg/gmu;

.field public c:Landroid/app/NotificationManager;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/fus;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    new-instance v0, Lg/gmu;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/gmu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Lg/gmu;

    iget-object v1, v0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v1, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget-object v1, Lg/gmu;->b:Ljava/lang/String;

    const-string v2, "A callback already exists."

    invoke-virtual {v0, v1, v2}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p0, v0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Lg/fus;->onCreate()V

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->e()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lg/fus;->onDestroy()V

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Lg/gmu;

    invoke-virtual {v0}, Lg/gmu;->n()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Lg/gmu;

    invoke-virtual {p2}, Lg/gmu;->n()V

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->e()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

    :cond_0
    if-eqz p1, :cond_5

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Lg/gmu;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ACTION_START_FOREGROUND"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "KEY_WORKSPEC_ID"

    if-eqz v0, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p3

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p2, Lg/gmu;->k:Lg/ccc;

    new-instance v1, Lg/gfh;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    check-cast v0, Lg/gkr;

    invoke-virtual {v0, v1}, Lg/gkr;->s(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Lg/gmu;->p(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "ACTION_NOTIFY"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Lg/gmu;->p(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "ACTION_CANCEL_WORK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p3

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p2, p2, Lg/gmu;->i:Lg/fxb;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "id"

    invoke-static {p1, p3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p2, Lg/fxb;->aw:Lg/flk;

    iget-object p3, p3, Lg/flk;->h:Lg/ao;

    iget-object v0, p2, Lg/fxb;->bb:Lg/ccc;

    check-cast v0, Lg/gkr;

    iget-object v0, v0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    const-string v1, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg/fdx;

    invoke-direct {v1, p2, p1}, Lg/fdx;-><init>(Lg/fxb;Ljava/util/UUID;)V

    const-string p1, "CancelWorkById"

    invoke-static {p3, p1, v0, v1}, Lg/afo;->ag(Lg/ao;Ljava/lang/String;Lg/aqv;Lg/cvw;)Lg/gev;

    goto :goto_0

    :cond_3
    const-string p1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_4

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    :cond_4
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_5
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public final onTimeout(I)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Lg/gmu;

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lg/gmu;->o(I)V

    return-void
.end method

.method public final onTimeout(II)V
    .locals 0

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Lg/gmu;

    invoke-virtual {p1, p2}, Lg/gmu;->o(I)V

    return-void
.end method

.class public final synthetic Lg/nz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field public final synthetic a:Lg/dju;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lg/dcr;

.field public final synthetic d:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lg/dcr;Ljava/util/UUID;Lg/dju;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/nz;->c:Lg/dcr;

    iput-object p2, p0, Lg/nz;->d:Ljava/util/UUID;

    iput-object p3, p0, Lg/nz;->a:Lg/dju;

    iput-object p4, p0, Lg/nz;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lg/nz;->c:Lg/dcr;

    iget-object v1, p0, Lg/nz;->d:Ljava/util/UUID;

    iget-object v2, p0, Lg/nz;->a:Lg/dju;

    iget-object v3, p0, Lg/nz;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lg/dcr;->c:Lg/gg;

    invoke-virtual {v4, v1}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v4, Lg/fkj;->q:Lg/gys;

    invoke-virtual {v5}, Lg/gys;->b()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v0, v0, Lg/dcr;->b:Lg/egu;

    iget-object v5, v0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lg/egu;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dly;

    if-eqz v6, :cond_2

    iget-object v7, v0, Lg/egu;->f:Landroid/os/PowerManager$WakeLock;

    if-nez v7, :cond_0

    iget-object v7, v0, Lg/egu;->i:Landroid/content/Context;

    const-string v8, "ProcessorForegroundLck"

    invoke-static {v7, v8}, Lg/qj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v0, Lg/egu;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v7, v0, Lg/egu;->g:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lg/egu;->i:Landroid/content/Context;

    iget-object v6, v6, Lg/dly;->g:Lg/fkj;

    invoke-static {v6}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lg/gmu;->m(Landroid/content/Context;Lg/gxm;Lg/dju;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, v0, Lg/egu;->i:Landroid/content/Context;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_1

    invoke-static {v0, v1}, Lg/cmb;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v0

    sget-object v1, Lg/gmu;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTION_NOTIFY"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "KEY_NOTIFICATION_ID"

    iget v5, v2, Lg/dju;->a:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "KEY_FOREGROUND_SERVICE_TYPE"

    iget v5, v2, Lg/dju;->b:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "KEY_NOTIFICATION"

    iget-object v2, v2, Lg/dju;->c:Landroid/app/Notification;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "KEY_WORKSPEC_ID"

    iget-object v4, v0, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_GENERATION"

    iget v0, v0, Lg/gxm;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

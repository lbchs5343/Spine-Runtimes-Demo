.class public final Lg/gmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cdj;
.implements Lg/eiv;


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final c:Lg/vn;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/lang/Object;

.field public f:Lg/gxm;

.field public final g:Ljava/util/LinkedHashMap;

.field public final i:Lg/fxb;

.field public j:Landroidx/work/impl/foreground/SystemForegroundService;

.field public final k:Lg/ccc;

.field public final l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/gmu;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/gmu;->e:Ljava/lang/Object;

    invoke-static {p1}, Lg/fxb;->be(Landroid/content/Context;)Lg/fxb;

    move-result-object p1

    iput-object p1, p0, Lg/gmu;->i:Lg/fxb;

    iget-object v0, p1, Lg/fxb;->bb:Lg/ccc;

    iput-object v0, p0, Lg/gmu;->k:Lg/ccc;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gmu;->f:Lg/gxm;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/gmu;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/gmu;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/gmu;->l:Ljava/util/HashMap;

    new-instance v0, Lg/vn;

    iget-object v1, p1, Lg/fxb;->bd:Lg/fzn;

    invoke-direct {v0, v1}, Lg/vn;-><init>(Lg/fzn;)V

    iput-object v0, p0, Lg/gmu;->c:Lg/vn;

    iget-object p1, p1, Lg/fxb;->ax:Lg/egu;

    invoke-virtual {p1, p0}, Lg/egu;->p(Lg/eiv;)V

    return-void
.end method

.method public static m(Landroid/content/Context;Lg/gxm;Lg/dju;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    iget-object v1, p1, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    iget p1, p1, Lg/gxm;->b:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION_ID"

    iget p1, p2, Lg/dju;->a:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    iget p1, p2, Lg/dju;->b:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    iget-object p1, p2, Lg/dju;->c:Landroid/app/Notification;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a(Lg/fkj;Lg/bfx;)V
    .locals 4

    instance-of v0, p2, Lg/das;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/fkj;->h:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object p1

    check-cast p2, Lg/das;

    iget p2, p2, Lg/das;->a:I

    iget-object v0, p0, Lg/gmu;->i:Lg/fxb;

    iget-object v1, v0, Lg/fxb;->bb:Lg/ccc;

    new-instance v2, Lg/gkp;

    iget-object v0, v0, Lg/fxb;->ax:Lg/egu;

    new-instance v3, Lg/aci;

    invoke-direct {v3, p1}, Lg/aci;-><init>(Lg/gxm;)V

    const/4 p1, 0x1

    invoke-direct {v2, v0, v3, p1, p2}, Lg/gkp;-><init>(Lg/egu;Lg/aci;ZI)V

    check-cast v1, Lg/gkr;

    invoke-virtual {v1, v2}, Lg/gkr;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final h(Lg/gxm;Z)V
    .locals 7

    iget-object p2, p0, Lg/gmu;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lg/gmu;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fkj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gmu;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dta;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lg/gmu;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/dju;

    iget-object v0, p0, Lg/gmu;->f:Lg/gxm;

    invoke-virtual {p1, v0}, Lg/gxm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/gmu;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lg/gmu;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gxm;

    iput-object v0, p0, Lg/gmu;->f:Lg/gxm;

    iget-object v0, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dju;

    iget-object v1, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v2, v0, Lg/dju;->a:I

    iget v3, v0, Lg/dju;->b:I

    iget-object v4, v0, Lg/dju;->c:Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_3

    invoke-static {v1, v2, v4, v3}, Lg/agl;->h(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    goto :goto_2

    :cond_3
    const/16 v6, 0x1d

    if-lt v5, v6, :cond_4

    invoke-static {v1, v2, v4, v3}, Lg/agl;->f(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_2
    iget-object v1, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v0, v0, Lg/dju;->a:I

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    :cond_5
    iput-object v1, p0, Lg/gmu;->f:Lg/gxm;

    :cond_6
    :goto_3
    iget-object v0, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p2, Lg/dju;->a:I

    iget-object p2, v0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_7
    return-void

    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v1, p0, Lg/gmu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg/gmu;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dta;

    invoke-interface {v3, v0}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/gmu;->i:Lg/fxb;

    iget-object v0, v0, Lg/fxb;->ax:Lg/egu;

    invoke-virtual {v0, p0}, Lg/egu;->v(Lg/eiv;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final o(I)V
    .locals 7

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/gmu;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dju;

    iget v3, v3, Lg/dju;->b:I

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gxm;

    iget-object v3, p0, Lg/gmu;->i:Lg/fxb;

    iget-object v4, v3, Lg/fxb;->bb:Lg/ccc;

    new-instance v5, Lg/gkp;

    iget-object v3, v3, Lg/fxb;->ax:Lg/egu;

    new-instance v6, Lg/aci;

    invoke-direct {v6, v1}, Lg/aci;-><init>(Lg/gxm;)V

    const/16 v1, -0x80

    invoke-direct {v5, v3, v6, v2, v1}, Lg/gkp;-><init>(Lg/egu;Lg/aci;ZI)V

    check-cast v4, Lg/gkr;

    invoke-virtual {v4, v5}, Lg/gkr;->s(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p1, :cond_3

    iput-boolean v2, p1, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/app/Service;->stopForeground(Z)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_3
    return-void
.end method

.method public final p(Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v0, :cond_6

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lg/gxm;

    invoke-direct {v5, v3, v4}, Lg/gxm;-><init>(Ljava/lang/String;I)V

    const-string v3, "KEY_NOTIFICATION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    new-instance v3, Lg/dju;

    invoke-direct {v3, v0, v2, p1}, Lg/dju;-><init>(IILandroid/app/Notification;)V

    iget-object v2, p0, Lg/gmu;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lg/gmu;->f:Lg/gxm;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dju;

    const/16 v6, 0x1d

    if-nez v4, :cond_0

    iput-object v5, p0, Lg/gmu;->f:Lg/gxm;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v3, v3, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v6, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dju;

    iget v0, v0, Lg/dju;->b:I

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    new-instance v3, Lg/dju;

    iget p1, v4, Lg/dju;->a:I

    iget-object v0, v4, Lg/dju;->c:Landroid/app/Notification;

    invoke-direct {v3, p1, v1, v0}, Lg/dju;-><init>(IILandroid/app/Notification;)V

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iget-object p1, p0, Lg/gmu;->j:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v0, v3, Lg/dju;->a:I

    iget v1, v3, Lg/dju;->b:I

    iget-object v2, v3, Lg/dju;->c:Landroid/app/Notification;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_3

    invoke-static {p1, v0, v2, v1}, Lg/agl;->h(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    return-void

    :cond_3
    if-lt v3, v6, :cond_4

    invoke-static {p1, v0, v2, v1}, Lg/agl;->f(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    return-void

    :cond_4
    invoke-virtual {p1, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Notification passed in the intent was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handleNotify was called on the destroyed dispatcher"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

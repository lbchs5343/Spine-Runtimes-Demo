.class public final Lg/ark;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/ark;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public volatile c:Z

.field public final d:Lg/aco;

.field public final e:Lg/hdk;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public g:Lg/ajy;

.field public final h:Ljava/util/ArrayList;

.field public final i:Landroid/content/Context;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lg/eby;

.field public l:Lg/ayt;

.field public final m:Landroid/os/Handler;

.field public volatile n:Lg/anf;

.field public final o:Ljava/util/concurrent/ExecutorService;

.field public final p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/ark;->m:Landroid/os/Handler;

    new-instance v0, Lg/ekg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ekg;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lg/ark;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lg/ark;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ark;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ark;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ark;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ark;->b:Ljava/util/ArrayList;

    new-instance v0, Lg/hdk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/hdk;-><init>(Lg/ark;I)V

    iput-object v0, p0, Lg/ark;->e:Lg/hdk;

    new-instance v0, Lg/aco;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ark;->d:Lg/aco;

    iput-object p1, p0, Lg/ark;->i:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lg/eby;

    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    invoke-virtual {p0}, Lg/ark;->z()J

    move-result-wide v1

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p1, Lg/eby;->b:Ljava/lang/Object;

    iput-wide v1, p1, Lg/eby;->c:J

    iput-object p1, p0, Lg/ark;->k:Lg/eby;

    new-instance p1, Lg/btk;

    invoke-direct {p1, p0}, Lg/btk;-><init>(Lg/ark;)V

    sget-boolean v0, Lg/gwn;->m:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lg/btk;->b()V

    goto :goto_0

    :cond_1
    sget-object v0, Lg/gwn;->h:Landroid/os/Handler;

    new-instance v1, Lg/fvi;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p1}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    sget-object v0, Lg/gwn;->k:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lg/iv;

    invoke-direct {v1, p1}, Lg/iv;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lg/dah;

    invoke-direct {p1, p0}, Lg/dah;-><init>(Lg/ark;)V

    invoke-static {p1}, Lg/gwn;->q(Lg/dah;)V

    new-instance p1, Lg/cxq;

    invoke-direct {p1, p0}, Lg/cxq;-><init>(Lg/ark;)V

    invoke-static {p1}, Lg/gwn;->t(Lg/cxq;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static declared-synchronized q(Landroid/content/Context;)Lg/ark;
    .locals 2

    const-class v0, Lg/ark;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/ark;->a:Lg/ark;

    if-nez v1, :cond_0

    new-instance v1, Lg/ark;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lg/ark;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg/ark;->a:Lg/ark;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lg/ark;->a:Lg/ark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final aa(ZLjava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/ark;->l:Lg/ayt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/ark;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/ark;->l:Lg/ayt;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/ark;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/deg;

    if-eqz p1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lg/deg;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, p3, p2}, Lg/deg;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/ark;->s()V

    return-void
.end method

.method public final ab()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg/ark;->i:Landroid/content/Context;

    const-string v1, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-static {v0, v1}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/ark;->k:Lg/eby;

    sget-object v1, Lg/gwn;->f:Landroid/os/IBinder;

    invoke-virtual {p0}, Lg/ark;->z()J

    move-result-wide v3

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3, v4}, Lg/eby;->e(Landroid/os/IBinder;J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    sget-boolean v0, Lg/gwn;->g:Z

    if-nez v0, :cond_2

    invoke-static {}, Lg/gwn;->p()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xd

    if-lt v0, v3, :cond_2

    return v1

    :catch_0
    :cond_2
    :goto_1
    return v2
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lg/ark;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Z)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/ark;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hbl;

    invoke-virtual {v1, p1}, Lg/hbl;->b(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()Lg/ajy;
    .locals 8

    iget-object v0, p0, Lg/ark;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v4, "ml_core_target_node"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const/16 v1, 0x20

    ushr-long v6, v4, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    new-instance v4, Lg/ajy;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    const-string v2, "o.s"

    goto :goto_1

    :cond_1
    const-class v2, Lb/c/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v5, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lg/ajy;-><init>(Landroid/content/ComponentName;)V

    iput-boolean v3, v4, Lg/ajy;->b:Z

    const-string v0, "s"

    iput-object v0, v4, Lg/ajy;->e:Ljava/lang/String;

    const-string v0, "b.c.e"

    iput-object v0, v4, Lg/ajy;->a:Ljava/lang/String;

    iput v1, v4, Lg/ajy;->d:I

    return-object v4
.end method

.method public final v(Lg/gnl;Lg/anf;)V
    .locals 7

    iget-object v0, p0, Lg/ark;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lg/euq;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lg/euq;-><init>(Lg/ark;Lg/gnl;I)V

    iget-object v0, p0, Lg/ark;->m:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lg/akt;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lg/akt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v2, Lg/ark;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()Z
    .locals 3

    invoke-virtual {p0}, Lg/ark;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    sget v1, Lg/fat;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "moe.shizuku.server.IShizukuService"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lg/gyu;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lg/gyu;

    goto :goto_0

    :cond_2
    new-instance v1, Lg/bvh;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lg/bvh;->a:Landroid/os/IBinder;

    move-object v0, v1

    :goto_0
    check-cast v0, Lg/bvh;

    invoke-virtual {v0}, Lg/bvh;->c()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/ark;->k:Lg/eby;

    sget-object v1, Lg/gwn;->f:Landroid/os/IBinder;

    invoke-virtual {p0}, Lg/ark;->z()J

    move-result-wide v3

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3, v4}, Lg/eby;->e(Landroid/os/IBinder;J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lg/gwn;->f:Landroid/os/IBinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v0, Lg/gwn;->g:Z

    if-nez v0, :cond_2

    invoke-static {}, Lg/gwn;->p()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xd

    if-ge v0, v3, :cond_3

    :cond_2
    return v1

    :catch_0
    :cond_3
    :goto_1
    return v2
.end method

.method public final y(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/ark;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lg/ark;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gnl;

    invoke-virtual {v1, p1, p2}, Lg/gnl;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg/ark;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "moe.shizuku.privileged.api"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

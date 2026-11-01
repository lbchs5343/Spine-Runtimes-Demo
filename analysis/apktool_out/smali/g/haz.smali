.class public abstract Lg/haz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public k:Lg/sr;

.field public volatile l:Z

.field public volatile m:I

.field public volatile n:Z

.field public o:Ljava/util/HashMap;

.field public p:Z

.field public final q:Ljava/util/HashMap;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Ljava/util/ArrayList;

.field public volatile t:Z

.field public final u:Landroid/os/Handler;

.field public final v:Landroid/content/Context;

.field public volatile w:Z

.field public final x:Landroid/content/pm/PackageManager;

.field public final y:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lg/haz;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/haz;->w:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/haz;->l:Z

    iput-boolean v0, p0, Lg/haz;->p:Z

    iput-boolean v1, p0, Lg/haz;->t:Z

    iput-boolean v1, p0, Lg/haz;->n:Z

    invoke-static {p1}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/haz;->v:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/haz;->o:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/haz;->q:Ljava/util/HashMap;

    iput v1, p0, Lg/haz;->m:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lg/haz;->u:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/haz;->y:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/haz;->s:Ljava/util/ArrayList;

    new-instance p1, Lg/sr;

    new-instance v0, Lg/fc;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lg/sr;-><init>(Ljava/lang/Object;IZ)V

    iput-object p1, p0, Lg/haz;->k:Lg/sr;

    return-void
.end method


# virtual methods
.method public final aa()V
    .locals 4

    const-class v0, Lg/haz;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/haz;->w:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-static {v1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/haz;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dgx;

    iget-object v3, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lg/haz;->z(Lg/dgx;Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/haz;->l:Z

    iget-object v1, p0, Lg/haz;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ab(Landroid/content/pm/PackageInfo;ZZ)Lg/auj;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-nez p2, :cond_0

    iget p2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_0

    goto :goto_3

    :cond_0
    new-instance p2, Lg/auj;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p2, Lg/auj;->b:I

    const-wide/16 v3, -0x1

    iput-wide v3, p2, Lg/auj;->a:J

    iput-wide v3, p2, Lg/auj;->i:J

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v3, p2, Lg/auj;->d:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v3}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    invoke-static {v4}, Lg/dyd;->bp(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "secondaryNativeLibraryDir"

    invoke-static {v1, v4, v2}, Lg/awt;->ac(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-static {v3, v4, v2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lg/auj;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v3, p2, Lg/auj;->f:Ljava/lang/String;

    :goto_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p2, Lg/auj;->h:Ljava/lang/String;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v2, p2, Lg/auj;->b:I

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v2, p2, Lg/auj;->i:J

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v2, p2, Lg/auj;->a:J

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p2, Lg/auj;->g:I

    iget-object p1, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p2, Lg/auj;->j:Ljava/lang/String;

    if-eqz p3, :cond_4

    iget-object p1, p2, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg/haz;->ac(Ljava/lang/String;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, p2, Lg/auj;->k:Ljava/lang/ref/WeakReference;

    :cond_4
    return-object p2

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final ac(Ljava/lang/String;)Ljava/lang/ref/WeakReference;
    .locals 4

    iget-object v0, p0, Lg/haz;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-object v1, v2

    :catch_1
    return-object v1
.end method

.method public final ad(Lg/bsx;Lg/byq;Lg/bwb;)V
    .locals 5

    const-class v0, Lg/haz;

    monitor-enter v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lg/bsx;->h()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lg/haz;->t:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lg/haz;->n:Z

    if-nez v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lg/haz;->t:Z

    iput-boolean v1, p0, Lg/haz;->w:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lg/haz;->l:Z

    iget v3, p0, Lg/haz;->m:I

    add-int/2addr v3, v1

    iput v3, p0, Lg/haz;->m:I

    :cond_2
    if-eqz p3, :cond_3

    iget-object v3, p0, Lg/haz;->y:Ljava/util/ArrayList;

    new-instance v4, Lg/dgx;

    invoke-direct {v4, p1, p2, p3}, Lg/dgx;-><init>(Lg/bsx;Lg/byq;Lg/bwb;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-boolean v2, p0, Lg/haz;->n:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lg/haz;->l:Z

    if-nez p1, :cond_6

    const-class p1, Lg/haz;

    monitor-enter p1

    :try_start_1
    iget-boolean p2, p0, Lg/haz;->l:Z

    if-nez p2, :cond_5

    iput-boolean v1, p0, Lg/haz;->l:Z

    iget-boolean p2, p0, Lg/haz;->w:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-static {p2}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lg/haz;->aa()V

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    :cond_4
    iget p2, p0, Lg/haz;->m:I

    new-instance p3, Lg/gqc;

    const/4 v0, 0x4

    invoke-direct {p3, p0, p2, v0}, Lg/gqc;-><init>(Ljava/lang/Object;II)V

    iget p2, p0, Lg/haz;->m:I

    invoke-virtual {p0, p3, p2, v2}, Lg/haz;->g(Lg/gqc;IZ)V

    :goto_2
    monitor-exit p1

    return-void

    :cond_5
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_6
    return-void

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ae()V
    .locals 4

    iget-object v0, p0, Lg/haz;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/haz;->k:Lg/sr;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg/haz;->v:Landroid/content/Context;

    sget v3, Lg/sr;->a:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lg/haz;->k:Lg/sr;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lg/haz;->k:Lg/sr;

    throw v0

    :catch_0
    iput-object v1, p0, Lg/haz;->k:Lg/sr;

    :cond_0
    return-void
.end method

.method public abstract g(Lg/gqc;IZ)V
.end method

.method public abstract h(Ljava/lang/String;ILjava/util/ArrayList;)V
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lg/haz;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Lg/haz;->w:Z

    iget-object v0, p0, Lg/haz;->v:Landroid/content/Context;

    iget-object v1, p0, Lg/haz;->k:Lg/sr;

    sget v2, Lg/sr;->a:I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v3, Lg/fgj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lg/cch;->r(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    return-void

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public final z(Lg/dgx;Ljava/util/Collection;)V
    .locals 4

    if-eqz p1, :cond_6

    invoke-static {p2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/auj;

    iget-object v2, p1, Lg/dgx;->a:Lg/bsx;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lg/auj;->h:Ljava/lang/String;

    invoke-interface {v2, v1}, Lg/bsx;->i(Lg/auj;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p1, Lg/dgx;->b:Lg/byq;

    if-eqz p2, :cond_4

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    iget-object p2, p1, Lg/dgx;->c:Lg/bwb;

    if-eqz p2, :cond_6

    iget-boolean v1, p0, Lg/haz;->p:Z

    if-eqz v1, :cond_5

    new-instance p2, Lg/gfh;

    const/16 v1, 0xa

    invoke-direct {p2, p1, v1, v0}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lg/haz;->u:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    invoke-interface {p2, v0}, Lg/bwb;->d(Ljava/util/ArrayList;)V

    :cond_6
    :goto_1
    return-void
.end method

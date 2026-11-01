.class public Lg/tq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public final aa:Landroid/content/Context;

.field public ab:Z

.field public final b:Lg/ffr;

.field public c:Z

.field public d:Z

.field public final e:Z

.field public f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lg/dyd;

.field public i:I

.field public final j:Landroid/os/Handler;

.field public final k:Ljava/lang/Object;

.field public l:Z

.field public m:Z

.field public n:Z

.field public volatile o:Lg/axs;

.field public p:Z

.field public q:Z

.field public r:Z

.field public volatile s:Lg/agh;

.field public volatile t:I

.field public volatile u:Lg/aaa;

.field public v:Z

.field public final w:Ljava/lang/Long;

.field public x:Z

.field public final y:Ljava/lang/String;

.field public final z:Lg/cuf;


# direct methods
.method public constructor <init>(Lg/cuf;Landroid/content/Context;Lg/eoy;Lg/feb;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lg/tq;->k:Ljava/lang/Object;

    const/4 p4, 0x0

    iput p4, p0, Lg/tq;->t:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/tq;->j:Landroid/os/Handler;

    iput p4, p0, Lg/tq;->i:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lg/tq;->w:Ljava/lang/Long;

    sget-object v2, Lg/cim;->a:Lg/dyd;

    iput-object v2, p0, Lg/tq;->h:Lg/dyd;

    const-string v2, "8.0.0"

    iput-object v2, p0, Lg/tq;->y:Ljava/lang/String;

    invoke-static {}, Lg/tq;->ad()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/tq;->g:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-static {}, Lg/djs;->m()Lg/gzp;

    move-result-object p2

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v3, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3}, Lg/djs;->d(Lg/djs;)V

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v3, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3, v2}, Lg/djs;->e(Lg/djs;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v3, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3, v2}, Lg/djs;->l(Lg/djs;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v2, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/djs;

    invoke-static {v2, v0, v1}, Lg/djs;->h(Lg/djs;J)V

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v0, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/djs;

    invoke-static {v0}, Lg/djs;->c(Lg/djs;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v1, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/djs;

    invoke-static {v1, v0}, Lg/djs;->b(Lg/djs;I)V

    invoke-virtual {p2}, Lg/gzp;->a()V

    :try_start_0
    iget-object v0, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v1, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/djs;

    invoke-static {v1, v0}, Lg/djs;->a(Lg/djs;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget v0, Lg/gbs;->a:I

    :goto_0
    iget-object v0, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {p2}, Lg/dtx;->g()Lg/fsu;

    move-result-object p2

    check-cast p2, Lg/djs;

    new-instance v1, Lg/ffr;

    invoke-direct {v1, v0, p2}, Lg/ffr;-><init>(Landroid/content/Context;Lg/djs;)V

    iput-object v1, p0, Lg/tq;->b:Lg/ffr;

    if-nez p3, :cond_1

    sget p2, Lg/gbs;->a:I

    :cond_1
    new-instance p2, Lg/axs;

    iget-object v0, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-direct {p2, v0, p3, v1}, Lg/axs;-><init>(Landroid/content/Context;Lg/eoy;Lg/ffr;)V

    iput-object p2, p0, Lg/tq;->o:Lg/axs;

    iput-object p1, p0, Lg/tq;->z:Lg/cuf;

    iput-boolean p4, p0, Lg/tq;->e:Z

    iget-object p1, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/cuf;Landroid/content/Context;Lg/feb;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lg/tq;->k:Ljava/lang/Object;

    const/4 p3, 0x0

    iput p3, p0, Lg/tq;->t:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/tq;->j:Landroid/os/Handler;

    iput p3, p0, Lg/tq;->i:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lg/tq;->w:Ljava/lang/Long;

    sget-object v2, Lg/cim;->a:Lg/dyd;

    iput-object v2, p0, Lg/tq;->h:Lg/dyd;

    const-string v2, "8.0.0"

    iput-object v2, p0, Lg/tq;->y:Ljava/lang/String;

    invoke-static {}, Lg/tq;->ad()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/tq;->g:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-static {}, Lg/djs;->m()Lg/gzp;

    move-result-object p2

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v3, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3}, Lg/djs;->d(Lg/djs;)V

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v3, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3, v2}, Lg/djs;->e(Lg/djs;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v3, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3, v2}, Lg/djs;->l(Lg/djs;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v2, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/djs;

    invoke-static {v2, v0, v1}, Lg/djs;->h(Lg/djs;J)V

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v0, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/djs;

    invoke-static {v0}, Lg/djs;->c(Lg/djs;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v1, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/djs;

    invoke-static {v1, v0}, Lg/djs;->b(Lg/djs;I)V

    invoke-virtual {p2}, Lg/gzp;->a()V

    :try_start_0
    iget-object v0, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2}, Lg/dtx;->f()V

    iget-object v0, p2, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/djs;

    invoke-static {v0, p3}, Lg/djs;->a(Lg/djs;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget p3, Lg/gbs;->a:I

    :goto_0
    iget-object p3, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {p2}, Lg/dtx;->g()Lg/fsu;

    move-result-object p2

    check-cast p2, Lg/djs;

    new-instance v0, Lg/ffr;

    invoke-direct {v0, p3, p2}, Lg/ffr;-><init>(Landroid/content/Context;Lg/djs;)V

    iput-object v0, p0, Lg/tq;->b:Lg/ffr;

    sget p2, Lg/gbs;->a:I

    new-instance p2, Lg/axs;

    iget-object p3, p0, Lg/tq;->aa:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1, v0}, Lg/axs;-><init>(Landroid/content/Context;Lg/eoy;Lg/ffr;)V

    iput-object p2, p0, Lg/tq;->o:Lg/axs;

    iput-object p1, p0, Lg/tq;->z:Lg/cuf;

    iget-object p1, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic ac(Lg/tq;I)V
    .locals 2

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lg/tq;->t:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lg/tq;->ai(I)V

    iget-object v0, p0, Lg/tq;->o:Lg/axs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/tq;->o:Lg/axs;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lg/tq;->l:Z

    invoke-virtual {v0, p0}, Lg/axs;->i(Z)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/tq;->ai(I)V

    return-void
.end method

.method public static ad()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "VERSION_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p1, p1

    new-instance p5, Lg/efr;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p5, v0, p0, p3, v1}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double p1, p1, v0

    double-to-long p1, p1

    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0

    :catch_0
    sget p0, Lg/gbs;->a:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic af(Lg/tq;)Z
    .locals 2

    iget-object v0, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lg/tq;->t:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ag(Lg/hm;ILg/ejd;)V
    .locals 2

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1, v0}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/tq;->ah(Lg/hd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final ah(Lg/hd;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg/tq;->b:Lg/ffr;

    iget v1, p0, Lg/tq;->i:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v2, Lg/djs;

    invoke-virtual {v2}, Lg/fsu;->x()Lg/dtx;

    move-result-object v2

    check-cast v2, Lg/gzp;

    invoke-virtual {v2}, Lg/dtx;->f()V

    iget-object v3, v2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3, v1}, Lg/djs;->g(Lg/djs;I)V

    invoke-virtual {v2}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/djs;

    iput-object v1, v0, Lg/ffr;->f:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, p1, v1}, Lg/ffr;->z(Lg/hd;Lg/djs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_3
    sget p1, Lg/gbs;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    :try_start_4
    sget p1, Lg/gbs;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    return-void

    :catchall_2
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final ai(I)V
    .locals 6

    const-string v0, "Setting clientState from "

    iget-object v1, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lg/tq;->t:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v2, "BillingClient"

    iget v3, p0, Lg/tq;->t:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const-string v3, "CLOSED"

    goto :goto_0

    :cond_1
    const-string v3, "CONNECTED"

    goto :goto_0

    :cond_2
    const-string v3, "CONNECTING"

    goto :goto_0

    :cond_3
    const-string v3, "DISCONNECTED"

    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    const-string v4, "CLOSED"

    goto :goto_1

    :cond_4
    const-string v4, "CONNECTED"

    goto :goto_1

    :cond_5
    const-string v4, "CONNECTING"

    goto :goto_1

    :cond_6
    const-string v4, "DISCONNECTED"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lg/tq;->t:I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final aj()Z
    .locals 20

    const-string v1, "BillingClient"

    move-object/from16 v2, p0

    iget-object v3, v2, Lg/tq;->h:Lg/dyd;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lg/dyd;->bt()J

    move-result-wide v4

    const/4 v0, 0x1

    const-wide/16 v6, 0x7530

    move-wide v9, v6

    const/4 v8, 0x1

    :goto_0
    const/4 v11, 0x3

    if-gt v8, v11, :cond_5

    const-wide/16 v12, 0x0

    :try_start_0
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    cmp-long v0, v9, v12

    if-gtz v0, :cond_0

    sget v0, Lg/gbs;->a:I

    invoke-virtual {v2}, Lg/tq;->ay()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "Already connected or not opted into auto reconnection."

    invoke-static {v1, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lg/edc;->l:Lg/ejd;

    new-instance v9, Lg/fjp;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lg/ejd;->a:I

    if-nez v0, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reconnection succeeded with result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/tq;->ay()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    sget v0, Lg/gbs;->a:I

    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Lg/dyd;->bt()J

    move-result-wide v9

    sub-long/2addr v9, v4

    add-long/2addr v9, v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10, v14}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    sub-long v9, v6, v9

    add-int/lit8 v15, v8, -0x1

    move-wide/from16 v16, v6

    int-to-double v6, v15

    move-wide/from16 v18, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/16 v12, 0x3e8

    mul-long v6, v6, v12

    cmp-long v12, v9, v6

    if-gez v12, :cond_3

    invoke-virtual {v2}, Lg/tq;->ay()Z

    move-result v0

    return v0

    :cond_3
    if-ge v8, v11, :cond_4

    cmp-long v11, v6, v18

    if-lez v11, :cond_4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v3}, Lg/dyd;->bt()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long v6, v6, v18

    invoke-virtual {v0, v6, v7, v14}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    sub-long v6, v16, v6

    move-wide v9, v6

    goto :goto_2

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget v0, Lg/gbs;->a:I

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v6, v16

    goto/16 :goto_0

    :cond_5
    :goto_3
    sget v0, Lg/gbs;->a:I

    invoke-virtual {v2}, Lg/tq;->ay()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ticker"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ak(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/gtb;
    .locals 2

    const/16 v0, 0x9

    invoke-static {p3}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, v0, p1, p3}, Lg/tq;->an(Lg/hm;ILg/ejd;Ljava/lang/String;)V

    sget p2, Lg/gbs;->a:I

    new-instance p2, Lg/gtb;

    const/16 p3, 0x13

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p3, p1, v1, v0}, Lg/gtb;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-object p2
.end method

.method public final al()V
    .locals 4

    iget-object v0, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/tq;->u:Lg/aaa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lg/tq;->aa:Landroid/content/Context;

    iget-object v3, p0, Lg/tq;->u:Lg/aaa;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, Lg/tq;->s:Lg/agh;

    iput-object v1, p0, Lg/tq;->u:Lg/aaa;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    :try_start_3
    sget v2, Lg/gbs;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-object v1, p0, Lg/tq;->s:Lg/agh;

    iput-object v1, p0, Lg/tq;->u:Lg/aaa;

    goto :goto_0

    :catchall_2
    move-exception v2

    iput-object v1, p0, Lg/tq;->s:Lg/agh;

    iput-object v1, p0, Lg/tq;->u:Lg/aaa;

    throw v2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public am(Lg/aoy;Lg/emr;)V
    .locals 7

    new-instance v0, Lg/cao;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p2, p1, v1}, Lg/cao;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lg/efr;

    const/16 p1, 0x11

    const/4 v6, 0x0

    invoke-direct {v3, p1, p0, p2, v6}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lg/tq;->ax()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    invoke-static/range {v0 .. v5}, Lg/tq;->ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lg/tq;->au()Lg/ejd;

    move-result-object p1

    sget-object v0, Lg/hm;->zzy:Lg/hm;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    sget-object v0, Lg/fkz;->g:Lg/duz;

    sget-object v0, Lg/fun;->a:Lg/fun;

    iget-object p2, p2, Lg/emr;->n:Ljava/lang/Object;

    check-cast p2, Lg/gkr;

    if-eqz p1, :cond_3

    iget v1, p1, Lg/ejd;->a:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v6}, Lg/fkz;->o(I)Lg/duz;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lg/duz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/duz;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/x;

    const-string v1, "a"

    iget-object v2, v0, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lg/gkr;->i(Lg/x;)V

    return-void

    :cond_2
    const/16 p1, 0x7c8

    invoke-virtual {p2, p1}, Lg/gkr;->o(I)V

    return-void

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/16 p1, 0x52a

    goto :goto_1

    :cond_4
    iget p1, p1, Lg/ejd;->a:I

    invoke-static {p1}, Lg/cdy;->j(I)I

    move-result p1

    :goto_1
    invoke-virtual {p2, p1}, Lg/gkr;->o(I)V

    :cond_5
    return-void
.end method

.method public final an(Lg/hm;ILg/ejd;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    invoke-static {p1, p2, p3, p4, v0}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/tq;->ah(Lg/hd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final declared-synchronized ao()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/tq;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/tq;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ap(Lg/eie;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/tq;->az(Lg/eie;)V

    return-void
.end method

.method public aq(Lg/czw;Lg/dzt;)V
    .locals 6

    new-instance v0, Lg/cao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lg/cao;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lg/efr;

    const/16 p1, 0xd

    invoke-direct {v3, p1, p0, p2, v1}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lg/tq;->ax()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    invoke-static/range {v0 .. v5}, Lg/tq;->ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/tq;->au()Lg/ejd;

    move-result-object p1

    sget-object v0, Lg/hm;->zzy:Lg/hm;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    invoke-interface {p2, p1}, Lg/dzt;->q(Lg/ejd;)V

    :cond_0
    return-void
.end method

.method public final ar()Lg/ejd;
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/eag;->b()Lg/gza;

    move-result-object v0

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v1, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/eag;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lg/eag;->e(Lg/eag;I)V

    invoke-static {}, Lg/dmh;->e()Lg/eip;

    move-result-object v1

    invoke-virtual {v1}, Lg/dtx;->f()V

    iget-object v2, v1, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/dmh;

    invoke-static {v2}, Lg/dmh;->d(Lg/dmh;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/eip;->a(Z)V

    invoke-virtual {v1}, Lg/eip;->b()V

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v2, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/eag;

    invoke-virtual {v1}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/dmh;

    invoke-static {v2, v1}, Lg/eag;->d(Lg/eag;Lg/dmh;)V

    invoke-virtual {v0}, Lg/dtx;->g()Lg/fsu;

    move-result-object v0

    check-cast v0, Lg/eag;

    invoke-virtual {p0, v0}, Lg/tq;->ba(Lg/eag;)V

    sget-object v0, Lg/edc;->l:Lg/ejd;

    return-object v0
.end method

.method public final as(Lg/hm;Lg/ejd;Ljava/lang/String;JZ)V
    .locals 2

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    const/4 v1, 0x2

    invoke-static {p1, v1, p2, p3, v0}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lg/tq;->b:Lg/ffr;

    iget p3, p0, Lg/tq;->i:I

    invoke-virtual/range {p1 .. p6}, Lg/ffr;->v(Lg/hd;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    sget p1, Lg/gbs;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :catchall_1
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final at(Lg/hm;Lg/ejd;JZ)V
    .locals 9

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lg/tq;->b:Lg/ffr;

    iget v5, p0, Lg/tq;->i:I

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lg/ffr;->v(Lg/hd;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    sget p1, Lg/gbs;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :catchall_1
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final au()Lg/ejd;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object v2, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :try_start_0
    aget v3, v0, v1

    iget v4, p0, Lg/tq;->t:I

    if-ne v4, v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lg/edc;->n:Lg/ejd;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lg/edc;->a:Lg/ejd;

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final av()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized aw()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/tq;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lg/gbs;->a:I

    new-instance v1, Lg/czx;

    invoke-direct {v1, p0}, Lg/czx;-><init>(Lg/tq;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lg/tq;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/tq;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ax()Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/tq;->j:Landroid/os/Handler;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public final ay()Z
    .locals 4

    iget-object v0, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lg/tq;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lg/tq;->s:Lg/agh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/tq;->u:Lg/aaa;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final az(Lg/eie;)V
    .locals 6

    iget-object v0, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lg/tq;->ay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg/tq;->ar()Lg/ejd;

    move-result-object v1

    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Lg/tq;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lg/gbs;->a:I

    sget-object v1, Lg/hm;->zzK:Lg/hm;

    sget-object v2, Lg/edc;->e:Lg/ejd;

    invoke-virtual {p0, v2, v1}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    monitor-exit v0

    :goto_0
    move-object v1, v2

    goto/16 :goto_3

    :cond_1
    iget v1, p0, Lg/tq;->t:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    sget v1, Lg/gbs;->a:I

    sget-object v1, Lg/hm;->zzL:Lg/hm;

    sget-object v2, Lg/edc;->n:Lg/ejd;

    invoke-virtual {p0, v2, v1}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    monitor-exit v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lg/tq;->ai(I)V

    invoke-virtual {p0}, Lg/tq;->al()V

    const-string v1, "BillingClient"

    const-string v3, "Starting in-app billing setup."

    invoke-static {v1, v3}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lg/aaa;

    invoke-direct {v1, p0, p1}, Lg/aaa;-><init>(Lg/tq;Lg/eie;)V

    iput-object v1, p0, Lg/tq;->u:Lg/aaa;

    iget-object v1, p0, Lg/tq;->u:Lg/aaa;

    iget-object v1, v1, Lg/aaa;->d:Lg/gyt;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lg/gyt;->d:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lg/gyt;->c:Z

    invoke-virtual {v1}, Lg/gyt;->e()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_7

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.vending"

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lg/tq;->y:Ljava/lang/String;

    const-string v4, "playBillingLibraryVersion"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v4, p0, Lg/tq;->t:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lg/tq;->ar()Lg/ejd;

    move-result-object v1

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_3
    iget v4, p0, Lg/tq;->t:I

    if-eq v4, v2, :cond_4

    sget-object v1, Lg/hm;->zzba:Lg/hm;

    sget-object v2, Lg/edc;->n:Lg/ejd;

    invoke-virtual {p0, v2, v1}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    monitor-exit v0

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lg/tq;->u:Lg/aaa;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BillingClient"

    const-string v1, "Service was bonded successfully."

    invoke-static {v0, v1}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    sget-object v0, Lg/hm;->zzM:Lg/hm;

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    sget-object v0, Lg/hm;->zzN:Lg/hm;

    goto :goto_2

    :cond_7
    sget-object v0, Lg/hm;->zzN:Lg/hm;

    goto :goto_2

    :cond_8
    sget-object v0, Lg/hm;->zzO:Lg/hm;

    :goto_2
    invoke-virtual {p0, v3}, Lg/tq;->ai(I)V

    const-string v1, "BillingClient"

    const-string v2, "Billing service unavailable on device."

    invoke-static {v1, v2}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lg/edc;->m:Lg/ejd;

    invoke-virtual {p0, v1, v0}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Lg/eie;->t(Lg/ejd;)V

    :cond_9
    return-void

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final ba(Lg/eag;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg/tq;->b:Lg/ffr;

    iget v1, p0, Lg/tq;->i:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v2, Lg/djs;

    invoke-virtual {v2}, Lg/fsu;->x()Lg/dtx;

    move-result-object v2

    check-cast v2, Lg/gzp;

    invoke-virtual {v2}, Lg/dtx;->f()V

    iget-object v3, v2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/djs;

    invoke-static {v3, v1}, Lg/djs;->g(Lg/djs;I)V

    invoke-virtual {v2}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/djs;

    iput-object v1, v0, Lg/ffr;->f:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, p1, v1}, Lg/ffr;->ai(Lg/eag;Lg/djs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_3
    sget p1, Lg/gbs;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    :try_start_4
    sget p1, Lg/gbs;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    return-void

    :catchall_2
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public bb()V
    .locals 4

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lg/cgl;->d(ILg/apl;)Lg/eag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/tq;->ba(Lg/eag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget v0, Lg/gbs;->a:I

    :goto_0
    iget-object v0, p0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lg/tq;->o:Lg/axs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/tq;->o:Lg/axs;

    iget-object v2, v1, Lg/axs;->e:Ljava/lang/Object;

    check-cast v2, Lg/gwx;

    iget-object v3, v1, Lg/axs;->h:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lg/gwx;->h(Landroid/content/Context;)V

    iget-object v1, v1, Lg/axs;->f:Ljava/lang/Object;

    check-cast v1, Lg/gwx;

    invoke-virtual {v1, v3}, Lg/gwx;->h(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_2
    sget v1, Lg/gbs;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    :goto_1
    :try_start_3
    const-string v1, "BillingClient"

    const-string v2, "Unbinding from service."

    invoke-static {v1, v2}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/tq;->al()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    :try_start_4
    sget v1, Lg/gbs;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    const/4 v1, 0x3

    :try_start_5
    invoke-virtual {p0}, Lg/tq;->ao()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_3
    :try_start_6
    invoke-virtual {p0, v1}, Lg/tq;->ai(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    goto :goto_5

    :catchall_4
    :try_start_7
    sget v2, Lg/gbs;->a:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :goto_4
    :try_start_8
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v2

    invoke-virtual {p0, v1}, Lg/tq;->ai(I)V

    throw v2

    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method

.method public final bc(Lg/ejd;Lg/hm;)V
    .locals 3

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p2, v1, p1, v2, v0}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p1

    invoke-virtual {p1}, Lg/fsu;->x()Lg/dtx;

    move-result-object p1

    check-cast p1, Lg/ari;

    invoke-static {}, Lg/dmh;->e()Lg/eip;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lg/eip;->a(Z)V

    invoke-virtual {p2}, Lg/eip;->b()V

    invoke-virtual {p1, p2}, Lg/ari;->b(Lg/eip;)V

    invoke-virtual {p1}, Lg/dtx;->g()Lg/fsu;

    move-result-object p1

    check-cast p1, Lg/hd;

    invoke-virtual {p0, p1}, Lg/tq;->ah(Lg/hd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final bd(Lg/hm;Lg/ejd;J)V
    .locals 3

    :try_start_0
    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lg/tq;->b:Lg/ffr;

    iget v0, p0, Lg/tq;->i:I

    invoke-virtual {p2, p1, v0, p3, p4}, Lg/ffr;->p(Lg/hd;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    :try_start_2
    sget p1, Lg/gbs;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;
    .locals 2

    sget v0, Lg/gbs;->a:I

    const/4 v0, 0x7

    invoke-static {p3}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, v0, p1, p3}, Lg/tq;->an(Lg/hm;ILg/ejd;Ljava/lang/String;)V

    new-instance p2, Lg/dsg;

    iget p3, p1, Lg/ejd;->a:I

    iget-object p1, p1, Lg/ejd;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p1, v0, v1}, Lg/dsg;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2
.end method

.method public bf(Lg/elf;Lg/dxb;)Lg/ejd;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v0, v1, Lg/tq;->o:Lg/axs;

    if-eqz v0, :cond_4b

    iget-object v0, v1, Lg/tq;->o:Lg/axs;

    iget-object v0, v0, Lg/axs;->a:Ljava/lang/Object;

    check-cast v0, Lg/eoy;

    if-eqz v0, :cond_4b

    const-string v0, "Reconnection succeeded with result: "

    :try_start_0
    const-string v4, "BillingClient"

    const-string v6, "Already connected or not opted into auto reconnection."

    invoke-static {v4, v6}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lg/edc;->l:Lg/ejd;

    new-instance v6, Lg/fjp;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Lg/ejd;->a:I

    if-nez v4, :cond_1

    const-string v6, "BillingClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    sget v0, Lg/gbs;->a:I

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lg/tq;->ay()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lg/hm;->zzb:Lg/hm;

    sget-object v4, Lg/edc;->n:Lg/ejd;

    invoke-virtual {v1, v0, v4, v2, v3}, Lg/tq;->bd(Lg/hm;Lg/ejd;J)V

    invoke-virtual {v1, v4}, Lg/tq;->bg(Lg/ejd;)V

    return-object v4

    :cond_2
    iget-object v4, v1, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, v1, Lg/tq;->u:Lg/aaa;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lg/tq;->u:Lg/aaa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_26

    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v5, Lg/dxb;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v5, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v4, Lg/fkz;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_4a

    invoke-virtual {v4}, Lg/fkz;->iterator()Ljava/util/Iterator;

    move-result-object v6

    check-cast v6, Lg/duz;

    invoke-virtual {v6}, Lg/duz;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lg/duz;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    check-cast v6, Lg/aab;

    iget-object v8, v6, Lg/aab;->a:Lg/x;

    move-object v10, v4

    move-wide/from16 v28, v2

    move-object v2, v5

    move-wide/from16 v4, v28

    iget-object v3, v8, Lg/x;->h:Ljava/lang/String;

    iget-object v8, v8, Lg/x;->b:Ljava/lang/String;

    const-string v11, "subs"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object v12, v6

    const/4 v6, 0x0

    if-eqz v11, :cond_7

    iget-boolean v11, v1, Lg/tq;->c:Z

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    sget-object v2, Lg/hm;->zzi:Lg/hm;

    sget-object v3, Lg/edc;->f:Lg/ejd;

    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :cond_7
    :goto_4
    iget-object v11, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v11, Lg/bmr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v11, v2, Lg/dxb;->b:Z

    const/4 v13, 0x0

    if-nez v11, :cond_8

    iget-object v11, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v11, Lg/fkz;

    if-eqz v11, :cond_9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_9

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lg/aab;

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    iget-boolean v11, v1, Lg/tq;->r:Z

    if-eqz v11, :cond_49

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x1

    if-le v11, v14, :cond_b

    iget-boolean v11, v1, Lg/tq;->v:Z

    if-eqz v11, :cond_a

    goto :goto_6

    :cond_a
    sget v0, Lg/gbs;->a:I

    sget-object v2, Lg/hm;->zzs:Lg/hm;

    sget-object v3, Lg/edc;->k:Lg/ejd;

    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :cond_b
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    iget-boolean v11, v1, Lg/tq;->ab:Z

    if-eqz v11, :cond_c

    goto :goto_7

    :cond_c
    sget v0, Lg/gbs;->a:I

    sget-object v2, Lg/hm;->zzt:Lg/hm;

    sget-object v3, Lg/edc;->c:Lg/ejd;

    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :cond_d
    :goto_7
    const-string v11, "packageName"

    const-string v15, "."

    const-string v6, "play_pass_subs"

    iget-object v14, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v14, Lg/fkz;

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    sget-object v6, Lg/edc;->l:Lg/ejd;

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object v3, v6

    move-object/from16 v21, v8

    const/16 v17, 0x0

    goto/16 :goto_f

    :cond_e
    iget-object v14, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v14, Lg/fkz;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/aab;

    const/4 v13, 0x1

    const/16 v17, 0x0

    :goto_8
    iget-object v9, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v9, Lg/fkz;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v13, v9, :cond_11

    iget-object v9, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v9, Lg/fkz;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aab;

    iget-object v1, v9, Lg/aab;->a:Lg/x;

    iget-object v1, v1, Lg/x;->b:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v14, Lg/aab;->a:Lg/x;

    iget-object v3, v3, Lg/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v9, Lg/aab;->a:Lg/x;

    iget-object v1, v1, Lg/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    const-string v1, "All products should have same ProductType."

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v6

    move-wide/from16 v19, v4

    move-object v3, v6

    move-object/from16 v21, v8

    goto/16 :goto_f

    :cond_10
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v18

    goto :goto_8

    :cond_11
    move-object/from16 v18, v3

    iget-object v1, v14, Lg/aab;->a:Lg/x;

    iget-object v3, v1, Lg/x;->g:Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-wide/from16 v19, v4

    iget-object v4, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v4, Lg/fkz;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v21, v8

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v5, :cond_17

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v4

    move-object/from16 v4, v22

    check-cast v4, Lg/aab;

    move/from16 v22, v5

    iget-object v5, v4, Lg/aab;->a:Lg/x;

    move/from16 v24, v8

    iget-object v8, v5, Lg/x;->a:Ljava/util/ArrayList;

    move-object/from16 v25, v8

    iget-object v8, v5, Lg/x;->h:Ljava/lang/String;

    if-eqz v25, :cond_13

    move-object/from16 v25, v13

    iget-object v13, v4, Lg/aab;->b:Ljava/lang/String;

    if-eqz v13, :cond_12

    goto :goto_c

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v6

    :goto_b
    move-object v3, v6

    goto/16 :goto_f

    :cond_13
    move-object/from16 v25, v13

    :goto_c
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v1, v5, Lg/x;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ProductId can not be duplicated. Invalid product id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v6

    goto :goto_b

    :cond_14
    iget-object v8, v5, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lg/x;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v5, Lg/x;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v5, Lg/x;->g:Lorg/json/JSONObject;

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_d

    :cond_15
    const-string v1, "All products must have the same package name."

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v6

    goto :goto_b

    :cond_16
    :goto_d
    add-int/lit8 v8, v24, 0x1

    move/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v13, v25

    goto/16 :goto_a

    :cond_17
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OldProductId must not be one of the products to be purchased. Invalid old product id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v6

    goto/16 :goto_b

    :cond_19
    iget-object v1, v1, Lg/x;->f:Ljava/util/ArrayList;

    iget-object v3, v14, Lg/aab;->b:Ljava/lang/String;

    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dzn;

    iget-object v5, v4, Lg/dzn;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_e

    :cond_1b
    move-object/from16 v4, v17

    :goto_e
    if-eqz v4, :cond_1c

    iget-object v1, v4, Lg/dzn;->a:Lg/gpu;

    if-eqz v1, :cond_1c

    const-string v1, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay."

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v6

    goto/16 :goto_b

    :cond_1c
    sget-object v6, Lg/edc;->l:Lg/ejd;

    goto/16 :goto_b

    :goto_f
    sget-object v1, Lg/edc;->l:Lg/ejd;

    if-eq v3, v1, :cond_1d

    sget-object v2, Lg/hm;->zzbd:Lg/hm;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v4, v19

    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :cond_1d
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v4, v19

    iget-boolean v3, v1, Lg/tq;->r:Z

    if-eqz v3, :cond_41

    iget-boolean v3, v1, Lg/tq;->f:Z

    iget-object v9, v1, Lg/tq;->z:Lg/cuf;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lg/tq;->z:Lg/cuf;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v1, Lg/tq;->e:Z

    iget-object v11, v1, Lg/tq;->y:Ljava/lang/String;

    iget-object v13, v1, Lg/tq;->g:Ljava/lang/String;

    iget-object v14, v1, Lg/tq;->w:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v6, v1, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    sget v6, Lg/gbs;->a:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {v14, v15, v6, v11, v13}, Lg/gbs;->g(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "billingClientTransactionId"

    invoke-virtual {v6, v11, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v11, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v11, Lg/bmr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "accountId"

    move-object/from16 v13, v17

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1e
    move-object/from16 v13, v17

    :goto_10
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string v11, "obfuscatedProfileId"

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20

    new-instance v11, Ljava/util/ArrayList;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v14, "skusToReplace"

    invoke-virtual {v6, v14, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_20
    iget-object v11, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v11, Lg/bmr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    iget-object v11, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v11, Lg/bmr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "oldSkuPurchaseToken"

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    const-string v11, "oldSkuPurchaseId"

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v11, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v11, Lg/bmr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_23

    iget-object v11, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v11, Lg/bmr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "originalExternalTransactionId"

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "paymentsPurchaseParams"

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-eqz v3, :cond_25

    const-string v3, "enablePendingPurchases"

    const/4 v11, 0x1

    invoke-virtual {v6, v3, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_11

    :cond_25
    const/4 v11, 0x1

    :goto_11
    if-eqz v9, :cond_26

    const-string v3, "enableAlternativeBilling"

    invoke-virtual {v6, v3, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v2, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v9, Lg/fkz;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lg/fkz;->o(I)Lg/duz;

    move-result-object v9

    :goto_12
    invoke-virtual {v9}, Lg/duz;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-virtual {v9}, Lg/duz;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/aab;

    goto :goto_12

    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Lg/fmj;->b()Lg/fwc;

    move-result-object v9

    invoke-virtual {v9}, Lg/dtx;->f()V

    iget-object v11, v9, Lg/dtx;->d:Lg/fsu;

    check-cast v11, Lg/fmj;

    invoke-static {v11, v3}, Lg/fmj;->a(Lg/fmj;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Lg/dtx;->g()Lg/fsu;

    move-result-object v3

    check-cast v3, Lg/fmj;

    invoke-virtual {v3}, Lg/bsv;->j()[B

    move-result-object v3

    const-string v9, "subscriptionProductReplacementParamsList"

    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_29

    const-string v9, "skuDetailsTokens"

    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v11, 0x1

    if-le v3, v11, :cond_2a

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v11, v13, :cond_2b

    const-string v0, "additionalSkus"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "additionalSkuTypes"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2a
    move-wide/from16 v19, v4

    goto/16 :goto_14

    :cond_2b
    invoke-static {v11, v0}, Lg/tn;->w(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_2c
    invoke-static {v9}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_2d
    const/4 v11, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_13
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v11, v8, :cond_33

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/aab;

    iget-object v2, v8, Lg/aab;->a:Lg/x;

    move-wide/from16 v19, v4

    iget-object v4, v2, Lg/x;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v2, Lg/x;->e:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v4, v8, Lg/aab;->b:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lg/x;->i:Ljava/lang/String;

    iget-object v5, v2, Lg/x;->f:Ljava/util/ArrayList;

    if-eqz v5, :cond_30

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    iget-object v2, v2, Lg/x;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/dzn;

    iget-object v8, v5, Lg/dzn;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2f

    iget-object v4, v5, Lg/dzn;->d:Ljava/lang/String;

    :cond_30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    if-lez v11, :cond_32

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aab;

    iget-object v2, v2, Lg/aab;->a:Lg/x;

    iget-object v2, v2, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aab;

    iget-object v2, v2, Lg/aab;->a:Lg/x;

    iget-object v2, v2, Lg/x;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v4, v19

    goto :goto_13

    :cond_33
    move-wide/from16 v19, v4

    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v6, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "autoPayBalanceThresholdList"

    invoke-virtual {v6, v2, v15}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_34
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "skuDetailsTokens"

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_35
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    invoke-virtual {v6, v2, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "additionalSkus"

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "additionalSkuTypes"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_37
    :goto_14
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, v1, Lg/tq;->d:Z

    if-eqz v0, :cond_39

    :cond_38
    const/16 v16, 0x0

    goto :goto_15

    :cond_39
    sget-object v2, Lg/hm;->zzu:Lg/hm;

    sget-object v3, Lg/edc;->d:Lg/ejd;

    move-wide/from16 v4, v19

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :goto_15
    iget-object v0, v12, Lg/aab;->a:Lg/x;

    iget-object v0, v0, Lg/x;->g:Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, v12, Lg/aab;->a:Lg/x;

    iget-object v0, v0, Lg/x;->g:Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "skuPackageName"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    :goto_16
    const/4 v13, 0x0

    goto :goto_17

    :cond_3a
    const/4 v14, 0x0

    goto :goto_16

    :goto_17
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "accountName"

    invoke-virtual {v6, v0, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3c

    sget v0, Lg/gbs;->a:I

    goto :goto_18

    :cond_3c
    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "proxyPackage"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    iget-object v2, v1, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "proxyPackageVersion"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_18

    :catch_1
    const-string v0, "proxyPackageVersion"

    const-string v2, "package not found"

    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_18
    iget-boolean v0, v1, Lg/tq;->ab:Z

    if-eqz v0, :cond_3e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    const/16 v8, 0x11

    const/16 v2, 0x11

    goto :goto_19

    :cond_3e
    iget-boolean v0, v1, Lg/tq;->q:Z

    if-eqz v0, :cond_3f

    if-eqz v14, :cond_3f

    const/16 v8, 0xf

    const/16 v2, 0xf

    goto :goto_19

    :cond_3f
    iget-boolean v0, v1, Lg/tq;->f:Z

    if-eqz v0, :cond_40

    const/16 v8, 0x9

    const/16 v2, 0x9

    goto :goto_19

    :cond_40
    const/4 v2, 0x6

    :goto_19
    new-instance v0, Lg/abf;

    move-object/from16 v5, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    invoke-direct/range {v0 .. v6}, Lg/abf;-><init>(Lg/tq;ILjava/lang/String;Ljava/lang/String;Lg/dxb;Landroid/os/Bundle;)V

    iget-object v2, v1, Lg/tq;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object v27

    const-wide/16 v23, 0x1388

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-object/from16 v26, v2

    invoke-static/range {v22 .. v27}, Lg/tq;->ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_1a

    :cond_41
    move-wide/from16 v19, v4

    move-object/from16 v13, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    const/16 v16, 0x0

    new-instance v0, Lg/cao;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v4, v2}, Lg/cao;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v2, v1, Lg/tq;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object v26

    const-wide/16 v22, 0x1388

    const/16 v24, 0x0

    move-object/from16 v21, v0

    move-object/from16 v25, v2

    invoke-static/range {v21 .. v26}, Lg/tq;->ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_42

    :try_start_3
    sget-object v2, Lg/hm;->zzy:Lg/hm;

    sget-object v3, Lg/edc;->p:Lg/ejd;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-wide/from16 v4, v19

    const/4 v6, 0x0

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :catch_2
    move-exception v0

    goto/16 :goto_24

    :catch_3
    move-exception v0

    goto/16 :goto_25

    :catch_4
    move-exception v0

    goto/16 :goto_25

    :catch_5
    move-exception v0

    move-wide/from16 v4, v19

    :goto_1b
    const/4 v6, 0x0

    goto/16 :goto_24

    :catch_6
    move-exception v0

    :goto_1c
    move-wide/from16 v4, v19

    :goto_1d
    const/4 v6, 0x0

    goto/16 :goto_25

    :catch_7
    move-exception v0

    goto :goto_1c

    :cond_42
    move-wide/from16 v4, v19

    const/4 v6, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1388

    invoke-interface {v0, v8, v9, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "BillingClient"

    invoke-static {v2, v0}, Lg/gbs;->e(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v3, "BillingClient"

    invoke-static {v2, v3}, Lg/gbs;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_48

    invoke-static {v0, v3}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v3
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v2, :cond_43

    :try_start_5
    sget-object v0, Lg/hm;->zza:Lg/hm;

    goto :goto_1f

    :catchall_1
    move-exception v0

    goto :goto_1e

    :cond_43
    const-string v0, "LOG_REASON"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_44

    sget-object v0, Lg/hm;->zza:Lg/hm;

    goto :goto_1f

    :cond_44
    instance-of v7, v0, Ljava/lang/Integer;

    if-eqz v7, :cond_45

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lg/hm;->b(I)Lg/hm;

    move-result-object v0

    goto :goto_1f

    :cond_45
    sget-object v0, Lg/hm;->zza:Lg/hm;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1f

    :goto_1e
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Failed to get log reason from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    sget v0, Lg/gbs;->a:I

    sget-object v0, Lg/hm;->zza:Lg/hm;

    :goto_1f
    sget-object v7, Lg/hm;->zza:Lg/hm;

    if-ne v0, v7, :cond_46

    sget-object v0, Lg/hm;->zzw:Lg/hm;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_46
    move-object v7, v0

    if-nez v2, :cond_47

    :goto_20
    move-wide v5, v4

    move-object v2, v7

    move-object v4, v13

    :goto_21
    const/4 v7, 0x0

    goto :goto_22

    :cond_47
    :try_start_7
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide v5, v4

    move-object v2, v7

    move-object v4, v9

    goto :goto_21

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get additional log details from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    sget v0, Lg/gbs;->a:I
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_20

    :goto_22
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lg/tq;->as(Lg/hm;Lg/ejd;Ljava/lang/String;JZ)V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-wide v4, v5

    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :catch_8
    move-exception v0

    move-wide v4, v5

    goto/16 :goto_1b

    :catch_9
    move-exception v0

    :goto_23
    move-wide v4, v5

    goto/16 :goto_1d

    :catch_a
    move-exception v0

    goto :goto_23

    :cond_48
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "BUY_INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "BUY_INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "billingClientTransactionId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "wasServiceAutoReconnected"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    sget-object v0, Lg/edc;->l:Lg/ejd;

    return-object v0

    :goto_24
    sget v2, Lg/gbs;->a:I

    sget-object v2, Lg/hm;->zze:Lg/hm;

    sget-object v3, Lg/edc;->n:Lg/ejd;

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    move-wide v5, v4

    const/4 v7, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lg/tq;->as(Lg/hm;Lg/ejd;Ljava/lang/String;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :goto_25
    sget v2, Lg/gbs;->a:I

    sget-object v2, Lg/hm;->zzd:Lg/hm;

    sget-object v3, Lg/edc;->b:Lg/ejd;

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    move-wide v5, v4

    const/4 v7, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lg/tq;->as(Lg/hm;Lg/ejd;Ljava/lang/String;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :cond_49
    sget-object v2, Lg/hm;->zzr:Lg/hm;

    sget-object v3, Lg/edc;->i:Lg/ejd;

    invoke-virtual/range {v1 .. v6}, Lg/tq;->at(Lg/hm;Lg/ejd;JZ)V

    invoke-virtual {v1, v3}, Lg/tq;->bg(Lg/ejd;)V

    return-object v3

    :cond_4a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :goto_26
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    :cond_4b
    move-wide v5, v2

    sget-object v0, Lg/hm;->zzl:Lg/hm;

    sget-object v2, Lg/edc;->o:Lg/ejd;

    invoke-virtual {v1, v0, v2, v5, v6}, Lg/tq;->bd(Lg/hm;Lg/ejd;J)V

    return-object v2
.end method

.method public final bg(Lg/ejd;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/efr;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lg/tq;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public final Lg/fgj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile b:Lg/fgj;


# instance fields
.field public volatile c:Lg/fbc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x165

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lg/fgj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, v0, Landroid/app/Application;

    if-eqz p0, :cond_1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static e()Lg/fgj;
    .locals 4

    sget-object v0, Lg/fgj;->b:Lg/fgj;

    if-nez v0, :cond_1

    const-class v0, Lg/fgj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/fgj;->b:Lg/fgj;

    if-nez v1, :cond_0

    new-instance v1, Lg/fgj;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lg/fgj;->b:Lg/fgj;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lg/fgj;->b:Lg/fgj;

    return-object v0
.end method


# virtual methods
.method public final f(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p1

    return p1
.end method

.method public final g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    iget-object p5, p0, Lg/fgj;->c:Lg/fbc;

    if-eqz p5, :cond_0

    iget-object p5, p0, Lg/fgj;->c:Lg/fbc;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lg/fbc;->s(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p5

    if-nez p5, :cond_0

    const p2, 0x7f120348

    invoke-static {p1, p2}, Lg/gm;->c(Landroid/content/Context;I)V

    return v0

    :cond_0
    if-eqz p4, :cond_2

    :try_start_0
    const-class p4, Landroid/content/pm/PackageManager;

    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p5, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p5

    invoke-static {p5}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p5

    if-eqz p5, :cond_1

    monitor-exit p4

    return v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_1
    monitor-exit p4

    goto :goto_1

    :goto_0
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    :catchall_1
    nop

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    return p1

    :goto_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120459

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_3
    return v0
.end method

.method public final h(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    return-void
.end method

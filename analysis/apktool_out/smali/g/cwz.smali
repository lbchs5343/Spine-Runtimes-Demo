.class public final Lg/cwz;
.super Lg/haz;
.source "SourceFile"


# static fields
.field public static a:Lg/cwz;


# direct methods
.method public static b(Landroid/content/Context;)Lg/cwz;
    .locals 2

    sget-object v0, Lg/cwz;->a:Lg/cwz;

    if-nez v0, :cond_1

    const-class v0, Lg/cwz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/cwz;->a:Lg/cwz;

    if-nez v1, :cond_0

    new-instance v1, Lg/cwz;

    invoke-direct {v1, p0}, Lg/haz;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lg/haz;->p:Z

    sput-object v1, Lg/cwz;->a:Lg/cwz;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/cwz;->a:Lg/cwz;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Z)Lg/auj;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-static {v0}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/haz;->o:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/auj;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lg/haz;->v:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_5

    iget-object v0, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_5

    :try_start_0
    const-class v0, Landroid/content/pm/PackageManager;

    monitor-enter v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lg/haz;->ab(Landroid/content/pm/PackageInfo;ZZ)Lg/auj;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, v1, Lg/auj;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/haz;->o:Ljava/util/HashMap;

    iget-object p2, v1, Lg/auj;->h:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Package manager has died"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Package manager has died"

    invoke-static {p2, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw p1

    :catch_1
    :cond_5
    :goto_4
    return-object v1
.end method

.method public final d(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManager;

    monitor-enter v0
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/util/AndroidException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Package manager has died"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Package manager has died"

    invoke-static {p2, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    throw p1

    :goto_1
    instance-of p2, p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz p2, :cond_2

    const-string p2, "oooo0o0000"

    invoke-static {p2, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_3

    invoke-static {p1}, Lg/eqx;->l(Landroid/util/AndroidException;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "oooo0o0000"

    const-string v0, "DeadSystemException"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Lg/gqc;IZ)V
    .locals 1

    new-instance v0, Lg/xu;

    invoke-direct {v0, p0, p2, p3, p1}, Lg/xu;-><init>(Lg/cwz;IZLg/gqc;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final h(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3

    const-class p2, Lg/haz;

    monitor-enter p2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object p1

    iget-object v0, p0, Lg/haz;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dgx;

    iget-object v2, v1, Lg/dgx;->a:Lg/bsx;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lg/bsx;->i(Lg/auj;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p3}, Lg/haz;->z(Lg/dgx;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

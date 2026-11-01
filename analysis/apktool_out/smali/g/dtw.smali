.class public abstract Lg/dtw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/daw;


# direct methods
.method public static b(Landroid/content/Context;)Lg/fys;
    .locals 10

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/fxe;->net:Lg/fxe$d;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/fxe$d;->cacheFileName:Ljava/lang/String;

    iget-wide v2, v0, Lg/fxe$d;->cacheSize:J

    iget-object v4, v0, Lg/fxe$d;->ua:Ljava/lang/String;

    iget-object v5, v0, Lg/fxe$d;->uaSuffix:Ljava/lang/String;

    const v6, 0x7f1200be

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lg/acw;->al(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lg/fxe$d;->outLineMaxStale:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    move-object v4, v1

    move-object v5, v4

    move-wide v6, v2

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "kkcache"

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-gez v0, :cond_3

    const-wide/32 v2, 0x989680

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {p0}, Lg/acw;->an(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_4
    :goto_2
    invoke-static {p0}, Lg/hca;->e(Landroid/content/Context;)Lg/gez;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lg/gez;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lg/gez;-><init>(Z)V

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    if-nez v4, :cond_6

    move-object v4, v9

    :cond_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    const-string v4, " it/"

    invoke-static {v5, v4}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const-string v5, ","

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lg/fvd;

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v5, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v3}, Lg/fvd;-><init>(Ljava/io/File;J)V

    new-instance v1, Lg/bsd;

    invoke-direct {v1, p0, v0, v6, v7}, Lg/bsd;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance p0, Lg/gjb;

    invoke-direct {p0}, Lg/gjb;-><init>()V

    iput-object v4, p0, Lg/gjb;->b:Lg/fvd;

    iget-object v0, p0, Lg/gjb;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/fys;

    invoke-direct {v0, p0}, Lg/fys;-><init>(Lg/gjb;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lg/daw;
    .locals 4

    sget-object v0, Lg/dtw;->a:Lg/daw;

    if-nez v0, :cond_2

    const-class v0, Lg/dtw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dtw;->a:Lg/daw;

    if-nez v1, :cond_1

    new-instance v1, Lg/dpa;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg/dpa;-><init>(I)V

    const-string v2, "config_https"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https://"

    goto :goto_0

    :cond_0
    const-string v2, "http://"

    :goto_0
    const-string v3, "app.codekk.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/dpa;->o(Ljava/lang/String;)V

    invoke-static {p0}, Lg/dtw;->b(Landroid/content/Context;)Lg/fys;

    move-result-object p0

    iput-object p0, v1, Lg/dpa;->g:Ljava/lang/Object;

    new-instance p0, Lg/bdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/dpa;->s()Lg/daw;

    move-result-object p0

    sput-object p0, Lg/dtw;->a:Lg/daw;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    sget-object p0, Lg/dtw;->a:Lg/daw;

    return-object p0
.end method

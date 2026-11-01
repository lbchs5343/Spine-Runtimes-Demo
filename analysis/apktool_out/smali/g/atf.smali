.class public final Lg/atf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:J

.field public static volatile b:J

.field public static c:Lg/fxe;

.field public static d:Lg/atf;


# instance fields
.field public e:Landroid/content/Context;


# direct methods
.method public static f(Landroid/content/Context;)Z
    .locals 7

    sget-wide v0, Lg/atf;->a:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    const-string v0, "config_last_update"

    invoke-static {p0, v0, v2, v3}, Lg/cro;->ae(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lg/atf;->a:J

    :cond_0
    sget-wide v0, Lg/atf;->b:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    const-string v0, "config_last_success_update"

    invoke-static {p0, v0, v2, v3}, Lg/cro;->ae(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lg/atf;->b:J

    :cond_1
    const-string v0, "config_request_interval"

    invoke-static {p0, v0, v4, v5}, Lg/acw;->k(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    const-wide/32 v2, 0x2a300

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    :cond_2
    const-wide/16 v0, 0x5460

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lg/atf;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    cmp-long p0, v2, v0

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/content/Context;)Lg/atf;
    .locals 4

    sget-object v0, Lg/atf;->d:Lg/atf;

    if-nez v0, :cond_1

    const-class v0, Lg/atf;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/atf;->d:Lg/atf;

    if-nez v1, :cond_0

    new-instance v1, Lg/atf;

    invoke-static {p0}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lg/atf;->e:Landroid/content/Context;

    sput-object v1, Lg/atf;->d:Lg/atf;

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
    invoke-static {p0}, Lg/atf;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lg/atf;

    monitor-enter v0

    :try_start_1
    invoke-static {p0}, Lg/atf;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "config_last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lg/atf;->a:J

    invoke-static {p0, v1, v2, v3}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object p0, Lg/atf;->d:Lg/atf;

    invoke-virtual {p0}, Lg/atf;->k()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_5
    sget-object p0, Lg/atf;->d:Lg/atf;

    return-object p0
.end method


# virtual methods
.method public final h(Lg/fxe$e;)Z
    .locals 1

    iget-boolean v0, p1, Lg/fxe$e;->isShowAd:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p1, Lg/fxe$e;->isOnlyZHCN:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/atf;->e:Landroid/content/Context;

    invoke-static {p1}, Lg/cux;->aj(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final i()Z
    .locals 6

    invoke-virtual {p0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v0

    iget-object v1, p0, Lg/atf;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    sget-boolean v1, Lg/byh;->k:Z

    if-nez v1, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lg/fxe$e;->isShowGoogleAd:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v5
.end method

.method public final j()Lg/fxe$a;
    .locals 1

    invoke-virtual {p0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/fxe;->devTools:Lg/fxe$a;

    return-object v0
.end method

.method public final k()V
    .locals 9

    iget-object v0, p0, Lg/atf;->e:Landroid/content/Context;

    invoke-static {v0}, Lg/hca;->e(Landroid/content/Context;)Lg/gez;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lg/gez;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/gez;-><init>(Z)V

    :cond_0
    invoke-static {v0}, Lg/dtw;->c(Landroid/content/Context;)Lg/daw;

    move-result-object v2

    const-class v3, Lg/fyk;

    invoke-virtual {v2, v3}, Lg/daw;->r(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg/fyk;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v5

    invoke-static {v0}, Lg/cux;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lg/gez;->e:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result v8

    invoke-interface/range {v3 .. v8}, Lg/fyk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lg/czh;

    move-result-object v0

    new-instance v1, Lg/gro;

    invoke-direct {v1, p0}, Lg/gro;-><init>(Lg/atf;)V

    invoke-interface {v0, v1}, Lg/czh;->d(Lg/bmm;)V

    return-void
.end method

.method public final l()Lg/fxe$b;
    .locals 1

    invoke-virtual {p0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/fxe;->donation:Lg/fxe$b;

    return-object v0
.end method

.method public final m()Lg/fxe$e;
    .locals 1

    invoke-virtual {p0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/fxe;->alliance:Lg/fxe$e;

    return-object v0
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lg/fxe$b;->promotionId:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/fxe$e;->isCooking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lg/fxe;
    .locals 2

    sget-object v0, Lg/atf;->c:Lg/fxe;

    if-nez v0, :cond_1

    const-class v0, Lg/atf;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/atf;->c:Lg/fxe;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lg/atf;->q()Lg/fxe;

    move-result-object v1

    sput-object v1, Lg/atf;->c:Lg/fxe;

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
    sget-object v0, Lg/atf;->c:Lg/fxe;

    return-object v0
.end method

.method public final q()Lg/fxe;
    .locals 8

    iget-object v0, p0, Lg/atf;->e:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "con_v"

    invoke-static {v0, v1, v2}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v4, ""

    const-string v5, "config"

    if-ge v1, v3, :cond_0

    invoke-static {v0, v5, v4}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0, v3, v2}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    const-string v1, "TrineaAndroidCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-class v5, Lg/fxe;

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v5, v1}, Lg/ex;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fxe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    const-string v3, "ac"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Lg/dyd;->az(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const-string v0, "(https?://([a-zA-Z0-9.-]+\\.)?)codekk.com"

    const-string v3, "$1timeshining.com"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :try_start_2
    invoke-static {v5, v2}, Lg/ex;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fxe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :catch_3
    :cond_5
    :goto_4
    return-object v1
.end method

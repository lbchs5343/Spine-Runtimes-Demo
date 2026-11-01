.class public final Lg/eby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/bugly/proguard/ah;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:J

.field public d:Z


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lg/eby;->c:J

    sub-long v6, v0, v2

    iget-object v0, p0, Lg/eby;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-boolean v0, p0, Lg/eby;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "realtime"

    :goto_0
    move v5, p1

    move-object v9, p2

    move-object v8, v0

    goto :goto_1

    :cond_0
    const-string v0, "cache"

    goto :goto_0

    :goto_1
    invoke-static/range {v4 .. v9}, Lcom/tencent/bugly/proguard/as;->a(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg/eby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v5, p1}, Lcom/tencent/bugly/proguard/as;->a(ZLjava/util/List;)V

    return-void
.end method

.method public declared-synchronized e(Landroid/os/IBinder;J)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/eby;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/eby;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    iget-wide v0, p0, Lg/eby;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

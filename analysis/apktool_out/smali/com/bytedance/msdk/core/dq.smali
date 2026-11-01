.class public Lcom/bytedance/msdk/core/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/dq$dq;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/bytedance/msdk/core/f/ox;

.field private static volatile dq:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile ox:Lcom/bytedance/msdk/s/d/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/msdk/s/d/dq<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/bytedance/msdk/core/f/ox;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/core/dq;->d:Lcom/bytedance/msdk/core/f/ox;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/core/f/ox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/core/dq;->d:Lcom/bytedance/msdk/core/f/ox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/f/ox;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/f/ox;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/core/dq;->d:Lcom/bytedance/msdk/core/f/ox;

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
    sget-object v0, Lcom/bytedance/msdk/core/dq;->d:Lcom/bytedance/msdk/core/f/ox;

    return-object v0
.end method

.method public static dq()Lcom/bytedance/msdk/s/d/dq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/msdk/s/d/dq<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/msdk/core/dq;->ox:Lcom/bytedance/msdk/s/d/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/core/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/core/dq;->ox:Lcom/bytedance/msdk/s/d/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/s/d/d;

    sget-object v2, Lcom/bytedance/msdk/core/dq;->dq:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/s/d/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/msdk/core/dq;->ox:Lcom/bytedance/msdk/s/d/dq;

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
    sget-object v0, Lcom/bytedance/msdk/core/dq;->ox:Lcom/bytedance/msdk/s/d/dq;

    return-object v0
.end method

.method public static declared-synchronized dq(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/bytedance/msdk/core/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/core/dq;->dq:Landroid/content/Context;

    if-nez v1, :cond_2

    const-class v1, Lcom/bytedance/msdk/core/dq;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq$dq;->dq()Landroid/app/Application;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-static {}, Lcom/bytedance/msdk/core/dq$dq;->dq()Landroid/app/Application;

    move-result-object v2

    sput-object v2, Lcom/bytedance/msdk/core/dq;->dq:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    nop

    :cond_0
    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/msdk/core/dq;->dq:Landroid/content/Context;

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/dq;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq;->dq(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/core/dq;->dq:Landroid/content/Context;

    return-object v0
.end method

.class public Lcom/bytedance/msdk/s/dq/iw;
.super Lcom/bytedance/msdk/s/dq/mn;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/s/dq/iw;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/dq/mn;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/msdk/s/dq/iw;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/s/dq/iw;->dq:Lcom/bytedance/msdk/s/dq/iw;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/s/dq/iw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/s/dq/iw;->dq:Lcom/bytedance/msdk/s/dq/iw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/s/dq/iw;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/s/dq/iw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/msdk/s/dq/iw;->dq:Lcom/bytedance/msdk/s/dq/iw;

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
    sget-object p0, Lcom/bytedance/msdk/s/dq/iw;->dq:Lcom/bytedance/msdk/s/dq/iw;

    return-object p0
.end method

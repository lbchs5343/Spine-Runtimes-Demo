.class public Lcom/bytedance/sdk/component/ia/d/iw/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/component/ia/d/iw/d;


# direct methods
.method public static dq(Lcom/bytedance/sdk/component/ia/dq/s;)Lcom/bytedance/sdk/component/ia/d/iw/d;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq:Lcom/bytedance/sdk/component/ia/d/iw/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/ia/d/iw/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq:Lcom/bytedance/sdk/component/ia/d/iw/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/iw/ox;

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/iw/iw;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/component/ia/d/iw/iw;-><init>(Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/component/ia/d/iw/ox;-><init>(Lcom/bytedance/sdk/component/ia/d/iw/s;Lcom/bytedance/sdk/component/ia/dq/s;)V

    sput-object v1, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq:Lcom/bytedance/sdk/component/ia/d/iw/d;

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
    sget-object p0, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq:Lcom/bytedance/sdk/component/ia/d/iw/d;

    return-object p0
.end method

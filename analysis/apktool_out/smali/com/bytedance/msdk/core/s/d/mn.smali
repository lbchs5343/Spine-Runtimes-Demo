.class public Lcom/bytedance/msdk/core/s/d/mn;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Landroid/content/Context;Ljava/lang/String;I)Lcom/bytedance/msdk/core/s/d/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/bytedance/msdk/ox/p/ox;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/p/ox;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/s/d/iw;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/msdk/core/s/d/iw;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

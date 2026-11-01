.class public Lcom/bytedance/msdk/ox/iw/dq/p;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/ox/iw/dq/dq;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/bytedance/msdk/ox/iw/dq/ox;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/iw/dq/ox;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/bytedance/msdk/ox/iw/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/iw/dq/d;-><init>()V

    return-object p0
.end method

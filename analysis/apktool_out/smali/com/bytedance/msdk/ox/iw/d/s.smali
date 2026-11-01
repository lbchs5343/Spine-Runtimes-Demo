.class public Lcom/bytedance/msdk/ox/iw/d/s;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/ox/iw/d/dq;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/bytedance/msdk/ox/iw/d/ox;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/iw/d/ox;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/bytedance/msdk/ox/iw/d/p;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/iw/d/p;-><init>()V

    return-object p0
.end method

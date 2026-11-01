.class public Lcom/bytedance/msdk/core/s/d/no;
.super Ljava/lang/Object;


# direct methods
.method public static dq(ILandroid/content/Context;Ljava/lang/String;I)Lcom/bytedance/msdk/core/s/d/ox;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ox/mn/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/bytedance/msdk/ox/p/s;

    invoke-direct {p2, p1, p0}, Lcom/bytedance/msdk/ox/p/s;-><init>(Landroid/content/Context;I)V

    return-object p2

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    new-instance p0, Lcom/bytedance/msdk/core/s/d/kk;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/s/d/kk;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    new-instance p0, Lcom/bytedance/msdk/core/s/d/o;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/s/d/o;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

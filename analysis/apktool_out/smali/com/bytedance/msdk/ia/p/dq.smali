.class public Lcom/bytedance/msdk/ia/p/dq;
.super Ljava/lang/Object;


# static fields
.field private static dq:Z


# direct methods
.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/msdk/ia/p/dq;->dq:Z

    return-void
.end method

.method public static dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/bytedance/msdk/ia/p/dq;->dq:Z

    return v0
.end method

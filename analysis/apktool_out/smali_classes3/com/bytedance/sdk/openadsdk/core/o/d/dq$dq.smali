.class public final Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/o/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# direct methods
.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/dq;->dq(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    return-object p1
.end method

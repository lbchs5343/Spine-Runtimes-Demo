.class public Lcom/bytedance/sdk/openadsdk/core/s/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Z

.field private static volatile dq:Ljava/util/Random;


# direct methods
.method public static d()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ce()F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/s/d;->dq(FZ)Z

    return-void
.end method

.method public static dq()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/s/d;->d:Z

    return v0
.end method

.method public static dq(FZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/s/d;->d:Z

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/d;->ox()Ljava/util/Random;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-ge v0, p0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/s/d;->d:Z

    :cond_3
    if-ge v0, p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private static ox()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s/d;->dq:Ljava/util/Random;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s/d;->dq:Ljava/util/Random;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/dq;->ox()Ljava/util/Random;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/s/d;->dq:Ljava/util/Random;

    return-object v0
.end method

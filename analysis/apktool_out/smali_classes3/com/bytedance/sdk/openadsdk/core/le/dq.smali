.class public Lcom/bytedance/sdk/openadsdk/core/le/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/le/dq$dq;
    }
.end annotation


# static fields
.field private static volatile d:Ljava/lang/String; = "0"

.field private static volatile dq:J


# direct methods
.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/le/dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic dq(J)J
    .locals 0

    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/le/dq;->dq:J

    return-wide p0
.end method

.method public static dq()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/le/dq;->dq:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/le/dq;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public static synthetic dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/le/dq;->d:Ljava/lang/String;

    return-object p0
.end method

.class Lcom/bytedance/sdk/component/ox/d/ox$dq;
.super Lcom/bytedance/sdk/component/ox/d/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/dq/s;

.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;

.field private final ox:Ljava/lang/String;

.field private final p:Ljava/lang/String;


# virtual methods
.method public d()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/ox$dq;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/i;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$dq;->ox:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$dq;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    return-object v0
.end method

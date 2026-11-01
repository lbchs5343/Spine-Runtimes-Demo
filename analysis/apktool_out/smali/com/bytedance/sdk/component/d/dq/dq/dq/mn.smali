.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;
.super Lcom/bytedance/sdk/component/d/dq/fw;


# instance fields
.field dq:Lcom/bytedance/sdk/component/ox/d/n;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/dq/fw;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->close()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->iw()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public ox()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->p()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->s()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/d/dq/o;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/mn;->dq:Lcom/bytedance/sdk/component/ox/d/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/n;->dq()Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lcom/bytedance/sdk/component/d/dq/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/i;->ox()Ljava/nio/charset/Charset;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/i;->ox()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/bytedance/sdk/component/d/dq/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

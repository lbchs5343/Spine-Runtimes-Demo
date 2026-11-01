.class Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;
.super Lcom/bytedance/sdk/component/ox/dq/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field d:J

.field dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/s/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/iw;Lcom/bytedance/sdk/component/ox/dq/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/iw;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ox/dq/ia;-><init>(Lcom/bytedance/sdk/component/ox/dq/gh;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->dq:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->d:J

    return-void
.end method

.method private dq(Ljava/io/IOException;)V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->dq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->dq:Z

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/iw;

    iget-object v1, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->d:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZLcom/bytedance/sdk/component/ox/d/dq/ox/ox;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/bytedance/sdk/component/ox/dq/ia;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->dq(Ljava/io/IOException;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ia;->d()Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-wide p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;->dq(Ljava/io/IOException;)V

    throw p1
.end method

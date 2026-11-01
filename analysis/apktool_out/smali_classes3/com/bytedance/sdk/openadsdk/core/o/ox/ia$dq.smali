.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field d:J

.field dq:Ljava/lang/String;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

.field ox:J

.field p:Ljava/lang/String;

.field s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    const-string p1, "DownloadCallbackRunnable"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    const-string p1, "DownloadCallbackRunnable"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->dq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->d:J

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->ox:J

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->p:Ljava/lang/String;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->ox:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->p:Ljava/lang/String;

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->d:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->dq:Ljava/lang/String;

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->s:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig()Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->jy:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->dq:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->d:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->ox:J

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->p:Ljava/lang/String;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$dq;->s:Ljava/lang/String;

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/fw;->dq(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

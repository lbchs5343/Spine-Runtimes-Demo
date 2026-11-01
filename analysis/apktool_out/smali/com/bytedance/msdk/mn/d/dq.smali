.class public Lcom/bytedance/msdk/mn/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/mn/d/d;


# instance fields
.field private d:J

.field private final dq:Ljava/lang/String;

.field private ox:J

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dq"

    iput-object v0, p0, Lcom/bytedance/msdk/mn/d/dq;->dq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cd()J
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/msdk/mn/d/dq;->ox:J

    iget-wide v2, p0, Lcom/bytedance/msdk/mn/d/dq;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/msdk/mn/d/dq;->dq:Ljava/lang/String;

    const-string v3, "InitMethodDuration = "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public f()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/mn/d/dq;->d:J

    return-void
.end method

.method public fw()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/mn/d/dq;->ox:J

    return-void
.end method

.method public gh()J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/msdk/mn/d/dq;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/msdk/mn/d/dq;->dq:Ljava/lang/String;

    const-string v3, "SplashRequestDuration = "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/d/dq;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public le()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/mn/d/dq;->p:Ljava/lang/String;

    sget-object v1, Lcom/bytedance/msdk/s/dq;->ox:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/bytedance/msdk/mn/d/dq;->dq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canUploadInitDuration = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " \u5f53sessionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5b58\u50a8\u7684sessionId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/mn/d/dq;->p:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/mn/d/dq;->p:Ljava/lang/String;

    return-void
.end method

.method public r()J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/msdk/mn/d/dq;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/msdk/mn/d/dq;->dq:Ljava/lang/String;

    const-string v3, "SplashFillDuration = "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

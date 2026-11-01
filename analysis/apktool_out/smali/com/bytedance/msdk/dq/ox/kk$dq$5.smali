.class Lcom/bytedance/msdk/dq/ox/kk$dq$5;
.super Lcom/bytedance/msdk/api/p/dq/mn/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/kk$dq;->q()Lcom/bytedance/msdk/api/p/dq/mn/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/kk$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/kk$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/mn/iw;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle native : reportVideoAutoStart "

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->p()V

    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pangle native : reportVideoContinue playingTime = "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->d(J)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle native : reportVideoFinish "

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->ox()V

    :cond_0
    return-void
.end method

.method public dq(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle native : reportVideoStartError errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq(II)V

    :cond_0
    return-void
.end method

.method public dq(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pangle native : reportVideoPause playingTime = "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq(J)V

    :cond_0
    return-void
.end method

.method public dq(JII)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle native : reportVideoStartError playingTime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq(JII)V

    :cond_0
    return-void
.end method

.method public ox(J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pangle native : reportVideoBreak playingTime = "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/kk$dq$5;->dq:Lcom/bytedance/msdk/dq/ox/kk$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/kk$dq;->ce(Lcom/bytedance/msdk/dq/ox/kk$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->ox(J)V

    :cond_0
    return-void
.end method

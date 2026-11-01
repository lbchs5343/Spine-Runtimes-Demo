.class public abstract Lcom/bytedance/msdk/core/mn/dq/dq;
.super Lcom/bytedance/msdk/core/mn/d/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/mn/dq/dq$dq;
    }
.end annotation


# instance fields
.field private d:Z

.field private dq:Lcom/bytedance/msdk/core/mn/dq/dq$dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/d/dq;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->d:Z

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/mn/dq/dq;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/mn/dq/dq;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/mn/dq/dq;IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->d(IZ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/mn/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->d:Z

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/mn/dq/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v0

    const-string v1, "serverBidding_timeout"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    const-string v2, "wfRequestAfExchange with LabelValueAuto timeout:"

    invoke-static {v0, v1, v2}, Lg/tn;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->mn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/msdk/core/mn/dq/dq$dq;-><init>(Lcom/bytedance/msdk/core/mn/dq/dq;IZ)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq$dq;

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->mn()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->d(IZ)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq$dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq$dq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq$dq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public wp()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cancel wfRequestAfExchange with LabelValueAuto !!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/dq/dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq$dq;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

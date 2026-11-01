.class Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/kk/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    const-string v0, "TTMediationSDK"

    const-string v1, "CSJMSplashLoader onSplashAdLoadSuccess"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->d(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/msdk/core/admanager/no;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {v2}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;-><init>(Lcom/bytedance/msdk/core/admanager/no;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "CSJMSplashLoader onSplashAdLoadFail"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/dq;

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/gromore/dq/dq/dq;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/p$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/p;

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    :cond_0
    return-void
.end method

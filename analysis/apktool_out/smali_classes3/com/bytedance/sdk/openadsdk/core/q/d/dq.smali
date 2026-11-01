.class public Lcom/bytedance/sdk/openadsdk/core/q/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# instance fields
.field private d:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private dq:Lcom/bytedance/sdk/component/utils/e;

.field private ox:Ljava/lang/String;

.field private p:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->ox:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->s:Z

    return-void
.end method

.method private ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->s:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->d:Lcom/bytedance/sdk/component/widget/SSWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/u;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->ox()V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->s:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/d/dq;->ox()V

    return-void
.end method

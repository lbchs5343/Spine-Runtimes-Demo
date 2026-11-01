.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public dq(J)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getActivity()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jy(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

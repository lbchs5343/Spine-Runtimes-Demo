.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    move-result-object v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->p(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->p(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->s(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/o/d/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    :cond_3
    return-void
.end method

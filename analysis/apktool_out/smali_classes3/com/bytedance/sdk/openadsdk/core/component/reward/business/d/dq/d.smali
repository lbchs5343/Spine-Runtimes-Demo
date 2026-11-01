.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 5

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;->ox()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    const-string v2, "tt_retain_gift"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->no:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ig:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v1

    const-string v2, "\u575a\u6301\u9000\u51fa"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/res/s;->kk(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;Lcom/bytedance/sdk/openadsdk/core/widget/mn;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->show()V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const-string v0, ""

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "\u606d\u559c\u60a8\u5df2\u7ecf\u83b7\u5f97\u5956\u52b1\uff0c\u662f\u5426\u8981\u7ee7\u7eed\u89c2\u770b\u89c6\u9891\uff0c\u518d\u5f97\u8d85\u503c\u5956\u52b1"

    return-object v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->d()V

    :cond_0
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;


# instance fields
.field private fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 4

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;->ox()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    const-string v2, "tt_retain_gift"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed\u89c2\u770b"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v1

    const-string v2, "\u575a\u6301\u9000\u51fa"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/res/s;->kk(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->show()V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const-string v0, ""

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

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

.method public dq()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    const-string v1, "\u518d\u770b"

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->s:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    const-string v2, "s\uff0c\u5e76\u70b9\u51fb\u4e00\u4e0b\u5e7f\u544a\u53ef\u9886\u53d6\u5956\u52b1"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->s:Z

    if-eqz v0, :cond_2

    const-string v0, "\u5fd8\u8bb0\u70b9\u51fb\u5e7f\u544a\u9886\u53d6\u5956\u52b1\u5566\uff5e"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    const-string v2, "s\u53ef\u9886\u53d6\u5956\u52b1"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ox;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;


# instance fields
.field private cd:Ljava/lang/String;

.field private fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    const-string v1, "tt_reward_browse_multi_icon"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/res/s;->u(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Z)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rc()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "\u575a\u6301\u9000\u51fa"

    if-eqz v0, :cond_7

    const-string p2, "#FC1D56"

    const-string v4, "\u7ee7\u7eed\u89c2\u770b"

    const-string v5, "\u79d2\u53ef\u5f97\u5956\u52b1"

    const-string v6, "\u518d\u770b"

    const-string v7, "\u786e\u5b9a\u9000\u51fa\u5417?"

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->cd:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "remainTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_2
    invoke-static {v1, v6, v5}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->cd:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(I)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    const-string v1, "\u672a\u6ee1\u8db3\u5956\u52b1\u8981\u6c42\uff0c\u9700\u8981\u7ee7\u7eed\u6d4f\u89c8"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->cd:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    invoke-static {v1, v6, v5}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->cd:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    const-string v1, "tt_reward_coin"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object v0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(I)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/res/s;->kk(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void

    :cond_7
    const-string v0, "\u8bd5\u73a9\u65f6\u957f\u8fbe\u6807\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    if-eq v1, v2, :cond_a

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->ox:Z

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    const-string v0, "\u8bd5\u73a9\u540e\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    :cond_a
    :goto_2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->cd:Ljava/lang/String;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    const-string v0, "tt_retain_gift"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/res/s;->kk(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->p:Z

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/mn;->show()V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const-string v0, ""

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

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
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/ia;->fw:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

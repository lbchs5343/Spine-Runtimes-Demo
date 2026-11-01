.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;
.super Landroid/app/AlertDialog;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;
    }
.end annotation


# instance fields
.field protected final d:Lcom/bytedance/sdk/component/utils/e;

.field public dq:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private final ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;

.field private iw:Landroid/widget/TextView;

.field private kk:J

.field private final mn:Ljava/lang/String;

.field private o:Z

.field private ox:Landroid/content/Context;

.field private p:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->d:Lcom/bytedance/sdk/component/utils/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->o:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ox:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ox:Landroid/content/Context;

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->mn:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->o:Z

    const-wide/16 p1, 0x5

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->kk:J

    return-void

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->kk:J

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;

    return-object p0
.end method

.method private dq()V
    .locals 3

    const v0, 0x7e06ff77

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->p:Landroid/widget/TextView;

    const v0, 0x7e06feb9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->s:Landroid/widget/TextView;

    const v0, 0x7e06ff7e

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->iw:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->dq:Lcom/bytedance/sdk/openadsdk/core/d/d;

    const-string v2, "goLiveListener"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->iw:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;)V

    const-string v2, "cancelTv"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->kk:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->kk:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;->d(Landroid/app/Dialog;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d$dq;->dq(Landroid/app/Dialog;)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->o:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ox:Landroid/content/Context;

    const-string v1, "tt_reward_live_dialog_cancel_text"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/r;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->iw:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ox:Landroid/content/Context;

    const-string v2, "tt_reward_live_dialog_cancel_count_down_text"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/r;->dq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->iw:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->d:Lcom/bytedance/sdk/component/utils/e;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->dq:Lcom/bytedance/sdk/openadsdk/core/d/d;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->ox:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/res/s;->ce(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->d:Lcom/bytedance/sdk/component/utils/e;

    const/16 v0, 0x65

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->d:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->d:Lcom/bytedance/sdk/component/utils/e;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->d:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;->mn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

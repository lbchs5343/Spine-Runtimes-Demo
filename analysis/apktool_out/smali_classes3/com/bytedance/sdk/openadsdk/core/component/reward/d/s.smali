.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

.field private ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/p;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/s;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

.field private o:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/iw;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

.field private p:Landroid/widget/TextView;

.field private s:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/widget/TopProxyLayout;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const v1, 0x7e06ff0c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/widget/TopProxyLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Lcom/bytedance/sdk/openadsdk/widget/TopProxyLayout;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const v1, 0x7e06ff5e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const v1, 0x7e06ffc2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->d()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p:Landroid/widget/TextView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setShowDislike(Z)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/s;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/p;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setListener(Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;ZLcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 9

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->iw:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ia()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-object v4, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;Z)V

    move-object v6, v3

    move-object v7, v4

    move v8, v5

    iput-object v0, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/mn;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/s;

    iget-object v4, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v5, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;Z)V

    iput-object v3, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/s;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/p;

    iget-object v4, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v5, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;Z)V

    iput-object v3, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/p;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/iw;

    iget-object v4, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v5, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;Z)V

    iput-object v3, v7, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/iw;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/widget/TopProxyLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/RewardBrowserMixTopLayoutImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/RewardBrowserMixTopLayoutImpl;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/RewardBrowserMixTopLayoutImpl;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/component/reward/top/RewardBrowserMixTopLayoutImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/TopLayoutImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/TopLayoutImpl;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/TopLayoutImpl;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/component/reward/top/TopLayoutImpl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    goto :goto_1

    :cond_1
    const-string v1, "RewardFullTopProxyManager"

    const-string v2, "view not implements ITopLayout interface"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Lcom/bytedance/sdk/openadsdk/widget/TopProxyLayout;Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setPlayAgainEntranceText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->iw:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    return-void
.end method

.method public iw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setShowBack(Z)V

    :cond_0
    return-void
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/ugen/UgenBanner;->dq()V

    return-void
.end method

.method public mn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setShowAgain(Z)V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->ox()V

    :cond_0
    return-void
.end method

.method public ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setDislikeLeft(Z)V

    :cond_0
    return-void
.end method

.method public p()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->getCloseButton()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->setShowSound(Z)V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/dq;->getSkipOrCloseVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

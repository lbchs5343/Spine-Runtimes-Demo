.class public Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;
.super Landroid/app/Dialog;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/widget/TTDislikeLayout;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

.field private final ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

.field private p:Z

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->p:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    return-object p0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x3eae147b    # 0.34f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    return-object p0
.end method

.method private dq(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7a06fff7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7a06fff9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/widget/TTDislikeScrollListView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/widget/TTDislikeScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq()Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;)V

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/widget/TTDislikeScrollListView;->setDislikeController(Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->p:Z

    return p1
.end method

.method private ox()V
    .locals 1

    const v0, 0x7a06ffff    # 1.7524E35f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/widget/TTDislikeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->d:Lcom/bytedance/sdk/openadsdk/widget/TTDislikeLayout;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->p:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;->ox()V

    :cond_0
    return-void
.end method

.method public dq()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x43ac8000    # 345.0f

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->d:Lcom/bytedance/sdk/openadsdk/widget/TTDislikeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7a06fff9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/widget/TTDislikeScrollListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/widget/TTDislikeScrollListView;->setDislikeController(Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/res/p;->dq(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->ox()V

    return-void
.end method

.method public show()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->p:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

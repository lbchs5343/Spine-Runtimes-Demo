.class public Lcom/bytedance/sdk/openadsdk/core/component/dq/d;
.super Lcom/bytedance/sdk/openadsdk/f/d/dq;


# instance fields
.field private d:Landroid/graphics/Bitmap;

.field private dq:Z

.field private ia:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private final iw:Landroid/content/Context;

.field private kk:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field private final mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ox:I

.field private p:Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

.field private s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$3;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->kk:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->ia:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/dq;->kx()Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d;->ir()Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->kk:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    return-object p0
.end method

.method private dq(I)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->mn(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->s(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->iw(Landroid/content/Context;)Z

    :cond_2
    return v0

    :cond_3
    const/4 v1, 0x5

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->iw(Landroid/content/Context;)Z

    :cond_4
    return v0
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->ox:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->ox:I

    return-void

    :cond_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->ox:I

    :cond_1
    return-void
.end method


# virtual methods
.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/f/d/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->ig()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p3, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/dq;->iw()Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    move-object p4, p1

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p4, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/dq;->iw()Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {p6, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p6

    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p6

    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/dq;->iw()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->mn()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->i()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->d:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->ox:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->h()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->p:Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->dq:Z

    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;-><init>()V

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->iw:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->n()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/d;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$ox;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/d;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$p;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$ox;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->dq(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->p(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V

    move-object v3, v0

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->dq:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->setCanInterruptVideoPlay(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move-object v4, v0

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->ox:I

    invoke-virtual {v4, v3, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->dq(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->p:Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v0, v1

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq()Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ji()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->dq(JZZ)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public wp()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/dq;->wp()V

    return-void
.end method

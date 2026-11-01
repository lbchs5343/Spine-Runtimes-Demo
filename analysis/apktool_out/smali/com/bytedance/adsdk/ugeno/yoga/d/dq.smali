.class public Lcom/bytedance/adsdk/ugeno/yoga/d/dq;
.super Lg/eyh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/eyh;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/adsdk/ugeno/yoga/s;

.field private nt:Lcom/bytedance/adsdk/ugeno/yoga/dq;

.field private ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

.field private ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

.field private p:Lcom/bytedance/adsdk/ugeno/yoga/iw;

.field private tv:Lcom/bytedance/adsdk/ugeno/yoga/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/eyh;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/s;->ox:Lcom/bytedance/adsdk/ugeno/yoga/s;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->d:Lcom/bytedance/adsdk/ugeno/yoga/s;

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/q;->dq:Lcom/bytedance/adsdk/ugeno/yoga/q;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/iw;->dq:Lcom/bytedance/adsdk/ugeno/yoga/iw;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->p:Lcom/bytedance/adsdk/ugeno/yoga/iw;

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/dq;->s:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->nt:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->tv:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)F
    .locals 0

    iget p0, p0, Lg/dlv;->ob:F

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dlv;->s:Landroid/content/Context;

    return-object p0
.end method

.method private dq(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;-><init>(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public synthetic dq()Lg/ewk;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->xz()Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lg/dlv;->t:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    new-instance p1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;-><init>(II)V

    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/mp;->ox:Lcom/bytedance/adsdk/ugeno/yoga/mp;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/yoga/mp;->dq()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->iw(F)V

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->dq(Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 0

    invoke-super {p0, p1}, Lg/eyh;->dq(Lg/dlv;)V

    return-void
.end method

.method public dq(Lg/dlv;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eyh;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "justifyContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "flexWrap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "alignContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "flexDirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "alignItems"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/iw;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/iw;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->p:Lcom/bytedance/adsdk/ugeno/yoga/iw;

    return-void

    :pswitch_1
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/q;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-void

    :pswitch_2
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/dq;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->tv:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    return-void

    :pswitch_3
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/s;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->d:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-void

    :pswitch_4
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/dq;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->nt:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f600445 -> :sswitch_4
        -0x3a1ff07a -> :sswitch_3
        -0x2cdbca4c -> :sswitch_2
        0x67f69fe3 -> :sswitch_1
        0x6ee75fc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public no()V
    .locals 6

    iget-boolean v0, p0, Lg/dlv;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/dlv;->n:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/dlv;->bl:F

    :goto_0
    iget-boolean v1, p0, Lg/dlv;->ce:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lg/dlv;->op:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lg/dlv;->bl:F

    :goto_1
    iget-boolean v2, p0, Lg/dlv;->er:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lg/dlv;->ir:F

    goto :goto_2

    :cond_2
    iget v2, p0, Lg/dlv;->bl:F

    :goto_2
    iget-boolean v3, p0, Lg/dlv;->wn:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lg/dlv;->u:F

    goto :goto_3

    :cond_3
    iget v3, p0, Lg/dlv;->bl:F

    :goto_3
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    sget-object v5, Lcom/bytedance/adsdk/ugeno/yoga/p;->dq:Lcom/bytedance/adsdk/ugeno/yoga/p;

    invoke-virtual {v4, v5, v0}, Lcom/bytedance/adsdk/ugeno/yoga/o;->d(Lcom/bytedance/adsdk/ugeno/yoga/p;F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    sget-object v4, Lcom/bytedance/adsdk/ugeno/yoga/p;->ox:Lcom/bytedance/adsdk/ugeno/yoga/p;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->d(Lcom/bytedance/adsdk/ugeno/yoga/p;F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/p;->d:Lcom/bytedance/adsdk/ugeno/yoga/p;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/o;->d(Lcom/bytedance/adsdk/ugeno/yoga/p;F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/p;->p:Lcom/bytedance/adsdk/ugeno/yoga/p;

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/adsdk/ugeno/yoga/o;->d(Lcom/bytedance/adsdk/ugeno/yoga/p;F)V

    return-void
.end method

.method public synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->uh()Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 2

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->d:Lcom/bytedance/adsdk/ugeno/yoga/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/s;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/q;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->p:Lcom/bytedance/adsdk/ugeno/yoga/iw;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/iw;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->nt:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->dq(Lcom/bytedance/adsdk/ugeno/yoga/dq;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->tv:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->ox(Lcom/bytedance/adsdk/ugeno/yoga/dq;)V

    return-void
.end method

.method public uh()Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->dq(Lg/dlv;)V

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/o;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ny:Lcom/bytedance/adsdk/ugeno/yoga/o;

    return-object v0
.end method

.method public wp()V
    .locals 10

    iget-boolean v0, p0, Lg/dlv;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v1, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v2, p0, Lg/dlv;->nh:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;

    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;-><init>(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)V

    invoke-interface {v0, v1, v2, v3}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    return-void

    :cond_0
    new-instance v7, Landroid/widget/ImageView;

    iget-object v0, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v5, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v6, p0, Lg/dlv;->nh:Ljava/lang/String;

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Landroid/widget/ImageView;II)V

    iget-boolean v0, p0, Lg/dlv;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/dlv;->vf:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;-><init>(II)V

    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/mp;->ox:Lcom/bytedance/adsdk/ugeno/yoga/mp;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/yoga/mp;->dq()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->iw(F)V

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v0}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v7}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->dq(Landroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method public xz()Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;-><init>(Lg/eyh;)V

    return-object v0
.end method

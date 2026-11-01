.class public Lg/fde;
.super Lg/dlv;


# instance fields
.field protected d:Landroid/widget/ImageView$ScaleType;

.field protected dq:Ljava/lang/String;

.field private nt:F

.field protected ox:Z

.field private p:I

.field private tv:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/dlv;-><init>(Landroid/content/Context;I)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lg/fde;->d:Landroid/widget/ImageView$ScaleType;

    const/4 p1, -0x1

    iput p1, p0, Lg/fde;->p:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lg/fde;->nt:F

    iput p1, p0, Lg/fde;->tv:F

    return-void
.end method

.method public static synthetic d(Lg/fde;)F
    .locals 0

    iget p0, p0, Lg/fde;->nt:F

    return p0
.end method

.method public static synthetic dq(Lg/fde;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dlv;->s:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic ia(Lg/fde;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dlv;->s:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic iw(Lg/fde;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dlv;->s:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic kk(Lg/fde;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dlv;->s:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic mn(Lg/fde;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic no(Lg/fde;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic o(Lg/fde;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic ox(Lg/fde;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic p(Lg/fde;)F
    .locals 0

    iget p0, p0, Lg/fde;->tv:F

    return p0
.end method

.method public static synthetic s(Lg/fde;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/dlv;->s:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    invoke-virtual {v0, p1}, Lg/cdf;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public dq()Lg/cdf;
    .locals 2

    new-instance v0, Lg/cdf;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/cdf;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lg/cdf;->e:Lg/dlv;

    return-object v0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "imageBgBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "tintColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "isBgGaussianBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "imageBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "scaleType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "scaleMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_1
    const/high16 v0, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    invoke-static {v0, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/fde;->tv:F

    return-void

    :pswitch_1
    const/high16 p1, -0x1000000

    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/fde;->p:I

    return-void

    :pswitch_2
    iput-object p2, p0, Lg/fde;->dq:Ljava/lang/String;

    return-void

    :pswitch_3
    invoke-static {p2, v8}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/fde;->ox:Z

    return-void

    :pswitch_4
    invoke-static {v0, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/fde;->nt:F

    return-void

    :pswitch_5
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_3
    const/4 v1, -0x1

    goto :goto_4

    :sswitch_7
    const-string v0, "centerCrop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x7

    goto :goto_4

    :sswitch_8
    const-string v0, "fitCenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_3

    :sswitch_9
    const-string v0, "crop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x5

    goto :goto_4

    :sswitch_a
    const-string v0, "fit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_b
    const-string v0, "centerInside"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_c
    const-string v0, "fitStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_d
    const-string v0, "fitEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_e
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_6
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_8
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_9
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_a
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_b
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_5
    iput-object p1, p0, Lg/fde;->d:Landroid/widget/ImageView$ScaleType;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ff1fdf3 -> :sswitch_6
        -0x6feea85c -> :sswitch_5
        -0x345fd79e -> :sswitch_4
        -0x16313a4f -> :sswitch_3
        0x1bde4 -> :sswitch_2
        0x4f219128 -> :sswitch_1
        0x63d9eb87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_e
        -0x4bf440f6 -> :sswitch_d
        -0x1f1fd52f -> :sswitch_c
        -0x144ecb4f -> :sswitch_b
        0x18c11 -> :sswitch_a
        0x2eba90 -> :sswitch_9
        0x1f0a33c6 -> :sswitch_8
        0x453ac885 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public ia()V
    .locals 3

    invoke-super {p0}, Lg/dlv;->ia()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lg/agk;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/agk;->w(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    invoke-static {v0}, Lg/agk;->l(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_0
    return-void
.end method

.method public ia(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/fde;->dq:Ljava/lang/String;

    return-void
.end method

.method public mn()V
    .locals 3

    invoke-super {p0}, Lg/dlv;->mn()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    new-instance v1, Lg/dyn;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lg/fde;->dq()Lg/cdf;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 8

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/cdf;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    const-string v1, "local://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/cdf;

    iget-object v2, p0, Lg/dlv;->s:Landroid/content/Context;

    const-string v3, "drawable"

    invoke-static {v2, v0, v3}, Lg/acw;->as(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lg/cdf;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    nop

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/cdf;

    invoke-virtual {v1, v0}, Lg/cdf;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lg/fde;->nt:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v1, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v2, p0, Lg/fde;->dq:Ljava/lang/String;

    new-instance v3, Lg/eie;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2, v3}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v3, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v4, p0, Lg/fde;->dq:Ljava/lang/String;

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    check-cast v0, Lg/cdf;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Landroid/widget/ImageView;II)V

    iget-boolean v0, p0, Lg/fde;->ox:Z

    if-nez v0, :cond_4

    iget v0, p0, Lg/fde;->tv:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    :cond_4
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v1, p0, Lg/dlv;->ig:Lg/dmm;

    iget-object v2, p0, Lg/fde;->dq:Ljava/lang/String;

    new-instance v3, Lg/fnq;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2, v3}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    iget-object v1, p0, Lg/fde;->d:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lg/cdf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    iget v1, p0, Lg/dlv;->dc:I

    invoke-virtual {v0, v1}, Lg/cdf;->setBorderColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    iget v1, p0, Lg/dlv;->gx:F

    invoke-virtual {v0, v1}, Lg/cdf;->setCornerRadius(F)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    iget v1, p0, Lg/dlv;->cv:F

    invoke-virtual {v0, v1}, Lg/cdf;->setBorderWidth(F)V

    iget v0, p0, Lg/fde;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/cdf;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6
    return-void
.end method

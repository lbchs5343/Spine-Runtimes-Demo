.class public Lg/fzx;
.super Lg/dlv;


# instance fields
.field public aa:Landroid/widget/ImageView$ScaleType;

.field public final ab:Ljava/util/HashMap;

.field public ac:Z

.field public ad:I

.field public ae:F

.field public af:Ljava/lang/String;

.field public ag:Landroid/widget/ImageView$ScaleType;

.field public ah:Ljava/lang/String;

.field public ai:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/dlv;-><init>(Landroid/content/Context;I)V

    const-string p1, "images"

    iput-object p1, p0, Lg/fzx;->ah:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lg/fzx;->ai:F

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lg/fzx;->aa:Landroid/widget/ImageView$ScaleType;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lg/fzx;->ag:Landroid/widget/ImageView$ScaleType;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fzx;->ab:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->dq()V

    return-void
.end method

.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
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

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "autoReverse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "scaleType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "scaleMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_1
    const-string v0, "center"

    packed-switch p1, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    invoke-static {p2, v6}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    return-void

    :pswitch_1
    invoke-static {p2, v7}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    return-void

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/fzx;->ai:F

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {p2, v7}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/fzx;->ad:I

    return-void

    :cond_b
    invoke-static {p2, v7}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/fzx;->ac:Z

    return-void

    :pswitch_4
    iput-object p2, p0, Lg/fzx;->af:Ljava/lang/String;

    return-void

    :pswitch_5
    invoke-static {p2, v7}, Lg/byh;->ao(Ljava/lang/String;Z)Z

    return-void

    :pswitch_6
    iput-object p2, p0, Lg/fzx;->ah:Ljava/lang/String;

    return-void

    :pswitch_7
    const/4 p1, 0x0

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/fzx;->ae:F

    return-void

    :pswitch_8
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_3
    const/4 v1, -0x1

    goto :goto_4

    :sswitch_a
    const-string v0, "centerCrop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_3

    :sswitch_b
    const-string v0, "fitCenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_c
    const-string v0, "centerInside"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_d
    const-string v0, "fitStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_e
    const-string v0, "fitEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_3

    :cond_f
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_3

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_9
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_a
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_b
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_c
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_d
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :pswitch_e
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_5
    iput-object p1, p0, Lg/fzx;->aa:Landroid/widget/ImageView$ScaleType;

    return-void

    :pswitch_f
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_6
    const/4 v3, -0x1

    goto :goto_7

    :sswitch_10
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_6

    :sswitch_11
    const-string v0, "crop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_6

    :cond_12
    const/4 v3, 0x2

    goto :goto_7

    :sswitch_12
    const-string v0, "fit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_6

    :cond_13
    const/4 v3, 0x1

    goto :goto_7

    :sswitch_13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    :cond_15
    :goto_7
    packed-switch v3, :pswitch_data_2

    goto :goto_8

    :pswitch_10
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_8

    :pswitch_11
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_8

    :pswitch_12
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_8
    iput-object p1, p0, Lg/fzx;->ag:Landroid/widget/ImageView$ScaleType;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ff1fdf3 -> :sswitch_9
        -0x6feea85c -> :sswitch_8
        -0x3bab3dd3 -> :sswitch_7
        -0x3459a3e0 -> :sswitch_6
        -0x115be5cd -> :sswitch_5
        0x1bde4 -> :sswitch_4
        0x32c6a4 -> :sswitch_3
        0x6890047 -> :sswitch_2
        0x55bf6d83 -> :sswitch_1
        0x55cdf963 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_f
        -0x4bf440f6 -> :sswitch_e
        -0x1f1fd52f -> :sswitch_d
        -0x144ecb4f -> :sswitch_c
        0x1f0a33c6 -> :sswitch_b
        0x453ac885 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_13
        0x18c11 -> :sswitch_12
        0x2eba90 -> :sswitch_11
        0x33af38 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lg/fzx;->y()Lg/gkb;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 4

    invoke-super {p0}, Lg/dlv;->p()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget v1, p0, Lg/fzx;->ae:F

    invoke-virtual {v0, v1}, Lg/gkb;->setProgress(F)V

    iget v0, p0, Lg/fzx;->ai:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/fzx;->ai:F

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget v1, p0, Lg/fzx;->ai:F

    invoke-virtual {v0, v1}, Lg/gkb;->setSpeed(F)V

    iget-object v0, p0, Lg/fzx;->af:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/fzx;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "shake_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v3, "lottie_json/shake_phone.json"

    goto :goto_0

    :cond_3
    const-string v1, "swipe_right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "lottie_json/swipe_right.json"

    :cond_4
    :goto_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    invoke-virtual {v0, v3}, Lg/gkb;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget-object v1, p0, Lg/fzx;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/gkb;->setImageAssetsFolder(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget-object v1, p0, Lg/fzx;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/gkb;->setAnimationFromUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    new-instance v1, Lg/emr;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/gkb;->setImageAssetDelegate(Lg/fsj;)V

    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget-object v1, p0, Lg/fzx;->ag:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget-object v1, p0, Lg/fzx;->aa:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_2
    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget v1, p0, Lg/fzx;->ad:I

    invoke-virtual {v0, v1}, Lg/gkb;->setRepeatCount(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    iget-boolean v1, p0, Lg/fzx;->ac:Z

    invoke-virtual {v0, v1}, Lg/gkb;->dq(Z)V

    :goto_3
    invoke-virtual {p0}, Lg/fzx;->d()V

    return-void
.end method

.method public y()Lg/gkb;
    .locals 2

    new-instance v0, Lg/gkb;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/gkb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lg/gkb;->dq(Lg/eun;)V

    return-object v0
.end method

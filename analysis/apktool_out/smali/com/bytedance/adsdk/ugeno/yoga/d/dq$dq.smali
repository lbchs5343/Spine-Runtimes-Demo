.class public Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;
.super Lg/ewk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/yoga/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public bl:F

.field public c:I

.field public ce:F

.field public e:I

.field private er:Z

.field public h:F

.field public ir:I

.field private j:Z

.field public ji:I

.field public kx:F

.field public n:I

.field private nh:Z

.field private ob:Z

.field public op:I

.field public u:I

.field private vf:Z

.field private wn:Z


# direct methods
.method public constructor <init>(Lg/eyh;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/ewk;-><init>(Lg/eyh;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->kx:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->h:F

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/dq;->dq:Lcom/bytedance/adsdk/ugeno/yoga/dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/dq;->dq()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ji:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->bl:F

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/mp;->d:Lcom/bytedance/adsdk/ugeno/yoga/mp;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/mp;->dq()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->n:I

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;
    .locals 3

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    iget v1, p0, Lg/ewk;->dq:F

    float-to-int v1, v1

    iget v2, p0, Lg/ewk;->d:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;-><init>(II)V

    iget-boolean v1, p0, Lg/ewk;->gh:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lg/ewk;->iw:F

    :goto_0
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->ig(F)V

    iget-boolean v1, p0, Lg/ewk;->r:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lg/ewk;->mn:F

    :goto_2
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_3

    :cond_1
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->q(F)V

    iget-boolean v1, p0, Lg/ewk;->i:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lg/ewk;->ia:F

    :goto_4
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_5

    :cond_2
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->no(F)V

    iget-boolean v1, p0, Lg/ewk;->le:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lg/ewk;->kk:F

    :goto_6
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_7

    :cond_3
    iget v1, p0, Lg/ewk;->s:F

    goto :goto_6

    :goto_7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->mp(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->dq(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ji:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->s(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->kx:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->d(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->h:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->ox(F)V

    iget v1, p0, Lg/ewk;->ox:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->f(F)V

    iget v1, p0, Lg/ewk;->p:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->fw(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->er:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->bl:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->p(F)V

    :cond_4
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->iw(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->wn:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->op:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->mn(F)V

    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->j:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ir:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->kk(F)V

    :cond_6
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->nh:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->ia(F)V

    :cond_7
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->vf:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->o(F)V

    :cond_8
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ob:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ox()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ce:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_9

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;->jy(F)V

    :cond_9
    return-object v0
.end method

.method public synthetic dq()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->d()Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout$dq;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lg/ewk;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alignSelf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "flexGrow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "flexShrink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "position"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "ratio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "order"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "flexBasis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    const/4 p2, 0x0

    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/yoga/dq;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/dq;->dq()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ji:I

    return-void

    :pswitch_1
    invoke-static {p2, p3}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->kx:F

    return-void

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->h:F

    return-void

    :pswitch_3
    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/yoga/mp;->dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/mp;->dq()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->n:I

    return-void

    :pswitch_4
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->vf:Z

    invoke-static {p3, v1}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->c:I

    return-void

    :pswitch_5
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ob:Z

    invoke-static {p2, p3}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ce:F

    return-void

    :pswitch_6
    invoke-static {p3, v2}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->e:I

    return-void

    :pswitch_7
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->nh:Z

    invoke-static {p3, v1}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->u:I

    return-void

    :pswitch_8
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->wn:Z

    invoke-static {p3, v1}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->op:I

    return-void

    :pswitch_9
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->j:Z

    invoke-static {p3, v1}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ir:I

    return-void

    :pswitch_a
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->er:Z

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p1, p3}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->bl:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a52083b -> :sswitch_a
        -0x527265d5 -> :sswitch_9
        0x1c155 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x651874e -> :sswitch_6
        0x674500b -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x2c929929 -> :sswitch_3
        0x3d759362 -> :sswitch_2
        0x67ef5bac -> :sswitch_1
        0x6953cff1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
.end method

.method public ox()Z
    .locals 4

    iget v0, p0, Lg/ewk;->dq:F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    iget v3, p0, Lg/ewk;->d:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lg/ewk;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutParams{mOrder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexGrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->kx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexShrink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAlignSelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ji:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexBasis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->bl:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->ir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$dq;->c:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

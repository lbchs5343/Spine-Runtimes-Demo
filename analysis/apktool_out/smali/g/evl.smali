.class public final Lg/evl;
.super Lg/duu;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lg/dlv;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0

    iput p5, p0, Lg/evl;->a:I

    invoke-direct {p0, p1, p2, p3, p4}, Lg/duu;-><init>(Landroid/content/Context;Lg/dlv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lg/evl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/duu;->f:Lg/aiu;

    sget-object v1, Lg/aiu;->no:Lg/aiu;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/duu;->l:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->er()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v0

    iget-object v1, p0, Lg/duu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lg/act;->a:[I

    iget-object v1, p0, Lg/duu;->f:Lg/aiu;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lg/duu;->l:Lg/dlv;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lg/dlv;->r()F

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lg/dlv;->gh()F

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lg/dlv;->cd()F

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lg/dlv;->fw()F

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lg/dlv;->f()F

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {v1}, Lg/dlv;->jy()F

    move-result v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {v1}, Lg/dlv;->q()F

    move-result v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {v1}, Lg/dlv;->mp()F

    move-result v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {v1}, Lg/dlv;->ig()F

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    iget-object v1, p0, Lg/duu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d(FLjava/lang/String;)V
    .locals 3

    iget v0, p0, Lg/evl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/duu;->f:Lg/aiu;

    sget-object v1, Lg/aiu;->no:Lg/aiu;

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {p2, v0}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lg/duu;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    sget-object v0, Lg/aiu;->dq:Lg/aiu;

    invoke-virtual {v0}, Lg/aiu;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/duu;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/duu;->f:Lg/aiu;

    sget-object v2, Lg/aiu;->ig:Lg/aiu;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lg/duu;->h:Landroid/content/Context;

    invoke-static {v1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p2

    invoke-static {v0, p2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p2

    :goto_2
    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p1

    iget-object p2, p0, Lg/duu;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Landroid/animation/TypeEvaluator;
    .locals 2

    iget v0, p0, Lg/evl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/duu;->f:Lg/aiu;

    sget-object v1, Lg/aiu;->no:Lg/aiu;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

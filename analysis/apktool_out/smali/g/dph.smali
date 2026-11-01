.class public final Lg/dph;
.super Lg/cav;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lg/dph;->a:I

    invoke-direct {p0, p2}, Lg/cej;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final b(Lg/flj;F)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/dph;->a:I

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p1, Lg/flj;->r:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lg/bil;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p1, Lg/flj;->p:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lg/bil;

    :goto_1
    return-object p2

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lg/dph;->c(Lg/flj;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lg/dph;->c(Lg/flj;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lg/flj;F)I
    .locals 3

    iget v0, p0, Lg/dph;->a:I

    const-string v1, "Missing values for keyframe."

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lg/flj;->r:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget v1, p1, Lg/flj;->e:I

    const v2, 0x2ec8fb09

    if-ne v1, v2, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lg/flj;->e:I

    :cond_0
    iget v0, p1, Lg/flj;->e:I

    iget v1, p1, Lg/flj;->i:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lg/flj;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lg/flj;->i:I

    :cond_1
    iget p1, p1, Lg/flj;->i:I

    sget-object v1, Lg/din;->a:Landroid/graphics/PointF;

    int-to-float v1, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p2, p2, p1

    add-float/2addr p2, v1

    float-to-int p1, p2

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p1, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lg/flj;->r:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lg/din;->c(FFF)F

    move-result p2

    iget-object v0, p1, Lg/flj;->p:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lg/flj;->r:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p2, p1}, Lg/aky;->g(IFI)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

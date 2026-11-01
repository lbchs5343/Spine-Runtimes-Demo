.class public final Lg/exi;
.super Lg/cav;


# instance fields
.field public final synthetic a:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    iput p1, p0, Lg/exi;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p2}, Lg/cej;-><init>(Ljava/util/List;)V

    new-instance p1, Lg/aof;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2}, Lg/aof;-><init>(FF)V

    iput-object p1, p0, Lg/exi;->c:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lg/cej;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/flj;

    iget-object p2, p2, Lg/flj;->p:Ljava/lang/Object;

    check-cast p2, Lg/fns;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lg/fns;->b:[I

    array-length p1, p1

    :goto_0
    new-instance p2, Lg/fns;

    new-array v0, p1, [F

    new-array p1, p1, [I

    invoke-direct {p2, v0, p1}, Lg/fns;-><init>([F[I)V

    iput-object p2, p0, Lg/exi;->c:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lg/cej;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lg/exi;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lg/flj;F)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lg/exi;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/exi;->c:Ljava/lang/Object;

    check-cast v0, Lg/fns;

    iget-object v1, p1, Lg/flj;->p:Ljava/lang/Object;

    check-cast v1, Lg/fns;

    iget-object p1, p1, Lg/flj;->r:Ljava/lang/Object;

    check-cast p1, Lg/fns;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lg/fns;->b:[I

    array-length v3, v2

    iget-object v4, p1, Lg/fns;->b:[I

    array-length v5, v4

    if-ne v3, v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    iget-object v5, v0, Lg/fns;->a:[F

    iget-object v6, v1, Lg/fns;->a:[F

    aget v6, v6, v3

    iget-object v7, p1, Lg/fns;->a:[F

    aget v7, v7, v3

    invoke-static {v6, v7, p2}, Lg/din;->d(FFF)F

    move-result v6

    aput v6, v5, v3

    iget-object v5, v0, Lg/fns;->b:[I

    aget v6, v2, v3

    aget v7, v4, v3

    invoke-static {v6, p2, v7}, Lg/aky;->g(IFI)I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    const-string v1, ")"

    invoke-static {p2, v0, v1}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p2}, Lg/exi;->r(Lg/flj;FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lg/exi;->c:Ljava/lang/Object;

    check-cast v0, Lg/aof;

    iget-object v1, p1, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lg/flj;->r:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast v1, Lg/aof;

    check-cast p1, Lg/aof;

    iget v2, v1, Lg/aof;->a:F

    iget v3, p1, Lg/aof;->a:F

    invoke-static {v2, v3, p2}, Lg/din;->d(FFF)F

    move-result v2

    iget v1, v1, Lg/aof;->b:F

    iget p1, p1, Lg/aof;->b:F

    invoke-static {v1, p1, p2}, Lg/din;->d(FFF)F

    move-result p1

    iput v2, v0, Lg/aof;->a:F

    iput p1, v0, Lg/aof;->b:F

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic o(Lg/flj;FFF)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/exi;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lg/cej;->o(Lg/flj;FFF)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lg/exi;->r(Lg/flj;FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lg/flj;FF)Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lg/exi;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p1, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lg/flj;->r:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast v1, Landroid/graphics/PointF;

    check-cast p1, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v2, p2, v2}, Lg/awf;->g(FFFF)F

    move-result p2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1, p3, v1}, Lg/awf;->g(FFFF)F

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

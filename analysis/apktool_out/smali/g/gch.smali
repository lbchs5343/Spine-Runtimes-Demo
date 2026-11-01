.class public final Lg/gch;
.super Lg/cej;


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public final c:Lg/bsb;

.field public final r:Landroid/graphics/PointF;

.field public final s:Lg/bsb;


# direct methods
.method public constructor <init>(Lg/bsb;Lg/bsb;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lg/cej;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lg/gch;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lg/gch;->r:Landroid/graphics/PointF;

    iput-object p1, p0, Lg/gch;->s:Lg/bsb;

    iput-object p2, p0, Lg/gch;->c:Lg/bsb;

    iget p1, p0, Lg/cej;->d:F

    invoke-virtual {p0, p1}, Lg/gch;->p(F)V

    return-void
.end method


# virtual methods
.method public final b(Lg/flj;F)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lg/gch;->a:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    iget-object v1, p0, Lg/gch;->r:Landroid/graphics/PointF;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object v1
.end method

.method public final m()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/gch;->a:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    iget-object v3, p0, Lg/gch;->r:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object v3
.end method

.method public final p(F)V
    .locals 2

    iget-object v0, p0, Lg/gch;->s:Lg/bsb;

    invoke-virtual {v0, p1}, Lg/cej;->p(F)V

    iget-object v1, p0, Lg/gch;->c:Lg/bsb;

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    invoke-virtual {v0}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lg/gch;->a:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lg/cej;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fyj;

    invoke-interface {v0}, Lg/fyj;->dq()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

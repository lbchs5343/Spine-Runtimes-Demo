.class public final Lg/eqa;
.super Lg/cav;


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public c:Lg/epo;

.field public final r:[F

.field public final s:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/cej;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lg/eqa;->a:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lg/eqa;->r:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lg/eqa;->s:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public final b(Lg/flj;F)Ljava/lang/Object;
    .locals 4

    move-object v0, p1

    check-cast v0, Lg/epo;

    iget-object v1, v0, Lg/epo;->a:Landroid/graphics/Path;

    if-nez v1, :cond_0

    iget-object p1, p1, Lg/flj;->p:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    :cond_0
    iget-object p1, p0, Lg/eqa;->c:Lg/epo;

    const/4 v2, 0x0

    iget-object v3, p0, Lg/eqa;->s:Landroid/graphics/PathMeasure;

    if-eq p1, v0, :cond_1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lg/eqa;->c:Lg/epo;

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    mul-float p1, p1, p2

    const/4 p2, 0x0

    iget-object v0, p0, Lg/eqa;->r:[F

    invoke-virtual {v3, p1, v0, p2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget p1, v0, v2

    const/4 p2, 0x1

    aget p2, v0, p2

    iget-object v0, p0, Lg/eqa;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object v0
.end method

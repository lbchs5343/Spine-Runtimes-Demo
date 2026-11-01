.class public abstract Lg/elw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final t:Landroid/graphics/PathMeasure;

.field public final u:Landroid/graphics/Matrix;

.field public final v:Lg/dzw;

.field public final w:Landroid/graphics/Path;

.field public final x:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lg/dzw;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/elw;->w:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/elw;->x:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lg/elw;->t:Landroid/graphics/PathMeasure;

    iput-object p1, p0, Lg/elw;->v:Lg/dzw;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lg/elw;->u:Landroid/graphics/Matrix;

    return-void
.end method

.method public static y([F)F
    .locals 4

    const/4 v0, 0x1

    aget v0, p0, v0

    float-to-double v0, v0

    const/4 v2, 0x0

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public abstract k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
.end method

.method public abstract l()I
.end method

.method public abstract m(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
.end method

.method public abstract n()I
.end method

.method public abstract p(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
.end method

.method public abstract r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/agm;I)V
.end method

.method public abstract s()V
.end method

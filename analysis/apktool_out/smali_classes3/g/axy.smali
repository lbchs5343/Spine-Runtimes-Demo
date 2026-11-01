.class public final Lg/axy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lg/axy;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lg/axy;->b:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/axy;->c:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lg/axy;->a:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lg/axy;->b:[F

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lg/axy;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final d(F)V
    .locals 5

    iget-object v0, p0, Lg/axy;->a:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v4, v0, v2

    mul-float v4, v4, p1

    aput v4, v0, v2

    iget-object v0, p0, Lg/axy;->b:[F

    aget v4, v0, v1

    mul-float v4, v4, v3

    aput v4, v0, v1

    aget v1, v0, v2

    mul-float v1, v1, p1

    aput v1, v0, v2

    return-void
.end method

.method public final e(F)V
    .locals 3

    iget-object v0, p0, Lg/axy;->a:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x1

    aget v1, v0, p1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    aput v1, v0, p1

    return-void
.end method

.method public final f(F)V
    .locals 13

    iget-object v0, p0, Lg/axy;->b:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v0, v0, v4

    float-to-double v5, v0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v5

    double-to-float v0, v2

    iget-object v2, p0, Lg/axy;->a:[F

    aget v3, v2, v4

    float-to-double v5, v3

    float-to-double v7, p1

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    add-double/2addr v11, v5

    double-to-float p1, v11

    aput p1, v2, v4

    aget p1, v2, v1

    float-to-double v3, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v7

    add-double/2addr v5, v3

    double-to-float p1, v5

    aput p1, v2, v1

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lg/axy;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lg/axy;->b:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lg/axy;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method public final h(F)V
    .locals 1

    iget-object v0, p0, Lg/axy;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p1, p0, Lg/axy;->a:[F

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lg/axy;->b:[F

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

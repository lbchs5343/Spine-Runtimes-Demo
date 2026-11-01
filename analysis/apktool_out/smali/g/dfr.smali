.class public final Lg/dfr;
.super Lg/cw;


# static fields
.field public static final j:F

.field public static final k:F

.field public static final l:F


# instance fields
.field public m:I

.field public n:I

.field public o:F

.field public p:Landroid/graphics/Path;

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Path;

.field public u:Z

.field public v:I

.field public w:F

.field public x:Lg/coy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Lg/dfr;->j:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Lg/dfr;->k:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lg/dfr;->l:F

    return-void
.end method


# virtual methods
.method public final d(II)V
    .locals 2

    iput p1, p0, Lg/dfr;->n:I

    iput p2, p0, Lg/dfr;->r:I

    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lg/dfr;->t:Landroid/graphics/Path;

    iget p2, p0, Lg/dfr;->w:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/dfr;->s:Landroid/graphics/Paint;

    iget-object v3, v0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v3, Lg/dlv;

    iget-object v4, v0, Lg/dfr;->p:Landroid/graphics/Path;

    :try_start_0
    invoke-virtual {v3}, Lg/dlv;->l()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, v0, Lg/dfr;->n:I

    int-to-float v5, v5

    sget v7, Lg/dfr;->j:F

    mul-float v8, v7, v5

    add-float/2addr v8, v5

    invoke-virtual {v3}, Lg/dlv;->l()F

    move-result v3

    mul-float v10, v8, v3

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v0, Lg/dfr;->r:I

    int-to-float v3, v3

    mul-float v7, v7, v3

    sub-float v5, v10, v7

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Lg/dfr;->q:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    iget v3, v0, Lg/dfr;->r:I

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Lg/dfr;->q:I

    int-to-float v3, v3

    add-float/2addr v3, v10

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget v3, v0, Lg/dfr;->o:F

    sget v5, Lg/dfr;->k:F

    mul-float v5, v5, v3

    sget v6, Lg/dfr;->l:F

    mul-float v13, v3, v6

    iget-boolean v3, v0, Lg/dfr;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lg/dfr;->x:Lg/coy;

    if-eqz v3, :cond_0

    new-instance v9, Landroid/graphics/LinearGradient;

    add-float v12, v10, v5

    iget-object v3, v0, Lg/dfr;->x:Lg/coy;

    iget-object v14, v3, Lg/coy;->b:[I

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/graphics/LinearGradient;

    add-float v12, v10, v5

    iget v3, v0, Lg/dfr;->v:I

    iget v5, v0, Lg/dfr;->m:I

    filled-new-array {v3, v5, v3}, [I

    move-result-object v14

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_0
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lg/dfr;->t:Landroid/graphics/Path;

    if-eqz v3, :cond_1

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_1
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v0, Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "shineWidth"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lg/dfr;->q:I

    const-string v0, "backgroundColor"

    const-string v2, "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v0, "linear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lg/bff;->ak(Ljava/lang/String;)Lg/coy;

    move-result-object v0

    iput-object v0, p0, Lg/dfr;->x:Lg/coy;

    goto :goto_1

    :cond_1
    const/high16 v0, -0x1000000

    invoke-static {v2, v0}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lg/dfr;->m:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lg/dfr;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dfr;->u:Z

    :goto_1
    iget v0, p0, Lg/dfr;->q:I

    int-to-float v0, v0

    sget v1, Lg/dfr;->k:F

    mul-float v1, v1, v0

    iput v1, p0, Lg/dfr;->o:F

    return-void
.end method

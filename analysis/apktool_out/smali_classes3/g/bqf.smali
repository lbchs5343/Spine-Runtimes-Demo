.class public final Lg/bqf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/drawable/ColorDrawable;

.field public static final b:D


# instance fields
.field public c:I

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/graphics/drawable/RippleDrawable;

.field public f:Landroid/content/res/ColorStateList;

.field public final g:Lg/ddm;

.field public h:Landroid/content/res/ColorStateList;

.field public i:I

.field public final j:Lcom/google/android/material/card/MaterialCardView;

.field public final k:Landroid/animation/TimeInterpolator;

.field public final l:I

.field public final m:I

.field public n:I

.field public o:Z

.field public p:Landroid/graphics/drawable/LayerDrawable;

.field public q:Lg/cjg;

.field public r:Landroid/graphics/drawable/Drawable;

.field public final s:Landroid/graphics/Rect;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Lg/ddm;

.field public v:Landroid/animation/ValueAnimator;

.field public final w:Lg/ddm;

.field public x:F

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lg/bqf;->b:D

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lg/bqf;->a:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/bqf;->s:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bqf;->z:Z

    const/4 v0, 0x0

    iput v0, p0, Lg/bqf;->x:F

    iput-object p1, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    new-instance v1, Lg/ddm;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04035a

    const v4, 0x7f1304f0

    invoke-direct {v1, v2, p2, v3, v4}, Lg/ddm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/ddm;->ef(Landroid/content/Context;)V

    invoke-virtual {v1}, Lg/ddm;->ev()V

    iget-object v1, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v1, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v1}, Lg/cjg;->r()Lg/bem;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lg/fpg;->a:[I

    const v5, 0x7f130139

    invoke-virtual {v2, p2, v4, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    new-instance v2, Lg/ett;

    invoke-direct {v2, v0}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->e:Lg/gjn;

    new-instance v2, Lg/ett;

    invoke-direct {v2, v0}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->g:Lg/gjn;

    new-instance v2, Lg/ett;

    invoke-direct {v2, v0}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->l:Lg/gjn;

    new-instance v2, Lg/ett;

    invoke-direct {v2, v0}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->a:Lg/gjn;

    :cond_0
    new-instance v0, Lg/ddm;

    invoke-direct {v0}, Lg/ddm;-><init>()V

    iput-object v0, p0, Lg/bqf;->g:Lg/ddm;

    invoke-virtual {v1}, Lg/bem;->n()Lg/cjg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/bqf;->ab(Lg/cjg;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0403a7

    sget-object v2, Lg/gtk;->b:Landroid/view/animation/LinearInterpolator;

    invoke-static {v0, v1, v2}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lg/bqf;->k:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04039d

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lg/bqf;->l:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04039c

    invoke-static {p1, v0, v2}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lg/bqf;->m:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static aa(Lg/afo;F)F
    .locals 4

    instance-of v0, p0, Lg/eeu;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lg/bqf;->b:D

    sub-double/2addr v0, v2

    float-to-double p0, p1

    mul-double v0, v0, p0

    double-to-float p0, v0

    return p0

    :cond_0
    instance-of p0, p0, Lg/gki;

    if-eqz p0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ab(Lg/cjg;)V
    .locals 2

    iput-object p1, p0, Lg/bqf;->q:Lg/cjg;

    iget-object v0, p0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v0, p1}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    invoke-virtual {v0}, Lg/ddm;->eo()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lg/ddm;->du:Z

    iget-object v0, p0, Lg/bqf;->g:Lg/ddm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    :cond_0
    iget-object v0, p0, Lg/bqf;->u:Lg/ddm;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    :cond_1
    return-void
.end method

.method public final ac()V
    .locals 4

    iget-object v0, p0, Lg/bqf;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lg/bqf;->ak()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg/bqf;->al()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/bqf;->g:Lg/ddm;

    :goto_0
    iput-object v1, p0, Lg/bqf;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    iget-object v3, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    if-lt v0, v2, :cond_1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {v0, v1}, Lg/fdj;->u(Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lg/bqf;->ad(Landroid/graphics/drawable/Drawable;)Lg/anz;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public final ad(Landroid/graphics/drawable/Drawable;)Lg/anz;
    .locals 8

    iget-object v0, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lg/dur;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/dur;->getMaxCardElevation()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lg/bqf;->aj()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lg/bqf;->ag()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Lg/dur;->getMaxCardElevation()F

    move-result v0

    invoke-virtual {p0}, Lg/bqf;->aj()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lg/bqf;->ag()F

    move-result v3

    :cond_1
    add-float/2addr v0, v3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    new-instance v2, Lg/anz;

    move v6, v4

    move v7, v5

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v2
.end method

.method public final ae()V
    .locals 6

    iget-object v0, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lg/dur;->getPreventCornerOverlap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v1}, Lg/ddm;->eo()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/bqf;->aj()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lg/bqf;->ag()F

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lg/dur;->getPreventCornerOverlap()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lg/dur;->getUseCompatPadding()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lg/bqf;->b:D

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v4

    float-to-double v4, v4

    mul-double v2, v2, v4

    double-to-float v2, v2

    :cond_2
    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lg/bqf;->s:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget-object v1, v0, Lg/dur;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Lg/dur;->m:Lg/fdy;

    iget-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lg/dur;

    invoke-virtual {v1}, Lg/dur;->getUseCompatPadding()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lg/fdy;->w(IIII)V

    return-void

    :cond_3
    iget-object v2, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    check-cast v2, Lg/dmf;

    iget v3, v2, Lg/dmf;->d:F

    iget v2, v2, Lg/dmf;->e:F

    invoke-virtual {v1}, Lg/dur;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v3, v2, v4}, Lg/gbj;->b(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v1}, Lg/dur;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {v3, v2, v1}, Lg/gbj;->c(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v4, v1, v4, v1}, Lg/fdy;->w(IIII)V

    return-void
.end method

.method public final af(II)V
    .locals 14

    iget-object v0, p0, Lg/bqf;->p:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lg/dur;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/dur;->getMaxCardElevation()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lg/bqf;->aj()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lg/bqf;->ag()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v0}, Lg/dur;->getMaxCardElevation()F

    move-result v4

    invoke-virtual {p0}, Lg/bqf;->aj()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lg/bqf;->ag()F

    move-result v3

    :cond_1
    add-float/2addr v4, v3

    mul-float v4, v4, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lg/bqf;->y:I

    const v4, 0x800005

    and-int v5, v3, v4

    if-ne v5, v4, :cond_3

    iget v5, p0, Lg/bqf;->i:I

    sub-int v5, p1, v5

    iget v6, p0, Lg/bqf;->n:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    goto :goto_2

    :cond_3
    iget v5, p0, Lg/bqf;->i:I

    :goto_2
    and-int/lit8 v6, v3, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    iget v6, p0, Lg/bqf;->i:I

    :goto_3
    move v13, v6

    goto :goto_4

    :cond_4
    iget v6, p0, Lg/bqf;->i:I

    sub-int v6, p2, v6

    iget v8, p0, Lg/bqf;->n:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v1

    goto :goto_3

    :goto_4
    and-int v6, v3, v4

    if-ne v6, v4, :cond_5

    iget p1, p0, Lg/bqf;->i:I

    goto :goto_5

    :cond_5
    iget v4, p0, Lg/bqf;->i:I

    sub-int/2addr p1, v4

    iget v4, p0, Lg/bqf;->n:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v2

    :goto_5
    and-int/lit8 v2, v3, 0x50

    if-ne v2, v7, :cond_6

    iget v2, p0, Lg/bqf;->i:I

    sub-int v2, p2, v2

    iget v3, p0, Lg/bqf;->n:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    :goto_6
    move v11, v2

    goto :goto_7

    :cond_6
    iget v2, p0, Lg/bqf;->i:I

    goto :goto_6

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    move v10, p1

    move v12, v5

    goto :goto_8

    :cond_7
    move v12, p1

    move v10, v5

    :goto_8
    iget-object v8, p0, Lg/bqf;->p:Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_8
    return-void
.end method

.method public final ag()F
    .locals 5

    iget-object v0, p0, Lg/bqf;->q:Lg/cjg;

    iget-object v0, v0, Lg/cjg;->f:Lg/afo;

    iget-object v1, p0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v1}, Lg/ddm;->eq()F

    move-result v2

    invoke-static {v0, v2}, Lg/bqf;->aa(Lg/afo;F)F

    move-result v0

    iget-object v2, p0, Lg/bqf;->q:Lg/cjg;

    iget-object v2, v2, Lg/cjg;->i:Lg/afo;

    iget-object v3, v1, Lg/ddm;->dq:[F

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    aget v3, v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v3, Lg/dwo;->h:Lg/cjg;

    iget-object v3, v3, Lg/cjg;->g:Lg/gjn;

    invoke-virtual {v1}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v3

    :goto_0
    invoke-static {v2, v3}, Lg/bqf;->aa(Lg/afo;F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lg/bqf;->q:Lg/cjg;

    iget-object v2, v2, Lg/cjg;->k:Lg/afo;

    iget-object v3, v1, Lg/ddm;->dq:[F

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    aget v3, v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v3, Lg/dwo;->h:Lg/cjg;

    iget-object v3, v3, Lg/cjg;->l:Lg/gjn;

    invoke-virtual {v1}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v3

    :goto_1
    invoke-static {v2, v3}, Lg/bqf;->aa(Lg/afo;F)F

    move-result v2

    iget-object v3, p0, Lg/bqf;->q:Lg/cjg;

    iget-object v3, v3, Lg/cjg;->c:Lg/afo;

    iget-object v4, v1, Lg/ddm;->dq:[F

    if-eqz v4, :cond_2

    const/4 v1, 0x2

    aget v1, v4, v1

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v4, v4, Lg/dwo;->h:Lg/cjg;

    iget-object v4, v4, Lg/cjg;->a:Lg/gjn;

    invoke-virtual {v1}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v4, v1}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v1

    :goto_2
    invoke-static {v3, v1}, Lg/bqf;->aa(Lg/afo;F)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final ah(ZZ)V
    .locals 5

    iget-object v0, p0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    if-eqz p1, :cond_1

    iget p2, p0, Lg/bqf;->x:F

    sub-float/2addr v3, p2

    goto :goto_0

    :cond_1
    iget v3, p0, Lg/bqf;->x:F

    :goto_0
    iget-object p2, p0, Lg/bqf;->v:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lg/bqf;->v:Landroid/animation/ValueAnimator;

    :cond_2
    iget p2, p0, Lg/bqf;->x:F

    const/4 v0, 0x2

    new-array v4, v0, [F

    aput p2, v4, v1

    const/4 p2, 0x1

    aput v2, v4, p2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lg/bqf;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lg/emn;

    invoke-direct {v1, v0, p0}, Lg/emn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lg/bqf;->v:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lg/bqf;->k:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lg/bqf;->v:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    iget p1, p0, Lg/bqf;->l:I

    :goto_1
    int-to-float p1, p1

    mul-float p1, p1, v3

    float-to-long v0, p1

    goto :goto_2

    :cond_3
    iget p1, p0, Lg/bqf;->m:I

    goto :goto_1

    :goto_2
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lg/bqf;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    const/16 v1, 0xff

    :cond_5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz p1, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_6
    iput v2, p0, Lg/bqf;->x:F

    :cond_7
    return-void
.end method

.method public final ai()V
    .locals 2

    iget-boolean v0, p0, Lg/bqf;->z:Z

    iget-object v1, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {p0, v0}, Lg/bqf;->ad(Landroid/graphics/drawable/Drawable;)Lg/anz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lg/bqf;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lg/bqf;->ad(Landroid/graphics/drawable/Drawable;)Lg/anz;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final aj()Z
    .locals 2

    iget-object v0, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lg/dur;->getPreventCornerOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v1}, Lg/ddm;->eo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/dur;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ak()Z
    .locals 2

    iget-object v0, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isDuplicateParentStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    return v0
.end method

.method public final al()Landroid/graphics/drawable/LayerDrawable;
    .locals 5

    iget-object v0, p0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lg/ddm;

    iget-object v1, p0, Lg/bqf;->q:Lg/cjg;

    invoke-direct {v0, v1}, Lg/ddm;-><init>(Lg/cjg;)V

    iput-object v0, p0, Lg/bqf;->u:Lg/ddm;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, Lg/bqf;->u:Lg/ddm;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    :cond_0
    iget-object v0, p0, Lg/bqf;->p:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lg/bqf;->g:Lg/ddm;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lg/bqf;->p:Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x7f090206

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_1
    iget-object v0, p0, Lg/bqf;->p:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public final am(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/dzm;->aw(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lg/bqf;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    iget-boolean p1, p1, Lcom/google/android/material/card/MaterialCardView;->e:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/bqf;->ah(ZZ)V

    goto :goto_0

    :cond_0
    sget-object p1, Lg/bqf;->a:Landroid/graphics/drawable/ColorDrawable;

    iput-object p1, p0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p1, p0, Lg/bqf;->p:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    const v0, 0x7f090206

    iget-object v1, p0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

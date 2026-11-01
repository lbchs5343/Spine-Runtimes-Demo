.class public final Lg/bko;
.super Lg/ddm;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lg/etp;


# static fields
.field public static final a:[I

.field public static final b:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public aa:F

.field public ab:I

.field public ac:Z

.field public ad:I

.field public ae:I

.field public af:F

.field public ag:F

.field public final ah:Landroid/graphics/Paint$FontMetrics;

.field public final ai:Landroid/content/Context;

.field public aj:Landroid/graphics/drawable/RippleDrawable;

.field public ak:Lg/gqd;

.field public al:I

.field public am:I

.field public an:F

.field public ao:Landroid/content/res/ColorStateList;

.field public ap:Landroid/graphics/ColorFilter;

.field public final aq:Landroid/graphics/Paint;

.field public ar:Landroid/content/res/ColorStateList;

.field public as:F

.field public at:Z

.field public au:Landroid/content/res/ColorStateList;

.field public av:Z

.field public aw:F

.field public ax:F

.field public ay:Ljava/lang/CharSequence;

.field public az:Z

.field public ba:Landroid/graphics/PorterDuff$Mode;

.field public bb:Landroid/text/SpannableStringBuilder;

.field public bc:Landroid/content/res/ColorStateList;

.field public bd:Landroid/text/TextUtils$TruncateAt;

.field public be:I

.field public bf:Landroid/content/res/ColorStateList;

.field public bg:F

.field public bh:Landroid/content/res/ColorStateList;

.field public final bi:Landroid/graphics/RectF;

.field public bj:Lg/gqd;

.field public final c:Landroid/graphics/Path;

.field public d:Z

.field public e:Landroid/content/res/ColorStateList;

.field public f:I

.field public g:Z

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public k:F

.field public final l:Lg/fgx;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Ljava/lang/ref/WeakReference;

.field public p:Z

.field public q:F

.field public r:F

.field public s:Z

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:I

.field public final v:Landroid/graphics/PointF;

.field public w:F

.field public x:Landroid/graphics/PorterDuffColorFilter;

.field public y:[I

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lg/bko;->a:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lg/bko;->b:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0400d9

    const v1, 0x7f1304f2

    invoke-direct {p0, p1, p2, v0, v1}, Lg/ddm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lg/bko;->r:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lg/bko;->aq:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lg/bko;->ah:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lg/bko;->bi:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lg/bko;->v:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lg/bko;->c:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lg/bko;->u:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lg/bko;->ba:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lg/bko;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lg/ddm;->ef(Landroid/content/Context;)V

    iput-object p1, p0, Lg/bko;->ai:Landroid/content/Context;

    new-instance p2, Lg/fgx;

    invoke-direct {p2, p0}, Lg/fgx;-><init>(Lg/bko;)V

    iput-object p2, p0, Lg/bko;->l:Lg/fgx;

    const-string v1, ""

    iput-object v1, p0, Lg/bko;->ay:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object p2, p2, Lg/fgx;->c:Landroid/text/TextPaint;

    iput p1, p2, Landroid/text/TextPaint;->density:F

    sget-object p1, Lg/bko;->a:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, p1}, Lg/bko;->bw([I)Z

    iput-boolean v0, p0, Lg/bko;->g:Z

    sget-object p1, Lg/bko;->b:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static bk(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bl(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bm(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bn()F
    .locals 4

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget v0, p0, Lg/bko;->aa:F

    iget-boolean v2, p0, Lg/bko;->s:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v3, p0, Lg/bko;->aw:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v3, v1

    :cond_3
    add-float/2addr v3, v0

    iget v0, p0, Lg/bko;->as:F

    add-float/2addr v3, v0

    return v3
.end method

.method public final bo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v0

    iput-object p1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result p1

    iget-object v1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lg/bko;->bm(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lg/bko;->cr(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final bp(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lg/ai;

    if-eqz v2, :cond_1

    check-cast v0, Lg/ai;

    check-cast v0, Lg/brt;

    iget-object v0, v0, Lg/brt;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lg/dzm;->aw(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result p1

    invoke-static {v0}, Lg/bko;->bm(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lg/bko;->cr(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_4
    return-void
.end method

.method public final bq()Z
    .locals 1

    iget-boolean v0, p0, Lg/bko;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final br(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lg/bko;->bg:F

    iget v1, p0, Lg/bko;->aa:F

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lg/bko;->s:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v2, p0, Lg/bko;->aw:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    :cond_3
    invoke-static {p0}, Lg/dzm;->ap(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    :goto_2
    iget-boolean v0, p0, Lg/bko;->s:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget v1, p0, Lg/bko;->aw:F

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lg/bko;->ai:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x18

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v1, v0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v1, v0

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final bs(F)V
    .locals 1

    iget v0, p0, Lg/bko;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lg/bko;->k:F

    iget-object v0, p0, Lg/bko;->aq:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lg/bko;->av:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iput p1, v0, Lg/dwo;->b:F

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_0
    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final bt(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bko;->ac:Z

    iget-object v0, p0, Lg/bko;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lg/bko;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final bu(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/bko;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lg/bko;->d:Z

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lg/bko;->s:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/bko;->s:Z

    :cond_0
    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result p1

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_1
    return-void
.end method

.method public final bv()Z
    .locals 1

    iget-boolean v0, p0, Lg/bko;->at:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/bko;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bw([I)Z
    .locals 1

    iget-object v0, p0, Lg/bko;->y:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lg/bko;->y:[I

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lg/bko;->ck([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bx()F
    .locals 1

    iget-boolean v0, p0, Lg/bko;->av:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/ddm;->eq()F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lg/bko;->r:F

    return v0
.end method

.method public final by(F)V
    .locals 1

    iget v0, p0, Lg/bko;->ag:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lg/bko;->ag:F

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final bz(Lg/asw;)V
    .locals 5

    iget-object v0, p0, Lg/bko;->l:Lg/fgx;

    iget-object v1, v0, Lg/fgx;->e:Lg/eez;

    iget-object v2, v0, Lg/fgx;->c:Landroid/text/TextPaint;

    iget-object v3, v0, Lg/fgx;->d:Lg/asw;

    if-eq v3, p1, :cond_2

    iput-object p1, v0, Lg/fgx;->d:Lg/asw;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lg/bko;->ai:Landroid/content/Context;

    invoke-virtual {p1, v3, v2, v1}, Lg/asw;->r(Landroid/content/Context;Landroid/text/TextPaint;Lg/fso;)V

    iget-object v4, v0, Lg/fgx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/etp;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lg/etp;->getState()[I

    move-result-object v4

    iput-object v4, v2, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-virtual {p1, v3, v2, v1}, Lg/asw;->q(Landroid/content/Context;Landroid/text/TextPaint;Lg/fso;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/fgx;->a:Z

    :cond_1
    iget-object p1, v0, Lg/fgx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/etp;

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lg/bko;

    invoke-virtual {v0}, Lg/bko;->cq()V

    invoke-virtual {v0}, Lg/ddm;->invalidateSelf()V

    invoke-interface {p1}, Lg/etp;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final ca(F)V
    .locals 1

    iget v0, p0, Lg/bko;->aw:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v0

    iput p1, p0, Lg/bko;->aw:F

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result p1

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final cb(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/bko;->az:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v0

    iput-boolean p1, p0, Lg/bko;->az:Z

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lg/bko;->cr(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lg/bko;->bm(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_1
    return-void
.end method

.method public final cc(F)V
    .locals 2

    iget v0, p0, Lg/bko;->r:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lg/bko;->r:F

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v0}, Lg/cjg;->r()Lg/bem;

    move-result-object v0

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, v0, Lg/bem;->e:Lg/gjn;

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, v0, Lg/bem;->g:Lg/gjn;

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, v0, Lg/bem;->l:Lg/gjn;

    new-instance v1, Lg/ett;

    invoke-direct {v1, p1}, Lg/ett;-><init>(F)V

    iput-object v1, v0, Lg/bem;->a:Lg/gjn;

    invoke-virtual {v0}, Lg/bem;->n()Lg/cjg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ddm;->setShapeAppearanceModel(Lg/cjg;)V

    :cond_0
    return-void
.end method

.method public final cd(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/bko;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lg/bko;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final ce(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/bko;->at:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result v0

    iput-boolean p1, p0, Lg/bko;->at:Z

    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lg/bko;->cr(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lg/bko;->bm(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_1
    return-void
.end method

.method public final cf(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/bko;->ar:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lg/bko;->ar:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/bko;->au:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final cg(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lg/ai;

    if-eqz v2, :cond_1

    check-cast v0, Lg/ai;

    check-cast v0, Lg/brt;

    iget-object v0, v0, Lg/brt;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lg/bko;->cj()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lg/dzm;->aw(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lg/bko;->ar:Landroid/content/res/ColorStateList;

    invoke-static {v1}, Lg/buj;->ac(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lg/bko;->b:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v1, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lg/bko;->aj:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lg/bko;->cj()F

    move-result p1

    invoke-static {v0}, Lg/bko;->bm(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lg/bko;->cr(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_4
    return-void
.end method

.method public final ch(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lg/bko;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lg/bko;->n:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lg/bko;->av:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final ci(F)V
    .locals 1

    iget v0, p0, Lg/bko;->an:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lg/bko;->an:F

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final cj()F
    .locals 2

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/bko;->ag:F

    iget v1, p0, Lg/bko;->an:F

    add-float/2addr v0, v1

    iget v1, p0, Lg/bko;->ax:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ck([I[I)Z
    .locals 9

    invoke-super {p0, p1}, Lg/ddm;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lg/bko;->bh:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lg/bko;->ad:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lg/ddm;->et(I)I

    move-result v1

    iget v3, p0, Lg/bko;->ad:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, Lg/bko;->ad:I

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lg/bko;->bc:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lg/bko;->f:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Lg/ddm;->et(I)I

    move-result v3

    iget v5, p0, Lg/bko;->f:I

    if-eq v5, v3, :cond_3

    iput v3, p0, Lg/bko;->f:I

    const/4 v0, 0x1

    :cond_3
    invoke-static {v3, v1}, Lg/afr;->f(II)I

    move-result v1

    iget v3, p0, Lg/bko;->j:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v5, v5, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    iput v1, p0, Lg/bko;->j:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    :cond_6
    iget-object v1, p0, Lg/bko;->n:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lg/bko;->al:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iget v3, p0, Lg/bko;->al:I

    if-eq v3, v1, :cond_8

    iput v1, p0, Lg/bko;->al:I

    const/4 v0, 0x1

    :cond_8
    iget-object v1, p0, Lg/bko;->au:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e

    array-length v1, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v3, v1, :cond_d

    aget v7, p1, v3

    const v8, 0x101009e

    if-ne v7, v8, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    const v8, 0x101009c

    if-ne v7, v8, :cond_a

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const v8, 0x10100a7

    if-ne v7, v8, :cond_b

    goto :goto_6

    :cond_b
    const v8, 0x1010367

    if-ne v7, v8, :cond_c

    goto :goto_6

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    iget-object v1, p0, Lg/bko;->au:Landroid/content/res/ColorStateList;

    iget v3, p0, Lg/bko;->ae:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    iget v3, p0, Lg/bko;->ae:I

    if-eq v3, v1, :cond_f

    iput v1, p0, Lg/bko;->ae:I

    :cond_f
    iget-object v1, p0, Lg/bko;->l:Lg/fgx;

    iget-object v1, v1, Lg/fgx;->d:Lg/asw;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lg/asw;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_10

    iget v3, p0, Lg/bko;->am:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    iget v3, p0, Lg/bko;->am:I

    if-eq v3, v1, :cond_11

    iput v1, p0, Lg/bko;->am:I

    const/4 v0, 0x1

    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    array-length v3, v1

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_14

    aget v6, v1, v5

    const v7, 0x10100a0

    if-ne v6, v7, :cond_13

    iget-boolean v1, p0, Lg/bko;->d:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    :goto_b
    const/4 v1, 0x0

    :goto_c
    iget-boolean v3, p0, Lg/bko;->s:Z

    if-eq v3, v1, :cond_16

    iget-object v3, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v0

    iput-boolean v1, p0, Lg/bko;->s:Z

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v0, 0x1

    :cond_16
    const/4 v1, 0x0

    :goto_d
    iget-object v3, p0, Lg/bko;->ao:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_17

    iget v5, p0, Lg/bko;->be:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    iget v5, p0, Lg/bko;->be:I

    if-eq v5, v3, :cond_1a

    iput v3, p0, Lg/bko;->be:I

    iget-object v0, p0, Lg/bko;->ao:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lg/bko;->ba:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_19

    if-nez v3, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_10

    :cond_19
    :goto_f
    const/4 v5, 0x0

    :goto_10
    iput-object v5, p0, Lg/bko;->x:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_11

    :cond_1a
    move v4, v0

    :goto_11
    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lg/bko;->bk(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_1b
    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lg/bko;->bk(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_1c
    iget-object v0, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lg/bko;->bk(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1d

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1d
    iget-object p1, p0, Lg/bko;->aj:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lg/bko;->bk(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lg/bko;->aj:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1e
    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_1f
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_20
    return v4
.end method

.method public final cl(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/bko;->p:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v0

    iput-boolean p1, p0, Lg/bko;->p:Z

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lg/bko;->cr(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lg/bko;->bm(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_1
    return-void
.end method

.method public final cm()Z
    .locals 1

    iget-boolean v0, p0, Lg/bko;->az:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cn(F)V
    .locals 1

    iget v0, p0, Lg/bko;->ax:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lg/bko;->ax:F

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final co(F)V
    .locals 1

    iget v0, p0, Lg/bko;->aa:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v0

    iput p1, p0, Lg/bko;->aa:F

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result p1

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final cp(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lg/bko;->bf:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lg/bko;->bf:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lg/bko;->at:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lg/bko;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final cq()V
    .locals 2

    iget-object v0, p0, Lg/bko;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cdz;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget v1, v0, Lcom/google/android/material/chip/Chip;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->z(I)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public final cr(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, Lg/dzm;->ap(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Lg/dzm;->bb(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/bko;->y:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, Lg/bko;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    iget-boolean v1, p0, Lg/bko;->ac:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg/bko;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final cs(F)V
    .locals 1

    iget v0, p0, Lg/bko;->as:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v0

    iput p1, p0, Lg/bko;->as:F

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result p1

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/bko;->cq()V

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v6, v0, Lg/bko;->u:I

    if-nez v6, :cond_1

    :cond_0
    move-object v13, v0

    goto/16 :goto_b

    :cond_1
    const/16 v9, 0xff

    const/4 v10, 0x0

    if-ge v6, v9, :cond_3

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-le v1, v7, :cond_2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v2

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_3
    move-object/from16 v1, p1

    const/4 v7, 0x0

    :goto_1
    iget-boolean v2, v0, Lg/bko;->av:Z

    move v3, v2

    iget-object v2, v0, Lg/bko;->aq:Landroid/graphics/Paint;

    iget-object v11, v0, Lg/bko;->bi:Landroid/graphics/RectF;

    if-nez v3, :cond_4

    iget v3, v0, Lg/bko;->ad:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lg/bko;->bx()F

    move-result v3

    invoke-virtual {v0}, Lg/bko;->bx()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean v3, v0, Lg/bko;->av:Z

    if-nez v3, :cond_6

    iget v3, v0, Lg/bko;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lg/bko;->ap:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lg/bko;->x:Landroid/graphics/PorterDuffColorFilter;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v11, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lg/bko;->bx()F

    move-result v3

    invoke-virtual {v0}, Lg/bko;->bx()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-boolean v3, v0, Lg/bko;->av:Z

    if-eqz v3, :cond_7

    invoke-super/range {p0 .. p1}, Lg/ddm;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget v3, v0, Lg/bko;->k:F

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    cmpl-float v3, v3, v12

    if-lez v3, :cond_a

    iget-boolean v3, v0, Lg/bko;->av:Z

    if-nez v3, :cond_a

    iget v3, v0, Lg/bko;->al:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v3, v0, Lg/bko;->av:Z

    if-nez v3, :cond_9

    iget-object v3, v0, Lg/bko;->ap:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, v0, Lg/bko;->x:Landroid/graphics/PorterDuffColorFilter;

    :goto_3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_9
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lg/bko;->k:F

    div-float/2addr v4, v13

    add-float/2addr v3, v4

    iget v5, v8, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v14, v4

    invoke-virtual {v11, v3, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v0, Lg/bko;->r:F

    iget v4, v0, Lg/bko;->k:F

    div-float/2addr v4, v13

    sub-float/2addr v3, v4

    invoke-virtual {v1, v11, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_a
    iget v3, v0, Lg/bko;->ae:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v3, v0, Lg/bko;->av:Z

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lg/bko;->bx()F

    move-result v3

    invoke-virtual {v0}, Lg/bko;->bx()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v21, 0x40000000    # 2.0f

    :goto_4
    move-object v13, v0

    goto :goto_5

    :cond_b
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v15, v4, Lg/dwo;->h:Lg/cjg;

    iget-object v5, v0, Lg/ddm;->dq:[F

    iget v4, v4, Lg/dwo;->n:F

    iget-object v6, v0, Lg/ddm;->dm:Lg/eie;

    iget-object v14, v0, Lg/ddm;->dj:Lg/ll;

    const/high16 v21, 0x40000000    # 2.0f

    iget-object v13, v0, Lg/bko;->c:Landroid/graphics/Path;

    move-object/from16 v18, v3

    move/from16 v17, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Lg/ll;->m(Lg/cjg;[FFLandroid/graphics/RectF;Lg/eie;Landroid/graphics/Path;)V

    move-object/from16 v3, v20

    invoke-virtual {v0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v4, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v4, v4, Lg/dwo;->h:Lg/cjg;

    iget-object v5, v0, Lg/ddm;->dq:[F

    invoke-virtual/range {v0 .. v6}, Lg/ddm;->eg(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lg/cjg;[FLandroid/graphics/RectF;)V

    goto :goto_4

    :goto_5
    invoke-virtual {v13}, Lg/bko;->bq()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13, v8, v11}, Lg/bko;->br(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_c
    invoke-virtual {v13}, Lg/bko;->bv()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v13, v8, v11}, Lg/bko;->br(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d
    iget-boolean v0, v13, Lg/bko;->g:Z

    if-eqz v0, :cond_16

    iget-object v0, v13, Lg/bko;->ay:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    iget-object v0, v13, Lg/bko;->v:Landroid/graphics/PointF;

    invoke-virtual {v0, v12, v12}, Landroid/graphics/PointF;->set(FF)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, v13, Lg/bko;->ay:Ljava/lang/CharSequence;

    iget-object v4, v13, Lg/bko;->l:Lg/fgx;

    if-eqz v3, :cond_f

    iget v3, v13, Lg/bko;->bg:F

    invoke-virtual {v13}, Lg/bko;->bn()F

    move-result v5

    add-float/2addr v5, v3

    iget v3, v13, Lg/bko;->z:F

    add-float/2addr v5, v3

    invoke-static {v13}, Lg/dzm;->ap(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_e

    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto :goto_6

    :cond_e
    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/PointF;->x:F

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_6
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v4, Lg/fgx;->c:Landroid/text/TextPaint;

    iget-object v6, v13, Lg/bko;->ah:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v5, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v6

    div-float v5, v5, v21

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    :cond_f
    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, v13, Lg/bko;->ay:Ljava/lang/CharSequence;

    if-eqz v3, :cond_11

    iget v3, v13, Lg/bko;->bg:F

    invoke-virtual {v13}, Lg/bko;->bn()F

    move-result v5

    add-float/2addr v5, v3

    iget v3, v13, Lg/bko;->z:F

    add-float/2addr v5, v3

    iget v3, v13, Lg/bko;->w:F

    invoke-virtual {v13}, Lg/bko;->cj()F

    move-result v6

    add-float/2addr v6, v3

    iget v3, v13, Lg/bko;->q:F

    add-float/2addr v6, v3

    invoke-static {v13}, Lg/dzm;->ap(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_10

    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v11, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    iput v3, v11, Landroid/graphics/RectF;->right:F

    goto :goto_7

    :cond_10
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    iput v3, v11, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    iput v3, v11, Landroid/graphics/RectF;->right:F

    :goto_7
    iget v3, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v11, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v11, Landroid/graphics/RectF;->bottom:F

    :cond_11
    iget-object v3, v4, Lg/fgx;->d:Lg/asw;

    iget-object v6, v4, Lg/fgx;->c:Landroid/text/TextPaint;

    if-eqz v3, :cond_12

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v6, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, v4, Lg/fgx;->d:Lg/asw;

    iget-object v5, v4, Lg/fgx;->e:Lg/eez;

    iget-object v12, v13, Lg/bko;->ai:Landroid/content/Context;

    invoke-virtual {v3, v12, v6, v5}, Lg/asw;->q(Landroid/content/Context;Landroid/text/TextPaint;Lg/fso;)V

    :cond_12
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v13, Lg/bko;->ay:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lg/fgx;->g(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-le v2, v3, :cond_13

    const/4 v2, 0x1

    const/4 v12, 0x1

    goto :goto_8

    :cond_13
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_14

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v14, v2

    goto :goto_9

    :cond_14
    const/4 v14, 0x0

    :goto_9
    iget-object v2, v13, Lg/bko;->ay:Ljava/lang/CharSequence;

    if-eqz v12, :cond_15

    iget-object v3, v13, Lg/bko;->bd:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_15

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v13, Lg/bko;->bd:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v6, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object v1, v0

    if-eqz v12, :cond_16

    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_16
    invoke-virtual {v13}, Lg/bko;->cm()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v13}, Lg/bko;->cm()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, v13, Lg/bko;->w:F

    iget v2, v13, Lg/bko;->ax:F

    add-float/2addr v0, v2

    invoke-static {v13}, Lg/dzm;->ap(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_17

    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->right:F

    iget v0, v13, Lg/bko;->an:F

    sub-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    goto :goto_a

    :cond_17
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    iget v0, v13, Lg/bko;->an:F

    add-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->right:F

    :goto_a
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iget v2, v13, Lg/bko;->an:F

    div-float v3, v2, v21

    sub-float/2addr v0, v3

    iput v0, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    :cond_18
    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lg/bko;->aj:Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, v13, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v13, Lg/bko;->aj:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v3, v13, Lg/bko;->aj:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_19
    iget v0, v13, Lg/bko;->u:I

    if-ge v0, v9, :cond_1a

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1a
    :goto_b
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lg/bko;->u:I

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lg/bko;->ap:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lg/bko;->af:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    iget v0, p0, Lg/bko;->bg:F

    invoke-virtual {p0}, Lg/bko;->bn()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lg/bko;->z:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lg/bko;->ay:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lg/bko;->l:Lg/fgx;

    invoke-virtual {v2, v0}, Lg/fgx;->g(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    iget v1, p0, Lg/bko;->q:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lg/bko;->cj()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lg/bko;->w:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lg/bko;->ab:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    iget-boolean v0, p0, Lg/bko;->av:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lg/ddm;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lg/bko;->r:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    move-object v2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/bko;->getIntrinsicWidth()I

    move-result v5

    iget v0, p0, Lg/bko;->af:F

    float-to-int v6, v0

    iget v7, p0, Lg/bko;->r:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    iget p1, p0, Lg/bko;->u:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Lg/bko;->bh:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lg/bko;->bl(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/bko;->bc:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lg/bko;->bl(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/bko;->n:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lg/bko;->bl(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/bko;->l:Lg/fgx;

    iget-object v0, v0, Lg/fgx;->d:Lg/asw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/asw;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lg/bko;->at:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/bko;->d:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lg/bko;->bk(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lg/bko;->bk(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/bko;->ao:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lg/bko;->bl(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lg/dzm;->bb(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lg/dzm;->bb(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lg/dzm;->bb(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final onLevelChange(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final onStateChange([I)Z
    .locals 1

    iget-boolean v0, p0, Lg/bko;->av:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lg/ddm;->onStateChange([I)Z

    :cond_0
    iget-object v0, p0, Lg/bko;->y:[I

    invoke-virtual {p0, p1, v0}, Lg/bko;->ck([I[I)Z

    move-result p1

    return p1
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lg/bko;->u:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg/bko;->u:I

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lg/bko;->ap:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lg/bko;->ap:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/bko;->ao:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lg/bko;->ao:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bko;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-object v0, p0, Lg/bko;->ba:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lg/bko;->ba:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lg/bko;->ao:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lg/bko;->x:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-virtual {p0}, Lg/bko;->bq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/bko;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lg/bko;->bv()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/bko;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lg/bko;->cm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/bko;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

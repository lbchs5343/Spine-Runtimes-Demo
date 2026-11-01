.class public final Lg/fbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final a:I


# instance fields
.field public final b:I

.field public c:Z

.field public final d:I

.field public e:Z

.field public final f:[F

.field public final g:Lg/bgv;

.field public h:Z

.field public final i:[F

.field public j:Lg/byd;

.field public final k:[F

.field public final l:Lg/ftj;

.field public final m:[F

.field public final n:Landroid/view/animation/AccelerateInterpolator;

.field public o:Z

.field public final p:Lg/bgv;

.field public q:Z

.field public final r:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lg/fbo;->a:I

    return-void
.end method

.method public constructor <init>(Lg/bgv;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/ftj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lg/ftj;->c:J

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lg/ftj;->i:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lg/ftj;->e:J

    iput-object v0, p0, Lg/fbo;->l:Lg/ftj;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lg/fbo;->n:Landroid/view/animation/AccelerateInterpolator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lg/fbo;->k:[F

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lg/fbo;->r:[F

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    iput-object v4, p0, Lg/fbo;->m:[F

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    iput-object v5, p0, Lg/fbo;->f:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    iput-object v1, p0, Lg/fbo;->i:[F

    iput-object p1, p0, Lg/fbo;->g:Lg/bgv;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const v7, 0x44c4e000    # 1575.0f

    mul-float v7, v7, v6

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    const v9, 0x439d8000    # 315.0f

    mul-float v6, v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    const/4 v9, 0x0

    aput v7, v1, v9

    const/4 v10, 0x1

    aput v7, v1, v10

    int-to-float v1, v6

    div-float/2addr v1, v8

    aput v1, v5, v9

    aput v1, v5, v10

    iput v10, p0, Lg/fbo;->d:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    aput v1, v3, v9

    aput v1, v3, v10

    const v1, 0x3e4ccccd    # 0.2f

    aput v1, v2, v9

    aput v1, v2, v10

    const v1, 0x3a83126f    # 0.001f

    aput v1, v4, v9

    aput v1, v4, v10

    sget v1, Lg/fbo;->a:I

    iput v1, p0, Lg/fbo;->b:I

    const/16 v1, 0x1f4

    iput v1, v0, Lg/ftj;->d:I

    iput v1, v0, Lg/ftj;->g:I

    iput-object p1, p0, Lg/fbo;->p:Lg/bgv;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static s(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lg/fbo;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lg/fbo;->t()V

    return v1

    :cond_2
    iput-boolean v2, p0, Lg/fbo;->o:Z

    iput-boolean v1, p0, Lg/fbo;->h:Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lg/fbo;->g:Lg/bgv;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v0, v3, v5, v1}, Lg/fbo;->v(FFFI)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, p2, p1, v3, v2}, Lg/fbo;->v(FFFI)F

    move-result p1

    iget-object p2, p0, Lg/fbo;->l:Lg/ftj;

    iput v0, p2, Lg/ftj;->h:F

    iput p1, p2, Lg/ftj;->b:F

    iget-boolean p1, p0, Lg/fbo;->e:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lg/fbo;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg/fbo;->j:Lg/byd;

    if-nez p1, :cond_4

    new-instance p1, Lg/byd;

    invoke-direct {p1, v1, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/fbo;->j:Lg/byd;

    :cond_4
    iput-boolean v2, p0, Lg/fbo;->e:Z

    iput-boolean v2, p0, Lg/fbo;->q:Z

    iget-boolean p1, p0, Lg/fbo;->h:Z

    if-nez p1, :cond_5

    iget p1, p0, Lg/fbo;->b:I

    if-lez p1, :cond_5

    iget-object p2, p0, Lg/fbo;->j:Lg/byd;

    int-to-long v5, p1

    sget-object p1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p2, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lg/fbo;->j:Lg/byd;

    invoke-virtual {p1}, Lg/byd;->run()V

    :goto_0
    iput-boolean v2, p0, Lg/fbo;->h:Z

    :cond_6
    :goto_1
    return v1
.end method

.method public final t()V
    .locals 6

    iget-boolean v0, p0, Lg/fbo;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lg/fbo;->e:Z

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lg/fbo;->l:Lg/ftj;

    iget-wide v4, v0, Lg/ftj;->c:J

    sub-long v4, v2, v4

    long-to-int v5, v4

    iget v4, v0, Lg/ftj;->g:I

    if-le v5, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    iput v1, v0, Lg/ftj;->f:I

    invoke-virtual {v0, v2, v3}, Lg/ftj;->j(J)F

    move-result v1

    iput v1, v0, Lg/ftj;->a:F

    iput-wide v2, v0, Lg/ftj;->i:J

    return-void
.end method

.method public final u()Z
    .locals 8

    iget-object v0, p0, Lg/fbo;->l:Lg/ftj;

    iget v1, v0, Lg/ftj;->b:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Lg/ftj;->h:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lg/fbo;->p:Lg/bgv;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    add-int v6, v5, v4

    const/4 v7, 0x1

    if-lez v1, :cond_1

    if-lt v6, v3, :cond_2

    sub-int/2addr v4, v7

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_3

    if-gtz v5, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    return v7

    :cond_3
    :goto_0
    return v0
.end method

.method public final v(FFFI)F
    .locals 3

    iget-object v0, p0, Lg/fbo;->k:[F

    aget v0, v0, p4

    iget-object v1, p0, Lg/fbo;->r:[F

    aget v1, v1, p4

    mul-float v0, v0, p2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lg/fbo;->s(FFF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lg/fbo;->w(FF)F

    move-result v1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2, v0}, Lg/fbo;->w(FF)F

    move-result p1

    sub-float/2addr p1, v1

    iget-object p2, p0, Lg/fbo;->n:Landroid/view/animation/AccelerateInterpolator;

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    neg-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Lg/fbo;->s(FFF)F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    cmpl-float p2, p1, v2

    if-nez p2, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lg/fbo;->m:[F

    aget v0, v0, p4

    iget-object v1, p0, Lg/fbo;->f:[F

    aget v1, v1, p4

    iget-object v2, p0, Lg/fbo;->i:[F

    aget p4, v2, p4

    mul-float v0, v0, p3

    if-lez p2, :cond_3

    mul-float p1, p1, v0

    invoke-static {p1, v1, p4}, Lg/fbo;->s(FFF)F

    move-result p1

    return p1

    :cond_3
    neg-float p1, p1

    mul-float p1, p1, v0

    invoke-static {p1, v1, p4}, Lg/fbo;->s(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public final w(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lg/fbo;->d:I

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    :cond_3
    iget-boolean p1, p0, Lg/fbo;->e:Z

    if-eqz p1, :cond_4

    if-ne v2, v1, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

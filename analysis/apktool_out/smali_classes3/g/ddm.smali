.class public Lg/ddm;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lg/djx;
.implements Lg/cbe;


# static fields
.field public static final ct:[Lg/awu;

.field public static final cu:Landroid/graphics/Paint;


# instance fields
.field public final cv:Landroid/graphics/Matrix;

.field public final cw:Landroid/graphics/Paint;

.field public cx:Landroid/graphics/PorterDuffColorFilter;

.field public cy:Z

.field public cz:Lg/cjg;

.field public final da:Landroid/graphics/RectF;

.field public final db:Landroid/graphics/Paint;

.field public dc:Lg/aoi;

.field public final dd:Landroid/graphics/Path;

.field public de:[F

.field public final df:[Lg/ajj;

.field public final dg:Landroid/graphics/RectF;

.field public final dh:Landroid/graphics/RectF;

.field public di:Landroid/graphics/PorterDuffColorFilter;

.field public final dj:Lg/ll;

.field public final dk:[Lg/ajj;

.field public final dl:Ljava/util/BitSet;

.field public final dm:Lg/eie;

.field public final dn:Lg/evf;

.field public do:Lg/ceq;

.field public dp:Z

.field public dq:[F

.field public final dr:Landroid/graphics/Path;

.field public ds:Lg/dwo;

.field public final dt:Landroid/graphics/Region;

.field public du:Z

.field public final dv:[Lg/eov;

.field public final dw:Lg/ech;

.field public final dx:Landroid/graphics/Region;

.field public dy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lg/kj;->n(I)Lg/afo;

    move-result-object v1

    invoke-static {v1}, Lg/bem;->m(Lg/afo;)V

    invoke-static {v1}, Lg/bem;->m(Lg/afo;)V

    invoke-static {v1}, Lg/bem;->m(Lg/afo;)V

    invoke-static {v1}, Lg/bem;->m(Lg/afo;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lg/ddm;->cu:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x4

    new-array v1, v1, [Lg/awu;

    sput-object v1, Lg/ddm;->ct:[Lg/awu;

    :goto_0
    sget-object v1, Lg/ddm;->ct:[Lg/awu;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lg/awu;

    invoke-direct {v2, v0}, Lg/awu;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lg/cjg;

    invoke-direct {v0}, Lg/cjg;-><init>()V

    invoke-direct {p0, v0}, Lg/ddm;-><init>(Lg/cjg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lg/cjg;->n(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg/bem;

    move-result-object p1

    invoke-virtual {p1}, Lg/bem;->n()Lg/cjg;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/ddm;-><init>(Lg/cjg;)V

    return-void
.end method

.method public constructor <init>(Lg/cjg;)V
    .locals 1

    new-instance v0, Lg/dwo;

    invoke-direct {v0, p1}, Lg/dwo;-><init>(Lg/cjg;)V

    invoke-direct {p0, v0}, Lg/ddm;-><init>(Lg/dwo;)V

    return-void
.end method

.method public constructor <init>(Lg/dwo;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lg/evf;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ddm;->dn:Lg/evf;

    const/4 v0, 0x4

    new-array v1, v0, [Lg/ajj;

    iput-object v1, p0, Lg/ddm;->df:[Lg/ajj;

    new-array v1, v0, [Lg/ajj;

    iput-object v1, p0, Lg/ddm;->dk:[Lg/ajj;

    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lg/ddm;->dl:Ljava/util/BitSet;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lg/ddm;->cv:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/ddm;->dr:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/ddm;->dd:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lg/ddm;->dh:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lg/ddm;->dg:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lg/ddm;->dx:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lg/ddm;->dt:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lg/ddm;->db:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lg/ddm;->cw:Landroid/graphics/Paint;

    new-instance v4, Lg/ech;

    invoke-direct {v4}, Lg/ech;-><init>()V

    iput-object v4, p0, Lg/ddm;->dw:Lg/ech;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_0

    sget-object v4, Lg/crs;->a:Lg/ll;

    goto :goto_0

    :cond_0
    new-instance v4, Lg/ll;

    invoke-direct {v4}, Lg/ll;-><init>()V

    :goto_0
    iput-object v4, p0, Lg/ddm;->dj:Lg/ll;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lg/ddm;->da:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lg/ddm;->du:Z

    iput-boolean v2, p0, Lg/ddm;->dp:Z

    new-array v0, v0, [Lg/eov;

    iput-object v0, p0, Lg/ddm;->dv:[Lg/eov;

    iput-object p1, p0, Lg/ddm;->ds:Lg/dwo;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lg/ddm;->ej()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ddm;->es([I)Z

    new-instance p1, Lg/eie;

    const/16 v0, 0xd

    invoke-direct {p1, v0, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/ddm;->dm:Lg/eie;

    return-void
.end method

.method public static dz(Landroid/graphics/RectF;Lg/cjg;[F)F
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Lg/cjg;->q(Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lg/cjg;->e:Lg/gjn;

    invoke-interface {p1, p0}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result p0

    return p0

    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_1

    goto :goto_1

    :cond_1
    aget p0, p2, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    aget v2, p2, v1

    cmpl-float v2, v2, p0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lg/cjg;->p()Z

    move-result p0

    if-eqz p0, :cond_4

    aget p0, p2, v0

    return p0

    :cond_4
    :goto_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/ddm;->cx:Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v0, Lg/ddm;->db:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget-object v2, v0, Lg/ddm;->ds:Lg/dwo;

    iget v2, v2, Lg/dwo;->f:I

    ushr-int/lit8 v4, v2, 0x7

    add-int/2addr v2, v4

    mul-int v2, v2, v7

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lg/ddm;->di:Landroid/graphics/PorterDuffColorFilter;

    iget-object v8, v0, Lg/ddm;->cw:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, v0, Lg/ddm;->ds:Lg/dwo;

    iget v2, v2, Lg/dwo;->b:F

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    iget-object v2, v0, Lg/ddm;->ds:Lg/dwo;

    iget v2, v2, Lg/dwo;->f:I

    ushr-int/lit8 v4, v2, 0x7

    add-int/2addr v2, v4

    mul-int v2, v2, v9

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v2, Lg/dwo;->o:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eq v2, v4, :cond_1

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lg/ddm;->dy:Z

    move v4, v2

    move-object v2, v3

    iget-object v3, v0, Lg/ddm;->dr:Landroid/graphics/Path;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lg/ddm;->eh(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v11, v0, Lg/ddm;->dy:Z

    :cond_2
    iget-object v4, v0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Lg/dwo;->c:I

    if-lez v4, :cond_5

    invoke-virtual {v0}, Lg/ddm;->eo()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lg/ddm;->ds:Lg/dwo;

    iget v4, v4, Lg/dwo;->j:I

    int-to-double v4, v4

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v4

    double-to-int v4, v14

    iget-object v5, v0, Lg/ddm;->ds:Lg/dwo;

    iget v5, v5, Lg/dwo;->j:I

    int-to-double v5, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v5

    double-to-int v5, v12

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, v0, Lg/ddm;->du:Z

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p1}, Lg/ddm;->ee(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    :cond_3
    iget-object v4, v0, Lg/ddm;->da:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v6, v12

    float-to-int v6, v6

    if-ltz v5, :cond_4

    if-ltz v6, :cond_4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v12, v12

    iget-object v13, v0, Lg/ddm;->ds:Lg/dwo;

    iget v13, v13, Lg/dwo;->c:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v12

    add-int/2addr v13, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    iget-object v12, v0, Lg/ddm;->ds:Lg/dwo;

    iget v12, v12, Lg/dwo;->c:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v12, v6

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lg/ddm;->ds:Lg/dwo;

    iget v14, v14, Lg/dwo;->c:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v5

    int-to-float v5, v13

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, v0, Lg/ddm;->ds:Lg/dwo;

    iget v14, v14, Lg/dwo;->c:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v6

    int-to-float v6, v13

    neg-float v13, v5

    neg-float v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v12}, Lg/ddm;->ee(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    iget-object v4, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v4, v4, Lg/dwo;->h:Lg/cjg;

    iget-object v5, v0, Lg/ddm;->dq:[F

    invoke-virtual {v0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lg/ddm;->eg(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lg/cjg;[FLandroid/graphics/RectF;)V

    :goto_2
    invoke-virtual {v0}, Lg/ddm;->eb()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lg/ddm;->cy:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v1, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v1}, Lg/cjg;->r()Lg/bem;

    move-result-object v3

    iget-object v4, v1, Lg/cjg;->e:Lg/gjn;

    iget-object v5, v0, Lg/ddm;->dn:Lg/evf;

    invoke-virtual {v5, v4}, Lg/evf;->n(Lg/gjn;)Lg/gjn;

    move-result-object v4

    iput-object v4, v3, Lg/bem;->e:Lg/gjn;

    iget-object v4, v1, Lg/cjg;->g:Lg/gjn;

    invoke-virtual {v5, v4}, Lg/evf;->n(Lg/gjn;)Lg/gjn;

    move-result-object v4

    iput-object v4, v3, Lg/bem;->g:Lg/gjn;

    iget-object v4, v1, Lg/cjg;->a:Lg/gjn;

    invoke-virtual {v5, v4}, Lg/evf;->n(Lg/gjn;)Lg/gjn;

    move-result-object v4

    iput-object v4, v3, Lg/bem;->a:Lg/gjn;

    iget-object v1, v1, Lg/cjg;->l:Lg/gjn;

    invoke-virtual {v5, v1}, Lg/evf;->n(Lg/gjn;)Lg/gjn;

    move-result-object v1

    iput-object v1, v3, Lg/bem;->l:Lg/gjn;

    invoke-virtual {v3}, Lg/bem;->n()Lg/cjg;

    move-result-object v1

    iput-object v1, v0, Lg/ddm;->cz:Lg/cjg;

    iget-object v1, v0, Lg/ddm;->dq:[F

    if-nez v1, :cond_6

    iput-object v10, v0, Lg/ddm;->de:[F

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lg/ddm;->de:[F

    if-nez v3, :cond_7

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lg/ddm;->de:[F

    :cond_7
    invoke-virtual {v0}, Lg/ddm;->ep()F

    move-result v1

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lg/ddm;->dq:[F

    array-length v5, v4

    if-ge v3, v5, :cond_8

    iget-object v5, v0, Lg/ddm;->de:[F

    aget v4, v4, v3

    sub-float/2addr v4, v1

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object v13, v0, Lg/ddm;->cz:Lg/cjg;

    iget-object v14, v0, Lg/ddm;->de:[F

    iget-object v1, v0, Lg/ddm;->ds:Lg/dwo;

    iget v15, v1, Lg/dwo;->n:F

    invoke-virtual {v0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, v0, Lg/ddm;->dg:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lg/ddm;->ep()F

    move-result v1

    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v17, 0x0

    iget-object v1, v0, Lg/ddm;->dd:Landroid/graphics/Path;

    iget-object v12, v0, Lg/ddm;->dj:Lg/ll;

    move-object/from16 v18, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v12 .. v18}, Lg/ll;->m(Lg/cjg;[FFLandroid/graphics/RectF;Lg/eie;Landroid/graphics/Path;)V

    iput-boolean v11, v0, Lg/ddm;->cy:Z

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lg/ddm;->el(Landroid/graphics/Canvas;)V

    :cond_a
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final ea()F
    .locals 5

    iget-object v0, p0, Lg/ddm;->dq:[F

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    return v2

    :cond_0
    invoke-virtual {p0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v2, Lg/dwo;->h:Lg/cjg;

    iget-object v3, p0, Lg/ddm;->dj:Lg/ll;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lg/cjg;->e:Lg/gjn;

    invoke-interface {v2, v0}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v4, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v4, v4, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lg/cjg;->a:Lg/gjn;

    invoke-interface {v4, v0}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v4

    add-float/2addr v4, v2

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v2, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lg/cjg;->l:Lg/gjn;

    invoke-interface {v2, v0}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v2

    sub-float/2addr v4, v2

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v2, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lg/cjg;->g:Lg/gjn;

    invoke-interface {v2, v0}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v4, v0

    div-float/2addr v4, v1

    return v4
.end method

.method public final eb()Z
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->o:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lg/ddm;->cw:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ec(F)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v1, v0, Lg/dwo;->d:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lg/dwo;->d:F

    invoke-virtual {p0}, Lg/ddm;->ek()V

    :cond_0
    return-void
.end method

.method public final ed(Lg/ceq;)V
    .locals 5

    iget-object v0, p0, Lg/ddm;->do:Lg/ceq;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lg/ddm;->do:Lg/ceq;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/ddm;->dv:[Lg/eov;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    new-instance v2, Lg/eov;

    sget-object v3, Lg/ddm;->ct:[Lg/awu;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, v3}, Lg/eov;-><init>(Ljava/lang/Object;Lg/awt;)V

    aput-object v2, v1, v0

    :cond_0
    aget-object v1, v1, v0

    new-instance v2, Lg/ceq;

    invoke-direct {v2}, Lg/ceq;-><init>()V

    iget-wide v3, p1, Lg/ceq;->g:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lg/ceq;->k(F)V

    iget-wide v3, p1, Lg/ceq;->d:D

    mul-double v3, v3, v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lg/ceq;->l(F)V

    iput-object v2, v1, Lg/eov;->h:Lg/ceq;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/ddm;->ei([IZ)V

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final ee(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lg/ddm;->dl:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v0, v0, Lg/dwo;->j:I

    iget-object v1, p0, Lg/ddm;->dr:Landroid/graphics/Path;

    iget-object v2, p0, Lg/ddm;->dw:Lg/ech;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lg/ech;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lg/ddm;->df:[Lg/ajj;

    aget-object v4, v4, v3

    iget-object v5, p0, Lg/ddm;->ds:Lg/dwo;

    iget v5, v5, Lg/dwo;->c:I

    sget-object v6, Lg/ajj;->a:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v2, v5, p1}, Lg/ajj;->c(Landroid/graphics/Matrix;Lg/ech;ILandroid/graphics/Canvas;)V

    iget-object v4, p0, Lg/ddm;->dk:[Lg/ajj;

    aget-object v4, v4, v3

    iget-object v5, p0, Lg/ddm;->ds:Lg/dwo;

    iget v5, v5, Lg/dwo;->c:I

    invoke-virtual {v4, v6, v2, v5, p1}, Lg/ajj;->c(Landroid/graphics/Matrix;Lg/ech;ILandroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lg/ddm;->du:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget v2, v2, Lg/dwo;->j:I

    int-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-int v0, v6

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget v2, v2, Lg/dwo;->j:I

    int-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-int v2, v4

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v3, Lg/ddm;->cu:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    return-void
.end method

.method public final ef(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    new-instance v1, Lg/gid;

    invoke-direct {v1, p1}, Lg/gid;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lg/dwo;->p:Lg/gid;

    invoke-virtual {p0}, Lg/ddm;->ek()V

    return-void
.end method

.method public final eg(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lg/cjg;[FLandroid/graphics/RectF;)V
    .locals 0

    invoke-static {p6, p4, p5}, Lg/ddm;->dz(Landroid/graphics/RectF;Lg/cjg;[F)F

    move-result p4

    const/4 p5, 0x0

    cmpl-float p5, p4, p5

    if-ltz p5, :cond_0

    iget-object p3, p0, Lg/ddm;->ds:Lg/dwo;

    iget p3, p3, Lg/dwo;->n:F

    mul-float p4, p4, p3

    invoke-virtual {p1, p6, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final eh(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 8

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v0, Lg/dwo;->h:Lg/cjg;

    iget-object v3, p0, Lg/ddm;->dq:[F

    iget v4, v0, Lg/dwo;->n:F

    iget-object v6, p0, Lg/ddm;->dm:Lg/eie;

    iget-object v1, p0, Lg/ddm;->dj:Lg/ll;

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lg/ll;->m(Lg/cjg;[FFLandroid/graphics/RectF;Lg/eie;Landroid/graphics/Path;)V

    iget-object p1, p0, Lg/ddm;->ds:Lg/dwo;

    iget p1, p1, Lg/dwo;->l:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/ddm;->cv:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Lg/ddm;->ds:Lg/dwo;

    iget p2, p2, Lg/dwo;->l:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1, p2, p2, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v7, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lg/ddm;->da:Landroid/graphics/RectF;

    const/4 p2, 0x1

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final ei([IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v3, Lg/dwo;->m:Lg/dsx;

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v3, v0, Lg/ddm;->do:Lg/ceq;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    or-int v3, p2, v3

    iget-object v6, v0, Lg/ddm;->dq:[F

    const/4 v7, 0x4

    if-nez v6, :cond_2

    new-array v6, v7, [F

    iput-object v6, v0, Lg/ddm;->dq:[F

    :cond_2
    iget-object v6, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v6, v6, Lg/dwo;->m:Lg/dsx;

    iget-object v8, v6, Lg/dsx;->b:[Lg/cjg;

    iget v9, v6, Lg/dsx;->d:I

    iget-object v10, v6, Lg/dsx;->g:[[I

    iget-object v11, v6, Lg/dsx;->a:Lg/bt;

    iget-object v12, v6, Lg/dsx;->h:Lg/bt;

    iget-object v13, v6, Lg/dsx;->e:Lg/bt;

    iget-object v6, v6, Lg/dsx;->c:Lg/bt;

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_4

    aget-object v4, v10, v14

    invoke-static {v4, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v14, -0x1

    :goto_2
    if-gez v14, :cond_7

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_6

    aget-object v15, v10, v14

    invoke-static {v15, v4}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v15

    if-eqz v15, :cond_5

    move v15, v14

    goto :goto_4

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, -0x1

    :goto_4
    move v14, v15

    :cond_7
    if-nez v6, :cond_8

    if-nez v13, :cond_8

    if-nez v12, :cond_8

    if-nez v11, :cond_8

    aget-object v1, v8, v14

    goto :goto_5

    :cond_8
    aget-object v4, v8, v14

    invoke-virtual {v4}, Lg/cjg;->r()Lg/bem;

    move-result-object v4

    if-eqz v6, :cond_9

    invoke-virtual {v6, v1}, Lg/bt;->h([I)Lg/gjn;

    move-result-object v6

    iput-object v6, v4, Lg/bem;->e:Lg/gjn;

    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {v13, v1}, Lg/bt;->h([I)Lg/gjn;

    move-result-object v6

    iput-object v6, v4, Lg/bem;->g:Lg/gjn;

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12, v1}, Lg/bt;->h([I)Lg/gjn;

    move-result-object v6

    iput-object v6, v4, Lg/bem;->a:Lg/gjn;

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11, v1}, Lg/bt;->h([I)Lg/gjn;

    move-result-object v1

    iput-object v1, v4, Lg/bem;->l:Lg/gjn;

    :cond_c
    invoke-virtual {v4}, Lg/bem;->n()Lg/cjg;

    move-result-object v1

    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_12

    iget-object v6, v0, Lg/ddm;->dj:Lg/ll;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v4, v5, :cond_f

    const/4 v6, 0x2

    if-eq v4, v6, :cond_e

    const/4 v6, 0x3

    if-eq v4, v6, :cond_d

    iget-object v6, v1, Lg/cjg;->g:Lg/gjn;

    goto :goto_7

    :cond_d
    iget-object v6, v1, Lg/cjg;->e:Lg/gjn;

    goto :goto_7

    :cond_e
    iget-object v6, v1, Lg/cjg;->a:Lg/gjn;

    goto :goto_7

    :cond_f
    iget-object v6, v1, Lg/cjg;->l:Lg/gjn;

    :goto_7
    invoke-interface {v6, v2}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v6

    if-eqz v3, :cond_10

    iget-object v8, v0, Lg/ddm;->dq:[F

    aput v6, v8, v4

    :cond_10
    iget-object v8, v0, Lg/ddm;->dv:[Lg/eov;

    aget-object v9, v8, v4

    if-eqz v9, :cond_11

    invoke-virtual {v9, v6}, Lg/eov;->v(F)V

    if-eqz v3, :cond_11

    aget-object v6, v8, v4

    invoke-virtual {v6}, Lg/eov;->u()V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v0}, Lg/ddm;->invalidateSelf()V

    :cond_13
    :goto_8
    return-void
.end method

.method public final ej()Z
    .locals 7

    iget-object v0, p0, Lg/ddm;->cx:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lg/ddm;->di:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v2, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {p0, v3}, Lg/ddm;->et(I)I

    move-result v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lg/ddm;->db:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lg/ddm;->et(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-object v5, p0, Lg/ddm;->cx:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, p0, Lg/ddm;->di:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/ddm;->cx:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/ddm;->di:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_2
    return v4
.end method

.method public final ek()V
    .locals 4

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v1, v0, Lg/dwo;->d:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lg/dwo;->c:I

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lg/dwo;->j:I

    invoke-virtual {p0}, Lg/ddm;->ej()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public el(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v4, p0, Lg/ddm;->cz:Lg/cjg;

    iget-object v5, p0, Lg/ddm;->de:[F

    invoke-virtual {p0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v6, p0, Lg/ddm;->dg:Landroid/graphics/RectF;

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lg/ddm;->ep()F

    move-result v0

    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, p0, Lg/ddm;->cw:Landroid/graphics/Paint;

    iget-object v3, p0, Lg/ddm;->dd:Landroid/graphics/Path;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lg/ddm;->eg(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lg/cjg;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method public final em(Lg/dsx;)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v0, Lg/dwo;->m:Lg/dsx;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lg/dwo;->m:Lg/dsx;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/ddm;->ei([IZ)V

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final en(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ddm;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final eo()Z
    .locals 6

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {p0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/cjg;->q(Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lg/ddm;->dq:[F

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v3, v0, v2

    const/4 v4, 0x1

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget v5, v0, v4

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->h:Lg/cjg;

    invoke-virtual {v0}, Lg/cjg;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    return v2

    :cond_4
    :goto_3
    return v1
.end method

.method public final ep()F
    .locals 2

    invoke-virtual {p0}, Lg/ddm;->eb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ddm;->cw:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final eq()F
    .locals 2

    iget-object v0, p0, Lg/ddm;->dq:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->h:Lg/cjg;

    iget-object v0, v0, Lg/cjg;->e:Lg/gjn;

    invoke-virtual {p0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final er(F)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v1, v0, Lg/dwo;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lg/dwo;->n:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/ddm;->dy:Z

    iput-boolean p1, p0, Lg/ddm;->cy:Z

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final es([I)Z
    .locals 5

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ddm;->db:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v3, v3, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v2, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lg/ddm;->cw:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v4, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v4, v4, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v3, p1, :cond_1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return v1

    :cond_1
    return v0
.end method

.method public final et(I)I
    .locals 6

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v1, v0, Lg/dwo;->d:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, v0, Lg/dwo;->k:F

    add-float/2addr v1, v3

    iget-object v0, v0, Lg/dwo;->p:Lg/gid;

    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lg/gid;->d:Z

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    invoke-static {p1, v3}, Lg/afr;->c(II)I

    move-result v4

    iget v5, v0, Lg/gid;->b:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lg/gid;->c:F

    cmpg-float v5, v4, v2

    if-lez v5, :cond_1

    cmpg-float v5, v1, v2

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v4, 0x40900000    # 4.5f

    mul-float v1, v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {p1, v3}, Lg/afr;->c(II)I

    move-result p1

    iget v3, v0, Lg/gid;->e:I

    invoke-static {p1, v1, v3}, Lg/eyt;->ac(IFI)I

    move-result p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v0, v0, Lg/gid;->f:I

    if-eqz v0, :cond_2

    sget v1, Lg/gid;->a:I

    invoke-static {v0, v1}, Lg/afr;->c(II)I

    move-result v0

    invoke-static {v0, p1}, Lg/afr;->f(II)I

    move-result p1

    :cond_2
    invoke-static {p1, v4}, Lg/afr;->c(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final eu()Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lg/ddm;->dh:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public final ev()V
    .locals 2

    const v0, -0xbbbbbc

    iget-object v1, p0, Lg/ddm;->dw:Lg/ech;

    invoke-virtual {v1, v0}, Lg/ech;->m(I)V

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v0, v0, Lg/dwo;->f:I

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v1, Lg/dwo;->h:Lg/cjg;

    iget-object v2, p0, Lg/ddm;->dq:[F

    invoke-static {v0, v1, v2}, Lg/ddm;->dz(Landroid/graphics/RectF;Lg/cjg;[F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lg/ddm;->ds:Lg/dwo;

    iget v2, v2, Lg/dwo;->n:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lg/ddm;->dy:Z

    iget-object v2, p0, Lg/ddm;->dr:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v2}, Lg/ddm;->eh(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ddm;->dy:Z

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    invoke-static {p1, v2}, Lg/il;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void

    :cond_3
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    :try_start_0
    invoke-static {p1, v2}, Lg/dnc;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v2}, Lg/dnc;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lg/ddm;->dx:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lg/ddm;->eu()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lg/ddm;->dr:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v2}, Lg/ddm;->eh(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lg/ddm;->dt:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ddm;->dy:Z

    iput-boolean v0, p0, Lg/ddm;->cy:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->m:Lg/dsx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/dsx;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lg/dwo;

    iget-object v1, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-direct {v0, v1}, Lg/dwo;-><init>(Lg/dwo;)V

    iput-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ddm;->dy:Z

    iput-boolean v0, p0, Lg/ddm;->cy:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->m:Lg/dsx;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget-boolean v1, p0, Lg/ddm;->dp:Z

    invoke-virtual {p0, v0, v1}, Lg/ddm;->ei([IZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lg/ddm;->dp:Z

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->m:Lg/dsx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lg/ddm;->ei([IZ)V

    :cond_0
    invoke-virtual {p0, p1}, Lg/ddm;->es([I)Z

    move-result p1

    invoke-virtual {p0}, Lg/ddm;->ej()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    :cond_3
    return v1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget v1, v0, Lg/dwo;->f:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lg/dwo;->f:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p1, p0, Lg/ddm;->ds:Lg/dwo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setShapeAppearanceModel(Lg/cjg;)V
    .locals 1

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iput-object p1, v0, Lg/dwo;->h:Lg/cjg;

    const/4 p1, 0x0

    iput-object p1, v0, Lg/dwo;->m:Lg/dsx;

    iput-object p1, p0, Lg/ddm;->dq:[F

    iput-object p1, p0, Lg/ddm;->de:[F

    invoke-virtual {p0}, Lg/ddm;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ddm;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iput-object p1, v0, Lg/dwo;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lg/ddm;->ej()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lg/ddm;->ds:Lg/dwo;

    iget-object v1, v0, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lg/dwo;->q:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lg/ddm;->ej()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

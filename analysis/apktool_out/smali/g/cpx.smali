.class public final Lg/cpx;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lg/aex;


# instance fields
.field public final a:Lg/dyn;

.field public final b:Lg/eqi;

.field public final c:Ljava/util/HashSet;

.field public final d:Landroid/graphics/PaintFlagsDrawFilter;

.field public final e:Landroid/graphics/Matrix;

.field public final f:Ljava/util/HashSet;

.field public final g:Landroid/graphics/Paint;

.field public final h:Z

.field public final i:Lg/eum;

.field public j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lg/fc;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lg/cpx;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lg/cpx;->d:Landroid/graphics/PaintFlagsDrawFilter;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lg/cpx;->e:Landroid/graphics/Matrix;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lg/cpx;->f:Ljava/util/HashSet;

    new-instance v1, Lg/eqi;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, p0, v2, v3}, Lg/eqi;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v1, p0, Lg/cpx;->b:Lg/eqi;

    new-instance v1, Lg/dyn;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/cpx;->a:Lg/dyn;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/cpx;->h:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lg/cpx;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Lg/eum;

    invoke-direct {v0, p1, p0}, Lg/eum;-><init>(Lg/fc;Lg/cpx;)V

    iput-object v0, p0, Lg/cpx;->i:Lg/eum;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lg/cpx;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/cpx;->d:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v0, p0, Lg/cpx;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lg/cpx;->e:Landroid/graphics/Matrix;

    iget-object v2, p0, Lg/cpx;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final invalidateSelf()V
    .locals 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lg/cpx;->c:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-interface {v1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->af()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    iget-object v1, v0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v2, Lg/aup;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lg/aup;-><init>(Lg/eum;Lg/cpx;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lg/cpx;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/eum;->ah()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/eum;->af()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lg/eum;->ah()V

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    iget-object v1, v0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v2, Lg/aup;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lg/aup;-><init>(Lg/eum;Lg/cpx;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lg/cpx;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/eum;->ad()V

    return-void

    :cond_0
    iget-object v1, v0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v2, Lg/bbf;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lg/bbf;-><init>(Lg/eum;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lg/cpx;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setBounds(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p3, p0, Lg/cpx;->i:Lg/eum;

    iget-object p4, p3, Lg/eum;->q:Landroid/os/Handler;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p1

    invoke-virtual {p3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    mul-int/lit8 v1, p2, 0x2

    if-gt v1, p1, :cond_2

    move p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p2, 0x1

    :cond_2
    iget p1, p3, Lg/eum;->p:I

    if-eq p2, p1, :cond_3

    invoke-virtual {p3}, Lg/eum;->af()Z

    move-result p1

    iget-object v1, p3, Lg/eum;->b:Lg/bbf;

    invoke-virtual {p4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Lg/grz;

    invoke-direct {v1, p3, p2, p1}, Lg/grz;-><init>(Lg/eum;IZ)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iget p4, p3, Lg/eum;->p:I

    int-to-float p4, p4

    mul-float p1, p1, p4

    invoke-virtual {p3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, p2

    iget p2, p3, Lg/eum;->p:I

    int-to-float p2, p2

    mul-float p4, p4, p2

    invoke-virtual {p3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p4, p2

    iget-object p2, p0, Lg/cpx;->e:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, p3, Lg/eum;->p:I

    div-int/2addr p1, p2

    invoke-virtual {p3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget p3, p3, Lg/eum;->p:I

    div-int/2addr p2, p3

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lg/cpx;->j:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lg/cpx;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lg/cpx;->c:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$Callback;

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne v6, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v6, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v0, p0, Lg/cpx;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lg/eum;->af()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lg/cpx;->k()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lg/eum;->af()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lg/cpx;->l()V

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lg/cpx;->i:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->af()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/eum;->ad()V

    :cond_0
    iget-object v1, v0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v2, Lg/bbf;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lg/bbf;-><init>(Lg/eum;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lg/cpx;->k()V

    return-void
.end method

.method public final stop()V
    .locals 0

    invoke-virtual {p0}, Lg/cpx;->l()V

    return-void
.end method

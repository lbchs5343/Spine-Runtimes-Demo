.class public abstract Lg/fdp;
.super Lg/ghz;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Landroid/hardware/display/VirtualDisplay;


# instance fields
.field public b:Lg/gft;

.field public c:Lg/bpl;

.field public d:F

.field public e:Landroid/view/WindowManager$LayoutParams;

.field public f:F

.field public g:Landroid/media/projection/MediaProjection;

.field public h:Landroid/graphics/Rect;

.field public i:Lg/heo;

.field public j:I

.field public k:I

.field public l:Lg/gek;

.field public m:Landroid/graphics/PointF;

.field public volatile n:Z

.field public o:Lg/n;

.field public p:Landroid/graphics/PointF;

.field public q:Lg/fdp;

.field public r:Landroid/view/WindowManager$LayoutParams;

.field public s:Landroid/view/WindowManager;

.field public t:I

.field public final u:Ljava/lang/Object;

.field public v:Landroid/media/ImageReader;

.field public w:F

.field public x:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fdp;->n:Z

    const v0, 0x4096cbe4

    iput v0, p0, Lg/fdp;->d:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/fdp;->u:Ljava/lang/Object;

    return-void
.end method

.method public static y(Landroid/media/Image;Landroid/graphics/Rect;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    aget-object v11, v8, v9

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0xff

    if-ge v12, v5, :cond_3

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_2

    iget v15, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v14

    const/16 v16, 0x1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v12

    if-ltz v15, :cond_0

    if-gt v15, v1, :cond_0

    if-ltz v2, :cond_0

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    mul-int v15, v15, v8

    mul-int v2, v2, v11

    add-int/2addr v2, v15

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/2addr v2, v13

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/2addr v15, v13

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/2addr v9, v13

    invoke-static {v13, v2, v15, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v14, v12, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_3

    :goto_2
    invoke-virtual {v7, v14, v12, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/16 v16, 0x1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    goto/16 :goto_7

    :cond_4
    const/16 v1, 0x44

    invoke-static {v13, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/16 v3, 0xaa

    invoke-static {v13, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v13, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    filled-new-array {v1, v3, v4}, [I

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    aput v5, v4, v16

    const/4 v8, 0x2

    aput v5, v4, v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v3, :cond_5

    aget v9, v1, v8

    if-gt v6, v9, :cond_6

    aget v6, v4, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v8

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    aget v1, v4, v6

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v3, :cond_b

    const/4 v5, 0x1

    if-gt v9, v5, :cond_8

    aget v8, v4, v9

    if-lt v8, v1, :cond_9

    :cond_8
    if-le v9, v5, :cond_a

    aget v5, v4, v9

    if-gt v5, v1, :cond_a

    :cond_9
    aget v1, v4, v9

    move v6, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    if-nez v6, :cond_c

    const/high16 v2, -0x1000000

    goto :goto_7

    :cond_c
    const/4 v5, 0x1

    if-ne v6, v5, :cond_d

    const v2, -0x555556

    :cond_d
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static z(Lg/fdp;IIF)V
    .locals 7

    iget-object v0, p0, Lg/fdp;->h:Landroid/graphics/Rect;

    iget v1, p0, Lg/fdp;->k:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p1, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lg/fdp;->j:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p2, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lg/fdp;->b:Lg/gft;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lg/fdp;->b:Lg/gft;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lg/fdp;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lg/fdp;->b:Lg/gft;

    iget-object v2, p0, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lg/fdp;->f:F

    float-to-double v1, v1

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v1

    double-to-int p3, v5

    add-int/2addr p3, p1

    iget-object p1, p0, Lg/fdp;->o:Lg/n;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    iget p3, p0, Lg/fdp;->f:F

    float-to-double v0, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-int p3, v2

    add-int/2addr p3, p2

    iget-object p2, p0, Lg/fdp;->o:Lg/n;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lg/fdp;->s:Landroid/view/WindowManager;

    iget-object p2, p0, Lg/fdp;->o:Lg/n;

    iget-object p0, p0, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final aa()V
    .locals 3

    sget-object v0, Lg/fdp;->a:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    sput-object v1, Lg/fdp;->a:Landroid/hardware/display/VirtualDisplay;

    :cond_0
    iget-object v0, p0, Lg/fdp;->g:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lg/fdp;->c:Lg/bpl;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    :cond_1
    iget-object v0, p0, Lg/fdp;->g:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    iput-object v1, p0, Lg/fdp;->g:Landroid/media/projection/MediaProjection;

    :cond_2
    iget-object v0, p0, Lg/fdp;->v:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lg/fdp;->v:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method public final ab()V
    .locals 2

    iget-object v0, p0, Lg/fdp;->s:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/fdp;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fdp;->b:Lg/gft;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/fdp;->s:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lg/fdp;->o:Lg/n;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/fdp;->s:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    const-class v0, Lg/fdp;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lg/fdp;->n:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ac()Landroid/view/ContextThemeWrapper;
    .locals 5

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x2

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int v1, v4, v3

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f130143

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lg/fdp;->i:Lg/heo;

    return-object p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901a3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lg/fdp;->l:Lg/gek;

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lg/fdp;->x:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/fdp;->ac()Landroid/view/ContextThemeWrapper;

    move-result-object v0

    iput-object v0, p0, Lg/fdp;->x:Landroid/view/ContextThemeWrapper;

    :cond_1
    iget-object v0, p0, Lg/fdp;->x:Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lg/gek;->e:Ljava/lang/String;

    iget v3, p1, Lg/gek;->b:F

    iget v4, p1, Lg/gek;->i:F

    iget v5, p1, Lg/gek;->d:F

    iget v6, p1, Lg/gek;->c:F

    iget v7, p1, Lg/gek;->j:F

    iget v8, p1, Lg/gek;->h:F

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const v2, 0x7f12016f

    invoke-virtual {p0, v2, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    float-to-int v2, v8

    float-to-int v7, v7

    float-to-int v6, v6

    float-to-int v5, v5

    invoke-static {v2, v7, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v11

    const v2, 0x7f120169

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v11

    const v2, 0x7f120174

    invoke-virtual {p0, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v11

    const v2, 0x7f120172

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v11

    const v2, 0x7f12016c

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lg/gek;->o()Ljava/lang/String;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v11

    const v2, 0x7f12016e

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lg/gek;->p()Ljava/lang/String;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v11

    const v2, 0x7f120173

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lg/gek;->l()Ljava/lang/String;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v11

    const v2, 0x7f120177

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lg/gek;->n()Ljava/lang/String;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v11

    const v2, 0x7f12016b

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    float-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lg/fdp;->q:Lg/fdp;

    invoke-static {v5, v4}, Lg/fso;->aa(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v11

    aput-object v4, v6, v9

    const v2, 0x7f120175

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    float-to-int v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lg/fdp;->q:Lg/fdp;

    invoke-static {v4, v3}, Lg/fso;->aa(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v11

    aput-object v3, v4, v9

    const v2, 0x7f120176

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lg/fdp;->x:Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lg/fso;->ah()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2
    const v2, 0x7f0900e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lg/gwc;

    invoke-direct {v3, p0, p1, v1, v11}, Lg/gwc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Dialog;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0902ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lg/gwc;

    invoke-direct {v3, p0, p1, v1, v9}, Lg/gwc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Dialog;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lg/cuw;

    invoke-direct {v2, p0}, Lg/cuw;-><init>(Lg/fdp;)V

    const v3, 0x7f0900e6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lg/fzp;

    const/4 v6, 0x3

    invoke-direct {v4, p0, p1, v6}, Lg/fzp;-><init>(Lg/fdp;Lg/gek;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0900e4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lg/fzp;

    invoke-direct {v4, p0, p1, v11}, Lg/fzp;-><init>(Lg/fdp;Lg/gek;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0900e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lg/fzp;

    invoke-direct {v4, p0, p1, v9}, Lg/fzp;-><init>(Lg/fdp;Lg/gek;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0900e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lg/fzp;

    invoke-direct {v3, p0, p1, v5}, Lg/fzp;-><init>(Lg/fdp;Lg/gek;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lg/fdp;->q:Lg/fdp;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_3
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg/fdp;->q:Lg/fdp;

    invoke-static {p1}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object p1

    aget p1, p1, v11

    iget-object v0, p0, Lg/fdp;->q:Lg/fdp;

    const/high16 v2, 0x440c0000    # 560.0f

    invoke-static {v0, v2}, Lg/fso;->al(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    int-to-float p1, p1

    const v2, 0x3f666666    # 0.9f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, -0x2

    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void

    :cond_4
    const v0, 0x7f0900c7

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fdp;->x:Landroid/view/ContextThemeWrapper;

    iget v0, p0, Lg/fdp;->t:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lg/fdp;->ab()V

    invoke-virtual {p0}, Lg/fdp;->aa()V

    const v0, 0x7f1203c3

    invoke-static {p0, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lg/fdp;->t:I

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lg/fdp;->q:Lg/fdp;

    new-instance v0, Lg/heo;

    invoke-direct {v0, p0}, Lg/heo;-><init>(Lg/fdp;)V

    iput-object v0, p0, Lg/fdp;->i:Lg/heo;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lg/fdp;->s:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lg/fdp;->t:I

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lg/fdp;->ab()V

    invoke-virtual {p0}, Lg/fdp;->aa()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

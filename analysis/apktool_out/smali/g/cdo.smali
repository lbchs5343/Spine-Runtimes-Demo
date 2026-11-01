.class public abstract Lg/cdo;
.super Lg/guy;
.source "SourceFile"


# static fields
.field public static final i:I


# instance fields
.field public j:Landroid/media/projection/MediaProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/fyt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    sput v0, Lg/cdo;->i:I

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    invoke-super/range {p0 .. p3}, Lg/dms;->onActivityResult(IILandroid/content/Intent;)V

    sget v2, Lg/cdo;->i:I

    move/from16 v3, p1

    if-ne v3, v2, :cond_5

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v0, "cn.trinea.action.MANAGE_MEDIA_PROJECTION"

    invoke-interface {v1, v0}, Lg/fcd;->onDenied(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "cn.trinea.action.MANAGE_MEDIA_PROJECTION"

    move-object v3, v1

    check-cast v3, Ld/b/a;

    invoke-virtual {v3, v2}, Ld/b/a;->h(Ljava/lang/String;)V

    iget-object v2, v3, Ld/b/a;->d:Lg/fdp;

    iget-boolean v4, v2, Lg/fdp;->n:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class v4, Lg/fdp;

    monitor-enter v4

    :try_start_0
    iput-boolean v5, v2, Lg/fdp;->n:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070063

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v6, 0x7f070062

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v6, 0x7f070064

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v6, 0x2

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v16, v7, 0x2

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lg/fso;->ah()I

    move-result v13

    const v14, -0x7ffffef8

    const/4 v15, -0x3

    move v12, v11

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move v13, v11

    iput-object v10, v2, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x33

    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    div-int/lit8 v11, v13, 0x2

    sub-int v7, v6, v11

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v16, v11

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v7, Lg/gft;

    iget-object v10, v2, Lg/fdp;->q:Lg/fdp;

    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lg/gft;->j()V

    iput-object v7, v2, Lg/fdp;->b:Lg/gft;

    new-instance v10, Lg/flh;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v11}, Lg/flh;-><init>(Lg/fdp;I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, v2, Lg/fdp;->s:Landroid/view/WindowManager;

    iget-object v10, v2, Lg/fdp;->b:Lg/gft;

    iget-object v11, v2, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v10, v11}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lg/fso;->ah()I

    move-result v10

    const v11, -0x7ffffef8

    const/4 v12, -0x3

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, v2, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    iput v14, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v6, v10

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v10, v2, Lg/fdp;->r:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v10, v9

    iget-object v11, v2, Lg/fdp;->q:Lg/fdp;

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v11, v12}, Lg/fso;->al(Landroid/content/Context;F)F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0057

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v2, Lg/fdp;->k:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0056

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v2, Lg/fdp;->j:I

    new-instance v7, Landroid/graphics/Rect;

    iget v10, v2, Lg/fdp;->k:I

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v6, v10

    iget v12, v2, Lg/fdp;->j:I

    div-int/lit8 v12, v12, 0x2

    sub-int v14, v16, v12

    add-int/2addr v10, v6

    add-int/2addr v10, v5

    add-int v12, v12, v16

    add-int/2addr v12, v5

    invoke-direct {v7, v11, v14, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v2, Lg/fdp;->h:Landroid/graphics/Rect;

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v11, v13, 0x2

    add-int/2addr v11, v6

    int-to-float v6, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iput v6, v2, Lg/fdp;->f:F

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v2, Lg/fdp;->p:Landroid/graphics/PointF;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v2, Lg/fdp;->m:Landroid/graphics/PointF;

    const/high16 v6, 0x41c80000    # 25.0f

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v6

    iput v4, v2, Lg/fdp;->w:F

    invoke-virtual {v2}, Lg/fdp;->ac()Landroid/view/ContextThemeWrapper;

    move-result-object v4

    iput-object v4, v2, Lg/fdp;->x:Landroid/view/ContextThemeWrapper;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0c00db

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lg/n;

    iput-object v4, v2, Lg/fdp;->o:Lg/n;

    new-instance v6, Lg/flh;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Lg/flh;-><init>(Lg/fdp;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v2, Lg/fdp;->o:Lg/n;

    invoke-virtual {v4, v2}, Lg/n;->setCloseOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v2, Lg/fdp;->o:Lg/n;

    invoke-virtual {v4, v2}, Lg/n;->setInfoOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v2, Lg/fdp;->o:Lg/n;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Lg/fdp;->s:Landroid/view/WindowManager;

    iget-object v6, v2, Lg/fdp;->o:Lg/n;

    iget-object v2, v2, Lg/fdp;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v6, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    iget-object v2, v3, Ld/b/a;->d:Lg/fdp;

    sget-object v3, Lg/fdp;->a:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lg/fdp;->aa()V

    :cond_3
    const-string v3, "media_projection"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/projection/MediaProjectionManager;

    move-object/from16 v4, p3

    invoke-virtual {v3, v0, v4}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, v2, Lg/fdp;->g:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_4

    const-string v0, "MediaProjection is null"

    invoke-static {v0}, Lg/erl;->y(Ljava/lang/String;)V

    iget-object v0, v2, Lg/fdp;->q:Lg/fdp;

    const v2, 0x7f120171

    invoke-static {v0, v2}, Lg/gm;->c(Landroid/content/Context;I)V

    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, v2, Lg/fdp;->s:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v5, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, v2, Lg/fdp;->v:Landroid/media/ImageReader;

    new-instance v5, Lg/exx;

    invoke-direct {v5, v2}, Lg/exx;-><init>(Lg/fdp;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v4, v2, Lg/fdp;->g:Landroid/media/projection/MediaProjection;

    new-instance v5, Lg/bpl;

    invoke-direct {v5}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    iput-object v5, v2, Lg/fdp;->c:Lg/bpl;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    iget-object v7, v2, Lg/fdp;->g:Landroid/media/projection/MediaProjection;

    const-string v8, "DevToolsScreenCapture"

    iget v9, v3, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Point;->y:I

    iget v11, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v0, v2, Lg/fdp;->v:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v12, 0x10

    invoke-virtual/range {v7 .. v15}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    sput-object v0, Lg/fdp;->a:Landroid/hardware/display/VirtualDisplay;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "media_projection"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lg/cdo;->j:Landroid/media/projection/MediaProjectionManager;

    return-void
.end method

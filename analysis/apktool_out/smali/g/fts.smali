.class public final Lg/fts;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public a:Lg/dpa;

.field public aa:Lg/xt;

.field public ab:Landroid/graphics/Canvas;

.field public ac:Ljava/lang/String;

.field public final ad:Lg/bzg;

.field public ae:Lg/fav;

.field public af:Z

.field public ag:Z

.field public ah:Landroid/graphics/Bitmap;

.field public ai:Landroid/graphics/RectF;

.field public aj:Z

.field public ak:Ljava/lang/String;

.field public final al:Ljava/util/ArrayList;

.field public am:Landroid/graphics/Rect;

.field public b:Z

.field public c:I

.field public d:Landroid/view/View;

.field public final e:Lg/zl;

.field public f:Z

.field public g:Z

.field public h:Lg/dpc;

.field public i:Landroid/graphics/Matrix;

.field public j:Landroid/graphics/RectF;

.field public k:Lg/fsj;

.field public l:Landroid/graphics/Rect;

.field public m:Z

.field public n:Ljava/util/Map;

.field public o:Landroid/graphics/Matrix;

.field public p:Lg/daw;

.field public q:Z

.field public r:Landroid/graphics/Rect;

.field public s:Lg/aio;

.field public t:Z

.field public u:Lg/gee;

.field public v:Lg/ewj;

.field public w:Z

.field public x:Lg/cgf;

.field public y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lg/bzg;

    invoke-direct {v0}, Lg/bzg;-><init>()V

    iput-object v0, p0, Lg/fts;->ad:Lg/bzg;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/fts;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lg/fts;->t:Z

    sget-object v3, Lg/ewj;->dq:Lg/ewj;

    iput-object v3, p0, Lg/fts;->v:Lg/ewj;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lg/fts;->al:Ljava/util/ArrayList;

    new-instance v3, Lg/zl;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0}, Lg/zl;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Lg/fts;->e:Lg/zl;

    iput-boolean v2, p0, Lg/fts;->aj:Z

    iput-boolean v1, p0, Lg/fts;->w:Z

    const/16 v1, 0xff

    iput v1, p0, Lg/fts;->c:I

    sget-object v1, Lg/xt;->dq:Lg/xt;

    iput-object v1, p0, Lg/fts;->aa:Lg/xt;

    iput-boolean v2, p0, Lg/fts;->f:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lg/fts;->z:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lg/fts;->ag:Z

    invoke-virtual {v0, v3}, Lg/bzg;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static an(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final ao()V
    .locals 5

    iget-object v0, p0, Lg/fts;->s:Lg/aio;

    if-nez v0, :cond_0

    new-instance v0, Lg/jd;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/jd;-><init>(Lg/fts;I)V

    iget-object v1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/fts;->aq()V

    invoke-virtual {p0}, Lg/fts;->az()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lg/fts;->ad:Lg/bzg;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, v2, Lg/bzg;->m:Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lg/bzg;->p(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lg/bzg;->n:J

    invoke-virtual {v2}, Lg/bzg;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v2, Lg/bzg;->a:F

    invoke-virtual {v2}, Lg/bzg;->u()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lg/bzg;->s()F

    move-result v0

    invoke-virtual {v2, v0}, Lg/bzg;->o(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lg/bzg;->t()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v2, Lg/bzg;->a:F

    invoke-virtual {v2}, Lg/bzg;->s()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lg/bzg;->u()F

    move-result v0

    invoke-virtual {v2, v0}, Lg/bzg;->o(F)V

    :cond_3
    :goto_0
    iget-object v0, v2, Lg/bzg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, v2}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lg/ewj;->dq:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    goto :goto_2

    :cond_5
    sget-object v0, Lg/ewj;->ox:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lg/fts;->az()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v2, Lg/bzg;->g:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    invoke-virtual {v2}, Lg/bzg;->u()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lg/bzg;->s()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lg/fts;->ap(I)V

    invoke-virtual {v2, v1}, Lg/bzg;->p(Z)V

    invoke-virtual {v2}, Lg/bzg;->t()Z

    move-result v0

    invoke-virtual {v2, v0}, Lg/bzg;->r(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lg/ewj;->dq:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    :cond_8
    return-void
.end method

.method public final ap(I)V
    .locals 2

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    new-instance v0, Lg/hea;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/hea;-><init>(Lg/fts;II)V

    iget-object p1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lg/fts;->ad:Lg/bzg;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lg/bzg;->o(F)V

    return-void
.end method

.method public final aq()V
    .locals 7

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lg/fts;->aa:Lg/xt;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v3, v0, Lg/cgf;->d:Z

    iget v0, v0, Lg/cgf;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/fpw;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-eqz v3, :cond_2

    const/16 v1, 0x1c

    if-ge v2, v1, :cond_2

    :cond_1
    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x19

    if-gt v2, v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iput-boolean v4, p0, Lg/fts;->f:Z

    return-void
.end method

.method public final ar(I)V
    .locals 2

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    new-instance v0, Lg/hea;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lg/hea;-><init>(Lg/fts;II)V

    iget-object p1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    iget-object v0, p0, Lg/fts;->ad:Lg/bzg;

    iget v1, v0, Lg/bzg;->f:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lg/bzg;->q(FF)V

    return-void
.end method

.method public final as()V
    .locals 7

    iget-object v0, p0, Lg/fts;->s:Lg/aio;

    if-nez v0, :cond_0

    new-instance v0, Lg/jd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/jd;-><init>(Lg/fts;I)V

    iget-object v1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/fts;->aq()V

    invoke-virtual {p0}, Lg/fts;->az()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lg/fts;->ad:Lg/bzg;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, v2, Lg/bzg;->m:Z

    invoke-virtual {v2}, Lg/bzg;->t()Z

    move-result v0

    iget-object v3, v2, Lg/bzg;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_2

    invoke-static {v4, v2, v0}, Lg/cnh;->i(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v4, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lg/bzg;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lg/bzg;->s()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lg/bzg;->u()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lg/bzg;->o(F)V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lg/bzg;->n:J

    const/4 v0, 0x0

    iput v0, v2, Lg/bzg;->j:I

    iget-boolean v3, v2, Lg/bzg;->m:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Lg/bzg;->p(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_5
    sget-object v0, Lg/ewj;->dq:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    goto :goto_2

    :cond_6
    sget-object v0, Lg/ewj;->d:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lg/fts;->az()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, v2, Lg/bzg;->g:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    invoke-virtual {v2}, Lg/bzg;->u()F

    move-result v0

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lg/bzg;->s()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lg/fts;->ap(I)V

    invoke-virtual {v2, v1}, Lg/bzg;->p(Z)V

    invoke-virtual {v2}, Lg/bzg;->t()Z

    move-result v0

    invoke-virtual {v2, v0}, Lg/bzg;->r(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lg/ewj;->dq:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    :cond_9
    return-void
.end method

.method public final at(Landroid/content/Context;)V
    .locals 29

    move-object/from16 v1, p0

    iget-object v4, v1, Lg/fts;->x:Lg/cgf;

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/aio;

    iget-object v2, v4, Lg/cgf;->o:Landroid/graphics/Rect;

    move-object v3, v2

    new-instance v2, Lg/cbc;

    move-object v5, v3

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v8, Lg/ayj;->dq:Lg/ayj;

    new-instance v9, Lg/eld;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v18}, Lg/eld;-><init>(Lg/fc;Lg/eqn;Lg/dlz;Lg/cnc;Lg/dlz;Lg/cnc;Lg/cnc;Lg/cnc;Lg/cnc;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget-object v24, Lg/bwd;->dq:Lg/bwd;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v20, v5

    const-string v5, "__container"

    move/from16 v19, v6

    const-wide/16 v6, -0x1

    move-object v13, v9

    const-wide/16 v9, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v12, v3

    move-object/from16 v23, v3

    invoke-direct/range {v2 .. v28}, Lg/cbc;-><init>(Ljava/util/List;Lg/cgf;Ljava/lang/String;JLg/ayj;JLjava/lang/String;Ljava/util/List;Lg/eld;IIIFFFFLg/dlz;Lg/dpa;Ljava/util/List;Lg/bwd;Lg/cnc;ZLg/aoy;Lg/fzn;)V

    iget-object v3, v4, Lg/cgf;->m:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lg/aio;-><init>(Lg/fts;Lg/cbc;Ljava/util/List;Lg/cgf;Landroid/content/Context;)V

    iput-object v0, v1, Lg/fts;->s:Lg/aio;

    iget-boolean v2, v1, Lg/fts;->g:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lg/aio;->k(Z)V

    :cond_1
    iget-object v0, v1, Lg/fts;->s:Lg/aio;

    iget-boolean v2, v1, Lg/fts;->w:Z

    iput-boolean v2, v0, Lg/aio;->f:Z

    return-void
.end method

.method public final au()Lg/daw;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/fts;->p:Lg/daw;

    if-nez v0, :cond_1

    new-instance v0, Lg/daw;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lg/fts;->ae:Lg/fav;

    invoke-direct {v0, v1, v2}, Lg/daw;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lg/fav;)V

    iput-object v0, p0, Lg/fts;->p:Lg/daw;

    iget-object v1, p0, Lg/fts;->ak:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lg/daw;->g:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lg/fts;->p:Lg/daw;

    return-object v0
.end method

.method public final av(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lg/fts;->s:Lg/aio;

    iget-object v1, p0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/fts;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lg/cgf;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v1, v1, Lg/cgf;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget v1, p0, Lg/fts;->c:I

    invoke-virtual {v0, p1, v2, v1}, Lg/grq;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final aw()Lg/dpa;
    .locals 5

    iget-object v0, p0, Lg/fts;->a:Lg/dpa;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lg/fts;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lg/fts;->a:Lg/dpa;

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/fts;->a:Lg/dpa;

    if-nez v0, :cond_3

    new-instance v0, Lg/dpa;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lg/fts;->ac:Ljava/lang/String;

    iget-object v3, p0, Lg/fts;->k:Lg/fsj;

    iget-object v4, p0, Lg/fts;->x:Lg/cgf;

    iget-object v4, v4, Lg/cgf;->e:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lg/dpa;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lg/fsj;Ljava/util/HashMap;)V

    iput-object v0, p0, Lg/fts;->a:Lg/dpa;

    :cond_3
    iget-object v0, p0, Lg/fts;->a:Lg/dpa;

    return-object v0
.end method

.method public final ax(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    new-instance v0, Lg/gzv;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/gzv;-><init>(Lg/fts;Ljava/lang/String;I)V

    iget-object p1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lg/cgf;->u(Ljava/lang/String;)Lg/ewh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lg/ewh;->b:F

    iget v0, v0, Lg/ewh;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lg/fts;->ba(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    invoke-static {v1, p1, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ay()V
    .locals 2

    iget-object v0, p0, Lg/fts;->ad:Lg/bzg;

    iget-boolean v1, v0, Lg/bzg;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/bzg;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lg/ewj;->dq:Lg/ewj;

    iput-object v1, p0, Lg/fts;->v:Lg/ewj;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lg/fts;->x:Lg/cgf;

    iput-object v1, p0, Lg/fts;->s:Lg/aio;

    iput-object v1, p0, Lg/fts;->a:Lg/dpa;

    iput-object v1, v0, Lg/bzg;->e:Lg/cgf;

    const/high16 v1, -0x31000000

    iput v1, v0, Lg/bzg;->c:F

    const/high16 v1, 0x4f000000

    iput v1, v0, Lg/bzg;->f:F

    invoke-virtual {p0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final az()Z
    .locals 1

    iget-boolean v0, p0, Lg/fts;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lg/fts;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ba(I)V
    .locals 2

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    new-instance v0, Lg/hea;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/hea;-><init>(Lg/fts;II)V

    iget-object p1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    iget-object v0, p0, Lg/fts;->ad:Lg/bzg;

    iget v1, v0, Lg/bzg;->c:F

    invoke-virtual {v0, v1, p1}, Lg/bzg;->q(FF)V

    return-void
.end method

.method public final bb()V
    .locals 3

    iget-object v0, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iget-object v1, p0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v1, v0}, Lg/bzg;->p(Z)V

    iget-object v0, v1, Lg/bzg;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v2, v1}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/ewj;->dq:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    :cond_1
    return-void
.end method

.method public final bc(F)V
    .locals 2

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    new-instance v0, Lg/gds;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/gds;-><init>(Lg/fts;FI)V

    iget-object p1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v1, v0, Lg/cgf;->b:F

    iget v0, v0, Lg/cgf;->f:F

    invoke-static {v1, v0, p1}, Lg/din;->d(FFF)F

    move-result p1

    iget-object v0, p0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v0, p1}, Lg/bzg;->o(F)V

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final bd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    new-instance v0, Lg/gzv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/gzv;-><init>(Lg/fts;Ljava/lang/String;I)V

    iget-object p1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lg/cgf;->u(Ljava/lang/String;)Lg/ewh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lg/ewh;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lg/fts;->ar(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    invoke-static {v1, p1, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final be(Landroid/graphics/Canvas;Lg/aio;)V
    .locals 8

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-eqz v0, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lg/fts;->ab:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lg/fts;->ab:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/fts;->y:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/fts;->o:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/fts;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/fts;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/fts;->j:Landroid/graphics/RectF;

    new-instance v0, Lg/gee;

    invoke-direct {v0}, Lg/gee;-><init>()V

    iput-object v0, p0, Lg/fts;->u:Lg/gee;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/fts;->r:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/fts;->am:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/fts;->ai:Landroid/graphics/RectF;

    :goto_0
    iget-object v0, p0, Lg/fts;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lg/fts;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lg/fts;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Lg/fts;->j:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lg/fts;->o:Landroid/graphics/Matrix;

    iget-object v1, p0, Lg/fts;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lg/fts;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lg/fts;->l:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lg/fts;->an(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-boolean v0, p0, Lg/fts;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/fts;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lg/fts;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lg/fts;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/fts;->y:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lg/aio;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_1
    iget-object v0, p0, Lg/fts;->o:Landroid/graphics/Matrix;

    iget-object v2, p0, Lg/fts;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lg/fts;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lg/fts;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lg/fts;->y:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    mul-float v4, v4, v2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    mul-float v5, v5, v0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    mul-float v6, v6, v2

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    mul-float v7, v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p0, Lg/fts;->y:Landroid/graphics/RectF;

    iget-object v4, p0, Lg/fts;->l:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :goto_3
    iget-object v3, p0, Lg/fts;->y:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lg/fts;->y:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_b

    if-nez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, v3, :cond_8

    iget-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v5, v3, :cond_7

    iget-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v5, v4, :cond_9

    :cond_7
    iget-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    invoke-static {v5, v1, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lg/fts;->ab:Landroid/graphics/Canvas;

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v6, p0, Lg/fts;->ag:Z

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lg/fts;->ab:Landroid/graphics/Canvas;

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v6, p0, Lg/fts;->ag:Z

    :cond_9
    :goto_5
    iget-boolean v5, p0, Lg/fts;->ag:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lg/fts;->o:Landroid/graphics/Matrix;

    iget-object v6, p0, Lg/fts;->z:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lg/fts;->y:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lg/fts;->ab:Landroid/graphics/Canvas;

    iget v2, p0, Lg/fts;->c:I

    invoke-virtual {p2, v0, v6, v2}, Lg/grq;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lg/fts;->o:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/fts;->i:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lg/fts;->i:Landroid/graphics/Matrix;

    iget-object v0, p0, Lg/fts;->ai:Landroid/graphics/RectF;

    iget-object v2, p0, Lg/fts;->y:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lg/fts;->ai:Landroid/graphics/RectF;

    iget-object v0, p0, Lg/fts;->am:Landroid/graphics/Rect;

    invoke-static {v0, p2}, Lg/fts;->an(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    :cond_a
    iget-object p2, p0, Lg/fts;->r:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lg/fts;->ah:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lg/fts;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lg/fts;->am:Landroid/graphics/Rect;

    iget-object v2, p0, Lg/fts;->u:Lg/gee;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final bf(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    iget-object v1, p0, Lg/fts;->al:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lg/gzv;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, v2}, Lg/gzv;-><init>(Lg/fts;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lg/cgf;->u(Ljava/lang/String;)Lg/ewh;

    move-result-object v0

    if-eqz v0, :cond_2

    iget p1, v0, Lg/ewh;->b:F

    float-to-int p1, p1

    iget v0, v0, Lg/ewh;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lg/fts;->x:Lg/cgf;

    if-nez v2, :cond_1

    new-instance v2, Lg/gqt;

    invoke-direct {v2, p0, p1, v0}, Lg/gqt;-><init>(Lg/fts;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    int-to-float p1, p1

    int-to-float v0, v0

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr v0, v1

    iget-object v1, p0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v1, p1, v0}, Lg/bzg;->q(FF)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    invoke-static {v1, p1, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lg/fts;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fts;->s:Lg/aio;

    invoke-virtual {p0, p1, v0}, Lg/fts;->be(Landroid/graphics/Canvas;Lg/aio;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lg/fts;->av(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lg/hbp;->a:Lg/ckf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/fts;->ag:Z

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lg/fts;->c:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, v0, Lg/cgf;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lg/fts;->x:Lg/cgf;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, v0, Lg/cgf;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lg/fts;->ag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fts;->ag:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lg/fts;->ad:Lg/bzg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lg/bzg;->m:Z

    return v0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lg/fts;->c:I

    invoke-virtual {p0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    invoke-static {p1}, Lg/hbp;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/fts;->v:Lg/ewj;

    sget-object v0, Lg/ewj;->d:Lg/ewj;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lg/fts;->as()V

    return p2

    :cond_0
    sget-object v0, Lg/ewj;->ox:Lg/ewj;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lg/fts;->ao()V

    return p2

    :cond_1
    iget-object p1, p0, Lg/fts;->ad:Lg/bzg;

    iget-boolean p1, p1, Lg/bzg;->m:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lg/fts;->bb()V

    sget-object p1, Lg/ewj;->ox:Lg/ewj;

    iput-object p1, p0, Lg/fts;->v:Lg/ewj;

    return p2

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lg/ewj;->dq:Lg/ewj;

    iput-object p1, p0, Lg/fts;->v:Lg/ewj;

    :cond_3
    return p2
.end method

.method public final start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/fts;->as()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lg/fts;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iget-object v1, p0, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {v1, v0}, Lg/bzg;->p(Z)V

    invoke-virtual {v1}, Lg/bzg;->t()Z

    move-result v0

    invoke-virtual {v1, v0}, Lg/bzg;->r(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lg/ewj;->dq:Lg/ewj;

    iput-object v0, p0, Lg/fts;->v:Lg/ewj;

    :cond_0
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

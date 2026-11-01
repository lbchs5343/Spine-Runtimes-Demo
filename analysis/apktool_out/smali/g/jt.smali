.class public abstract Lg/jt;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/HashSet;

.field public final c:I

.field public final d:[I

.field public final e:Landroid/graphics/Paint;

.field public f:I

.field public g:I

.field public final h:Landroid/graphics/Paint;

.field public final i:I

.field public final j:I

.field public final k:Ljava/util/LinkedList;

.field public final l:Landroid/content/Context;

.field public final m:I

.field public n:Lg/he;

.field public final o:Landroid/graphics/Rect;

.field public final p:Ljava/util/ArrayList;

.field public q:Lg/bxi;

.field public final r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lg/jt;->f:I

    iput v0, p0, Lg/jt;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lg/jt;->g:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lg/jt;->o:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lg/jt;->d:[I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lg/jt;->b:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg/jt;->p:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lg/jt;->k:Ljava/util/LinkedList;

    iput-object p1, p0, Lg/jt;->l:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x7f060042

    const v4, 0x7f060043

    const v5, 0x7f060041

    if-nez p2, :cond_0

    invoke-static {p1, v4}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lg/jt;->j:I

    invoke-static {p1, v5}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lg/jt;->r:I

    invoke-static {p1, v3}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lg/jt;->c:I

    iput v0, p0, Lg/jt;->a:I

    invoke-static {p1, v5}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lg/jt;->m:I

    goto :goto_0

    :cond_0
    sget-object v6, Lg/ezl;->a:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v6, 0x4

    invoke-static {p1, v4}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lg/jt;->j:I

    const/4 v4, 0x3

    invoke-static {p1, v5}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lg/jt;->r:I

    invoke-static {p1, v3}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lg/jt;->c:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lg/jt;->a:I

    invoke-static {p1, v5}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lg/jt;->m:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/jt;->e:Landroid/graphics/Paint;

    iget p2, p0, Lg/jt;->j:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lg/jt;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lg/jt;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lg/jt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lg/jt;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/jt;->h:Landroid/graphics/Paint;

    iget v2, p0, Lg/jt;->c:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lg/jt;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lg/jt;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lg/jt;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lg/jt;->h:Landroid/graphics/Paint;

    const/high16 p2, 0x41100000    # 9.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lg/jt;->l:Landroid/content/Context;

    sget-object p2, Lg/fnp;->b:Ljava/util/HashMap;

    :try_start_0
    invoke-static {p1}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_1
    iput v0, p0, Lg/jt;->i:I

    return-void
.end method

.method private getBackgroundPaint()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget v1, p0, Lg/jt;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method private getHighLightBackgroundPaint()Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget v1, p0, Lg/jt;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method


# virtual methods
.method public getNodeInfo()Lg/he;
    .locals 1

    iget-object v0, p0, Lg/jt;->n:Lg/he;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lg/jt;->n:Lg/he;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lg/jt;->f:I

    iget v0, p0, Lg/jt;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/he;->hashCode()I

    move-result v0

    iput v0, p0, Lg/jt;->f:I

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lg/jt;->d:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lg/jt;->g:I

    aput v0, v3, v2

    iget v0, p0, Lg/jt;->i:I

    aput v0, v3, v1

    :goto_0
    iget-object v0, p0, Lg/jt;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lg/jt;->b:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-object v5, p0, Lg/jt;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lg/jt;->k:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    iget-object v7, p0, Lg/jt;->n:Lg/he;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/he;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lg/he;->getChildNodeInfoList()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v8, v0}, Lg/he;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lg/ern;->k(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    aget v9, v3, v2

    neg-int v9, v9

    aget v10, v3, v1

    neg-int v10, v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v7, :cond_8

    invoke-virtual {v8}, Lg/he;->isInspected()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lg/jt;->getHighLightBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v7

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lg/jt;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v7

    :goto_2
    iget-object v9, p0, Lg/jt;->q:Lg/bxi;

    if-eqz v9, :cond_7

    check-cast v9, Lg/gpu;

    invoke-virtual {v9, v8}, Lg/gpu;->p(Lg/he;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Lg/he;->isInspected()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lg/jt;->getHighLightBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v9

    iget-object v10, p0, Lg/jt;->q:Lg/bxi;

    if-eqz v10, :cond_9

    check-cast v10, Lg/gpu;

    invoke-virtual {v10, v8}, Lg/gpu;->p(Lg/he;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a
    :goto_4
    invoke-virtual {v8}, Lg/he;->isInspected()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    iget-object v9, p0, Lg/jt;->q:Lg/bxi;

    if-eqz v9, :cond_c

    check-cast v9, Lg/gpu;

    invoke-virtual {v9, v8}, Lg/gpu;->p(Lg/he;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_1

    :cond_c
    iget-object v8, p0, Lg/jt;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/he;

    invoke-virtual {v5, v0}, Lg/he;->getBoundsInScreen(Landroid/graphics/Rect;)V

    aget v5, v3, v2

    neg-int v5, v5

    aget v6, v3, v1

    neg-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Lg/jt;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_e
    return-void
.end method

.method public final s(Lg/he;)Z
    .locals 2

    iget-object v0, p0, Lg/jt;->n:Lg/he;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lg/jt;->f:I

    invoke-virtual {p1}, Lg/he;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lg/jt;->n:Lg/he;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public setInspectorViewFilter(Lg/bxi;)V
    .locals 0

    iput-object p1, p0, Lg/jt;->q:Lg/bxi;

    return-void
.end method

.method public setSpecialMarkUp(I)V
    .locals 0

    iput p1, p0, Lg/jt;->g:I

    return-void
.end method

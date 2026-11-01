.class public abstract Lg/grq;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/glt;


# instance fields
.field public ac:Lg/gee;

.field public final ad:Lg/gee;

.field public final ae:Landroid/graphics/RectF;

.field public final af:Lg/fts;

.field public ag:Z

.field public final ah:Landroid/graphics/Matrix;

.field public final ai:Lg/gee;

.field public aj:Landroid/graphics/BlurMaskFilter;

.field public final ak:Landroid/graphics/RectF;

.field public final al:Lg/gee;

.field public final am:Landroid/graphics/Path;

.field public an:Ljava/util/List;

.field public ao:F

.field public final ap:Landroid/graphics/Matrix;

.field public final aq:Ljava/util/ArrayList;

.field public final ar:Lg/amp;

.field public final as:Lg/gee;

.field public at:Lg/grq;

.field public final au:Lg/cbc;

.field public final av:Landroid/graphics/RectF;

.field public final aw:Landroid/graphics/RectF;

.field public final ax:Landroid/graphics/Matrix;

.field public final ay:Landroid/graphics/RectF;

.field public final az:Lg/fpd;

.field public ba:F

.field public bb:Lg/grq;

.field public final bc:Landroid/graphics/Matrix;

.field public bd:Z

.field public final be:Lg/gee;

.field public final bf:Lg/bsb;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cbc;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/grq;->am:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/grq;->ax:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/grq;->bc:Landroid/graphics/Matrix;

    new-instance v0, Lg/gee;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lg/gee;-><init>(II)V

    iput-object v0, p0, Lg/grq;->ai:Lg/gee;

    new-instance v0, Lg/gee;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Lg/gee;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lg/grq;->al:Lg/gee;

    new-instance v0, Lg/gee;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Lg/gee;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lg/grq;->as:Lg/gee;

    new-instance v0, Lg/gee;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lg/gee;-><init>(II)V

    iput-object v0, p0, Lg/grq;->be:Lg/gee;

    new-instance v4, Lg/gee;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4}, Lg/gee;-><init>()V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object v4, p0, Lg/grq;->ad:Lg/gee;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lg/grq;->aw:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lg/grq;->ay:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lg/grq;->ae:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lg/grq;->ak:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lg/grq;->av:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lg/grq;->ah:Landroid/graphics/Matrix;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lg/grq;->aq:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lg/grq;->bd:Z

    const/4 v4, 0x0

    iput v4, p0, Lg/grq;->ba:F

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lg/grq;->ap:Landroid/graphics/Matrix;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lg/grq;->ao:F

    iput-object p1, p0, Lg/grq;->af:Lg/fts;

    iput-object p2, p0, Lg/grq;->au:Lg/cbc;

    iget-object p1, p2, Lg/cbc;->u:Ljava/lang/String;

    iget-object v5, p2, Lg/cbc;->a:Ljava/util/List;

    const-string v6, "#draw"

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p2, Lg/cbc;->i:Lg/bwd;

    sget-object v6, Lg/bwd;->ox:Lg/bwd;

    if-ne p1, v6, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    iget-object p1, p2, Lg/cbc;->p:Lg/eld;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg/amp;

    invoke-direct {p2, p1}, Lg/amp;-><init>(Lg/eld;)V

    iput-object p2, p0, Lg/grq;->ar:Lg/amp;

    invoke-virtual {p2, p0}, Lg/amp;->r(Lg/fyj;)V

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lg/fpd;

    invoke-direct {p1, v5}, Lg/fpd;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lg/grq;->az:Lg/fpd;

    iget-object p1, p1, Lg/fpd;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/cej;

    invoke-virtual {p2, p0}, Lg/cej;->l(Lg/fyj;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lg/grq;->az:Lg/fpd;

    iget-object p1, p1, Lg/fpd;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/cej;

    invoke-virtual {p0, p2}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p2, p0}, Lg/cej;->l(Lg/fyj;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lg/grq;->au:Lg/cbc;

    iget-object p2, p1, Lg/cbc;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Lg/bsb;

    iget-object p1, p1, Lg/cbc;->t:Ljava/util/List;

    invoke-direct {p2, p1}, Lg/cej;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lg/grq;->bf:Lg/bsb;

    iput-boolean v2, p2, Lg/cej;->h:Z

    new-instance p1, Lg/ddn;

    invoke-direct {p1, p0}, Lg/ddn;-><init>(Lg/grq;)V

    invoke-virtual {p2, p1}, Lg/cej;->l(Lg/fyj;)V

    iget-object p1, p0, Lg/grq;->bf:Lg/bsb;

    invoke-virtual {p1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-boolean p1, p0, Lg/grq;->bd:Z

    if-eq v2, p1, :cond_4

    iput-boolean v2, p0, Lg/grq;->bd:Z

    iget-object p1, p0, Lg/grq;->af:Lg/fts;

    invoke-virtual {p1}, Lg/fts;->invalidateSelf()V

    :cond_4
    iget-object p1, p0, Lg/grq;->bf:Lg/bsb;

    invoke-virtual {p0, p1}, Lg/grq;->bg(Lg/cej;)V

    return-void

    :cond_5
    iget-boolean p1, p0, Lg/grq;->bd:Z

    if-eq v2, p1, :cond_6

    iput-boolean v2, p0, Lg/grq;->bd:Z

    iget-object p1, p0, Lg/grq;->af:Lg/fts;

    invoke-virtual {p1}, Lg/fts;->invalidateSelf()V

    :cond_6
    return-void
.end method


# virtual methods
.method public final bg(Lg/cej;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/grq;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bh()Z
    .locals 1

    iget-object v0, p0, Lg/grq;->az:Lg/fpd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bi()V
    .locals 5

    iget-object v0, p0, Lg/grq;->af:Lg/fts;

    iget-object v0, v0, Lg/fts;->x:Lg/cgf;

    iget-object v0, v0, Lg/cgf;->h:Lg/ejl;

    iget-object v1, p0, Lg/grq;->au:Lg/cbc;

    iget-object v1, v1, Lg/cbc;->u:Ljava/lang/String;

    iget-object v2, v0, Lg/ejl;->c:Ljava/util/HashMap;

    iget-boolean v3, v0, Lg/ejl;->a:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fbq;

    if-nez v3, :cond_1

    new-instance v3, Lg/fbq;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v2, v3, Lg/fbq;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lg/fbq;->a:I

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Lg/fbq;->a:I

    :cond_2
    const-string v2, "__container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lg/ejl;->b:Lg/cmg;

    invoke-virtual {v0}, Lg/cmg;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lg/duj;

    invoke-virtual {v1}, Lg/duj;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lg/duj;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final bj(I)V
    .locals 2

    iget-object v0, p0, Lg/grq;->ar:Lg/amp;

    iget-object v0, v0, Lg/amp;->l:Lg/dph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    iput p1, p0, Lg/grq;->ao:F

    return-void
.end method

.method public final bk()V
    .locals 2

    iget-object v0, p0, Lg/grq;->an:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/grq;->bb:Lg/grq;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/grq;->an:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/grq;->an:Ljava/util/List;

    iget-object v0, p0, Lg/grq;->bb:Lg/grq;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/grq;->an:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lg/grq;->bb:Lg/grq;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final bl(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lg/grq;->aw:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Lg/grq;->ad:Lg/gee;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public c()Lg/fzn;
    .locals 1

    iget-object v0, p0, Lg/grq;->au:Lg/cbc;

    iget-object v0, v0, Lg/cbc;->v:Lg/fzn;

    return-object v0
.end method

.method public abstract d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public final dq()V
    .locals 1

    iget-object v0, p0, Lg/grq;->af:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public e()Lg/aoy;
    .locals 1

    iget-object v0, p0, Lg/grq;->au:Lg/cbc;

    iget-object v0, v0, Lg/cbc;->k:Lg/aoy;

    return-object v0
.end method

.method public j(F)V
    .locals 4

    iget-object v0, p0, Lg/grq;->ar:Lg/amp;

    iget-object v1, v0, Lg/amp;->l:Lg/dph;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_0
    iget-object v1, v0, Lg/amp;->i:Lg/bsb;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_1
    iget-object v1, v0, Lg/amp;->c:Lg/bsb;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_2
    iget-object v1, v0, Lg/amp;->h:Lg/cav;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_3
    iget-object v1, v0, Lg/amp;->n:Lg/cej;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_4
    iget-object v1, v0, Lg/amp;->a:Lg/exi;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_5
    iget-object v1, v0, Lg/amp;->j:Lg/bsb;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_6
    iget-object v1, v0, Lg/amp;->b:Lg/bsb;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_7
    iget-object v0, v0, Lg/amp;->e:Lg/bsb;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lg/cej;->p(F)V

    :cond_8
    const/4 v0, 0x0

    iget-object v1, p0, Lg/grq;->az:Lg/fpd;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cej;

    invoke-virtual {v3, p1}, Lg/cej;->p(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lg/grq;->bf:Lg/bsb;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    :cond_a
    iget-object v1, p0, Lg/grq;->at:Lg/grq;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Lg/grq;->j(F)V

    :cond_b
    :goto_1
    iget-object v1, p0, Lg/grq;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cej;

    invoke-virtual {v1, p1}, Lg/cej;->p(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/grq;->ac:Lg/gee;

    if-nez v0, :cond_0

    new-instance v0, Lg/gee;

    invoke-direct {v0}, Lg/gee;-><init>()V

    iput-object v0, p0, Lg/grq;->ac:Lg/gee;

    :cond_0
    iput-boolean p1, p0, Lg/grq;->ag:Z

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lg/grq;->bd:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Lg/grq;->au:Lg/cbc;

    iget-boolean v4, v3, Lg/cbc;->j:Z

    if-eqz v4, :cond_0

    goto/16 :goto_10

    :cond_0
    invoke-virtual {v0}, Lg/grq;->bk()V

    iget-object v4, v0, Lg/grq;->ap:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lg/grq;->ax:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Lg/grq;->an:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_1

    iget-object v7, v0, Lg/grq;->an:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/grq;

    iget-object v7, v7, Lg/grq;->ar:Lg/amp;

    invoke-virtual {v7}, Lg/amp;->o()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/buj;->bd()V

    iget-object v5, v0, Lg/grq;->ar:Lg/amp;

    iget-object v7, v5, Lg/amp;->l:Lg/dph;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    move/from16 v8, p3

    goto :goto_2

    :cond_2
    const/16 v7, 0x64

    goto :goto_1

    :goto_2
    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    int-to-float v7, v7

    mul-float v8, v8, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v8, v7

    mul-float v8, v8, v9

    float-to-int v7, v8

    iget-object v8, v0, Lg/grq;->at:Lg/grq;

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lg/grq;->bh()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Lg/amp;->o()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1, v4, v7}, Lg/grq;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lg/buj;->bd()V

    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual {v0}, Lg/grq;->bi()V

    return-void

    :cond_4
    :goto_3
    iget-object v8, v0, Lg/grq;->aw:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v4, v9}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v10, v0, Lg/grq;->at:Lg/grq;

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    iget-object v3, v3, Lg/cbc;->i:Lg/bwd;

    sget-object v10, Lg/bwd;->ox:Lg/bwd;

    if-ne v3, v10, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lg/grq;->ak:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lg/grq;->at:Lg/grq;

    invoke-virtual {v10, v3, v2, v6}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    :goto_4
    invoke-virtual {v5}, Lg/amp;->o()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v3, v0, Lg/grq;->ae:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0}, Lg/grq;->bh()Z

    move-result v5

    const/4 v13, 0x2

    iget-object v14, v0, Lg/grq;->az:Lg/fpd;

    iget-object v15, v0, Lg/grq;->am:Landroid/graphics/Path;

    if-nez v5, :cond_8

    :cond_7
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_8
    iget-object v5, v14, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_d

    iget-object v9, v14, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fiz;

    iget-object v10, v14, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/cej;

    invoke-virtual {v10}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Path;

    if-eqz v10, :cond_c

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v10, Lg/cjl;->b:[I

    iget-object v12, v9, Lg/fiz;->b:Lg/exf;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v10, v10, v12

    if-eq v10, v6, :cond_7

    if-eq v10, v13, :cond_7

    const/4 v12, 0x3

    if-eq v10, v12, :cond_9

    const/4 v12, 0x4

    if-eq v10, v12, :cond_9

    goto :goto_7

    :cond_9
    iget-boolean v9, v9, Lg/fiz;->a:Z

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    :goto_7
    iget-object v9, v0, Lg/grq;->av:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v11, :cond_b

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_8

    :cond_b
    iget v12, v3, Landroid/graphics/RectF;->left:F

    iget v10, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v12, v3, Landroid/graphics/RectF;->top:F

    iget v13, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v13, v3, Landroid/graphics/RectF;->right:F

    iget v6, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v3, v10, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_c
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x2

    goto :goto_6

    :cond_d
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v9, v0, Lg/grq;->ay:Landroid/graphics/RectF;

    invoke-virtual {v9, v3, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lg/grq;->bc:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_e
    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_f
    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1f

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1f

    iget-object v3, v0, Lg/grq;->ai:Lg/gee;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Lg/gee;->setAlpha(I)V

    const/16 v6, 0x1f

    invoke-static {v1, v8, v3, v6}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual/range {p0 .. p1}, Lg/grq;->bl(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1, v4, v7}, Lg/grq;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual {v0}, Lg/grq;->bh()Z

    move-result v9

    const/16 v10, 0x13

    if-eqz v9, :cond_1d

    iget-object v9, v0, Lg/grq;->al:Lg/gee;

    invoke-static {v1, v8, v9, v10}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-ge v11, v12, :cond_10

    invoke-virtual/range {p0 .. p1}, Lg/grq;->bl(Landroid/graphics/Canvas;)V

    :cond_10
    invoke-static {}, Lg/buj;->bd()V

    const/4 v11, 0x0

    :goto_a
    iget-object v12, v14, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v14, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget-object v10, v14, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1c

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fiz;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lg/cej;

    iget-object v5, v14, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cej;

    sget-object v17, Lg/cjl;->b:[I

    iget-object v6, v12, Lg/fiz;->b:Lg/exf;

    iget-boolean v12, v12, Lg/fiz;->a:Z

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v17, v6

    move-object/from16 v17, v5

    const/4 v5, 0x1

    if-eq v6, v5, :cond_18

    iget-object v10, v0, Lg/grq;->as:Lg/gee;

    const v13, 0x40233333    # 2.55f

    const/4 v5, 0x2

    if-eq v6, v5, :cond_15

    const/4 v5, 0x3

    if-eq v6, v5, :cond_13

    const/4 v5, 0x4

    if-eq v6, v5, :cond_11

    :goto_b
    const/16 v5, 0xff

    const/16 v6, 0x1f

    goto/16 :goto_f

    :cond_11
    if-eqz v12, :cond_12

    const/16 v6, 0x1f

    invoke-static {v1, v8, v3, v6}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {v16 .. v16}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v15, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v17 .. v17}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lg/gee;->setAlpha(I)V

    invoke-virtual {v1, v15, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_12
    invoke-virtual/range {v16 .. v16}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v15, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v17 .. v17}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lg/gee;->setAlpha(I)V

    invoke-virtual {v1, v15, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_13
    const/4 v5, 0x4

    if-eqz v12, :cond_14

    const/16 v6, 0x1f

    invoke-static {v1, v8, v9, v6}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-virtual {v10, v6}, Lg/gee;->setAlpha(I)V

    invoke-virtual/range {v16 .. v16}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v15, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v15, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    :cond_14
    const/16 v6, 0x1f

    invoke-static {v1, v8, v9, v6}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-virtual/range {v16 .. v16}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v15, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v17 .. v17}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lg/gee;->setAlpha(I)V

    invoke-virtual {v1, v15, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    :cond_15
    const/4 v5, 0x4

    if-nez v11, :cond_16

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0xff

    invoke-virtual {v3, v6}, Lg/gee;->setAlpha(I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_16
    if-eqz v12, :cond_17

    const/16 v6, 0x1f

    invoke-static {v1, v8, v10, v6}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-virtual {v10, v12}, Lg/gee;->setAlpha(I)V

    invoke-virtual/range {v16 .. v16}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Path;

    invoke-virtual {v15, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v15, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_c
    const/16 v5, 0xff

    goto :goto_f

    :cond_17
    const/16 v6, 0x1f

    invoke-virtual/range {v16 .. v16}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Path;

    invoke-virtual {v15, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v15, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c

    :cond_18
    const/4 v5, 0x4

    const/16 v6, 0x1f

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_19

    goto :goto_e

    :cond_19
    const/4 v12, 0x0

    :goto_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1b

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fiz;

    iget-object v13, v13, Lg/fiz;->b:Lg/exf;

    sget-object v5, Lg/exf;->p:Lg/exf;

    if-eq v13, v5, :cond_1a

    :goto_e
    goto :goto_c

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x4

    goto :goto_d

    :cond_1b
    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Lg/gee;->setAlpha(I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_f
    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x13

    goto/16 :goto_a

    :cond_1c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lg/buj;->bd()V

    :cond_1d
    iget-object v3, v0, Lg/grq;->at:Lg/grq;

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lg/grq;->be:Lg/gee;

    const/16 v4, 0x13

    invoke-static {v1, v8, v3, v4}, Lg/ebx;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual/range {p0 .. p1}, Lg/grq;->bl(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lg/grq;->at:Lg/grq;

    invoke-virtual {v3, v1, v2, v7}, Lg/grq;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lg/buj;->bd()V

    invoke-static {}, Lg/buj;->bd()V

    :cond_1e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lg/buj;->bd()V

    :cond_1f
    iget-boolean v2, v0, Lg/grq;->ag:Z

    if-eqz v2, :cond_20

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    if-eqz v2, :cond_20

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lg/grq;->ac:Lg/gee;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_20
    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual {v0}, Lg/grq;->bi()V

    return-void

    :cond_21
    :goto_10
    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Lg/grq;->aw:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lg/grq;->bk()V

    iget-object p1, p0, Lg/grq;->ah:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lg/grq;->an:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    iget-object p3, p0, Lg/grq;->an:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/grq;

    iget-object p3, p3, Lg/grq;->ar:Lg/amp;

    invoke-virtual {p3}, Lg/amp;->o()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lg/grq;->bb:Lg/grq;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lg/grq;->ar:Lg/amp;

    invoke-virtual {p2}, Lg/amp;->o()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p2, p0, Lg/grq;->ar:Lg/amp;

    invoke-virtual {p2}, Lg/amp;->o()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

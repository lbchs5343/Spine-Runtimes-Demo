.class public final Lg/djm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/crp;

.field public final b:Lg/edp;

.field public c:I

.field public d:Ljava/util/HashMap;

.field public final e:Lg/dqy;

.field public final f:Lg/ggo;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dqy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lg/dqy;->b:I

    iput v1, v0, Lg/dqy;->c:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lg/dqy;->d:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, Lg/dqy;->a:F

    iput-object v0, p0, Lg/djm;->e:Lg/dqy;

    new-instance v0, Lg/ggo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lg/ggo;->e:I

    iput v1, v0, Lg/ggo;->h:I

    iput v4, v0, Lg/ggo;->i:I

    iput v3, v0, Lg/ggo;->c:F

    iput v3, v0, Lg/ggo;->d:F

    iput v3, v0, Lg/ggo;->f:F

    iput v4, v0, Lg/ggo;->j:I

    const/4 v5, 0x0

    iput-object v5, v0, Lg/ggo;->b:Ljava/lang/String;

    iput v4, v0, Lg/ggo;->g:I

    iput-object v0, p0, Lg/djm;->f:Lg/ggo;

    new-instance v0, Lg/crp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lg/crp;->z:Z

    iput v4, v0, Lg/crp;->t:I

    iput v4, v0, Lg/crp;->x:I

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lg/crp;->ak:F

    const/4 v7, 0x1

    iput-boolean v7, v0, Lg/crp;->bn:Z

    iput v4, v0, Lg/crp;->d:I

    iput v4, v0, Lg/crp;->at:I

    iput v4, v0, Lg/crp;->ax:I

    iput v4, v0, Lg/crp;->e:I

    iput v4, v0, Lg/crp;->v:I

    iput v4, v0, Lg/crp;->ap:I

    iput v4, v0, Lg/crp;->s:I

    iput v4, v0, Lg/crp;->k:I

    iput v4, v0, Lg/crp;->ao:I

    iput v4, v0, Lg/crp;->ay:I

    iput v4, v0, Lg/crp;->bo:I

    iput v4, v0, Lg/crp;->an:I

    iput v4, v0, Lg/crp;->ba:I

    iput v4, v0, Lg/crp;->aa:I

    iput v4, v0, Lg/crp;->ah:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Lg/crp;->aj:F

    iput v8, v0, Lg/crp;->bm:F

    iput-object v5, v0, Lg/crp;->l:Ljava/lang/String;

    iput v4, v0, Lg/crp;->b:I

    iput v1, v0, Lg/crp;->az:I

    const/4 v5, 0x0

    iput v5, v0, Lg/crp;->u:F

    iput v4, v0, Lg/crp;->ad:I

    iput v4, v0, Lg/crp;->ab:I

    iput v4, v0, Lg/crp;->bl:I

    iput v1, v0, Lg/crp;->bb:I

    iput v1, v0, Lg/crp;->p:I

    iput v1, v0, Lg/crp;->g:I

    iput v1, v0, Lg/crp;->bk:I

    iput v1, v0, Lg/crp;->am:I

    iput v1, v0, Lg/crp;->ag:I

    iput v1, v0, Lg/crp;->h:I

    const/high16 v8, -0x80000000

    iput v8, v0, Lg/crp;->ae:I

    iput v8, v0, Lg/crp;->n:I

    iput v8, v0, Lg/crp;->bc:I

    iput v8, v0, Lg/crp;->as:I

    iput v8, v0, Lg/crp;->m:I

    iput v8, v0, Lg/crp;->ar:I

    iput v8, v0, Lg/crp;->be:I

    iput v6, v0, Lg/crp;->aw:F

    iput v6, v0, Lg/crp;->y:F

    iput v1, v0, Lg/crp;->r:I

    iput v1, v0, Lg/crp;->ai:I

    iput v1, v0, Lg/crp;->af:I

    iput v1, v0, Lg/crp;->bp:I

    iput v1, v0, Lg/crp;->bj:I

    iput v1, v0, Lg/crp;->aq:I

    iput v1, v0, Lg/crp;->ac:I

    iput v1, v0, Lg/crp;->q:I

    iput v2, v0, Lg/crp;->j:F

    iput v2, v0, Lg/crp;->bd:F

    iput v4, v0, Lg/crp;->bh:I

    iput v1, v0, Lg/crp;->w:I

    iput v4, v0, Lg/crp;->f:I

    iput-boolean v1, v0, Lg/crp;->bi:Z

    iput-boolean v1, v0, Lg/crp;->i:Z

    iput-boolean v7, v0, Lg/crp;->au:Z

    iput v1, v0, Lg/crp;->o:I

    iput-object v0, p0, Lg/djm;->a:Lg/crp;

    new-instance v0, Lg/edp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, Lg/edp;->g:F

    iput v5, v0, Lg/edp;->k:F

    iput v5, v0, Lg/edp;->m:F

    iput v2, v0, Lg/edp;->d:F

    iput v2, v0, Lg/edp;->f:F

    iput v3, v0, Lg/edp;->h:F

    iput v3, v0, Lg/edp;->n:F

    iput v4, v0, Lg/edp;->b:I

    iput v5, v0, Lg/edp;->j:F

    iput v5, v0, Lg/edp;->l:F

    iput v5, v0, Lg/edp;->c:F

    iput-boolean v1, v0, Lg/edp;->e:Z

    iput v5, v0, Lg/edp;->i:F

    iput-object v0, p0, Lg/djm;->b:Lg/edp;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/djm;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/djm;->h()Lg/djm;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lg/dnk;)V
    .locals 2

    iget-object v0, p0, Lg/djm;->a:Lg/crp;

    iget v1, v0, Lg/crp;->d:I

    iput v1, p1, Lg/dnk;->w:I

    iget v1, v0, Lg/crp;->at:I

    iput v1, p1, Lg/dnk;->aj:I

    iget v1, v0, Lg/crp;->ax:I

    iput v1, p1, Lg/dnk;->bn:I

    iget v1, v0, Lg/crp;->e:I

    iput v1, p1, Lg/dnk;->c:I

    iget v1, v0, Lg/crp;->v:I

    iput v1, p1, Lg/dnk;->as:I

    iget v1, v0, Lg/crp;->ap:I

    iput v1, p1, Lg/dnk;->ax:I

    iget v1, v0, Lg/crp;->s:I

    iput v1, p1, Lg/dnk;->d:I

    iget v1, v0, Lg/crp;->k:I

    iput v1, p1, Lg/dnk;->u:I

    iget v1, v0, Lg/crp;->ao:I

    iput v1, p1, Lg/dnk;->ao:I

    iget v1, v0, Lg/crp;->ay:I

    iput v1, p1, Lg/dnk;->r:I

    iget v1, v0, Lg/crp;->bo:I

    iput v1, p1, Lg/dnk;->j:I

    iget v1, v0, Lg/crp;->an:I

    iput v1, p1, Lg/dnk;->am:I

    iget v1, v0, Lg/crp;->ba:I

    iput v1, p1, Lg/dnk;->ba:I

    iget v1, v0, Lg/crp;->aa:I

    iput v1, p1, Lg/dnk;->z:I

    iget v1, v0, Lg/crp;->ah:I

    iput v1, p1, Lg/dnk;->ag:I

    iget v1, v0, Lg/crp;->bb:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Lg/crp;->p:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v0, Lg/crp;->g:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v0, Lg/crp;->bk:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v0, Lg/crp;->ar:I

    iput v1, p1, Lg/dnk;->az:I

    iget v1, v0, Lg/crp;->m:I

    iput v1, p1, Lg/dnk;->t:I

    iget v1, v0, Lg/crp;->n:I

    iput v1, p1, Lg/dnk;->bm:I

    iget v1, v0, Lg/crp;->as:I

    iput v1, p1, Lg/dnk;->a:I

    iget v1, v0, Lg/crp;->aj:F

    iput v1, p1, Lg/dnk;->bl:F

    iget v1, v0, Lg/crp;->bm:F

    iput v1, p1, Lg/dnk;->bb:F

    iget v1, v0, Lg/crp;->b:I

    iput v1, p1, Lg/dnk;->an:I

    iget v1, v0, Lg/crp;->az:I

    iput v1, p1, Lg/dnk;->ay:I

    iget v1, v0, Lg/crp;->u:F

    iput v1, p1, Lg/dnk;->bo:F

    iget-object v1, v0, Lg/crp;->l:Ljava/lang/String;

    iput-object v1, p1, Lg/dnk;->o:Ljava/lang/String;

    iget v1, v0, Lg/crp;->ad:I

    iput v1, p1, Lg/dnk;->av:I

    iget v1, v0, Lg/crp;->ab:I

    iput v1, p1, Lg/dnk;->x:I

    iget v1, v0, Lg/crp;->aw:F

    iput v1, p1, Lg/dnk;->bk:F

    iget v1, v0, Lg/crp;->y:F

    iput v1, p1, Lg/dnk;->f:F

    iget v1, v0, Lg/crp;->ai:I

    iput v1, p1, Lg/dnk;->af:I

    iget v1, v0, Lg/crp;->r:I

    iput v1, p1, Lg/dnk;->al:I

    iget-boolean v1, v0, Lg/crp;->bi:Z

    iput-boolean v1, p1, Lg/dnk;->ah:Z

    iget-boolean v1, v0, Lg/crp;->i:Z

    iput-boolean v1, p1, Lg/dnk;->ae:Z

    iget v1, v0, Lg/crp;->af:I

    iput v1, p1, Lg/dnk;->g:I

    iget v1, v0, Lg/crp;->bp:I

    iput v1, p1, Lg/dnk;->ad:I

    iget v1, v0, Lg/crp;->bj:I

    iput v1, p1, Lg/dnk;->ar:I

    iget v1, v0, Lg/crp;->aq:I

    iput v1, p1, Lg/dnk;->l:I

    iget v1, v0, Lg/crp;->ac:I

    iput v1, p1, Lg/dnk;->m:I

    iget v1, v0, Lg/crp;->q:I

    iput v1, p1, Lg/dnk;->bc:I

    iget v1, v0, Lg/crp;->j:F

    iput v1, p1, Lg/dnk;->aq:F

    iget v1, v0, Lg/crp;->bd:F

    iput v1, p1, Lg/dnk;->be:F

    iget v1, v0, Lg/crp;->bl:I

    iput v1, p1, Lg/dnk;->q:I

    iget v1, v0, Lg/crp;->ak:F

    iput v1, p1, Lg/dnk;->bf:F

    iget v1, v0, Lg/crp;->t:I

    iput v1, p1, Lg/dnk;->y:I

    iget v1, v0, Lg/crp;->x:I

    iput v1, p1, Lg/dnk;->au:I

    iget v1, v0, Lg/crp;->av:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v0, Lg/crp;->bf:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, v0, Lg/crp;->al:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, p1, Lg/dnk;->bp:Ljava/lang/String;

    :cond_0
    iget v1, v0, Lg/crp;->o:I

    iput v1, p1, Lg/dnk;->bj:I

    iget v1, v0, Lg/crp;->ag:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, v0, Lg/crp;->am:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Lg/dnk;->bq()V

    return-void
.end method

.method public final h()Lg/djm;
    .locals 5

    new-instance v0, Lg/djm;

    invoke-direct {v0}, Lg/djm;-><init>()V

    iget-object v1, v0, Lg/djm;->a:Lg/crp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/djm;->a:Lg/crp;

    iget-boolean v3, v2, Lg/crp;->z:Z

    iput-boolean v3, v1, Lg/crp;->z:Z

    iget v3, v2, Lg/crp;->av:I

    iput v3, v1, Lg/crp;->av:I

    iget v3, v2, Lg/crp;->bf:I

    iput v3, v1, Lg/crp;->bf:I

    iget v3, v2, Lg/crp;->t:I

    iput v3, v1, Lg/crp;->t:I

    iget v3, v2, Lg/crp;->x:I

    iput v3, v1, Lg/crp;->x:I

    iget v3, v2, Lg/crp;->ak:F

    iput v3, v1, Lg/crp;->ak:F

    iget-boolean v3, v2, Lg/crp;->bn:Z

    iput-boolean v3, v1, Lg/crp;->bn:Z

    iget v3, v2, Lg/crp;->d:I

    iput v3, v1, Lg/crp;->d:I

    iget v3, v2, Lg/crp;->at:I

    iput v3, v1, Lg/crp;->at:I

    iget v3, v2, Lg/crp;->ax:I

    iput v3, v1, Lg/crp;->ax:I

    iget v3, v2, Lg/crp;->e:I

    iput v3, v1, Lg/crp;->e:I

    iget v3, v2, Lg/crp;->v:I

    iput v3, v1, Lg/crp;->v:I

    iget v3, v2, Lg/crp;->ap:I

    iput v3, v1, Lg/crp;->ap:I

    iget v3, v2, Lg/crp;->s:I

    iput v3, v1, Lg/crp;->s:I

    iget v3, v2, Lg/crp;->k:I

    iput v3, v1, Lg/crp;->k:I

    iget v3, v2, Lg/crp;->ao:I

    iput v3, v1, Lg/crp;->ao:I

    iget v3, v2, Lg/crp;->ay:I

    iput v3, v1, Lg/crp;->ay:I

    iget v3, v2, Lg/crp;->bo:I

    iput v3, v1, Lg/crp;->bo:I

    iget v3, v2, Lg/crp;->an:I

    iput v3, v1, Lg/crp;->an:I

    iget v3, v2, Lg/crp;->ba:I

    iput v3, v1, Lg/crp;->ba:I

    iget v3, v2, Lg/crp;->aa:I

    iput v3, v1, Lg/crp;->aa:I

    iget v3, v2, Lg/crp;->ah:I

    iput v3, v1, Lg/crp;->ah:I

    iget v3, v2, Lg/crp;->aj:F

    iput v3, v1, Lg/crp;->aj:F

    iget v3, v2, Lg/crp;->bm:F

    iput v3, v1, Lg/crp;->bm:F

    iget-object v3, v2, Lg/crp;->l:Ljava/lang/String;

    iput-object v3, v1, Lg/crp;->l:Ljava/lang/String;

    iget v3, v2, Lg/crp;->b:I

    iput v3, v1, Lg/crp;->b:I

    iget v3, v2, Lg/crp;->az:I

    iput v3, v1, Lg/crp;->az:I

    iget v3, v2, Lg/crp;->u:F

    iput v3, v1, Lg/crp;->u:F

    iget v3, v2, Lg/crp;->ad:I

    iput v3, v1, Lg/crp;->ad:I

    iget v3, v2, Lg/crp;->ab:I

    iput v3, v1, Lg/crp;->ab:I

    iget v3, v2, Lg/crp;->bl:I

    iput v3, v1, Lg/crp;->bl:I

    iget v3, v2, Lg/crp;->bb:I

    iput v3, v1, Lg/crp;->bb:I

    iget v3, v2, Lg/crp;->p:I

    iput v3, v1, Lg/crp;->p:I

    iget v3, v2, Lg/crp;->g:I

    iput v3, v1, Lg/crp;->g:I

    iget v3, v2, Lg/crp;->bk:I

    iput v3, v1, Lg/crp;->bk:I

    iget v3, v2, Lg/crp;->am:I

    iput v3, v1, Lg/crp;->am:I

    iget v3, v2, Lg/crp;->ag:I

    iput v3, v1, Lg/crp;->ag:I

    iget v3, v2, Lg/crp;->h:I

    iput v3, v1, Lg/crp;->h:I

    iget v3, v2, Lg/crp;->ae:I

    iput v3, v1, Lg/crp;->ae:I

    iget v3, v2, Lg/crp;->n:I

    iput v3, v1, Lg/crp;->n:I

    iget v3, v2, Lg/crp;->bc:I

    iput v3, v1, Lg/crp;->bc:I

    iget v3, v2, Lg/crp;->as:I

    iput v3, v1, Lg/crp;->as:I

    iget v3, v2, Lg/crp;->m:I

    iput v3, v1, Lg/crp;->m:I

    iget v3, v2, Lg/crp;->ar:I

    iput v3, v1, Lg/crp;->ar:I

    iget v3, v2, Lg/crp;->be:I

    iput v3, v1, Lg/crp;->be:I

    iget v3, v2, Lg/crp;->aw:F

    iput v3, v1, Lg/crp;->aw:F

    iget v3, v2, Lg/crp;->y:F

    iput v3, v1, Lg/crp;->y:F

    iget v3, v2, Lg/crp;->r:I

    iput v3, v1, Lg/crp;->r:I

    iget v3, v2, Lg/crp;->ai:I

    iput v3, v1, Lg/crp;->ai:I

    iget v3, v2, Lg/crp;->af:I

    iput v3, v1, Lg/crp;->af:I

    iget v3, v2, Lg/crp;->bp:I

    iput v3, v1, Lg/crp;->bp:I

    iget v3, v2, Lg/crp;->bj:I

    iput v3, v1, Lg/crp;->bj:I

    iget v3, v2, Lg/crp;->aq:I

    iput v3, v1, Lg/crp;->aq:I

    iget v3, v2, Lg/crp;->ac:I

    iput v3, v1, Lg/crp;->ac:I

    iget v3, v2, Lg/crp;->q:I

    iput v3, v1, Lg/crp;->q:I

    iget v3, v2, Lg/crp;->j:F

    iput v3, v1, Lg/crp;->j:F

    iget v3, v2, Lg/crp;->bd:F

    iput v3, v1, Lg/crp;->bd:F

    iget v3, v2, Lg/crp;->bh:I

    iput v3, v1, Lg/crp;->bh:I

    iget v3, v2, Lg/crp;->w:I

    iput v3, v1, Lg/crp;->w:I

    iget v3, v2, Lg/crp;->f:I

    iput v3, v1, Lg/crp;->f:I

    iget-object v3, v2, Lg/crp;->al:Ljava/lang/String;

    iput-object v3, v1, Lg/crp;->al:Ljava/lang/String;

    iget-object v3, v2, Lg/crp;->c:[I

    if-eqz v3, :cond_0

    iget-object v4, v2, Lg/crp;->bg:Ljava/lang/String;

    if-nez v4, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lg/crp;->c:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lg/crp;->c:[I

    :goto_0
    iget-object v3, v2, Lg/crp;->bg:Ljava/lang/String;

    iput-object v3, v1, Lg/crp;->bg:Ljava/lang/String;

    iget-boolean v3, v2, Lg/crp;->bi:Z

    iput-boolean v3, v1, Lg/crp;->bi:Z

    iget-boolean v3, v2, Lg/crp;->i:Z

    iput-boolean v3, v1, Lg/crp;->i:Z

    iget-boolean v3, v2, Lg/crp;->au:Z

    iput-boolean v3, v1, Lg/crp;->au:Z

    iget v2, v2, Lg/crp;->o:I

    iput v2, v1, Lg/crp;->o:I

    iget-object v1, v0, Lg/djm;->f:Lg/ggo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/djm;->f:Lg/ggo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lg/ggo;->e:I

    iput v3, v1, Lg/ggo;->e:I

    iget v3, v2, Lg/ggo;->i:I

    iput v3, v1, Lg/ggo;->i:I

    iget v3, v2, Lg/ggo;->d:F

    iput v3, v1, Lg/ggo;->d:F

    iget v2, v2, Lg/ggo;->c:F

    iput v2, v1, Lg/ggo;->c:F

    iget-object v1, p0, Lg/djm;->e:Lg/dqy;

    iget v2, v1, Lg/dqy;->b:I

    iget-object v3, v0, Lg/djm;->e:Lg/dqy;

    iput v2, v3, Lg/dqy;->b:I

    iget v2, v1, Lg/dqy;->d:F

    iput v2, v3, Lg/dqy;->d:F

    iget v2, v1, Lg/dqy;->a:F

    iput v2, v3, Lg/dqy;->a:F

    iget v1, v1, Lg/dqy;->c:I

    iput v1, v3, Lg/dqy;->c:I

    iget-object v1, v0, Lg/djm;->b:Lg/edp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/djm;->b:Lg/edp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lg/edp;->g:F

    iput v3, v1, Lg/edp;->g:F

    iget v3, v2, Lg/edp;->k:F

    iput v3, v1, Lg/edp;->k:F

    iget v3, v2, Lg/edp;->m:F

    iput v3, v1, Lg/edp;->m:F

    iget v3, v2, Lg/edp;->d:F

    iput v3, v1, Lg/edp;->d:F

    iget v3, v2, Lg/edp;->f:F

    iput v3, v1, Lg/edp;->f:F

    iget v3, v2, Lg/edp;->h:F

    iput v3, v1, Lg/edp;->h:F

    iget v3, v2, Lg/edp;->n:F

    iput v3, v1, Lg/edp;->n:F

    iget v3, v2, Lg/edp;->b:I

    iput v3, v1, Lg/edp;->b:I

    iget v3, v2, Lg/edp;->j:F

    iput v3, v1, Lg/edp;->j:F

    iget v3, v2, Lg/edp;->l:F

    iput v3, v1, Lg/edp;->l:F

    iget v3, v2, Lg/edp;->c:F

    iput v3, v1, Lg/edp;->c:F

    iget-boolean v3, v2, Lg/edp;->e:Z

    iput-boolean v3, v1, Lg/edp;->e:Z

    iget v2, v2, Lg/edp;->i:F

    iput v2, v1, Lg/edp;->i:F

    iget v1, p0, Lg/djm;->c:I

    iput v1, v0, Lg/djm;->c:I

    return-object v0
.end method

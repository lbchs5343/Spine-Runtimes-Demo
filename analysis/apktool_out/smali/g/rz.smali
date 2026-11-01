.class public final Lg/rz;
.super Lg/grq;


# instance fields
.field public final a:Lg/aio;

.field public final b:Lg/bl;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cbc;Lg/aio;Lg/cgf;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lg/grq;-><init>(Lg/fts;Lg/cbc;)V

    iput-object p3, p0, Lg/rz;->a:Lg/aio;

    new-instance p3, Lg/ewz;

    iget-object p2, p2, Lg/cbc;->h:Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lg/ewz;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lg/bl;

    invoke-direct {p2, p1, p0, p3, p4}, Lg/bl;-><init>(Lg/fts;Lg/grq;Lg/ewz;Lg/cgf;)V

    iput-object p2, p0, Lg/rz;->b:Lg/bl;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, p1, p1}, Lg/bl;->n(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final c()Lg/fzn;
    .locals 1

    iget-object v0, p0, Lg/grq;->au:Lg/cbc;

    iget-object v0, v0, Lg/cbc;->v:Lg/fzn;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/rz;->a:Lg/aio;

    iget-object v0, v0, Lg/grq;->au:Lg/cbc;

    iget-object v0, v0, Lg/cbc;->v:Lg/fzn;

    return-object v0
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    invoke-virtual {p0, p3}, Lg/grq;->bj(I)V

    iget-object v0, p0, Lg/rz;->b:Lg/bl;

    invoke-virtual {v0, p1, p2, p3}, Lg/bl;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final e()Lg/aoy;
    .locals 1

    iget-object v0, p0, Lg/grq;->au:Lg/cbc;

    iget-object v0, v0, Lg/cbc;->k:Lg/aoy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/rz;->a:Lg/aio;

    iget-object v0, v0, Lg/grq;->au:Lg/cbc;

    iget-object v0, v0, Lg/cbc;->k:Lg/aoy;

    return-object v0
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lg/rz;->b:Lg/bl;

    iget-object v0, p0, Lg/grq;->ah:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lg/bl;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

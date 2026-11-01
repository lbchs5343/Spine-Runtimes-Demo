.class public final Lg/aar;
.super Lg/brh;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lg/hac;

.field public c:I

.field public d:F

.field public f:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lg/brh;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg/aar;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lg/aar;->a:I

    iput v0, p0, Lg/aar;->c:I

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    iput-object v0, p0, Lg/aar;->b:Lg/hac;

    const/4 v0, 0x0

    iput v0, p0, Lg/aar;->f:I

    iget-object v1, p0, Lg/brh;->cc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lg/brh;->cc:Ljava/util/ArrayList;

    iget-object v2, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg/brh;->ax:[Lg/hac;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lg/brh;->ax:[Lg/hac;

    iget-object v3, p0, Lg/aar;->b:Lg/hac;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lg/aar;->h:Z

    return v0
.end method

.method public final g(Lg/bwo;Z)V
    .locals 7

    iget-object p2, p0, Lg/brh;->bj:Lg/brh;

    check-cast p2, Lg/aep;

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {p2, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v0

    sget-object v1, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {p2, v1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v1

    iget-object v2, p0, Lg/brh;->bj:Lg/brh;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lg/brh;->ch:[Lg/fol;

    aget-object v2, v2, v4

    sget-object v5, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lg/aar;->f:I

    if-nez v5, :cond_3

    sget-object v0, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {p2, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v0

    sget-object v1, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p2, v1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v1

    iget-object p2, p0, Lg/brh;->bj:Lg/brh;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lg/brh;->ch:[Lg/fol;

    aget-object p2, p2, v3

    sget-object v2, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, Lg/aar;->h:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lg/aar;->b:Lg/hac;

    iget-boolean v6, p2, Lg/hac;->h:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object p2

    iget-object v6, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {v6}, Lg/hac;->l()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lg/bwo;->v(Lg/crb;I)V

    iget v6, p0, Lg/aar;->a:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lg/aar;->c:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v1

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lg/aar;->h:Z

    return-void

    :cond_6
    iget p2, p0, Lg/aar;->a:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {p1, p2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object p2

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    iget v3, p0, Lg/aar;->a:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    return-void

    :cond_7
    iget p2, p0, Lg/aar;->c:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {p1, p2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object p2

    invoke-virtual {p1, v1}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v1

    iget v3, p0, Lg/aar;->c:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    return-void

    :cond_8
    iget p2, p0, Lg/aar;->d:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {p1, p2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object p2

    invoke-virtual {p1, v1}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v1

    iget v2, p0, Lg/aar;->d:F

    invoke-virtual {p1}, Lg/bwo;->w()Lg/gz;

    move-result-object v3

    iget-object v4, v3, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v4, p2, v0}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p2, v3, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p2, v1, v2}, Lg/fnf;->r(Lg/crb;F)V

    invoke-virtual {p1, v3}, Lg/bwo;->ai(Lg/gz;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lg/aar;->h:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Lg/bwo;Z)V
    .locals 2

    iget-object p2, p0, Lg/brh;->bj:Lg/brh;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lg/aar;->f:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Lg/brh;->cv:I

    iput v1, p0, Lg/brh;->cb:I

    iget-object p1, p0, Lg/brh;->bj:Lg/brh;

    invoke-virtual {p1}, Lg/brh;->di()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/brh;->dj(I)V

    invoke-virtual {p0, v1}, Lg/brh;->ed(I)V

    return-void

    :cond_1
    iput v1, p0, Lg/brh;->cv:I

    iput p1, p0, Lg/brh;->cb:I

    iget-object p1, p0, Lg/brh;->bj:Lg/brh;

    invoke-virtual {p1}, Lg/brh;->eb()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/brh;->ed(I)V

    invoke-virtual {p0, v1}, Lg/brh;->dj(I)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {v0, p1}, Lg/hac;->m(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/aar;->h:Z

    return-void
.end method

.method public final m(Lg/dih;)Lg/hac;
    .locals 2

    sget-object v0, Lg/ddv;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lg/aar;->f:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/aar;->b:Lg/hac;

    return-object p1

    :cond_1
    iget p1, p0, Lg/aar;->f:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/aar;->b:Lg/hac;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(I)V
    .locals 3

    iget v0, p0, Lg/aar;->f:I

    if-ne v0, p1, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, Lg/aar;->f:I

    iget-object p1, p0, Lg/brh;->cc:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lg/aar;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    iput-object v0, p0, Lg/aar;->b:Lg/hac;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    iput-object v0, p0, Lg/aar;->b:Lg/hac;

    :goto_0
    iget-object v0, p0, Lg/aar;->b:Lg/hac;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/brh;->ax:[Lg/hac;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lg/aar;->b:Lg/hac;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

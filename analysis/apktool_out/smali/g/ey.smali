.class public final Lg/ey;
.super Ljava/lang/Object;

# interfaces
.implements Lg/gmo;


# instance fields
.field public a:Lg/flj;

.field public b:F

.field public final c:Ljava/util/List;

.field public e:Lg/flj;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ey;->a:Lg/flj;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg/ey;->b:F

    iput-object p1, p0, Lg/ey;->c:Ljava/util/List;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/ey;->f(F)Lg/flj;

    move-result-object p1

    iput-object p1, p0, Lg/ey;->e:Lg/flj;

    return-void
.end method


# virtual methods
.method public final _bu()F
    .locals 2

    iget-object v0, p0, Lg/ey;->c:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    invoke-virtual {v0}, Lg/flj;->u()F

    move-result v0

    return v0
.end method

.method public final d()Lg/flj;
    .locals 1

    iget-object v0, p0, Lg/ey;->e:Lg/flj;

    return-object v0
.end method

.method public final dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final dq(F)Z
    .locals 3

    iget-object v0, p0, Lg/ey;->e:Lg/flj;

    invoke-virtual {v0}, Lg/flj;->t()F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lg/flj;->u()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object p1, p0, Lg/ey;->e:Lg/flj;

    invoke-virtual {p1}, Lg/flj;->v()Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lg/ey;->f(F)Lg/flj;

    move-result-object p1

    iput-object p1, p0, Lg/ey;->e:Lg/flj;

    return v2
.end method

.method public final f(F)Lg/flj;
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lg/ey;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    invoke-virtual {v0}, Lg/flj;->t()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/flj;

    iget-object v3, p0, Lg/ey;->e:Lg/flj;

    if-eq v3, v2, :cond_1

    invoke-virtual {v2}, Lg/flj;->t()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Lg/flj;->u()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/flj;

    return-object p1
.end method

.method public final g(F)Z
    .locals 2

    iget-object v0, p0, Lg/ey;->a:Lg/flj;

    iget-object v1, p0, Lg/ey;->e:Lg/flj;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg/ey;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iput-object v1, p0, Lg/ey;->a:Lg/flj;

    iput p1, p0, Lg/ey;->b:F

    const/4 p1, 0x0

    return p1
.end method

.method public final ox()F
    .locals 2

    iget-object v0, p0, Lg/ey;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    invoke-virtual {v0}, Lg/flj;->t()F

    move-result v0

    return v0
.end method

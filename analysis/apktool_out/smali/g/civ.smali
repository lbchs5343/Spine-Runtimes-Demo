.class public final Lg/civ;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/gjf;


# instance fields
.field public final a:Lg/fdn;

.field public b:Z

.field public final c:Landroid/graphics/Path;

.field public final d:Lg/ais;

.field public final e:Z

.field public final f:Lg/fts;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/awc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/civ;->c:Landroid/graphics/Path;

    new-instance v0, Lg/ais;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ais;-><init>(I)V

    iput-object v0, p0, Lg/civ;->d:Lg/ais;

    iget-boolean v0, p3, Lg/awc;->a:Z

    iput-boolean v0, p0, Lg/civ;->e:Z

    iput-object p1, p0, Lg/civ;->f:Lg/fts;

    iget-object p1, p3, Lg/awc;->d:Lg/dlz;

    new-instance p3, Lg/fdn;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p3, p1}, Lg/fdn;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lg/civ;->a:Lg/fdn;

    invoke-virtual {p2, p3}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p3, p0}, Lg/cej;->l(Lg/fyj;)V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/civ;->b:Z

    iget-object v0, p0, Lg/civ;->f:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dvz;

    instance-of v2, v1, Lg/ejw;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lg/ejw;

    invoke-virtual {v2}, Lg/ejw;->getType()Lg/eyu;

    move-result-object v3

    sget-object v4, Lg/eyu;->dq:Lg/eyu;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lg/civ;->d:Lg/ais;

    iget-object v1, v1, Lg/ais;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Lg/ejw;->g(Lg/fyj;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lg/enh;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lg/enh;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lg/civ;->a:Lg/fdn;

    iput-object p2, p1, Lg/fdn;->r:Ljava/util/ArrayList;

    return-void
.end method

.method public final p()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lg/civ;->b:Z

    iget-object v1, p0, Lg/civ;->c:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lg/civ;->e:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lg/civ;->b:Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lg/civ;->a:Lg/fdn;

    invoke-virtual {v0}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lg/civ;->d:Lg/ais;

    invoke-virtual {v0, v1}, Lg/ais;->f(Landroid/graphics/Path;)V

    iput-boolean v2, p0, Lg/civ;->b:Z

    return-object v1
.end method

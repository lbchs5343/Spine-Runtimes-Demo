.class public final Lg/ejw;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/dvz;


# instance fields
.field public final a:Lg/bsb;

.field public final b:Lg/bsb;

.field public final c:Z

.field public final d:Lg/bsb;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lg/eyu;


# direct methods
.method public constructor <init>(Lg/grq;Lg/cxl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ejw;->e:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lg/cxl;->b:Z

    iput-boolean v0, p0, Lg/ejw;->c:Z

    invoke-virtual {p2}, Lg/cxl;->getType()Lg/eyu;

    move-result-object v0

    iput-object v0, p0, Lg/ejw;->f:Lg/eyu;

    iget-object v0, p2, Lg/cxl;->d:Lg/cnc;

    invoke-virtual {v0}, Lg/cnc;->dq()Lg/cej;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg/bsb;

    iput-object v1, p0, Lg/ejw;->a:Lg/bsb;

    iget-object v1, p2, Lg/cxl;->f:Lg/cnc;

    invoke-virtual {v1}, Lg/cnc;->dq()Lg/cej;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/bsb;

    iput-object v2, p0, Lg/ejw;->b:Lg/bsb;

    iget-object p2, p2, Lg/cxl;->a:Lg/cnc;

    invoke-virtual {p2}, Lg/cnc;->dq()Lg/cej;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lg/bsb;

    iput-object v2, p0, Lg/ejw;->d:Lg/bsb;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p1, v1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p1, p2}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {v0, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {v1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, p0}, Lg/cej;->l(Lg/fyj;)V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/ejw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fyj;

    invoke-interface {v1}, Lg/fyj;->dq()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lg/fyj;)V
    .locals 1

    iget-object v0, p0, Lg/ejw;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getType()Lg/eyu;
    .locals 1

    iget-object v0, p0, Lg/ejw;->f:Lg/eyu;

    return-object v0
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

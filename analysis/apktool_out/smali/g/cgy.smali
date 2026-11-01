.class public final Lg/cgy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dda;

.field public final b:Lg/evf;

.field public final c:Lg/fdy;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Lg/evf;

.field public final h:Lg/dda;


# direct methods
.method public constructor <init>(Lg/hed;Lg/gpu;Lg/fza;Lg/fza;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lg/cxc;

    invoke-direct {v2, p2, v0}, Lg/cxc;-><init>(Lg/gpu;Z)V

    new-instance v0, Lg/cxc;

    invoke-direct {v0, p2, v1}, Lg/cxc;-><init>(Lg/gpu;Z)V

    new-instance p2, Lg/gvg;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1, v1}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance p3, Lg/gvg;

    invoke-direct {p3, p4, v1, v1}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance p4, Lg/aqf;

    const/4 v1, 0x1

    invoke-direct {p4, p0, v2, p2, v1}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    new-instance p2, Lg/aqf;

    invoke-direct {p2, p0, v0, p3, v1}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    new-instance p3, Lg/evf;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/16 p5, 0x9

    invoke-direct {p3, p5, v0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    iput-object p3, p0, Lg/cgy;->g:Lg/evf;

    new-instance p3, Lg/evf;

    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5, p6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/16 p6, 0x9

    invoke-direct {p3, p6, p5}, Lg/evf;-><init>(ILjava/lang/Object;)V

    iput-object p3, p0, Lg/cgy;->b:Lg/evf;

    new-instance p3, Lg/fdy;

    invoke-direct {p3, p1}, Lg/fdy;-><init>(Lg/hed;)V

    iput-object p3, p0, Lg/cgy;->c:Lg/fdy;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/cgy;->e:Ljava/util/Set;

    new-instance p1, Lg/dda;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/dda;-><init>(I)V

    iput-object p1, p0, Lg/cgy;->h:Lg/dda;

    new-instance p1, Lg/dda;

    invoke-direct {p1, p2}, Lg/dda;-><init>(I)V

    iput-object p1, p0, Lg/cgy;->a:Lg/dda;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lg/cgy;->e:Ljava/util/Set;

    iput-object p5, p0, Lg/cgy;->g:Lg/evf;

    iput-object p6, p0, Lg/cgy;->b:Lg/evf;

    iput-object p4, p0, Lg/cgy;->c:Lg/fdy;

    iput-object p2, p0, Lg/cgy;->h:Lg/dda;

    iput-object p3, p0, Lg/cgy;->a:Lg/dda;

    return-void
.end method

.method public static i(Lg/dda;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lg/dda;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ap;

    iget-object v2, v1, Lg/ap;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lg/ap;->a:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static j(Lg/cgy;Lg/afo;Lg/afo;)Lg/cgy;
    .locals 7

    new-instance v0, Lg/cgy;

    iget-object v1, p0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v2, p0, Lg/cgy;->h:Lg/dda;

    iget-object v3, p0, Lg/cgy;->a:Lg/dda;

    iget-object v4, p0, Lg/cgy;->c:Lg/fdy;

    iget-object v5, p0, Lg/cgy;->g:Lg/evf;

    iget-object v6, p0, Lg/cgy;->b:Lg/evf;

    invoke-direct/range {v0 .. v6}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    invoke-virtual {p1, v0}, Lg/afo;->be(Lg/cgy;)Lg/fkb;

    move-result-object p0

    invoke-virtual {p2, v0}, Lg/afo;->be(Lg/cgy;)Lg/fkb;

    move-result-object p1

    iget-object p2, v0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, v0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final k(Lg/gvg;I)V
    .locals 3

    iget-object v0, p1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v0, Lg/fza;

    iget-object v1, p0, Lg/cgy;->g:Lg/evf;

    iget-object v1, v1, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/cgy;->h:Lg/dda;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/cgy;->a:Lg/dda;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/dda;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ap;

    invoke-static {v0, p1, p2}, Lg/ap;->d(Lg/ap;Lg/gvg;I)V

    return-void

    :cond_1
    new-instance v2, Lg/ap;

    invoke-direct {v2, v0}, Lg/ap;-><init>(Lg/fza;)V

    invoke-static {v2, p1, p2}, Lg/ap;->d(Lg/ap;Lg/gvg;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ap;

    return-void
.end method

.method public final l()Lg/fkb;
    .locals 1

    iget-object v0, p0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fkb;

    return-object v0
.end method

.method public final m(Lg/fkb;)Lg/evf;
    .locals 1

    iget-object v0, p0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lg/cgy;->g:Lg/evf;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lg/cgy;->b:Lg/evf;

    return-object p1

    :cond_1
    new-instance p1, Lg/gck;

    const-string v0, "Orphaned TraverserState node"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()Lg/cgy;
    .locals 7

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lg/cgy;->e:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lg/cgy;->h:Lg/dda;

    invoke-static {v0}, Lg/dda;->c(Lg/dda;)Lg/dda;

    move-result-object v2

    iget-object v0, p0, Lg/cgy;->a:Lg/dda;

    invoke-static {v0}, Lg/dda;->c(Lg/dda;)Lg/dda;

    move-result-object v3

    new-instance v0, Lg/cgy;

    iget-object v5, p0, Lg/cgy;->g:Lg/evf;

    iget-object v6, p0, Lg/cgy;->b:Lg/evf;

    iget-object v4, p0, Lg/cgy;->c:Lg/fdy;

    invoke-direct/range {v0 .. v6}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    invoke-virtual {p0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/fkb;->f(Lg/cgy;)Lg/fkb;

    move-result-object v1

    invoke-virtual {p0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg/fkb;->f(Lg/cgy;)Lg/fkb;

    move-result-object v2

    iget-object v3, v0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, v0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cgy;

    iget-object v1, p0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v2, v0, Lg/cgy;->e:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lg/cgy;->h:Lg/dda;

    iget-object v2, v0, Lg/cgy;->h:Lg/dda;

    invoke-static {v1, v2}, Lg/dda;->d(Lg/dda;Lg/dda;)V

    iget-object v1, p0, Lg/cgy;->a:Lg/dda;

    iget-object v0, v0, Lg/cgy;->a:Lg/dda;

    invoke-static {v1, v0}, Lg/dda;->d(Lg/dda;Lg/dda;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()Lg/fkb;
    .locals 1

    iget-object v0, p0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fkb;

    return-object v0
.end method

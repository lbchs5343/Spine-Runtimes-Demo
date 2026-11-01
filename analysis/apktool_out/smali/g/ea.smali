.class public final Lg/ea;
.super Lg/bnf;
.source "SourceFile"


# instance fields
.field public final a:Lg/aqf;


# direct methods
.method public constructor <init>(Lg/aqf;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/bnf;-><init>(Lg/fkb;)V

    iput-object p1, p0, Lg/ea;->a:Lg/aqf;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    iget-object v0, p0, Lg/bnf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fkb;

    iget-object v1, v0, Lg/fkb;->j:Lg/cgy;

    iget-object v2, v1, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, v1, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v3, p0, Lg/ea;->a:Lg/aqf;

    iget-object v3, v3, Lg/aqf;->a:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    invoke-virtual {v0}, Lg/fkb;->k()Lg/cxc;

    move-result-object v4

    invoke-virtual {v1, v0}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v0

    iget-object v3, v3, Lg/fza;->e:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lg/egl;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v0}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v5}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    new-instance v3, Lg/dcc;

    invoke-direct {v3, v1, v4, v0}, Lg/dcc;-><init>(Lg/cgy;Lg/cxc;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    new-instance v5, Lg/gvg;

    invoke-direct {v5, v0, v3, v3}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v3, Lg/aqf;

    const/4 v0, 0x1

    invoke-direct {v3, v1, v4, v5, v0}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    new-instance v3, Lg/fjk;

    sget-object v0, Lg/gne;->END_OF_PATH:Lg/gne;

    invoke-direct {v3, v1, v0}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance v0, Lg/gck;

    const-string v1, "Orphaned traverser state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

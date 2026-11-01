.class public final synthetic Lg/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lg/aoy;

.field public final synthetic b:Lg/cci;

.field public final synthetic c:Lg/bfb;


# direct methods
.method public synthetic constructor <init>(Lg/aoy;Lg/cci;Lg/bfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/iq;->a:Lg/aoy;

    iput-object p2, p0, Lg/iq;->b:Lg/cci;

    iput-object p3, p0, Lg/iq;->c:Lg/bfb;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lg/iq;->a:Lg/aoy;

    iget-object v0, v0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/dwg;

    check-cast p1, Lg/gut;

    invoke-interface {p1}, Lg/gut;->ay()Lg/gqc;

    move-result-object v1

    new-instance v2, Lg/gqc;

    iget v3, v1, Lg/gqc;->ab:I

    and-int/lit8 v4, v3, 0x7

    iget-object v1, v1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/frh;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v1, v5}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v2}, Lg/gqc;->an()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lg/gqc;->al()Z

    move-result v1

    iget-object v4, p0, Lg/iq;->b:Lg/cci;

    iget-object v5, p0, Lg/iq;->c:Lg/bfb;

    const/4 v6, 0x1

    if-nez v1, :cond_5

    and-int/lit8 v1, v3, 0x7

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lg/gqc;->ao()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lg/gut;->getDeclaringClass()Lg/cci;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v4}, Lg/cci;->bn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lg/cpa;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lg/cpa;-><init>(Lg/cci;I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {v5, p1, v6}, Lg/bfb;->f(Lg/gut;I)V

    return-void

    :cond_4
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Lg/gut;->getDeclaringClass()Lg/cci;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v4}, Lg/cci;->bn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lg/cpa;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lg/cpa;-><init>(Lg/cci;I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x4

    :cond_6
    invoke-virtual {v5, p1, v6}, Lg/bfb;->f(Lg/gut;I)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

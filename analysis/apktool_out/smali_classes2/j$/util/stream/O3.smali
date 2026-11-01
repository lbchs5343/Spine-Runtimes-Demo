.class public final Lj$/util/stream/O3;
.super Lj$/util/stream/a0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/W3;


# virtual methods
.method public final M0(Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 1

    new-instance v0, Lj$/util/stream/Y3;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/Y3;-><init>(Lj$/util/stream/a;Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/I0;

    return-object p1
.end method

.method public final N0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    sget-object v0, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/stream/e0;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lj$/util/stream/e0;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/O3;->M0(Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/I0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lj$/util/stream/b4;

    invoke-virtual {p1, p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/G;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lj$/util/stream/b4;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 1

    new-instance p1, Lj$/util/stream/N3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/N3;-><init>(Lj$/util/stream/O3;Lj$/util/stream/o2;Z)V

    return-object p1
.end method

.method public final h(Lj$/util/stream/A0;Z)Lj$/util/stream/X3;
    .locals 1

    new-instance v0, Lj$/util/stream/N3;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/N3;-><init>(Lj$/util/stream/O3;Lj$/util/stream/o2;Z)V

    return-object v0
.end method

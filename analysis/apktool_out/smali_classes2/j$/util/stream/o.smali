.class public final Lj$/util/stream/o;
.super Lj$/util/stream/e2;
.source "SourceFile"


# direct methods
.method public static T0(Lj$/util/stream/x1;Lj$/util/Spliterator;)Lj$/util/stream/M0;
    .locals 6

    new-instance v4, Lj$/time/format/a;

    const/16 v0, 0x18

    invoke-direct {v4, v0}, Lj$/time/format/a;-><init>(I)V

    new-instance v3, Lj$/time/format/a;

    const/16 v0, 0x19

    invoke-direct {v3, v0}, Lj$/time/format/a;-><init>(I)V

    new-instance v2, Lj$/time/format/a;

    const/16 v0, 0x1a

    invoke-direct {v2, v0}, Lj$/time/format/a;-><init>(I)V

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/C1;

    sget-object v1, Lj$/util/stream/b3;->REFERENCE:Lj$/util/stream/b3;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/C1;-><init>(Lj$/util/stream/b3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p0, p1}, Lj$/util/stream/x1;->i(Lj$/util/stream/x1;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance p1, Lj$/util/stream/M0;

    invoke-direct {p1, p0}, Lj$/util/stream/M0;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method public final M0(Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 4

    sget-object v0, Lj$/util/stream/a3;->DISTINCT:Lj$/util/stream/a3;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v2, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v2}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v2, p3}, Lj$/util/stream/x1;->j0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p3, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    iget v0, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {p3, v0}, Lj$/util/stream/a3;->l(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/o;->T0(Lj$/util/stream/x1;Lj$/util/Spliterator;)Lj$/util/stream/M0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lj$/util/concurrent/t;

    const/4 v3, 0x4

    invoke-direct {v1, v3, p3, v0}, Lj$/util/concurrent/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/util/stream/Q;

    invoke-direct {v3, v1, v2}, Lj$/util/stream/Q;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v3, p1, p2}, Lj$/util/stream/S;->a(Lj$/util/stream/x1;Lj$/util/Spliterator;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    :cond_2
    new-instance p2, Lj$/util/stream/M0;

    invoke-direct {p2, p1}, Lj$/util/stream/M0;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method public final N0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    sget-object v0, Lj$/util/stream/a3;->DISTINCT:Lj$/util/stream/a3;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/o;->T0(Lj$/util/stream/x1;Lj$/util/Spliterator;)Lj$/util/stream/M0;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/stream/M0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lj$/util/stream/j3;

    invoke-virtual {p1, p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, p1, p2}, Lj$/util/stream/j3;-><init>(Lj$/util/Spliterator;Lj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 1

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj$/util/stream/a3;->DISTINCT:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/m;

    invoke-direct {p1, p2}, Lj$/util/stream/m;-><init>(Lj$/util/stream/o2;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/n;

    invoke-direct {p1, p2}, Lj$/util/stream/n;-><init>(Lj$/util/stream/o2;)V

    return-object p1
.end method

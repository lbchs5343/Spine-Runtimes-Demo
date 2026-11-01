.class public final Lj$/util/stream/R0;
.super Lj$/util/stream/S0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/G0;


# virtual methods
.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/x1;->R(Lj$/util/stream/G0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/x1;->U(Lj$/util/stream/G0;JJ)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lj$/util/stream/x1;->O(Lj$/util/stream/G0;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [J

    return-object p1
.end method

.method public final spliterator()Lj$/util/M;
    .locals 1

    new-instance v0, Lj$/util/stream/i1;

    invoke-direct {v0, p0}, Lj$/util/stream/l1;-><init>(Lj$/util/stream/I0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/i1;

    invoke-direct {v0, p0}, Lj$/util/stream/l1;-><init>(Lj$/util/stream/I0;)V

    return-object v0
.end method

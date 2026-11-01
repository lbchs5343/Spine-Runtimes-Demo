.class public final Lj$/util/stream/q2;
.super Lj$/util/stream/e2;
.source "SourceFile"


# instance fields
.field public final synthetic s:J

.field public final synthetic t:J


# direct methods
.method public constructor <init>(Lj$/util/stream/g2;IJJ)V
    .locals 0

    iput-wide p3, p0, Lj$/util/stream/q2;->s:J

    iput-wide p5, p0, Lj$/util/stream/q2;->t:J

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final M0(Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 12

    invoke-virtual {p1, p2}, Lj$/util/stream/x1;->k0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    const/16 v5, 0x4000

    invoke-interface {p2, v5}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/util/stream/a;

    :goto_0
    iget v1, v0, Lj$/util/stream/a;->l:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/a;->L0()Lj$/util/stream/b3;

    move-result-object v3

    iget-wide v5, p0, Lj$/util/stream/q2;->s:J

    iget-wide v7, p0, Lj$/util/stream/q2;->t:J

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lj$/util/stream/x1;->X(Lj$/util/stream/b3;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object p2

    invoke-static {p1, p2, v2, p3}, Lj$/util/stream/x1;->a0(Lj$/util/stream/x1;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_1
    move-wide v4, v3

    move-object v3, p2

    sget-object p2, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    move-object v6, p1

    check-cast v6, Lj$/util/stream/a;

    iget v6, v6, Lj$/util/stream/a;->m:I

    invoke-virtual {p2, v6}, Lj$/util/stream/a3;->l(I)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, v3}, Lj$/util/stream/x1;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v7

    iget-wide p1, p0, Lj$/util/stream/q2;->s:J

    iget-wide v8, p0, Lj$/util/stream/q2;->t:J

    cmp-long v3, p1, v0

    if-gtz v3, :cond_3

    cmp-long v3, v8, v4

    sub-long/2addr v0, p1

    if-ltz v3, :cond_2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v8, p1

    goto :goto_1

    :cond_2
    move-wide v8, v0

    :goto_1
    move-wide v10, v8

    move-wide v8, v4

    goto :goto_2

    :cond_3
    move-wide v10, v8

    move-wide v8, p1

    :goto_2
    new-instance v6, Lj$/util/stream/A3;

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/C3;-><init>(Lj$/util/Spliterator;JJ)V

    invoke-static {p0, v6, v2, p3}, Lj$/util/stream/x1;->a0(Lj$/util/stream/x1;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lj$/util/stream/y2;

    iget-wide v5, p0, Lj$/util/stream/q2;->s:J

    iget-wide v7, p0, Lj$/util/stream/q2;->t:J

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/y2;-><init>(Lj$/util/stream/a;Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/I0;

    return-object p1
.end method

.method public final N0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 12

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->k0(Lj$/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    invoke-interface {p2, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lj$/util/stream/u3;

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v7

    iget-wide v8, p0, Lj$/util/stream/q2;->s:J

    iget-wide v2, p0, Lj$/util/stream/q2;->t:J

    invoke-static {v8, v9, v2, v3}, Lj$/util/stream/x1;->Z(JJ)J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/u3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v6

    :cond_0
    sget-object v0, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    iget v7, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v7}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v7

    iget-wide v8, p0, Lj$/util/stream/q2;->s:J

    iget-wide v10, p0, Lj$/util/stream/q2;->t:J

    cmp-long v0, v8, v2

    if-gtz v0, :cond_2

    cmp-long v0, v10, v4

    sub-long/2addr v2, v8

    if-ltz v0, :cond_1

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_1
    move-wide v10, v2

    move-wide v8, v4

    :cond_2
    new-instance v6, Lj$/util/stream/A3;

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/C3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v6

    :cond_3
    new-instance v0, Lj$/util/stream/y2;

    new-instance v4, Lj$/util/stream/e0;

    const/16 v2, 0xc

    invoke-direct {v4, v2}, Lj$/util/stream/e0;-><init>(I)V

    iget-wide v5, p0, Lj$/util/stream/q2;->s:J

    iget-wide v7, p0, Lj$/util/stream/q2;->t:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/y2;-><init>(Lj$/util/stream/a;Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/I0;

    invoke-interface {v0}, Lj$/util/stream/I0;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 0

    new-instance p1, Lj$/util/stream/p2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/p2;-><init>(Lj$/util/stream/q2;Lj$/util/stream/o2;)V

    return-object p1
.end method

.class public final Lg/dec;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/dec;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/dec;->a:Lg/dba;

    return-void
.end method

.method public static b(Ljava/util/LinkedHashSet;Lg/fza;Lg/hed;)V
    .locals 3

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p2, Lg/hed;->aj:Lg/fza;

    if-eq p1, p2, :cond_2

    sget-object v0, Lg/giq;->a:Ljava/util/EnumSet;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fza;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    if-eq v1, p2, :cond_1

    iget-object v2, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(Lg/hed;)V
    .locals 2

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    new-instance v1, Lg/egm;

    invoke-direct {v1, p0}, Lg/egm;-><init>(Lg/hed;)V

    invoke-static {v0, v1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/hed;->ba()V

    :cond_0
    return-void
.end method

.method public static d(Ljava/util/HashSet;Lg/hed;)V
    .locals 5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/bev;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg/bev;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {p0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lg/dbm;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lg/dbm;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Lj$/util/stream/IntStream;->sum()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unreachable blocks removed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", instructions: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lg/esk;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/esk;-><init>(I)V

    invoke-static {p0, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lg/hed;->ba()V

    return-void
.end method

.method public static e(Ljava/util/List;Lg/gsh;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/gks;

    if-eqz v0, :cond_2

    check-cast p1, Lg/gks;

    iget p1, p1, Lg/gks;->e:I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    iget-object v1, v1, Lg/eek;->ai:Lg/gks;

    if-eqz v1, :cond_1

    iget v1, v1, Lg/gks;->e:I

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Lg/gsh;Lg/gsh;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, p0, Lg/gks;

    if-eqz v2, :cond_3

    check-cast p0, Lg/gks;

    iget p0, p0, Lg/gks;->e:I

    check-cast p1, Lg/gks;

    iget p1, p1, Lg/gks;->e:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    instance-of v2, p0, Lg/ekh;

    if-eqz v2, :cond_5

    check-cast p0, Lg/ekh;

    iget-wide v2, p0, Lg/ekh;->a:J

    check-cast p1, Lg/ekh;

    iget-wide p0, p1, Lg/ekh;->a:J

    cmp-long v4, v2, p0

    if-nez v4, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected InsnArg types: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return v1
.end method

.method public static i(Lg/hed;)Z
    .locals 15

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    sget-object v5, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v6, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_9

    :cond_1
    sget-object v5, Lg/acq;->at:Lg/acq;

    iget-object v6, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v5}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gcv;

    invoke-virtual {v8}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/exw;

    iget-object v11, v10, Lg/exw;->b:Lg/fza;

    iget-object v10, v10, Lg/exw;->a:Lg/fza;

    sget-object v12, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v13, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v12}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {p0, v10, v11}, Lg/giq;->d(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    :cond_6
    if-eqz v9, :cond_3

    :cond_7
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_8
    if-le v6, v4, :cond_c

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gcv;

    iget-object v8, v8, Lg/gcv;->c:Lg/fza;

    if-eq v8, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    iget v7, v1, Lg/fza;->y:I

    invoke-static {p0, v7}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v7

    sget-object v8, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v7, v8}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v7, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gcv;

    iget-object v9, v9, Lg/gcv;->d:Lg/fza;

    invoke-static {v9, v1, v7}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_2

    :cond_b
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    if-ne v6, v4, :cond_16

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gcv;

    iget-object v5, v1, Lg/gcv;->d:Lg/fza;

    iget-object v1, v1, Lg/gcv;->c:Lg/fza;

    iget-object v6, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_d
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    sget-object v9, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v10, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {p0, v8, v5}, Lg/giq;->d(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :cond_f
    if-nez v7, :cond_7

    iget-object v6, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v7, v4, :cond_10

    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    if-nez v7, :cond_12

    sget-object v6, Lg/csv;->MTH_ENTER_BLOCK:Lg/csv;

    iget-object v7, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-nez v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected block without predecessors: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_11
    invoke-static {p0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v7

    sget-object v8, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v7, v8}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v7, v6}, Lg/lh;->w(Lg/csv;)V

    iput-object v7, p0, Lg/hed;->aj:Lg/fza;

    invoke-virtual {v1, v6}, Lg/lh;->v(Lg/csv;)V

    invoke-static {v7, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    goto :goto_6

    :cond_12
    invoke-static {p0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v7

    sget-object v8, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v7, v8}, Lg/lh;->w(Lg/csv;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    if-eq v8, v5, :cond_13

    invoke-static {v8, v1, v7}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_5

    :cond_14
    invoke-static {v7, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    :goto_6
    const/4 v6, 0x1

    :goto_7
    if-nez v6, :cond_7

    iget-object v6, v5, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v4, :cond_15

    const/4 v1, 0x0

    goto :goto_8

    :cond_15
    invoke-static {p0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v2

    sget-object v6, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v2, v6}, Lg/lh;->w(Lg/csv;)V

    sget-object v6, Lg/csv;->LOOP_END:Lg/csv;

    invoke-virtual {v2, v6}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v5, v1, v2}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    invoke-static {v2, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_16

    goto/16 :goto_1

    :cond_16
    :goto_9
    if-eqz v3, :cond_0

    goto/16 :goto_11

    :cond_17
    invoke-virtual {p0}, Lg/hed;->bg()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/hed;->ad:Lg/fza;

    iget-object v1, v1, Lg/fza;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_19
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->e:Ljava/util/List;

    iget-object v7, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v6}, Lg/evh;->q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    if-eqz v6, :cond_19

    iget-object v8, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-static {v8}, Lg/evh;->q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/eek;

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Lg/eek;->as()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v9, v9, Lg/eek;->ai:Lg/gks;

    invoke-static {v5}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v10

    if-eqz v10, :cond_19

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->RETURN:Lg/hay;

    if-ne v11, v12, :cond_19

    invoke-virtual {v10, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v10, Lg/gks;

    if-nez v11, :cond_1a

    goto :goto_a

    :cond_1a
    iget v9, v9, Lg/gks;->e:I

    check-cast v10, Lg/gks;

    iget v10, v10, Lg/gks;->e:I

    if-ne v9, v10, :cond_19

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v5}, Lg/lh;->s(Lg/lh;)V

    invoke-static {v6, v5}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {v5, v1}, Lg/lh;->w(Lg/csv;)V

    iget-object v1, p0, Lg/hed;->ad:Lg/fza;

    invoke-static {v5, v1}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-static {v6, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-virtual {v6}, Lg/fza;->ad()V

    const/4 v1, 0x1

    goto :goto_a

    :cond_1b
    if-eqz v1, :cond_1c

    invoke-static {p0}, Lg/dec;->c(Lg/hed;)V

    :cond_1c
    :goto_b
    if-eqz v1, :cond_1d

    goto/16 :goto_11

    :cond_1d
    sget-object v0, Lg/fuu;->SWITCH:Lg/fuu;

    invoke-static {p0, v0}, Lg/ddx;->b(Lg/hed;Lg/fuu;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_26

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    iget-object v6, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_25

    iget-object v7, v5, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_25

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    iget-object v6, v6, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->MOVE:Lg/hay;

    if-ne v6, v7, :cond_25

    iget-object v6, v5, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_25

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    invoke-static {v11}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v11

    if-nez v11, :cond_1f

    goto :goto_f

    :cond_1f
    iget-object v11, v11, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/eru;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    if-eq v11, v4, :cond_21

    if-eq v11, v1, :cond_20

    goto :goto_f

    :cond_20
    const/4 v10, 0x1

    goto :goto_c

    :cond_21
    const/4 v9, 0x1

    goto :goto_c

    :cond_22
    if-eqz v9, :cond_25

    if-eqz v10, :cond_25

    iget-object v8, v5, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x1

    :goto_d
    if-ge v6, v7, :cond_24

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    invoke-static {p0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v11

    sget-object v12, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v11, v12}, Lg/lh;->w(Lg/csv;)V

    iget-object v12, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/eek;

    invoke-virtual {v13}, Lg/eek;->ay()Lg/eek;

    move-result-object v13

    sget-object v14, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v13, v14}, Lg/lh;->w(Lg/csv;)V

    iget-object v14, v11, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_23
    invoke-virtual {v11, v5}, Lg/lh;->s(Lg/lh;)V

    invoke-static {v10, v5, v11}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    invoke-static {v11, v8}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_24
    const/4 v5, 0x1

    goto :goto_10

    :cond_25
    :goto_f
    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_1e

    :goto_11
    return v4

    :cond_26
    iget-object v0, p0, Lg/hed;->ad:Lg/fza;

    iget-object v0, v0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :cond_27
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    sget-object v7, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    iget-object v9, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-nez v7, :cond_2f

    sget-object v7, Lg/csv;->ORIG_RETURN:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-nez v7, :cond_2f

    sget-object v7, Lg/acq;->bh:Lg/acq;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->j(Lg/fky;)Z

    move-result v7

    if-eqz v7, :cond_28

    goto/16 :goto_15

    :cond_28
    iget-object v7, v6, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v1, :cond_29

    goto/16 :goto_15

    :cond_29
    invoke-static {v6}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v8

    if-nez v8, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v10, v8, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v4, :cond_2b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v4, :cond_2b

    invoke-virtual {v8, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-static {v7, v8}, Lg/dec;->e(Ljava/util/List;Lg/gsh;)Z

    move-result v8

    if-nez v8, :cond_2b

    goto :goto_15

    :cond_2b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    if-eqz v7, :cond_2c

    sget-object v7, Lg/csv;->ORIG_RETURN:Lg/csv;

    invoke-virtual {v6, v7}, Lg/lh;->w(Lg/csv;)V

    const/4 v7, 0x0

    goto :goto_13

    :cond_2c
    invoke-static {p0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v10

    sget-object v11, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v10, v11}, Lg/lh;->w(Lg/csv;)V

    sget-object v11, Lg/csv;->RETURN:Lg/csv;

    invoke-virtual {v10, v11}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eek;

    invoke-virtual {v12}, Lg/eek;->ay()Lg/eek;

    move-result-object v12

    sget-object v13, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v12, v13}, Lg/lh;->w(Lg/csv;)V

    iget-object v13, v10, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2d
    invoke-static {v8, v6, v10}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_13

    :cond_2e
    const/4 v5, 0x1

    goto/16 :goto_12

    :cond_2f
    :goto_15
    sget-object v7, Lg/csv;->IGNORE_THROW_SPLIT:Lg/csv;

    iget-object v8, v6, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v7}, Lg/sm;->g(Lg/csv;)Z

    move-result v7

    if-eqz v7, :cond_30

    goto/16 :goto_12

    :cond_30
    iget-object v7, v6, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v1, :cond_31

    goto/16 :goto_12

    :cond_31
    invoke-static {v6}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v8

    if-eqz v8, :cond_27

    iget-object v10, v8, Lg/eek;->ah:Lg/hay;

    sget-object v11, Lg/hay;->THROW:Lg/hay;

    if-eq v10, v11, :cond_32

    goto/16 :goto_12

    :cond_32
    new-instance v10, Ljava/util/HashMap;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    new-instance v11, Ljava/util/HashSet;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_33

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    new-instance v14, Lg/gsl;

    invoke-direct {v14, v8, v10, v13, v11}, Lg/gsl;-><init>(Lg/eek;Ljava/util/HashMap;Lg/fza;Ljava/util/HashSet;)V

    invoke-static {p0, v13, v14}, Lg/ffb;->ci(Lg/hed;Lg/fza;Ljava/util/function/Predicate;)V

    goto :goto_16

    :cond_33
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ne v8, v4, :cond_34

    sget-object v7, Lg/csv;->IGNORE_THROW_SPLIT:Lg/csv;

    invoke-virtual {v6, v7}, Lg/lh;->w(Lg/csv;)V

    goto/16 :goto_12

    :cond_34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    if-eqz v7, :cond_35

    const/4 v7, 0x0

    goto :goto_17

    :cond_35
    invoke-static {p0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v11

    sget-object v12, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v11, v12}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/eek;

    invoke-virtual {v13}, Lg/eek;->ay()Lg/eek;

    move-result-object v13

    sget-object v14, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v13, v14}, Lg/lh;->w(Lg/csv;)V

    iget-object v14, v11, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_36
    invoke-virtual {v11, v6}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eng;

    if-eqz v12, :cond_37

    iget-object v12, v12, Lg/eng;->a:Lg/aea;

    iget-object v12, v12, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-static {v8, v6, v11}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_17

    :cond_38
    if-eqz v5, :cond_3b

    iget-object v0, p0, Lg/hed;->ad:Lg/fza;

    sget-object v1, Lg/giq;->a:Ljava/util/EnumSet;

    iget-object v1, v0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v2, v2, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_39
    iget-object v1, v0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    if-eq v1, v0, :cond_3a

    iget-object v2, v1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lg/csv;->REMOVE:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {v1, v0}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    goto :goto_1a

    :cond_3b
    return v5
.end method

.method public static l(Lg/hed;)V
    .locals 6

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v2, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lg/hed;->aj:Lg/fza;

    if-eq v1, v2, :cond_0

    sget-object v2, Lg/acq;->bn:Lg/acq;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->j(Lg/fky;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    sget-object v4, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    iget-object v5, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v2, v3, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v2, p0}, Lg/dec;->d(Ljava/util/HashSet;Lg/hed;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removed unreachable split cross block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/fza;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/ebh;->bv(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unreachable block: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static m(Lg/hed;)V
    .locals 9

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    new-instance v1, Lg/esk;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lg/efe;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    iget-object v3, p0, Lg/hed;->aj:Lg/fza;

    new-instance v4, Lg/gpn;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lg/gpn;-><init>(I)V

    invoke-static {p0, v3, v4, v2}, Lg/ffb;->ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    iput-object v1, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-virtual {p0}, Lg/hed;->ba()V

    new-instance v0, Lg/fov;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Lg/fov;-><init>(I)V

    invoke-static {v1, v0}, Lg/kj;->w(Ljava/util/ArrayList;Ljava/util/function/Function;)[Lg/fza;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    sget-object v3, Lg/giu;->a:Lg/giu;

    iput-object v3, v2, Lg/fza;->g:Ljava/util/BitSet;

    const/4 v3, 0x0

    iput-object v3, v2, Lg/fza;->ab:Lg/fza;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    aget-object v5, v0, v3

    iput-object v5, v4, Lg/fza;->ab:Lg/fza;

    iget-object v6, v5, Lg/fza;->f:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/BitSet;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/BitSet;-><init>(I)V

    :goto_1
    iget v7, v5, Lg/fza;->x:I

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v5, Lg/fza;->g:Ljava/util/BitSet;

    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :goto_2
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->clear(I)V

    iput-object v6, v4, Lg/fza;->g:Ljava/util/BitSet;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, v0, v7

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    new-instance v0, Lg/esk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/esk;-><init>(I)V

    invoke-static {p0, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :cond_3
    new-instance p0, Lg/gck;

    const-string v0, "Found unreachable blocks"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 25

    move-object/from16 v1, p1

    sget-object v0, Lg/acq;->al:Lg/acq;

    iget-boolean v2, v1, Lg/hed;->ar:Z

    if-nez v2, :cond_7d

    iget-object v2, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_40

    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-static {v2, v4, v1}, Lg/dec;->b(Ljava/util/LinkedHashSet;Lg/fza;Lg/hed;)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Lg/dec;->d(Ljava/util/HashSet;Lg/hed;)V

    invoke-static {v1}, Lg/dec;->m(Lg/hed;)V

    sget-object v2, Lg/acq;->bh:Lg/acq;

    iget-object v3, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    sget-object v10, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v11, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v10}, Lg/sm;->g(Lg/csv;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lg/csv;->LOOP_END:Lg/csv;

    iget-object v11, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v10}, Lg/sm;->g(Lg/csv;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_3
    iget-object v10, v7, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_2

    invoke-static {v7}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, v11, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->IF:Lg/hay;

    if-ne v11, v12, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v7}, Lg/ffb;->bq(Lg/cih;)Lg/eek;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v2}, Lg/sm;->j(Lg/fky;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fza;

    iget-object v14, v14, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-gt v15, v11, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    sub-int/2addr v15, v11

    sub-int/2addr v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/eek;

    :goto_4
    if-nez v14, :cond_7

    goto :goto_8

    :cond_7
    if-nez v13, :cond_8

    move-object v13, v14

    goto :goto_7

    :cond_8
    if-ne v13, v14, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v13, v14}, Lg/eek;->_p(Lg/eek;)Z

    move-result v15

    if-eqz v15, :cond_c

    iget-object v15, v13, Lg/eek;->ai:Lg/gks;

    iget-object v9, v14, Lg/eek;->ai:Lg/gks;

    invoke-static {v15, v9}, Lg/dec;->g(Lg/gsh;Lg/gsh;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v13, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v9, :cond_b

    invoke-virtual {v13, v15}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v8

    invoke-virtual {v14, v15}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-static {v8, v5}, Lg/dec;->g(Lg/gsh;Lg/gsh;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    invoke-virtual {v13}, Lg/eek;->aw()Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_7
    const/4 v8, 0x1

    goto :goto_3

    :cond_c
    :goto_8
    if-lez v11, :cond_2

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    iget-object v5, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v8, v6, v11

    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    iget-object v6, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v12, v9

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lg/gkd;

    const/4 v6, 0x0

    invoke-direct {v5, v11, v6}, Lg/gkd;-><init>(II)V

    invoke-static {v10, v5}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Move duplicate insns, count: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to block "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lg/ebh;->bw(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_e
    sget v4, Lg/akd;->a:I

    iget-object v4, v1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x6

    const/4 v7, 0x2

    if-eqz v4, :cond_f

    move-object/from16 v17, v3

    move/from16 v20, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_36

    :cond_f
    iget-object v4, v1, Lg/hed;->ak:Ljava/util/List;

    new-instance v8, Lg/esk;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lg/esk;-><init>(I)V

    invoke-static {v4, v8}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lg/kj;->l(Lg/hed;)V

    iget-object v4, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v8, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v8, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/eek;

    iget-object v12, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v12

    if-eqz v12, :cond_11

    sget-object v12, Lg/axo;->a:[I

    iget-object v13, v11, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_12

    if-eq v12, v7, :cond_12

    if-eq v12, v10, :cond_12

    if-eq v12, v9, :cond_12

    const/16 v13, 0xb

    if-eq v12, v13, :cond_12

    packed-switch v12, :pswitch_data_0

    packed-switch v12, :pswitch_data_1

    goto :goto_9

    :cond_12
    :pswitch_0
    invoke-virtual {v11, v0}, Lg/lh;->u(Lg/fky;)V

    goto :goto_9

    :cond_13
    iget-object v4, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v11, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :cond_15
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/eek;

    iget-object v13, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v13

    check-cast v13, Lg/coe;

    if-eqz v13, :cond_15

    if-nez v12, :cond_16

    move-object v12, v13

    goto :goto_a

    :cond_16
    invoke-virtual {v12, v13}, Lg/coe;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v12, 0x0

    :cond_17
    if-eqz v12, :cond_14

    invoke-virtual {v8, v12}, Lg/lh;->m(Lg/eue;)V

    iget-object v11, v8, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eek;

    sget-object v13, Lg/csv;->TRY_ENTER:Lg/csv;

    iget-object v14, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-virtual {v8, v13}, Lg/lh;->w(Lg/csv;)V

    :cond_19
    sget-object v13, Lg/csv;->TRY_LEAVE:Lg/csv;

    iget-object v12, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v8, v13}, Lg/lh;->w(Lg/csv;)V

    goto :goto_b

    :cond_1a
    iget-object v4, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v8, :cond_20

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-static {v12}, Lg/ffb;->bq(Lg/cih;)Lg/eek;

    move-result-object v13

    if-nez v13, :cond_1b

    goto/16 :goto_e

    :cond_1b
    iget-object v14, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v14

    check-cast v14, Lg/eng;

    if-nez v14, :cond_1c

    goto/16 :goto_e

    :cond_1c
    iget-object v15, v14, Lg/eng;->a:Lg/aea;

    iget-object v9, v15, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Lg/lh;->u(Lg/fky;)V

    sget-object v13, Lg/acq;->ae:Lg/acq;

    iget-object v10, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v13}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v10

    check-cast v10, Lg/cya;

    if-eqz v10, :cond_1d

    iget-object v10, v10, Lg/cya;->a:Lg/fza;

    invoke-static {v10, v12}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-virtual {v12, v13}, Lg/lh;->u(Lg/fky;)V

    :cond_1d
    iget-object v10, v12, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1e

    iput-object v12, v15, Lg/aea;->i:Lg/fza;

    invoke-virtual {v12, v14}, Lg/lh;->m(Lg/eue;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v12, v12, v9, v10, v13}, Lg/ffb;->q(Lg/fza;Lg/fza;Ljava/util/AbstractCollection;Ljava/util/BitSet;Z)V

    new-instance v10, Lg/agx;

    invoke-direct {v10, v5, v15}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v9, v10}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_d

    :cond_1e
    iget v10, v12, Lg/fza;->y:I

    invoke-static {v1, v10}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v10

    sget-object v13, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v10, v13}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v10, v14}, Lg/lh;->m(Lg/eue;)V

    invoke-static {v10, v12}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    iput-object v10, v15, Lg/aea;->i:Lg/fza;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    invoke-virtual {v15}, Lg/aea;->l()Lg/cwx;

    move-result-object v9

    invoke-static {v12}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v10

    if-eqz v10, :cond_1f

    iget-object v12, v10, Lg/eek;->ah:Lg/hay;

    sget-object v13, Lg/hay;->MOVE_EXCEPTION:Lg/hay;

    if-ne v12, v13, :cond_1f

    iget-object v12, v10, Lg/eek;->ai:Lg/gks;

    iget v12, v12, Lg/gks;->e:I

    new-instance v13, Lg/gks;

    invoke-direct {v13, v12, v9}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {v13, v10}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v10, v13}, Lg/eek;->ax(Lg/gks;)V

    sget-object v9, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v10, v9}, Lg/lh;->w(Lg/csv;)V

    sget-object v9, Lg/csv;->CUSTOM_DECLARE:Lg/csv;

    invoke-virtual {v13, v9}, Lg/lh;->w(Lg/csv;)V

    iput-object v13, v15, Lg/aea;->f:Lg/gsh;

    invoke-virtual {v10, v14}, Lg/lh;->m(Lg/eue;)V

    goto :goto_e

    :cond_1f
    new-instance v10, Lg/add;

    const-string v12, "unused"

    invoke-direct {v10, v12, v9}, Lg/add;-><init>(Ljava/lang/String;Lg/cwx;)V

    iput-object v10, v15, Lg/aea;->f:Lg/gsh;

    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    goto/16 :goto_c

    :cond_20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fza;

    iget-object v9, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v9

    check-cast v9, Lg/coe;

    if-eqz v9, :cond_21

    iget-object v9, v9, Lg/coe;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/aea;

    new-instance v11, Lg/fov;

    invoke-direct {v11, v5}, Lg/fov;-><init>(I)V

    invoke-static {v2, v10, v11}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_22
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, v1, Lg/hed;->ap:Ljava/util/List;

    new-instance v8, Lg/bra;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {v4, v8}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_10

    :cond_23
    new-instance v4, Lg/esa;

    const/4 v13, 0x1

    invoke-direct {v4, v13, v1}, Lg/esa;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v4}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    :goto_10
    invoke-static {v1}, Lg/giq;->m(Lg/hed;)V

    iget-object v4, v1, Lg/hed;->ap:Ljava/util/List;

    new-instance v8, Lg/brj;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Lg/brj;-><init>(I)V

    invoke-static {v4, v8}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object v4, v1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_1b

    :cond_24
    new-instance v4, Lg/ejt;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v4}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lg/esa;

    invoke-direct {v8, v7, v4}, Lg/esa;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v8}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x1

    if-le v2, v13, :cond_2d

    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/guv;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_26
    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/guv;

    if-eq v8, v11, :cond_26

    iget-object v12, v11, Lg/guv;->f:Lg/guv;

    if-eqz v12, :cond_27

    goto :goto_12

    :cond_27
    iget-object v12, v8, Lg/guv;->b:Ljava/util/List;

    iget-object v13, v8, Lg/guv;->i:Ljava/util/List;

    iget-object v14, v11, Lg/guv;->b:Ljava/util/List;

    iget-object v15, v11, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-static {v13, v15}, Lg/acr;->bk(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v10, Lg/guv;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v8, Lg/guv;->b:Ljava/util/List;

    invoke-direct {v10, v2, v13, v12}, Lg/guv;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_28
    invoke-static {v15}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v12

    new-instance v14, Lg/fov;

    invoke-direct {v14, v9}, Lg/fov;-><init>(I)V

    invoke-interface {v12, v14}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v12

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v14

    invoke-interface {v12, v14}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-static {v12}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v14

    new-instance v5, Lg/eio;

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lg/eio;-><init>(Lg/guv;I)V

    invoke-interface {v14, v5}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    iget-object v14, v11, Lg/guv;->b:Ljava/util/List;

    invoke-static {v14}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v14

    new-instance v7, Lg/eio;

    invoke-direct {v7, v8, v9}, Lg/eio;-><init>(Lg/guv;I)V

    invoke-interface {v14, v7}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    iget-object v9, v8, Lg/guv;->b:Ljava/util/List;

    invoke-static {v9}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v14, Lg/fev;

    move-object/from16 v19, v2

    const/4 v2, 0x1

    invoke-direct {v14, v2, v12}, Lg/fev;-><init>(ILjava/util/Set;)V

    invoke-interface {v9, v14}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v5, :cond_2b

    if-nez v7, :cond_29

    if-eqz v2, :cond_2b

    :cond_29
    iget-object v2, v8, Lg/guv;->b:Ljava/util/List;

    iget-object v5, v11, Lg/guv;->b:Ljava/util/List;

    invoke-static {v2, v5}, Lg/acr;->bk(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v15, v13}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iput-object v8, v11, Lg/guv;->f:Lg/guv;

    iget-object v5, v8, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v8, Lg/guv;->g:Ljava/util/List;

    :cond_2a
    iget-object v5, v8, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, v8, Lg/guv;->b:Ljava/util/List;

    goto :goto_14

    :cond_2b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v8, Lg/guv;->b:Ljava/util/List;

    iget-object v5, v11, Lg/guv;->b:Ljava/util/List;

    invoke-static {v2, v5}, Lg/acr;->bk(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v13, v15}, Lg/acr;->bk(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v7, Lg/guv;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v5, v2, v9}, Lg/guv;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_13
    const/4 v5, 0x6

    const/4 v7, 0x2

    const/4 v9, 0x5

    goto/16 :goto_11

    :cond_2c
    :goto_14
    move-object/from16 v2, v19

    const/4 v5, 0x6

    const/4 v7, 0x2

    const/4 v9, 0x5

    goto/16 :goto_12

    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_2e
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/guv;

    iget-object v7, v7, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_30

    :cond_2f
    :goto_16
    const/4 v7, 0x0

    const/4 v10, 0x4

    goto/16 :goto_18

    :cond_30
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aea;

    iget-object v10, v9, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v13, 0x1

    if-eq v10, v13, :cond_32

    goto :goto_16

    :cond_32
    iget-object v9, v9, Lg/aea;->i:Lg/fza;

    iget-object v10, v9, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v13, :cond_2f

    sget-object v10, Lg/hay;->MOVE_EXCEPTION:Lg/hay;

    invoke-static {v9, v10}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result v9

    if-nez v9, :cond_31

    goto :goto_16

    :cond_33
    new-instance v8, Lg/fov;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Lg/fov;-><init>(I)V

    invoke-static {v7, v8}, Lg/acw;->t(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lg/fov;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lg/fov;-><init>(I)V

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v9

    invoke-interface {v9}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    if-eq v10, v13, :cond_34

    goto :goto_16

    :cond_34
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    iget-object v9, v9, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eq v10, v11, :cond_35

    const/4 v8, 0x0

    goto :goto_17

    :cond_35
    invoke-interface {v9, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    :goto_17
    if-nez v8, :cond_36

    goto :goto_16

    :cond_36
    invoke-static {v7}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lg/fov;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lg/fov;-><init>(I)V

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v8

    invoke-interface {v8}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v13, 0x1

    if-eq v8, v13, :cond_37

    const/4 v7, 0x0

    goto :goto_18

    :cond_37
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/aea;

    new-instance v11, Lg/ry;

    invoke-direct {v11, v8, v9, v1}, Lg/ry;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v7, v11}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    const/4 v7, 0x1

    :goto_18
    if-eqz v7, :cond_2e

    const/4 v5, 0x1

    goto/16 :goto_15

    :cond_38
    if-eqz v5, :cond_39

    invoke-static {v1}, Lg/giq;->m(Lg/hed;)V

    iget-object v2, v1, Lg/hed;->ap:Ljava/util/List;

    new-instance v5, Lg/brj;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Lg/brj;-><init>(I)V

    invoke-static {v2, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_39
    new-instance v2, Lg/esk;

    const/4 v9, 0x2

    invoke-direct {v2, v9}, Lg/esk;-><init>(I)V

    invoke-static {v4, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance v2, Lg/bev;

    const/4 v11, 0x3

    invoke-direct {v2, v11}, Lg/bev;-><init>(I)V

    invoke-static {v4, v2}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object v2, v1, Lg/hed;->ap:Ljava/util/List;

    new-instance v5, Lg/brj;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Lg/brj;-><init>(I)V

    invoke-static {v2, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    invoke-static {v1}, Lg/giq;->m(Lg/hed;)V

    iget-object v2, v1, Lg/hed;->am:Lg/cci;

    iget-object v2, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->u:Lg/cag;

    iget-object v2, v2, Lg/cag;->e:Lg/cwm;

    iget-object v2, v2, Lg/cwm;->d:Ljava/util/Comparator;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/guv;

    iget-object v8, v7, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aea;

    iget-object v9, v9, Lg/aea;->e:Ljava/util/ArrayList;

    new-instance v10, Lg/aou;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v2}, Lg/aou;-><init>(ILjava/lang/Object;)V

    invoke-static {v9, v10}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1a

    :cond_3a
    const/4 v11, 0x0

    iget-object v8, v7, Lg/guv;->i:Ljava/util/List;

    new-instance v9, Lg/ffp;

    invoke-direct {v9, v7, v11, v2}, Lg/ffp;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v8, v9}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_19

    :cond_3b
    move-object v2, v4

    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    :cond_3c
    move-object/from16 v17, v3

    move/from16 v20, v6

    goto/16 :goto_2f

    :cond_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v18, 0x3

    mul-int/lit8 v4, v4, 0x3

    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_1c
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/guv;

    sget-object v9, Lg/acq;->bn:Lg/acq;

    iget-object v10, v8, Lg/guv;->b:Ljava/util/List;

    iget-object v11, v8, Lg/guv;->i:Ljava/util/List;

    invoke-static {v10}, Lg/ffb;->y(Ljava/util/List;)Lg/fza;

    move-result-object v12

    if-eqz v12, :cond_3f

    iget-object v13, v12, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3e

    iget-object v13, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v13

    if-nez v13, :cond_3e

    iget-object v12, v12, Lg/fza;->d:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    goto :goto_1d

    :cond_3e
    const/4 v13, 0x0

    goto :goto_1d

    :cond_3f
    const/4 v13, 0x0

    invoke-static {v1}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v12

    iget-object v14, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/util/BitSet;->set(II)V

    new-instance v13, Lg/bgc;

    const/4 v14, 0x2

    invoke-direct {v13, v12, v14}, Lg/bgc;-><init>(Ljava/util/BitSet;I)V

    invoke-static {v10, v13}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v14, Lg/bgc;

    const/4 v15, 0x3

    invoke-direct {v14, v13, v15}, Lg/bgc;-><init>(Ljava/util/BitSet;I)V

    invoke-static {v1, v12, v14}, Lg/ffb;->am(Lg/hed;Ljava/util/BitSet;Ljava/util/function/Consumer;)V

    invoke-static {v1, v13}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v12

    if-eqz v12, :cond_5d

    iget-object v13, v12, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_40

    iget-object v13, v12, Lg/fza;->d:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_40

    move-object v12, v13

    goto :goto_1d

    :cond_40
    iget-object v13, v12, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v14, :cond_41

    iget-object v13, v12, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v13

    if-nez v13, :cond_41

    iget-object v12, v12, Lg/fza;->d:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    :cond_41
    :goto_1d
    iget-object v13, v12, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_42

    iget-object v13, v1, Lg/hed;->aj:Lg/fza;

    if-eq v12, v13, :cond_42

    invoke-virtual {v5, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object/from16 v21, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move/from16 v20, v6

    goto/16 :goto_2e

    :cond_42
    const/4 v15, 0x0

    invoke-static {v10, v15}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object v13

    if-eqz v13, :cond_43

    move-object/from16 v17, v3

    goto :goto_1f

    :cond_43
    invoke-static {v1, v10}, Lg/ffb;->aq(Lg/hed;Ljava/util/List;)Lg/fza;

    move-result-object v13

    if-nez v13, :cond_44

    move-object/from16 v17, v3

    const/4 v13, 0x0

    goto :goto_1f

    :cond_44
    new-instance v14, Ljava/util/ArrayList;

    iget-object v15, v13, Lg/fza;->e:Ljava/util/List;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v14}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v14

    new-instance v15, Lg/btn;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-direct {v15, v3, v10}, Lg/btn;-><init>(ILjava/util/List;)V

    invoke-interface {v14, v15}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v14

    invoke-interface {v3, v14}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_47

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    iget-object v15, v13, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v14, v15, :cond_45

    goto :goto_1f

    :cond_45
    invoke-static {v1, v13}, Lg/giq;->n(Lg/hed;Lg/fza;)Lg/fza;

    move-result-object v14

    sget-object v15, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v14, v15}, Lg/lh;->w(Lg/csv;)V

    new-instance v15, Lg/dny;

    invoke-direct {v15, v13}, Lg/dny;-><init>(Lg/fza;)V

    invoke-virtual {v14, v15}, Lg/lh;->m(Lg/eue;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fza;

    invoke-static {v15, v14, v13}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_1e

    :cond_46
    move-object v13, v14

    :cond_47
    :goto_1f
    if-eqz v13, :cond_48

    sget-object v3, Lg/csv;->RETURN:Lg/csv;

    iget-object v14, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-static {v1, v13}, Lg/giq;->n(Lg/hed;Lg/fza;)Lg/fza;

    move-result-object v3

    sget-object v14, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v3, v14}, Lg/lh;->w(Lg/csv;)V

    move-object/from16 v24, v13

    move-object v13, v3

    move-object/from16 v3, v24

    goto :goto_20

    :cond_48
    const/4 v3, 0x0

    :goto_20
    iget-object v14, v1, Lg/hed;->aj:Lg/fza;

    if-ne v12, v14, :cond_49

    iget-object v12, v14, Lg/fza;->d:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/fza;

    invoke-static {v1, v12}, Lg/giq;->n(Lg/hed;Lg/fza;)Lg/fza;

    move-result-object v12

    move-object/from16 v19, v5

    goto :goto_22

    :cond_49
    iget-object v14, v12, Lg/fza;->e:Ljava/util/List;

    sget-object v15, Lg/csv;->EXC_TOP_SPLITTER:Lg/csv;

    invoke-static {v14, v15}, Lg/ffb;->ag(Ljava/util/List;Lg/csv;)Lg/fza;

    move-result-object v14

    if-eqz v14, :cond_4a

    move-object/from16 v19, v5

    :goto_21
    move-object v12, v14

    goto :goto_22

    :cond_4a
    iget-object v14, v12, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v19, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_4b

    iget-object v14, v12, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4b

    iget-object v14, v12, Lg/fza;->z:Ljava/util/List;

    invoke-static {v14, v15}, Lg/ffb;->ag(Ljava/util/List;Lg/csv;)Lg/fza;

    move-result-object v14

    if-eqz v14, :cond_4b

    iget-object v15, v14, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v5, :cond_4b

    goto :goto_21

    :cond_4b
    invoke-static {v1, v12}, Lg/giq;->n(Lg/hed;Lg/fza;)Lg/fza;

    move-result-object v12

    :goto_22
    sget-object v5, Lg/csv;->EXC_TOP_SPLITTER:Lg/csv;

    invoke-virtual {v12, v5}, Lg/lh;->w(Lg/csv;)V

    sget-object v5, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v12, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v11}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v14

    new-instance v15, Lg/dbm;

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Lg/dbm;-><init>(I)V

    invoke-interface {v14, v15}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Lj$/util/stream/IntStream;->sum()I

    move-result v6

    if-eqz v13, :cond_4c

    if-nez v6, :cond_4d

    :cond_4c
    move-object/from16 v21, v0

    goto/16 :goto_29

    :cond_4d
    iget-object v6, v13, Lg/fza;->d:Ljava/util/List;

    sget-object v14, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    invoke-static {v6, v14}, Lg/ffb;->ag(Ljava/util/List;Lg/csv;)Lg/fza;

    move-result-object v6

    if-eqz v6, :cond_4e

    goto :goto_23

    :cond_4e
    const/4 v6, -0x1

    invoke-static {v1, v6}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v6

    :goto_23
    invoke-virtual {v6, v14}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v6, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-static {v13, v6}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    if-eqz v3, :cond_54

    iget-object v5, v13, Lg/fza;->e:Ljava/util/List;

    new-instance v14, Lg/fon;

    invoke-direct {v14, v1}, Lg/fon;-><init>(Lg/hed;)V

    new-instance v15, Lg/agx;

    move-object/from16 v21, v0

    const/4 v0, 0x5

    invoke-direct {v15, v0, v14}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v5, v15}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/aea;

    iget-object v11, v5, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_51

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fza;

    invoke-virtual {v14, v15}, Lg/fon;->d(Lg/fza;)Z

    move-result v15

    if-eqz v15, :cond_4f

    iget-object v5, v5, Lg/aea;->c:Ljava/util/ArrayList;

    new-instance v11, Lg/fon;

    iget-object v15, v14, Lg/fon;->a:Lg/hed;

    invoke-direct {v11, v15}, Lg/fon;-><init>(Lg/hed;)V

    move-object/from16 v22, v0

    new-instance v0, Lg/agx;

    move-object/from16 v23, v6

    const/4 v6, 0x5

    invoke-direct {v0, v6, v11}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v5, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/util/BitSet;

    iget-object v5, v15, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/BitSet;-><init>(I)V

    iget-object v5, v14, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object v5, v11, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_50

    iget-object v5, v15, Lg/hed;->ak:Ljava/util/List;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    goto :goto_25

    :cond_50
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_52

    invoke-static {v0, v13, v3}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_26

    :cond_51
    move-object/from16 v22, v0

    move-object/from16 v23, v6

    :cond_52
    :goto_26
    move-object/from16 v0, v22

    move-object/from16 v6, v23

    goto :goto_24

    :cond_53
    :goto_27
    move-object/from16 v23, v6

    goto :goto_28

    :cond_54
    move-object/from16 v21, v0

    goto :goto_27

    :goto_28
    move-object/from16 v6, v23

    goto :goto_2a

    :goto_29
    const/4 v6, 0x0

    :goto_2a
    invoke-static {v8, v12, v6}, Lg/akd;->b(Lg/guv;Lg/fza;Lg/fza;)V

    if-eqz v13, :cond_57

    iget-object v0, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v9}, Lg/sm;->j(Lg/fky;)Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v13, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_55
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    invoke-static {v13, v5}, Lg/ffb;->av(Lg/fza;Lg/fza;)Z

    move-result v11

    if-eqz v11, :cond_55

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v5, v13, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v9}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v5

    check-cast v5, Lg/dny;

    iget-object v5, v5, Lg/dny;->a:Lg/fza;

    invoke-static {v3, v13, v5}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    goto :goto_2c

    :cond_57
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_58
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    sget-object v5, Lg/acq;->aa:Lg/acq;

    iget-object v9, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v5}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v5

    check-cast v5, Lg/guv;

    if-eqz v5, :cond_59

    iget-object v5, v5, Lg/guv;->g:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    :cond_59
    invoke-virtual {v3, v8}, Lg/lh;->m(Lg/eue;)V

    goto :goto_2d

    :cond_5a
    iput-object v12, v8, Lg/guv;->a:Lg/fza;

    invoke-virtual {v12}, Lg/fza;->ad()V

    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Lg/fza;->ad()V

    :cond_5b
    :goto_2e
    add-int/lit8 v5, v7, 0x1

    if-gt v7, v4, :cond_5c

    move v7, v5

    move-object/from16 v3, v17

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v0, v21

    goto/16 :goto_1c

    :cond_5c
    new-instance v0, Lg/gck;

    const-string v1, "Try blocks wrapping queue limit reached! Please report as an issue!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find top block for try-catch from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2f
    invoke-virtual {v1}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    new-instance v3, Lg/ean;

    const/4 v15, 0x0

    invoke-direct {v3, v0, v15}, Lg/ean;-><init>(Lg/sm;I)V

    invoke-static {v2, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    new-instance v3, Lg/esk;

    const/4 v13, 0x1

    invoke-direct {v3, v13}, Lg/esk;-><init>(I)V

    invoke-static {v0, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aea;

    iget-object v3, v3, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_5f

    iget-object v6, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    goto :goto_31

    :cond_5f
    const/4 v6, 0x0

    :goto_31
    iget-object v4, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_60
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/eek;

    iget-object v8, v7, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/hay;->MONITOR_ENTER:Lg/hay;

    if-ne v8, v9, :cond_61

    goto :goto_33

    :cond_61
    sget-object v9, Lg/hay;->MONITOR_EXIT:Lg/hay;

    if-ne v8, v9, :cond_60

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v7}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    goto :goto_32

    :cond_62
    :goto_33
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_63

    goto :goto_30

    :cond_63
    if-nez v6, :cond_64

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    invoke-static {v1, v6}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    goto :goto_34

    :cond_64
    invoke-static {v1, v5}, Lg/fpd;->n(Lg/hed;Ljava/util/List;)V

    invoke-static {v6, v5}, Lg/fpd;->s(Ljava/util/List;Ljava/util/List;)V

    :cond_65
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_30

    :cond_66
    invoke-static {v1}, Lg/dec;->c(Lg/hed;)V

    new-instance v0, Lg/fon;

    invoke-direct {v0, v1}, Lg/fon;-><init>(Lg/hed;)V

    new-instance v3, Lg/agx;

    const/4 v7, 0x5

    invoke-direct {v3, v7, v0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    iget-object v4, v1, Lg/hed;->aj:Lg/fza;

    new-instance v5, Lg/gpn;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Lg/gpn;-><init>(I)V

    invoke-static {v1, v4, v5, v3}, Lg/ffb;->ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    iget-object v3, v1, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_67
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/aea;

    iget-object v5, v4, Lg/aea;->i:Lg/fza;

    if-eqz v5, :cond_67

    iget-object v6, v0, Lg/fon;->b:Ljava/util/BitSet;

    iget v7, v5, Lg/fza;->x:I

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_68

    goto :goto_35

    :cond_68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/guv;

    iget-object v7, v7, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    goto :goto_35

    :cond_6a
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v4, v5, v1}, Lg/dec;->b(Ljava/util/LinkedHashSet;Lg/fza;Lg/hed;)V

    invoke-static {v4, v1}, Lg/dec;->d(Ljava/util/HashSet;Lg/hed;)V

    goto :goto_35

    :cond_6b
    const/16 v16, 0x1

    :goto_36
    if-eqz v16, :cond_6c

    const/4 v6, 0x1

    goto :goto_37

    :cond_6c
    move/from16 v6, v20

    :goto_37
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6d
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-static {v2}, Lg/giq;->p(Lg/fza;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const/4 v6, 0x1

    goto :goto_38

    :cond_6e
    sget-object v0, Lg/giq;->a:Ljava/util/EnumSet;

    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    new-instance v2, Lg/bev;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lg/bev;-><init>(I)V

    invoke-static {v0, v2}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :cond_6f
    if-eqz v6, :cond_70

    invoke-static {v1}, Lg/dec;->l(Lg/hed;)V

    invoke-static {v1}, Lg/dec;->m(Lg/hed;)V

    :cond_70
    :try_start_0
    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lg/fzf;

    sget-object v2, Lg/fzf;->WHITE:Lg/fzf;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lg/hed;->aj:Lg/fza;

    invoke-static {v1, v0, v2}, Lg/afo;->am(Lg/hed;[Lg/fzf;Lg/fza;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Lg/acq;->q:Lg/acq;

    iget-object v2, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lg/bev;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lg/bev;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_71

    :goto_39
    const/4 v5, 0x0

    goto :goto_3b

    :cond_71
    :try_start_1
    new-instance v3, Lg/bev;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lg/bev;-><init>(I)V

    invoke-static {v0, v3}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/mw;

    invoke-static {v1, v3, v0}, Lg/afo;->al(Lg/hed;Lg/mw;Ljava/util/List;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    or-int/2addr v5, v3

    goto :goto_3a

    :catch_0
    move-exception v0

    const-string v2, "Failed to fix multi-entry loops"

    invoke-virtual {v1, v2, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    :catch_1
    move-exception v0

    const-string v2, "Failed to detect multi-entry loops"

    invoke-virtual {v1, v2, v0}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    :cond_72
    :goto_3b
    if-eqz v5, :cond_73

    invoke-static {v1}, Lg/dec;->m(Lg/hed;)V

    :cond_73
    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    new-instance v2, Lg/esk;

    const/4 v13, 0x1

    invoke-direct {v2, v13}, Lg/esk;-><init>(I)V

    invoke-static {v0, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x0

    :goto_3c
    invoke-static {v1}, Lg/dec;->i(Lg/hed;)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-static {v1}, Lg/dec;->m(Lg/hed;)V

    add-int/lit8 v3, v5, 0x1

    if-le v5, v2, :cond_74

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CFG modification limit reached, blocks count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/ebh;->bs(Ljava/lang/String;)V

    goto :goto_3d

    :cond_74
    move v5, v3

    goto :goto_3c

    :cond_75
    :goto_3d
    invoke-static {v1}, Lg/dec;->l(Lg/hed;)V

    invoke-static {v1}, Lg/kj;->l(Lg/hed;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lg/hed;->ac:Ljava/util/List;

    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    new-instance v2, Lg/bra;

    const/4 v9, 0x2

    invoke-direct {v2, v1, v9}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {v0, v2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_76

    goto :goto_3f

    :cond_76
    iget-object v0, v1, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gcv;

    iget-object v3, v1, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_78
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gcv;

    if-ne v2, v4, :cond_79

    goto :goto_3e

    :cond_79
    iget-object v5, v2, Lg/gcv;->e:Ljava/util/HashSet;

    iget-object v6, v4, Lg/gcv;->e:Ljava/util/HashSet;

    invoke-interface {v5, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, v4, Lg/gcv;->b:Lg/gcv;

    if-eqz v5, :cond_7b

    iget-object v6, v5, Lg/gcv;->e:Ljava/util/HashSet;

    iget-object v7, v2, Lg/gcv;->e:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_7a

    iput-object v5, v2, Lg/gcv;->b:Lg/gcv;

    iput-object v2, v4, Lg/gcv;->b:Lg/gcv;

    goto :goto_3e

    :cond_7a
    iput-object v2, v5, Lg/gcv;->b:Lg/gcv;

    goto :goto_3e

    :cond_7b
    iput-object v2, v4, Lg/gcv;->b:Lg/gcv;

    goto :goto_3e

    :cond_7c
    :goto_3f
    invoke-static {v1}, Lg/fso;->x(Lg/hed;)V

    iget-object v0, v1, Lg/hed;->ak:Ljava/util/List;

    new-instance v1, Lg/esk;

    const/4 v13, 0x1

    invoke-direct {v1, v13}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_7d
    :goto_40
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

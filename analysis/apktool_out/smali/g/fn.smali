.class public final Lg/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/atc;


# static fields
.field public static final a:Ljava/util/Set;


# instance fields
.field public final b:I

.field public final c:Lg/cmv;

.field public final d:Lg/gqc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lg/zz;->n:Lg/zz;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/zz;->b:Lg/zz;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lg/zz;->f:Lg/zz;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lg/fn;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lg/cmv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fn;->c:Lg/cmv;

    iget-object p1, p1, Lg/cmv;->j:Lg/gqc;

    iput-object p1, p0, Lg/fn;->d:Lg/gqc;

    iput p2, p0, Lg/fn;->b:I

    return-void
.end method


# virtual methods
.method public final _cu(Lg/esv;)V
    .locals 10

    iget v0, p0, Lg/fn;->b:I

    add-int/lit8 v1, v0, 0x4

    iget-object v4, p0, Lg/fn;->d:Lg/gqc;

    iput v1, v4, Lg/gqc;->ab:I

    invoke-virtual {v4}, Lg/gqc;->bc()I

    move-result v1

    invoke-virtual {v4, v1}, Lg/gqc;->at(I)V

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v1

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x4

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v6, v1

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    invoke-virtual {v4, v3}, Lg/gqc;->at(I)V

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v7

    invoke-virtual {v4, v2}, Lg/gqc;->at(I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    add-int/2addr v0, v3

    iput v0, v4, Lg/gqc;->ab:I

    invoke-virtual {v4}, Lg/gqc;->bc()I

    move-result v0

    invoke-virtual {v4, v0}, Lg/gqc;->at(I)V

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lg/gqc;->at(I)V

    iget-object v3, p0, Lg/fn;->c:Lg/cmv;

    iget-object v0, v3, Lg/cmv;->h:Lg/erm;

    sget-object v1, Lg/zz;->m:Lg/zz;

    invoke-virtual {v0, v4, v1}, Lg/erm;->g(Lg/gqc;Lg/zz;)Lg/azo;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lg/eau;

    invoke-virtual {p0}, Lg/fn;->h()I

    move-result v5

    invoke-virtual {v4, v2}, Lg/gqc;->at(I)V

    invoke-virtual {v4}, Lg/gqc;->bc()I

    move-result v0

    new-instance v2, Lg/ggu;

    invoke-direct/range {v2 .. v7}, Lg/ggu;-><init>(Lg/cmv;Lg/gqc;ILjava/util/Set;Lg/eau;)V

    new-instance v1, Lg/fce;

    invoke-direct {v1, v2}, Lg/fce;-><init>(Lg/ggu;)V

    iput-object v1, v2, Lg/ggu;->i:Lg/fce;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_a

    iput-boolean v8, v1, Lg/fce;->r:Z

    iput v3, v1, Lg/fce;->ab:I

    invoke-virtual {v4}, Lg/gqc;->ap()I

    move-result v5

    sget-object v6, Lg/t;->a:[Lg/ahb;

    aget-object v6, v6, v5

    if-eqz v6, :cond_9

    iput v5, v1, Lg/fce;->t:I

    iput-object v6, v1, Lg/fce;->y:Lg/ahb;

    iget v5, v6, Lg/ahb;->a:I

    invoke-virtual {v1, v5}, Lg/fce;->ad(I)V

    iget-object v5, v6, Lg/ahb;->b:Lg/cqf;

    iput-object v5, v1, Lg/fce;->aa:Lg/cqf;

    iget v5, v6, Lg/ahb;->f:I

    iput v5, v1, Lg/fce;->v:I

    const/4 v5, 0x0

    iput-object v5, v1, Lg/fce;->q:Lg/gqi;

    iget-object v6, v2, Lg/ggu;->e:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cpd;

    if-eqz v6, :cond_2

    new-instance v5, Lg/cpd;

    iget v7, v6, Lg/cpd;->a:I

    iget-object v6, v6, Lg/cpd;->b:[Lg/cqz;

    array-length v9, v6

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lg/cqz;

    invoke-direct {v5, v7, v6}, Lg/cpd;-><init>(I[Lg/cqz;)V

    goto :goto_3

    :cond_2
    iget-object v6, v2, Lg/ggu;->c:Lg/eau;

    iget-object v6, v6, Lg/eau;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dl;

    if-eqz v6, :cond_3

    new-instance v5, Lg/cpd;

    iget v7, v2, Lg/ggu;->h:I

    invoke-direct {v5, v7}, Lg/cpd;-><init>(I)V

    iget v7, v6, Lg/dl;->c:I

    add-int/lit8 v9, v7, -0x1

    iput v9, v5, Lg/cpd;->a:I

    if-lez v7, :cond_3

    iget-object v6, v6, Lg/dl;->d:[Lg/cqz;

    iget-object v9, v5, Lg/cpd;->b:[Lg/cqz;

    invoke-static {v6, v8, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    iput-object v5, v2, Lg/ggu;->a:Lg/cpd;

    :cond_4
    iget-object v5, v2, Lg/ggu;->b:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    iget-object v5, v2, Lg/ggu;->a:Lg/cpd;

    iput v6, v5, Lg/cpd;->a:I

    sget-object v9, Lg/cqz;->NARROW:Lg/cqz;

    invoke-virtual {v5, v9}, Lg/cpd;->d(Lg/cqz;)I

    iput-boolean v7, v2, Lg/ggu;->f:Z

    goto :goto_4

    :cond_5
    iput-boolean v8, v2, Lg/ggu;->f:Z

    :goto_4
    invoke-virtual {p1, v1}, Lg/esv;->accept(Ljava/lang/Object;)V

    iget v5, v1, Lg/fce;->v:I

    iget-boolean v9, v1, Lg/fce;->r:Z

    if-nez v9, :cond_8

    if-ne v5, v6, :cond_7

    iget-object v5, v1, Lg/fce;->y:Lg/ahb;

    iget-object v5, v5, Lg/ahb;->g:Lg/dle;

    if-eqz v5, :cond_6

    iget-object v6, v1, Lg/fce;->u:Lg/ggu;

    invoke-interface {v5, v6}, Lg/dle;->_ct(Lg/ggu;)V

    :cond_6
    iget v5, v1, Lg/fce;->v:I

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v5}, Lg/gqc;->at(I)V

    :cond_8
    :goto_5
    add-int/2addr v5, v7

    add-int/2addr v3, v5

    goto/16 :goto_2

    :cond_9
    new-instance p1, Lg/cyf;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown opcode: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 10

    iget v0, p0, Lg/fn;->b:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lg/fn;->d:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    invoke-virtual {v1}, Lg/gqc;->bc()I

    move-result v0

    invoke-virtual {v1, v0}, Lg/gqc;->at(I)V

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v2, p0, Lg/fn;->c:Lg/cmv;

    iget-object v2, v2, Lg/cmv;->g:Lg/gkr;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v5

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v6

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v7

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v8

    new-instance v9, Lg/gih;

    invoke-direct {v9, v5, v6}, Lg/gih;-><init>(II)V

    new-instance v5, Lg/gpn;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lg/gpn;-><init>(I)V

    invoke-static {v3, v9, v5}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v8, :cond_1

    new-instance v6, Lg/dyb;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lg/dyb;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v6, Lg/dyb;

    invoke-virtual {v2, v8}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lg/dyb;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/gpn;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg/gpn;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final f()I
    .locals 2

    invoke-virtual {p0}, Lg/fn;->h()I

    move-result v0

    iget-object v1, p0, Lg/fn;->d:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lg/fn;->h()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lg/fn;->b:I

    iget-object v1, p0, Lg/fn;->d:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lg/fn;->b:I

    return v0
.end method

.method public final k()Lg/atc;
    .locals 0

    return-object p0
.end method

.method public final l()I
    .locals 2

    iget v0, p0, Lg/fn;->b:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lg/fn;->d:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    invoke-virtual {v1}, Lg/gqc;->bc()I

    move-result v0

    return v0
.end method

.method public final m()Lg/gtb;
    .locals 7

    invoke-virtual {p0}, Lg/fn;->h()I

    move-result v0

    iget v1, p0, Lg/fn;->b:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lg/fn;->d:Lg/gqc;

    iput v1, v2, Lg/gqc;->ab:I

    invoke-virtual {v2}, Lg/gqc;->bc()I

    move-result v1

    invoke-virtual {v2, v1}, Lg/gqc;->at(I)V

    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lg/gqc;->at(I)V

    iget-object v1, p0, Lg/fn;->c:Lg/cmv;

    iget-object v1, v1, Lg/cmv;->h:Lg/erm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/fn;->a:Ljava/util/Set;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lg/fev;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lg/fev;-><init>(ILjava/util/Set;)V

    invoke-virtual {v1, v2, v4}, Lg/erm;->f(Lg/gqc;Ljava/util/function/Predicate;)Lg/geg;

    move-result-object v1

    sget-object v2, Lg/zz;->n:Lg/zz;

    invoke-virtual {v1, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v2

    check-cast v2, Lg/aqp;

    sget-object v3, Lg/zz;->b:Lg/zz;

    invoke-virtual {v1, v3}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v3

    check-cast v3, Lg/dtf;

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, v2, Lg/aqp;->a:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    if-nez v3, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lg/dtf;->a:Ljava/util/ArrayList;

    sget-object v4, Lg/zz;->f:Lg/zz;

    invoke-virtual {v1, v4}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v1

    check-cast v1, Lg/agr;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lg/agr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    new-instance v5, Lg/agx;

    const/16 v6, 0x11

    invoke-direct {v5, v6, v4}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v5}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fqt;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fqt;

    if-eqz v6, :cond_3

    iget-object v5, v5, Lg/fqt;->a:Ljava/lang/String;

    iput-object v5, v6, Lg/fqt;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v1, Lg/gkd;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Lg/gkd;-><init>(II)V

    invoke-static {v3, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    new-instance v1, Lg/gtb;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v0}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v1
.end method

.class public final Lg/aza;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/aza;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/aza;->a:Lg/dba;

    return-void
.end method

.method public static b(Lg/gjz;Ljava/util/ArrayList;)Z
    .locals 7

    iget-object v0, p0, Lg/gjz;->a:Lg/cfm;

    iget-object p0, p0, Lg/gjz;->b:Lg/cih;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/amj;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-ne v3, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_0

    new-instance v5, Lg/egl;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v3}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v5}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_2
    return v0
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 12

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-nez v0, :cond_1f

    iget-object v0, p1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v0, Lg/enz;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/enz;-><init>(I)V

    iget-object v1, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, v0, v1}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/vm;

    invoke-virtual {v2}, Lg/vm;->u()Lg/ejb;

    move-result-object v3

    iget-boolean v3, v3, Lg/ejb;->b:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lg/vm;->u()Lg/ejb;

    move-result-object v3

    new-instance v4, Lg/gpn;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lg/gpn;-><init>(I)V

    invoke-static {v0, v3, v4}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ejb;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/vm;

    invoke-virtual {v6}, Lg/vm;->u()Lg/ejb;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v6, Lg/ejb;->d:Z

    if-eqz v7, :cond_4

    iput-boolean v3, v4, Lg/ejb;->d:Z

    :cond_4
    iget-boolean v7, v6, Lg/ejb;->b:Z

    if-eqz v7, :cond_5

    iput-boolean v3, v4, Lg/ejb;->b:Z

    :cond_5
    iget-boolean v6, v6, Lg/ejb;->a:Z

    if-eqz v6, :cond_3

    iput-boolean v3, v4, Lg/ejb;->a:Z

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/vm;

    invoke-virtual {v5, v4}, Lg/vm;->n(Lg/ejb;)V

    goto :goto_3

    :cond_7
    iput-object v2, v4, Lg/ejb;->f:Ljava/util/List;

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ejb;

    iget-object v5, v4, Lg/ejb;->e:Lg/cwx;

    if-nez v5, :cond_a

    sget-object v5, Lg/cwx;->ad:Lg/gnh;

    iput-object v5, v4, Lg/ejb;->e:Lg/cwx;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    iget-object v4, v4, Lg/ejb;->f:Ljava/util/List;

    new-instance v6, Lg/esv;

    const/16 v7, 0x9

    invoke-direct {v6, p1, v7, v5}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4, v6}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unknown variable types count: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ebh;->bs(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Lg/cmf;

    invoke-direct {v0}, Lg/cmf;-><init>()V

    iget-object v2, p1, Lg/hed;->ao:Lg/eys;

    invoke-static {p1, v0, v2}, Lg/buj;->bb(Lg/hed;Lg/byr;Lg/amj;)V

    iget-object v0, v0, Lg/cmf;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_b

    :cond_d
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ejb;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v4, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/vm;

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bjo;

    if-eqz v7, :cond_e

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-static {v5}, Lg/evh;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ejb;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-boolean v4, v2, Lg/ejb;->d:Z

    if-eqz v4, :cond_11

    goto :goto_7

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/bjo;

    iget-object v8, v7, Lg/bjo;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v7, Lg/bjo;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    goto/16 :goto_a

    :cond_14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bjo;

    iget-object v7, v5, Lg/bjo;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gjz;

    iget-object v9, v8, Lg/gjz;->a:Lg/cfm;

    instance-of v10, v9, Lg/cab;

    if-eqz v10, :cond_18

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/gjz;

    iget-object v11, v11, Lg/gjz;->a:Lg/cfm;

    invoke-static {v9, v11}, Lg/gs;->ag(Lg/amj;Lg/cfm;)Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_9

    :cond_18
    sget-object v10, Lg/csv;->ELSE_IF_CHAIN:Lg/csv;

    check-cast v9, Lg/lh;

    iget-object v9, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v10}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_9

    :cond_19
    invoke-static {v8, v4}, Lg/aza;->b(Lg/gjz;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {v8, v6}, Lg/aza;->b(Lg/gjz;Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v1, v5, Lg/bjo;->a:Lg/vm;

    iget-object v4, v1, Lg/vm;->c:Lg/gks;

    iget-object v5, v4, Lg/gsh;->ae:Lg/eek;

    if-eqz v5, :cond_1c

    sget-object v6, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v7, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v7, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-nez v6, :cond_1c

    iget-object v6, v5, Lg/eek;->ah:Lg/hay;

    sget-object v7, Lg/hay;->PHI:Lg/hay;

    if-ne v6, v7, :cond_1a

    goto :goto_a

    :cond_1a
    iget-object v6, v5, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v4, v6}, Lg/gks;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_a

    :cond_1b
    sget-object v2, Lg/csv;->DECLARE_VAR:Lg/csv;

    invoke-virtual {v5, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v1}, Lg/vm;->u()Lg/ejb;

    move-result-object v1

    iput-boolean v3, v1, Lg/ejb;->d:Z

    goto/16 :goto_7

    :cond_1c
    :goto_a
    iget-object v1, p1, Lg/hed;->ao:Lg/eys;

    iget-boolean v4, v2, Lg/ejb;->d:Z

    if-eqz v4, :cond_1d

    sget-object v1, Lg/aza;->a:Lg/dba;

    const-string v4, "Try to declare already declared variable: {}"

    invoke-interface {v1, v2, v4}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1d
    sget-object v4, Lg/acq;->l:Lg/acq;

    iget-object v5, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/cug;

    if-nez v4, :cond_1e

    new-instance v4, Lg/cug;

    invoke-direct {v4}, Lg/cug;-><init>()V

    invoke-virtual {v1, v4}, Lg/lh;->m(Lg/eue;)V

    :cond_1e
    iget-object v1, v4, Lg/cug;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, v2, Lg/ejb;->d:Z

    goto/16 :goto_7

    :cond_1f
    :goto_b
    return-void
.end method

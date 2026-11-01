.class public final Lg/giq;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/EnumSet;

.field public static final b:Ljava/util/EnumSet;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-object v0, Lg/hay;->RETURN:Lg/hay;

    sget-object v1, Lg/hay;->IF:Lg/hay;

    sget-object v2, Lg/hay;->SWITCH:Lg/hay;

    sget-object v3, Lg/hay;->THROW:Lg/hay;

    const/4 v4, 0x6

    new-array v5, v4, [Lg/hay;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    sget-object v8, Lg/hay;->MONITOR_ENTER:Lg/hay;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    sget-object v8, Lg/hay;->MONITOR_EXIT:Lg/hay;

    const/4 v10, 0x3

    aput-object v8, v5, v10

    const/4 v8, 0x4

    aput-object v3, v5, v8

    sget-object v11, Lg/hay;->MOVE_EXCEPTION:Lg/hay;

    const/4 v12, 0x5

    aput-object v11, v5, v12

    invoke-static {v0, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    sput-object v5, Lg/giq;->a:Ljava/util/EnumSet;

    new-array v4, v4, [Lg/hay;

    aput-object v3, v4, v6

    sget-object v3, Lg/hay;->GOTO:Lg/hay;

    aput-object v3, v4, v7

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    sget-object v1, Lg/hay;->JAVA_JSR:Lg/hay;

    aput-object v1, v4, v8

    sget-object v1, Lg/hay;->JAVA_RET:Lg/hay;

    aput-object v1, v4, v12

    invoke-static {v0, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lg/giq;->b:Ljava/util/EnumSet;

    return-void
.end method

.method public static c(Lg/fza;Lg/fza;)V
    .locals 3

    iget-object v0, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    iget-object v1, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    invoke-virtual {v2}, Lg/eek;->ay()Lg/eek;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lg/lh;->s(Lg/lh;)V

    return-void
.end method

.method public static d(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;
    .locals 2

    iget v0, p2, Lg/fza;->y:I

    invoke-static {p0, v0}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object p0

    sget-object v0, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    invoke-static {p1, p2}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-static {p1, p0}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-static {p0, p2}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-static {p1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v0

    instance-of v1, v0, Lg/dog;

    if-eqz v1, :cond_0

    check-cast v0, Lg/dog;

    invoke-virtual {v0, p2, p0}, Lg/dog;->aa(Lg/fza;Lg/fza;)V

    :cond_0
    invoke-virtual {p1}, Lg/fza;->ad()V

    invoke-virtual {p0}, Lg/fza;->ad()V

    return-object p0
.end method

.method public static e(ILjava/util/HashMap;)Lg/fza;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fza;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lg/gck;

    const-string v0, "Missing block: "

    invoke-static {p0, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(Lg/fza;)V
    .locals 3

    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v2, v1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/fza;->ad()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v1, v1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static i(Lg/hed;I)Lg/fza;
    .locals 4

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    new-instance v1, Lg/fza;

    iget v2, p0, Lg/hed;->aa:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lg/hed;->aa:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v1, v2, p0, p1}, Lg/fza;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static l(Lg/fza;Lg/fza;)V
    .locals 1

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m(Lg/hed;)V
    .locals 3

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    sget-object v1, Lg/csv;->REMOVE:Lg/csv;

    iget-object v2, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/giq;->g(Lg/fza;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n(Lg/hed;Lg/fza;)Lg/fza;
    .locals 2

    iget v0, p1, Lg/fza;->y:I

    invoke-static {p0, v0}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-static {v1, p1, p0}, Lg/giq;->q(Lg/fza;Lg/fza;Lg/fza;)V

    invoke-virtual {v1}, Lg/fza;->ad()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-virtual {p0}, Lg/fza;->ad()V

    return-object p0
.end method

.method public static o(Lg/fza;Lg/fza;)V
    .locals 1

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static p(Lg/fza;)Z
    .locals 5

    iget-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0}, Lg/sm;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/csv;->MTH_ENTER_BLOCK:Lg/csv;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/csv;->MTH_EXIT_BLOCK:Lg/csv;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v1, p0, Lg/fza;->e:Ljava/util/List;

    new-instance v3, Lg/esv;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-static {p0, v0}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    new-instance v1, Lg/dmt;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lg/dmt;-><init>(Lg/fza;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :goto_0
    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v2

    :cond_1
    return v1
.end method

.method public static q(Lg/fza;Lg/fza;Lg/fza;)V
    .locals 1

    invoke-static {p0, p1}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    invoke-static {p0, p2}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    invoke-static {p0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p0

    instance-of v0, p0, Lg/dog;

    if-eqz v0, :cond_0

    check-cast p0, Lg/dog;

    invoke-virtual {p0, p1, p2}, Lg/dog;->aa(Lg/fza;Lg/fza;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 16

    move-object/from16 v0, p1

    sget-object v1, Lg/acq;->p:Lg/acq;

    iget-boolean v2, v0, Lg/hed;->ar:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/hed;->ak:Ljava/util/List;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v3

    sget-object v4, Lg/csv;->MTH_ENTER_BLOCK:Lg/csv;

    invoke-virtual {v3, v4}, Lg/lh;->w(Lg/csv;)V

    iput-object v3, v0, Lg/hed;->aj:Lg/fza;

    invoke-static {v0, v2}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v2

    sget-object v4, Lg/csv;->MTH_EXIT_BLOCK:Lg/csv;

    invoke-virtual {v2, v4}, Lg/lh;->w(Lg/csv;)V

    iput-object v2, v0, Lg/hed;->ad:Lg/fza;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Lg/hed;->an:[Lg/eek;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_c

    aget-object v10, v4, v8

    if-nez v10, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->NOP:Lg/hay;

    if-ne v11, v12, :cond_2

    iget-object v12, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12}, Lg/sm;->h()Z

    move-result v12

    if-eqz v12, :cond_2

    goto/16 :goto_4

    :cond_2
    iget v12, v10, Lg/eek;->ag:I

    if-nez v9, :cond_3

    invoke-static {v0, v12}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v9

    invoke-static {v3, v9}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    :goto_1
    move-object v3, v9

    goto/16 :goto_3

    :cond_3
    iget-object v13, v9, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/giq;->b:Ljava/util/EnumSet;

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v0, v12}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v3

    goto/16 :goto_3

    :cond_4
    sget-object v14, Lg/giq;->a:Ljava/util/EnumSet;

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lg/csv;->TRY_ENTER:Lg/csv;

    iget-object v14, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lg/csv;->TRY_LEAVE:Lg/csv;

    iget-object v14, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lg/acq;->bh:Lg/acq;

    iget-object v14, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v14, v13}, Lg/sm;->j(Lg/fky;)Z

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v13, v1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/aef;

    iget v14, v14, Lg/aef;->a:I

    iget v15, v9, Lg/eek;->ag:I

    if-ne v14, v15, :cond_5

    goto :goto_2

    :cond_6
    iget-object v9, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/aef;

    iget v13, v13, Lg/aef;->b:I

    iget v14, v10, Lg/eek;->ag:I

    if-ne v13, v14, :cond_7

    goto :goto_2

    :cond_8
    sget-object v9, Lg/hay;->IF:Lg/hay;

    if-eq v11, v9, :cond_9

    goto :goto_3

    :cond_9
    move-object v9, v10

    check-cast v9, Lg/bgw;

    invoke-virtual {v9}, Lg/bgw;->ad()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    if-ne v9, v3, :cond_b

    :cond_a
    :goto_2
    invoke-static {v0, v12}, Lg/giq;->i(Lg/hed;I)Lg/fza;

    move-result-object v9

    invoke-static {v3, v9}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    goto/16 :goto_1

    :cond_b
    :goto_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v10

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v4, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    iget-object v5, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/aef;

    iget v9, v8, Lg/aef;->a:I

    invoke-static {v9, v2}, Lg/giq;->e(ILjava/util/HashMap;)Lg/fza;

    move-result-object v9

    iget v8, v8, Lg/aef;->b:I

    invoke-static {v8, v2}, Lg/giq;->e(ILjava/util/HashMap;)Lg/fza;

    move-result-object v8

    invoke-static {v9, v8}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    goto :goto_5

    :cond_f
    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    new-instance v4, Lg/esk;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lg/esk;-><init>(I)V

    invoke-static {v3, v4}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v4, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_10

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/eek;

    iget-object v11, v10, Lg/eek;->ah:Lg/hay;

    sget-object v12, Lg/hay;->MOVE_MULTI:Lg/hay;

    if-ne v11, v12, :cond_13

    iget-object v8, v10, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_12

    new-instance v12, Lg/eek;

    sget-object v13, Lg/hay;->MOVE:Lg/hay;

    invoke-direct {v12, v13, v5}, Lg/eek;-><init>(Lg/hay;I)V

    mul-int/lit8 v13, v11, 0x2

    invoke-virtual {v10, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v14

    check-cast v14, Lg/gks;

    invoke-virtual {v12, v14}, Lg/eek;->ax(Lg/gks;)V

    add-int/2addr v13, v5

    invoke-virtual {v10, v13}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v13

    invoke-virtual {v12, v13}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {v12, v10}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {v12, v10}, Lg/ccm;->br(Lg/eek;)V

    if-nez v11, :cond_11

    iget v13, v10, Lg/eek;->ag:I

    iput v13, v12, Lg/eek;->ag:I

    invoke-virtual {v4, v9, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    add-int v13, v9, v11

    invoke-virtual {v4, v13, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_12
    add-int/lit8 v8, v8, -0x1

    add-int/2addr v9, v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_13
    add-int/2addr v9, v5

    goto :goto_6

    :cond_14
    sget-object v3, Lg/csv;->RESOLVE_JAVA_JSR:Lg/csv;

    iget-object v4, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_9
    iget-object v8, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    sget-object v11, Lg/hay;->JAVA_RET:Lg/hay;

    invoke-static {v10, v11}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result v11

    if-eqz v11, :cond_15

    new-instance v11, Lg/ry;

    invoke-direct {v11, v0, v10}, Lg/ry;-><init>(Lg/hed;Lg/fza;)V

    invoke-static {v0, v10, v11}, Lg/ffb;->ci(Lg/hed;Lg/fza;Ljava/util/function/Predicate;)V

    iget-object v10, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_15

    add-int/lit8 v8, v4, 0x1

    if-gt v4, v3, :cond_16

    move v4, v8

    goto :goto_9

    :cond_16
    new-instance v0, Lg/gck;

    const-string v1, "Fail to resolve jsr instructions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v3, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v4, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    invoke-virtual {v8, v1}, Lg/lh;->u(Lg/fky;)V

    goto :goto_a

    :cond_19
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v3, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v4, Lg/bev;

    const/16 v8, 0x8

    invoke-direct {v4, v8}, Lg/bev;-><init>(I)V

    invoke-static {v3, v4}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto :goto_b

    :cond_1a
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    new-instance v3, Lg/bev;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lg/bev;-><init>(I)V

    invoke-static {v1, v3}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    new-instance v3, Lg/bev;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lg/bev;-><init>(I)V

    invoke-static {v1, v3}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object v1, v0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_f

    :cond_1b
    iget-object v1, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v4, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/eek;

    sget-object v9, Lg/acq;->al:Lg/acq;

    iget-object v8, v8, Lg/lh;->l:Lg/sm;

    invoke-virtual {v8, v9}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v8

    check-cast v8, Lg/coe;

    if-nez v8, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v8, v8, Lg/coe;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aea;

    iget v9, v9, Lg/aea;->h:I

    invoke-static {v9, v2}, Lg/giq;->e(ILjava/util/HashMap;)Lg/fza;

    move-result-object v9

    sget-object v10, Lg/acq;->ae:Lg/acq;

    iget-object v11, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v10}, Lg/sm;->j(Lg/fky;)Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, v3, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_21

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v5, :cond_20

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    goto :goto_e

    :cond_20
    move-object v10, v3

    :goto_e
    iget-object v11, v10, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-static {v10, v9}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    new-instance v11, Lg/cya;

    invoke-direct {v11, v10}, Lg/cya;-><init>(Lg/fza;)V

    invoke-virtual {v9, v11}, Lg/lh;->m(Lg/eue;)V

    goto :goto_d

    :cond_21
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected missing predecessor for block: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_f
    iget-object v1, v0, Lg/hed;->ad:Lg/fza;

    iget-object v2, v0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget-object v4, v3, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    if-eq v3, v1, :cond_23

    invoke-static {v3, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    sget-object v4, Lg/hay;->RETURN:Lg/hay;

    invoke-static {v3, v4}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Lg/csv;->RETURN:Lg/csv;

    invoke-virtual {v3, v4}, Lg/lh;->w(Lg/csv;)V

    goto :goto_10

    :cond_24
    invoke-virtual {v0}, Lg/hed;->ba()V

    iput-object v6, v0, Lg/hed;->an:[Lg/eek;

    return-void
.end method

.class public final Lg/gkk;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gkk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lg/cci;)V
    .locals 11

    iget-object v0, p0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->bb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->e:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/cci;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    iget-object v3, v0, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v3}, Lg/ayu;->m()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v0, v0, Lg/hed;->am:Lg/cci;

    invoke-virtual {v0}, Lg/cci;->bi()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    new-instance v3, Lg/brj;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lg/brj;-><init>(I)V

    invoke-static {v0, v3}, Lg/acw;->bc(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    if-nez v0, :cond_3

    goto/16 :goto_d

    :cond_3
    iget-object v3, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_6

    iget-object v3, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    iget-object v5, v5, Lg/hed;->am:Lg/cci;

    new-instance v6, Lg/cpa;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lg/cpa;-><init>(Lg/cci;I)V

    invoke-static {v3, v6}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_6

    :cond_5
    :goto_2
    move-object v3, v4

    goto/16 :goto_6

    :cond_6
    iget-object v3, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v5, v3, Lg/hed;->am:Lg/cci;

    invoke-virtual {v5, p0}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v3, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v5, v3, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v5}, Lg/ayu;->m()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_8
    iget-object v5, p0, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v5, p0, Lg/cci;->ag:Ljava/util/List;

    new-instance v6, Lg/cpa;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Lg/cpa;-><init>(Lg/cci;I)V

    invoke-static {v5, v6}, Lg/acw;->bc(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hcd;

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    iget-object v6, v5, Lg/hcd;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {p0, v0, v3}, Lg/gkk;->e(Lg/cci;Lg/hed;Lg/hed;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v3, p0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/hcd;

    if-ne v6, v5, :cond_e

    goto :goto_4

    :cond_e
    iget-object v7, v6, Lg/hcd;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/hed;

    iget-object v9, v6, Lg/hcd;->h:Lg/gqc;

    invoke-static {p0, v8, v9}, Lg/gkk;->d(Lg/cci;Lg/hed;Lg/gqc;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_3

    :cond_10
    sget-object v3, Lg/csv;->INLINE_INSTANCE_FIELD:Lg/csv;

    invoke-virtual {v5, v3}, Lg/lh;->w(Lg/csv;)V

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_5

    sget-object v3, Lg/dhx;->INSTANCE_FIELD:Lg/dhx;

    goto :goto_6

    :cond_11
    invoke-virtual {v5}, Lg/cci;->bd()Lg/cci;

    move-result-object v5

    invoke-virtual {v5, p0}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto/16 :goto_2

    :cond_12
    invoke-static {p0, v0, v3}, Lg/gkk;->e(Lg/cci;Lg/hed;Lg/hed;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v3, p0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hcd;

    iget-object v6, v5, Lg/hcd;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hed;

    iget-object v8, v5, Lg/hcd;->h:Lg/gqc;

    invoke-static {p0, v7, v8}, Lg/gkk;->d(Lg/cci;Lg/hed;Lg/gqc;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_2

    :cond_16
    sget-object v3, Lg/dhx;->CONSTRUCTOR:Lg/dhx;

    :goto_6
    if-nez v3, :cond_17

    goto/16 :goto_d

    :cond_17
    iget-object v5, p0, Lg/cci;->j:Ljava/util/List;

    iget-object v6, p0, Lg/cci;->ab:Lg/dwg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_18

    goto :goto_9

    :cond_18
    iget-object v7, p0, Lg/cci;->af:Lg/cwx;

    if-eqz v7, :cond_1c

    sget-object v8, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v7, v8}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_8

    :cond_19
    if-nez v5, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v5, p0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cwx;

    iget-object v8, v6, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v7}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :goto_7
    move-object v4, v7

    goto :goto_9

    :cond_1b
    iget-object v6, v6, Lg/dwg;->i:Lg/ur;

    iget-boolean v6, v6, Lg/ur;->ak:Z

    if-eqz v6, :cond_1e

    invoke-virtual {v7}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kotlin.jvm.internal.Lambda"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v4, v5

    goto :goto_9

    :cond_1c
    :goto_8
    if-ne v5, v2, :cond_1d

    iget-object v4, p0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cwx;

    goto :goto_9

    :cond_1d
    sget-object v4, Lg/cwx;->t:Lg/aog;

    :cond_1e
    :goto_9
    if-nez v4, :cond_1f

    goto/16 :goto_d

    :cond_1f
    sget-object v5, Lg/dhx;->INSTANCE_FIELD:Lg/dhx;

    if-ne v3, v5, :cond_21

    iget-object v5, p0, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    goto/16 :goto_d

    :cond_20
    iget-object v5, p0, Lg/cci;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    iget-object v5, v5, Lg/hed;->am:Lg/cci;

    goto :goto_a

    :cond_21
    iget-object v5, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_d

    :cond_22
    iget-object v5, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hed;

    iget-object v5, v5, Lg/hed;->am:Lg/cci;

    :goto_a
    invoke-virtual {v5, p0}, Lg/cci;->as(Lg/cci;)V

    new-instance v6, Lg/glh;

    invoke-direct {v6, v5, v4, v3}, Lg/glh;-><init>(Lg/cci;Lg/cwx;Lg/dhx;)V

    invoke-virtual {p0, v6}, Lg/lh;->m(Lg/eue;)V

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p0, v3}, Lg/lh;->w(Lg/csv;)V

    sget-object v3, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    invoke-virtual {v0, v3}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v5}, Lg/cci;->bd()Lg/cci;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/cci;->bl(Lg/cci;)V

    iget-object v3, v5, Lg/cci;->z:Ljava/util/List;

    if-eqz v3, :cond_23

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_23
    iget-object v3, p0, Lg/cci;->ai:Lg/cci;

    if-ne v3, p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    if-eqz v1, :cond_27

    invoke-virtual {v0, p0}, Lg/cci;->bl(Lg/cci;)V

    iget-object v1, v0, Lg/cci;->f:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lg/cci;->f:Ljava/util/List;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_b

    :cond_25
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_26
    :goto_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    iput-object v1, v0, Lg/cci;->f:Ljava/util/List;

    :cond_27
    :goto_d
    return-void
.end method

.method public static d(Lg/cci;Lg/hed;Lg/gqc;)Z
    .locals 1

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    invoke-virtual {p1, p0}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Lg/gqc;->bb()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p1, Lg/cci;->ai:Lg/cci;

    invoke-virtual {p1, p0}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public static e(Lg/cci;Lg/hed;Lg/hed;)Z
    .locals 5

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lg/hed;->au:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    invoke-virtual {v3, p2}, Lg/hed;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lg/hed;->ax:Lg/gqc;

    invoke-static {p0, v3, v4}, Lg/gkk;->d(Lg/cci;Lg/hed;Lg/gqc;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/gkk;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "ProcessMethodsForInline"

    return-object v0

    :pswitch_0
    const-string v0, "ProcessAnonymous"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lg/dwg;)V
    .locals 1

    iget v0, p0, Lg/gkk;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    iget-boolean p1, p1, Lg/ur;->as:Z

    iput-boolean p1, p0, Lg/gkk;->b:Z

    return-void

    :pswitch_0
    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    iget-boolean p1, p1, Lg/ur;->t:Z

    iput-boolean p1, p0, Lg/gkk;->b:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lg/cci;)Z
    .locals 6

    iget v0, p0, Lg/gkk;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lg/gkk;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object p1, p1, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    iget-boolean v2, v0, Lg/hed;->ar:Z

    iget-object v3, v0, Lg/hed;->am:Lg/cci;

    if-nez v2, :cond_1

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v4, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v2}, Lg/gqc;->bb()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lg/hed;->al:Lg/ayu;

    iget-object v4, v4, Lg/ayu;->f:Ljava/lang/String;

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    invoke-virtual {v2}, Lg/gqc;->be()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lg/hed;->bk()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->i:Lg/ur;

    iget-boolean v2, v2, Lg/ur;->t:Z

    if-eqz v2, :cond_1

    :goto_1
    sget-object v2, Lg/csv;->METHOD_CANDIDATE_FOR_INLINE:Lg/csv;

    invoke-virtual {v0, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v3}, Lg/cci;->bd()Lg/cci;

    move-result-object v2

    iget-object v0, v0, Lg/hed;->au:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    iget-object v3, v3, Lg/hed;->am:Lg/cci;

    invoke-virtual {v3}, Lg/cci;->bd()Lg/cci;

    move-result-object v3

    if-eq v3, v2, :cond_5

    invoke-virtual {v2, v3}, Lg/cci;->bl(Lg/cci;)V

    iget-object v4, v3, Lg/cci;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lg/cci;->f:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v4, v3, Lg/cci;->f:Ljava/util/List;

    goto :goto_2

    :cond_8
    const/4 p1, 0x1

    :goto_5
    return p1

    :pswitch_0
    iget-boolean v0, p0, Lg/gkk;->b:Z

    if-eqz v0, :cond_9

    sget-object v0, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_0
    invoke-static {p1}, Lg/gkk;->c(Lg/cci;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    const-string v1, "Anonymous visitor error"

    invoke-static {p1, v1, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    iget-object p1, p1, Lg/cci;->i:Ljava/util/List;

    new-instance v0, Lg/agx;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_9
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

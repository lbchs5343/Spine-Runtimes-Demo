.class public Lg/eek;
.super Lg/ccm;
.source "SourceFile"


# instance fields
.field public ag:I

.field public final ah:Lg/hay;

.field public ai:Lg/gks;

.field public final aj:Ljava/util/List;


# direct methods
.method public constructor <init>(Lg/hay;I)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1, p2}, Lg/eek;-><init>(Lg/hay;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lg/hay;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    iput-object p1, p0, Lg/eek;->ah:Lg/hay;

    iput-object p2, p0, Lg/eek;->aj:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lg/eek;->ag:I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gsh;

    invoke-virtual {p0, p2}, Lg/eek;->ar(Lg/gsh;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public _am(I)Lg/gsh;
    .locals 2

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, v1}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    return-object v1
.end method

.method public _an(Lg/gsh;)V
    .locals 1

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lg/eek;->ar(Lg/gsh;)V

    return-void
.end method

.method public _be(Ljava/util/function/Consumer;)V
    .locals 3

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_0

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public _bs()V
    .locals 4

    iget-object v0, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lg/gks;->a:Lg/vm;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lg/vm;->c:Lg/gks;

    if-nez v2, :cond_0

    iput-object v0, v1, Lg/vm;->c:Lg/gks;

    goto :goto_0

    :cond_0
    if-eq v2, v0, :cond_2

    const/4 v3, 0x0

    iput-object v3, v2, Lg/gks;->a:Lg/vm;

    iput-object v0, v1, Lg/vm;->c:Lg/gks;

    goto :goto_0

    :cond_1
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No SSA var for result arg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    instance-of v2, v1, Lg/gks;

    if-eqz v2, :cond_4

    check-cast v1, Lg/gks;

    iget-object v2, v1, Lg/gks;->a:Lg/vm;

    invoke-virtual {v2, v1}, Lg/vm;->r(Lg/gks;)V

    invoke-virtual {v2}, Lg/vm;->k()V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_3

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1}, Lg/eek;->_bs()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public _o()Lg/eek;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lg/eek;

    if-ne v0, v1, :cond_0

    new-instance v0, Lg/eek;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lg/eek;->ah:Lg/hay;

    invoke-direct {v0, v2, v1}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Copy method not implemented in insn class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _p(Lg/eek;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lg/eek;->ah:Lg/hay;

    iget-object p1, p1, Lg/eek;->aj:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lg/eek;->ah:Lg/hay;

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gsh;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gsh;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v5, Lg/cly;

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/cly;

    if-nez v7, :cond_3

    return v2

    :cond_3
    check-cast v5, Lg/cly;

    iget-object v5, v5, Lg/cly;->a:Lg/eek;

    check-cast v6, Lg/cly;

    iget-object v6, v6, Lg/cly;->a:Lg/eek;

    invoke-virtual {v5, v6}, Lg/eek;->_p(Lg/eek;)Z

    move-result v5

    if-nez v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final ak(Lg/fss;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1, p0}, Lg/fss;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_1

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/eek;->ak(Lg/fss;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final al(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0}, Lg/sm;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0}, Lg/sm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v0, p0, Lg/ccm;->bp:I

    if-eqz v0, :cond_1

    const-string v0, " (LINE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/ccm;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final am(Lg/eek;)V
    .locals 2

    iget-object v0, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Lg/gsh;->b()Lg/gsh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg/eek;->_an(Lg/gsh;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {p1, p0}, Lg/ccm;->br(Lg/eek;)V

    iget v0, p0, Lg/ccm;->bp:I

    iput v0, p1, Lg/ccm;->bp:I

    iget v0, p0, Lg/eek;->ag:I

    iput v0, p1, Lg/eek;->ag:I

    return-void
.end method

.method public final an()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lg/eek;->al(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ao()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Lg/eek;->at(Ljava/lang/StringBuilder;)Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ap(Lg/esk;)V
    .locals 3

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_0

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/eek;->ap(Lg/esk;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lg/esk;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final aq(Lg/gsh;)I
    .locals 4

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final ar(Lg/gsh;)V
    .locals 1

    invoke-virtual {p1, p0}, Lg/gsh;->_bb(Lg/eek;)V

    instance-of v0, p1, Lg/gks;

    if-eqz v0, :cond_0

    check-cast p1, Lg/gks;

    iget-object v0, p1, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/vm;->r(Lg/gks;)V

    :cond_0
    return-void
.end method

.method public final as()Z
    .locals 3

    sget-object v0, Lg/axo;->a:[I

    iget-object v1, p0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public final at(Ljava/lang/StringBuilder;)Z
    .locals 5

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, ", "

    invoke-static {v1, v0}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x78

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_1
    const-string v1, "\n  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public final au(Lg/eek;)V
    .locals 3

    sget-object v0, Lg/acq;->u:Lg/acq;

    iget-object v1, p0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->RETURN:Lg/hay;

    if-ne v1, v2, :cond_1

    iget v1, p1, Lg/ccm;->bp:I

    iput v1, p0, Lg/ccm;->bp:I

    sget-object v1, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lg/eek;->ag:I

    iput v1, p0, Lg/eek;->ag:I

    invoke-virtual {p0, v0}, Lg/lh;->u(Lg/fky;)V

    invoke-virtual {p0, p1, v0}, Lg/lh;->q(Lg/ccm;Lg/acq;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lg/lh;->q(Lg/ccm;Lg/acq;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Lg/lh;->q(Lg/ccm;Lg/acq;)V

    invoke-virtual {p0, p1}, Lg/ccm;->br(Lg/eek;)V

    return-void
.end method

.method public final av(Lg/hed;)Lg/eek;
    .locals 4

    iget-object v0, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v0, :cond_0

    iget v1, v0, Lg/gks;->e:I

    const/4 v2, 0x0

    iget-object v3, v0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v0, v1, v3, v2}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/hed;->bn(Lg/gks;)Lg/vm;

    invoke-virtual {p0}, Lg/eek;->_o()Lg/eek;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/eek;->ax(Lg/gks;)V

    return-object p1

    :cond_0
    new-instance p1, Lg/gck;

    const-string v0, "Result in null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final aw()Z
    .locals 5

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    iget-object v1, p0, Lg/eek;->ah:Lg/hay;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lg/hay;->MONITOR_EXIT:Lg/hay;

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gsh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lg/cly;

    if-eqz v4, :cond_1

    check-cast v3, Lg/cly;

    iget-object v3, v3, Lg/cly;->a:Lg/eek;

    invoke-virtual {v3}, Lg/eek;->aw()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    sget-object v0, Lg/axo;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ax(Lg/gks;)V
    .locals 3

    iput-object p1, p0, Lg/eek;->ai:Lg/gks;

    if-eqz p1, :cond_1

    iput-object p0, p1, Lg/gsh;->ae:Lg/eek;

    iget-object v0, p1, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/vm;->c:Lg/gks;

    if-nez v1, :cond_0

    iput-object p1, v0, Lg/vm;->c:Lg/gks;

    return-void

    :cond_0
    if-eq v1, p1, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Lg/gks;->a:Lg/vm;

    iput-object p1, v0, Lg/vm;->c:Lg/gks;

    :cond_1
    return-void
.end method

.method public final ay()Lg/eek;
    .locals 3

    invoke-virtual {p0}, Lg/eek;->_o()Lg/eek;

    move-result-object v0

    iget-object v1, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lg/gks;->a:Lg/vm;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lg/gks;->z()Lg/gks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/eek;->ax(Lg/gks;)V

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    const-string v1, "Can\'t copy if SSA var is set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final az(Lg/edk;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_1

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/eek;->az(Lg/edk;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lg/edk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ba()Z
    .locals 2

    sget-object v0, Lg/axo;->a:[I

    iget-object v1, p0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e(ILg/gsh;)V
    .locals 1

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lg/eek;->ar(Lg/gsh;)V

    return-void
.end method

.method public f(Lg/gsh;Lg/gsh;)Z
    .locals 7

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gsh;

    const/4 v5, 0x1

    if-ne v4, p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1, v4}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    invoke-virtual {p0, v3, p2}, Lg/eek;->e(ILg/gsh;)V

    return v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Lg/cly;

    if-eqz v6, :cond_1

    check-cast v4, Lg/cly;

    iget-object v4, v4, Lg/cly;->a:Lg/eek;

    invoke-virtual {v4, p1, p2}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public h(Ljava/util/Collection;)V
    .locals 3

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/gks;

    if-eqz v2, :cond_1

    check-cast v1, Lg/gks;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_0

    check-cast v1, Lg/cly;

    iget-object v1, v1, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/eek;->h(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j(I)Lg/gsh;
    .locals 1

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gsh;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/eek;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/eek;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

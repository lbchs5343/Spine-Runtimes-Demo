.class public final Lg/abi;
.super Lg/eek;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lg/hay;->PHI:Lg/hay;

    invoke-direct {p0, v0, p1}, Lg/eek;-><init>(Lg/hay;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/abi;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final _am(I)Lg/gsh;
    .locals 2

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lg/eek;->_am(I)Lg/gsh;

    move-result-object v0

    check-cast v0, Lg/gks;

    iget-object v1, p0, Lg/abi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, v0, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->k()V

    return-object v0
.end method

.method public final _an(Lg/gsh;)V
    .locals 1

    new-instance p1, Lg/gck;

    const-string v0, "Direct addArg is forbidden for PHI insn, bindArg must be used"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final _ax(Lg/gks;)V
    .locals 2

    invoke-virtual {p0, p1}, Lg/eek;->aq(Lg/gsh;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lg/eek;->_am(I)Lg/gsh;

    move-result-object v0

    check-cast v0, Lg/gks;

    iget-object v1, p0, Lg/abi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, v0, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->k()V

    return-void
.end method

.method public final _ay(I)Lg/gks;
    .locals 0

    invoke-super {p0, p1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    check-cast p1, Lg/gks;

    return-object p1
.end method

.method public final _az(Lg/gks;Lg/fza;)V
    .locals 2

    iget-object v0, p0, Lg/abi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-super {p0, p1}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Null bind block in PHI insn: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate predecessors in PHI insn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final _o()Lg/eek;
    .locals 2

    new-instance v0, Lg/abi;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lg/abi;-><init>(I)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final e(ILg/gsh;)V
    .locals 0

    new-instance p1, Lg/gck;

    const-string p2, "Direct setArg is forbidden for PHI insn, bindArg must be used"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lg/gsh;Lg/gsh;)Z
    .locals 3

    instance-of v0, p1, Lg/gks;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lg/gks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lg/eek;->aq(Lg/gsh;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    move-object v1, p2

    check-cast v1, Lg/gks;

    iget-object v1, v1, Lg/gks;->a:Lg/vm;

    invoke-virtual {v1, p0}, Lg/vm;->p(Lg/abi;)V

    invoke-super {p0, v0, p2}, Lg/eek;->e(ILg/gsh;)V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    check-cast p1, Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->k()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final j(I)Lg/gsh;
    .locals 0

    invoke-super {p0, p1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    check-cast p1, Lg/gks;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/eek;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " binds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/abi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/eek;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Lg/fza;)Lg/gks;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/abi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-super {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    check-cast p1, Lg/gks;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

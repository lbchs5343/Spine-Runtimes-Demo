.class public final Lg/dwk;
.super Lg/eek;
.source "SourceFile"


# instance fields
.field public a:Lg/eii;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lg/hay;->TERNARY:Lg/hay;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    return-void
.end method

.method public constructor <init>(Lg/eii;Lg/gks;Lg/gsh;Lg/gsh;)V
    .locals 0

    invoke-direct {p0}, Lg/dwk;-><init>()V

    invoke-virtual {p0, p2}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {p3}, Lg/gsh;->ar()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p4}, Lg/gsh;->ap()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object p1

    iput-object p1, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {p0, p4}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {p0, p3}, Lg/eek;->_an(Lg/gsh;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {p0, p3}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {p0, p4}, Lg/eek;->_an(Lg/gsh;)V

    :goto_0
    new-instance p1, Lg/agx;

    const/16 p2, 0x16

    invoke-direct {p1, p2, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {p2, p1}, Lg/eii;->g(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final _be(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-super {p0, p1}, Lg/eek;->_be(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v0, p1}, Lg/eii;->g(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final _bs()V
    .locals 2

    invoke-super {p0}, Lg/eek;->_bs()V

    iget-object v0, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v0}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v1, v1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/eek;->_bs()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final _o()Lg/eek;
    .locals 2

    new-instance v0, Lg/dwk;

    invoke-direct {v0}, Lg/dwk;-><init>()V

    iget-object v1, p0, Lg/dwk;->a:Lg/eii;

    iput-object v1, v0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/dwk;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/dwk;

    iget-object v0, p0, Lg/dwk;->a:Lg/eii;

    iget-object p1, p1, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v0, p1}, Lg/eii;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lg/gsh;Lg/gsh;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v0, p1, p2}, Lg/eii;->x(Lg/gsh;Lg/gsh;)Z

    move-result p1

    return p1
.end method

.method public final h(Ljava/util/Collection;)V
    .locals 1

    invoke-super {p0, p1}, Lg/eek;->h(Ljava/util/Collection;)V

    iget-object v0, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v0}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": TERNARY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dwk;->a:Lg/eii;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lg/dwk;->a:Lg/eii;

    invoke-static {v0}, Lg/eii;->f(Lg/eii;)Lg/eii;

    move-result-object v0

    iput-object v0, p0, Lg/dwk;->a:Lg/eii;

    iget-object v1, v0, Lg/eii;->a:Lg/ath;

    sget-object v2, Lg/ath;->NOT:Lg/ath;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v0

    iput-object v0, p0, Lg/dwk;->a:Lg/eii;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lg/eek;->e(ILg/gsh;)V

    invoke-virtual {p0, v2, v1}, Lg/eek;->e(ILg/gsh;)V

    :cond_0
    return-void
.end method

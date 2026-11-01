.class public final Lg/cly;
.super Lg/gsh;
.source "SourceFile"


# instance fields
.field public final a:Lg/eek;


# direct methods
.method public constructor <init>(Lg/eek;)V
    .locals 1

    invoke-direct {p0}, Lg/lh;-><init>()V

    iget-object v0, p1, Lg/eek;->ai:Lg/gks;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gks;->j()Lg/cwx;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/cwx;->ad:Lg/gnh;

    :goto_0
    iput-object v0, p0, Lg/flv;->h:Lg/cwx;

    iput-object p1, p0, Lg/cly;->a:Lg/eek;

    return-void
.end method


# virtual methods
.method public final _bb(Lg/eek;)V
    .locals 3

    iget-object v0, p0, Lg/cly;->a:Lg/eek;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lg/gsh;->ae:Lg/eek;

    return-void

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t wrap instruction info itself: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lg/gsh;
    .locals 2

    new-instance v0, Lg/cly;

    iget-object v1, p0, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1}, Lg/eek;->_o()Lg/eek;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/cly;-><init>(Lg/eek;)V

    iget-object v1, p0, Lg/flv;->h:Lg/cwx;

    iput-object v1, v0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v0, p0}, Lg/lh;->s(Lg/lh;)V

    iget-object v1, p0, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v0, v1}, Lg/cly;->_bb(Lg/eek;)V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/cly;->a:Lg/eek;

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->CONST_STR:Lg/hay;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lg/epw;

    iget-object v0, v0, Lg/epw;->a:Ljava/lang/String;

    const-string v2, "\")"

    invoke-static {v1, v0, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(wrap:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/cly;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/cly;

    iget-object p1, p1, Lg/cly;->a:Lg/eek;

    iget-object v1, p0, Lg/cly;->a:Lg/eek;

    invoke-virtual {v1, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, v1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v1, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v5

    invoke-virtual {p1, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/cly;->a:Lg/eek;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/cly;->a:Lg/eek;

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->CONST_STR:Lg/hay;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lg/epw;

    iget-object v0, v0, Lg/epw;->a:Ljava/lang/String;

    const-string v2, "\")"

    invoke-static {v1, v0, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(wrap:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

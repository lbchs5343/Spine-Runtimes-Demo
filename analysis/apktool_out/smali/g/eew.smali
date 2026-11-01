.class public final Lg/eew;
.super Lg/gif;
.source "SourceFile"


# instance fields
.field public final a:Lg/ayu;

.field public final y:Lg/dkz;


# direct methods
.method public constructor <init>(Lg/ayu;Lg/dkz;)V
    .locals 2

    sget-object v0, Lg/hay;->CONSTRUCTOR:Lg/hay;

    iget-object v1, p1, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p1, p0, Lg/eew;->a:Lg/ayu;

    iput-object p2, p0, Lg/eew;->y:Lg/dkz;

    return-void
.end method

.method public constructor <init>(Lg/hed;Lg/hdc;Lg/ayu;)V
    .locals 3

    sget-object v0, Lg/hay;->CONSTRUCTOR:Lg/hay;

    iget-object v1, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p3, p0, Lg/eew;->a:Lg/ayu;

    iget-object v0, p3, Lg/ayu;->d:Lg/ve;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/gsh;->al()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lg/dkz;->CONSTRUCTOR:Lg/dkz;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lg/hed;->am:Lg/cci;

    iget-object v1, v1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0, v1}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lg/dkz;->SUPER:Lg/dkz;

    goto :goto_0

    :cond_1
    iget-object p3, p3, Lg/ayu;->e:Ljava/lang/String;

    iget-object p1, p1, Lg/hed;->al:Lg/ayu;

    iget-object p1, p1, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lg/dkz;->SELF:Lg/dkz;

    goto :goto_0

    :cond_2
    sget-object p1, Lg/dkz;->THIS:Lg/dkz;

    :goto_0
    iput-object p1, p0, Lg/eew;->y:Lg/dkz;

    iget-object p1, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_3

    invoke-virtual {p2, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p3

    invoke-virtual {p0, p3}, Lg/eek;->_an(Lg/gsh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 3

    new-instance v0, Lg/eew;

    iget-object v1, p0, Lg/eew;->a:Lg/ayu;

    iget-object v2, p0, Lg/eew;->y:Lg/dkz;

    invoke-direct {v0, v1, v2}, Lg/eew;-><init>(Lg/ayu;Lg/dkz;)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/eew;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/eew;

    iget-object v1, p0, Lg/eew;->a:Lg/ayu;

    iget-object v3, p1, Lg/eew;->a:Lg/ayu;

    invoke-virtual {v1, v3}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/eew;->y:Lg/dkz;

    iget-object p1, p1, Lg/eew;->y:Lg/dkz;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public final bridge synthetic aa()Lg/gsh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ab()Z
    .locals 2

    iget-object v0, p0, Lg/eew;->y:Lg/dkz;

    sget-object v1, Lg/dkz;->SUPER:Lg/dkz;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ac()Lg/ayu;
    .locals 1

    iget-object v0, p0, Lg/eew;->a:Lg/ayu;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lg/eek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eew;->a:Lg/ayu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eew;->y:Lg/dkz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

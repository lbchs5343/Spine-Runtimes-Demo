.class public final Lg/og;
.super Lg/eek;
.source "SourceFile"


# instance fields
.field public _ao:Lg/mt;

.field public final a:I


# direct methods
.method public constructor <init>(ILg/gsh;)V
    .locals 2

    sget-object v0, Lg/hay;->FILL_ARRAY:Lg/hay;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput p1, p0, Lg/og;->a:I

    invoke-virtual {p0, p2}, Lg/eek;->_an(Lg/gsh;)V

    return-void
.end method


# virtual methods
.method public final _ap(Lg/cwx;)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lg/og;->_ao:Lg/mt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lg/mt;->_al:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lg/mt;->g:Ljava/lang/Object;

    iget v0, v0, Lg/mt;->_ak:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    check-cast v2, [J

    array-length v0, v2

    :goto_0
    if-ge v4, v0, :cond_4

    aget-wide v5, v2, v4

    invoke-static {v5, v6, p1}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v2, [I

    array-length v0, v2

    :goto_1
    if-ge v4, v0, :cond_4

    aget v3, v2, v4

    int-to-long v5, v3

    invoke-static {v5, v6, p1}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    check-cast v2, [S

    array-length v0, v2

    :goto_2
    if-ge v4, v0, :cond_4

    aget-short v3, v2, v4

    int-to-long v5, v3

    invoke-static {v5, v6, p1}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    check-cast v2, [B

    array-length v0, v2

    :goto_3
    if-ge v4, v0, :cond_4

    aget-byte v3, v2, v4

    int-to-long v5, v3

    invoke-static {v5, v6, p1}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method public final _o()Lg/eek;
    .locals 3

    new-instance v0, Lg/og;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    iget v2, p0, Lg/og;->a:I

    invoke-direct {v0, v2, v1}, Lg/og;-><init>(ILg/gsh;)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/og;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/og;

    iget-object v0, p0, Lg/og;->_ao:Lg/mt;

    iget-object p1, p1, Lg/og;->_ao:Lg/mt;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lg/eek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/og;->_ao:Lg/mt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

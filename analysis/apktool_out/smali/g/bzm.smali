.class public final Lg/bzm;
.super Lg/dog;
.source "SourceFile"


# instance fields
.field public _bx:[Ljava/lang/Object;

.field public final a:I

.field public ab:[Lg/fza;

.field public d:Lg/bx;

.field public x:I

.field public final y:Z

.field public z:Lg/fza;


# direct methods
.method public constructor <init>(Lg/gsh;IZ)V
    .locals 2

    sget-object v0, Lg/hay;->SWITCH:Lg/hay;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {p0, p1}, Lg/eek;->_an(Lg/gsh;)V

    iput p2, p0, Lg/bzm;->a:I

    iput-boolean p3, p0, Lg/bzm;->y:Z

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 4

    new-instance v0, Lg/bzm;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    iget v2, p0, Lg/bzm;->a:I

    iget-boolean v3, p0, Lg/bzm;->y:Z

    invoke-direct {v0, v1, v2, v3}, Lg/bzm;-><init>(Lg/gsh;IZ)V

    iget-object v1, p0, Lg/bzm;->d:Lg/bx;

    iput-object v1, v0, Lg/bzm;->d:Lg/bx;

    iget v1, p0, Lg/bzm;->x:I

    iput v1, v0, Lg/bzm;->x:I

    iget-object v1, p0, Lg/bzm;->ab:[Lg/fza;

    iput-object v1, v0, Lg/bzm;->ab:[Lg/fza;

    iget-object v1, p0, Lg/bzm;->z:Lg/fza;

    iput-object v1, v0, Lg/bzm;->z:Lg/fza;

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/bzm;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/bzm;

    iget v0, p0, Lg/bzm;->a:I

    iget v1, p1, Lg/bzm;->a:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lg/bzm;->y:Z

    iget-boolean p1, p1, Lg/bzm;->y:Z

    if-ne v0, p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final aa(Lg/fza;Lg/fza;)V
    .locals 4

    iget-object v0, p0, Lg/bzm;->ab:[Lg/fza;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lg/bzm;->ab:[Lg/fza;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_1

    aput-object p2, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/bzm;->z:Lg/fza;

    if-ne v0, p1, :cond_3

    iput-object p2, p0, Lg/bzm;->z:Lg/fza;

    :cond_3
    :goto_1
    return-void
.end method

.method public final ac(Lg/fza;)V
    .locals 5

    iget-object v0, p0, Lg/bzm;->d:Lg/bx;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    iget-object v0, v0, Lg/bx;->b:[I

    array-length v1, v0

    new-array v2, v1, [Lg/fza;

    iput-object v2, p0, Lg/bzm;->ab:[Lg/fza;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lg/bzm;->ab:[Lg/fza;

    aget v4, v0, v2

    invoke-static {v4, p1}, Lg/ffb;->bo(ILjava/lang/Iterable;)Lg/fza;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/bzm;->x:I

    invoke-static {v0, p1}, Lg/ffb;->bo(ILjava/lang/Iterable;)Lg/fza;

    move-result-object p1

    iput-object p1, p0, Lg/bzm;->z:Lg/fza;

    return-void

    :cond_1
    new-instance p1, Lg/gck;

    const-string v0, "Switch data not yet attached"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ad()Lg/bx;
    .locals 2

    iget-object v0, p0, Lg/bzm;->d:Lg/bx;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    const-string v1, "Switch data not yet attached"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ae(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lg/bzm;->_bx:[Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/bzm;->ad()Lg/bx;

    move-result-object v0

    iget-object v0, v0, Lg/bx;->c:[I

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lg/bzm;->_bx:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lg/bzm;->_bx:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public final af(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/bzm;->_bx:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lg/bzm;->ad()Lg/bx;

    move-result-object v0

    iget-object v0, v0, Lg/bx;->c:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/eek;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bzm;->d:Lg/bx;

    if-nez v1, :cond_0

    const-string v1, "no payload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    iget v2, v1, Lg/bx;->a:I

    iget-object v3, v1, Lg/bx;->c:[I

    iget-object v4, p0, Lg/bzm;->ab:[Lg/fza;

    const-string v5, "\n default: goto "

    const/4 v6, -0x1

    const-string v7, ": goto "

    const-string v8, "\n case "

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    :goto_0
    if-ge v9, v2, :cond_1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bzm;->ab:[Lg/fza;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lg/bzm;->x:I

    if-eq v1, v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bzm;->z:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lg/bx;->b:[I

    :goto_1
    if-ge v9, v2, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v9

    invoke-static {v4}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lg/bzm;->x:I

    if-eq v1, v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/bzm;->x:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lg/eek;->al(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

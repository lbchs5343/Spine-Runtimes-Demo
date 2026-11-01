.class public final Lg/efh;
.super Lg/dnp;
.source "SourceFile"

# interfaces
.implements Lg/ful;


# instance fields
.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lg/efh;->f:I

    return v0
.end method

.method public final k(Lg/bpt;IZ)V
    .locals 3

    iget p1, p1, Lg/bpt;->a:I

    const/4 v0, 0x0

    const v1, 0xffff

    if-gt p1, v1, :cond_2

    const/16 v2, 0x7fff

    if-le p2, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x8000

    :goto_0
    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    and-int/2addr p2, v2

    or-int/2addr p1, p2

    iput p1, p0, Lg/efh;->f:I

    return-void

    :cond_2
    :goto_1
    iput v0, p0, Lg/efh;->f:I

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lg/dnp;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efh;->i:Ljava/lang/String;

    new-instance v1, Lg/erd;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/erd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p0}, Lg/erd;->c(Lg/dnp;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/efh;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/efh;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/efh;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

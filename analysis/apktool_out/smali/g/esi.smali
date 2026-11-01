.class public final Lg/esi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ful;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lg/dsg;


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/esi;->d:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/esi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/esi;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lg/esi;->e:I

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/esi;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lg/esi;->i:Lg/dsg;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    iget v2, p0, Lg/esi;->f:I

    iget-object v3, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v3, Lg/eyc;

    iget-object v3, v3, Lg/eyc;->a:Lg/asu;

    iget v4, v3, Lg/asu;->i:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lg/dsg;->m(I)V

    invoke-virtual {v0}, Lg/dsg;->q()I

    move-result v2

    invoke-virtual {v0}, Lg/dsg;->q()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iget v3, v3, Lg/asu;->e:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lg/dsg;->m(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lg/dsg;->x(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Lg/dsg;->w()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/esi;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lg/dsg;->z(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/esi;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/esi;->c:Ljava/lang/String;

    iput-object v1, p0, Lg/esi;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/esi;->i:Lg/dsg;

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/esi;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lg/esi;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/esi;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/esi;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/esi;->d:Ljava/util/List;

    invoke-static {v1}, Lg/acr;->ay(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/esi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

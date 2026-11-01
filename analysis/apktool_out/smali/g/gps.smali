.class public final Lg/gps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eok;


# instance fields
.field public b:I

.field public c:Lg/geg;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lg/gps;->b:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gps;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/gps;->c:Lg/geg;

    invoke-virtual {v0}, Lg/geg;->d()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lg/gps;->c:Lg/geg;

    invoke-static {v0}, Lg/cfy;->b(Lg/geg;)Lg/ks;

    move-result-object v0

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/gps;->c:Lg/geg;

    sget-object v2, Lg/zz;->q:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/gia;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/gia;->a:Lg/ghr;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lg/gps;->c:Lg/geg;

    sget-object v2, Lg/zz;->j:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/eue;

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gps;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gps;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/gps;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gps;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gps;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

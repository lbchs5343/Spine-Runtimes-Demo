.class public final Lg/glr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ghu;


# instance fields
.field public d:Lg/geg;

.field public final e:Lg/cmv;

.field public final f:Lg/efh;

.field public g:I


# direct methods
.method public constructor <init>(Lg/cmv;Lg/efh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/glr;->e:Lg/cmv;

    iput-object p2, p0, Lg/glr;->f:Lg/efh;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lg/glr;->g:I

    return v0
.end method

.method public final b()Lg/atc;
    .locals 3

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    sget-object v1, Lg/zz;->a:Lg/zz;

    invoke-virtual {v0, v1}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/anl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lg/fn;

    iget-object v2, p0, Lg/glr;->e:Lg/cmv;

    iget v0, v0, Lg/anl;->a:I

    invoke-direct {v1, v2, v0}, Lg/fn;-><init>(Lg/cmv;I)V

    return-object v1
.end method

.method public final c()Lg/ful;
    .locals 1

    iget-object v0, p0, Lg/glr;->f:Lg/efh;

    return-object v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    invoke-virtual {v0}, Lg/geg;->d()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    invoke-static {v0}, Lg/cfy;->b(Lg/geg;)Lg/ks;

    move-result-object v0

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    sget-object v2, Lg/zz;->c:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v2

    check-cast v2, Lg/vk;

    sget-object v3, Lg/zz;->k:Lg/zz;

    invoke-virtual {v0, v3}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/vk;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, v2, Lg/vk;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/gca;->b(Ljava/util/List;)Lg/gca;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lg/vk;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    invoke-static {v0}, Lg/gca;->b(Ljava/util/List;)Lg/gca;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lg/vk;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_6

    if-ge v7, v3, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_1

    :cond_4
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    if-ge v7, v4, :cond_5

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    goto :goto_2

    :cond_5
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    invoke-static {v8, v9}, Lg/acr;->bi(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v6}, Lg/gca;->b(Ljava/util/List;)Lg/gca;

    move-result-object v0

    :goto_3
    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    sget-object v2, Lg/zz;->o:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/gpg;

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    sget-object v2, Lg/zz;->j:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/eue;

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    sget-object v2, Lg/zz;->p:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/eue;

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/glr;->d:Lg/geg;

    sget-object v2, Lg/zz;->h:Lg/zz;

    invoke-virtual {v0, v2}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/eue;

    invoke-static {v0, v1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/glr;->f:Lg/efh;

    invoke-virtual {v0}, Lg/efh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

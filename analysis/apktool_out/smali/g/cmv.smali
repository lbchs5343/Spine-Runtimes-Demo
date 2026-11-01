.class public final Lg/cmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cgt;


# instance fields
.field public final g:Lg/gkr;

.field public final h:Lg/erm;

.field public final i:Lg/bpt;

.field public final j:Lg/gqc;

.field public final k:Lg/adr;


# direct methods
.method public constructor <init>(Lg/bpt;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cmv;->i:Lg/bpt;

    new-instance v0, Lg/gqc;

    iget-object v1, p1, Lg/bpt;->c:[B

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lg/gqc;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p0, Lg/cmv;->j:Lg/gqc;

    new-instance v8, Lg/adr;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x8

    iput v2, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x2

    if-ge v6, v3, :cond_3

    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result v9

    iget v10, v0, Lg/gqc;->ab:I

    aput v10, v4, v6

    sget-object v10, Lg/fha;->a:[Lg/fha;

    aget-object v10, v10, v9

    if-eqz v10, :cond_2

    sget-object v9, Lg/heh;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v9, v9, v11

    if-eq v9, v5, :cond_1

    if-eq v9, v7, :cond_0

    const/4 v7, 0x3

    if-eq v9, v7, :cond_0

    invoke-virtual {v10}, Lg/fha;->c()I

    move-result v7

    invoke-virtual {v0, v7}, Lg/gqc;->at(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lg/gqc;->at(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v7

    invoke-virtual {v0, v7}, Lg/gqc;->at(I)V

    :goto_1
    add-int/2addr v6, v5

    goto :goto_0

    :cond_2
    new-instance p1, Lg/cyf;

    const-string v0, "Unknown constant pool tag: "

    invoke-static {v9, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object v4, v8, Lg/adr;->b:[I

    iget v2, v0, Lg/gqc;->ab:I

    iput v2, v8, Lg/adr;->c:I

    const/4 v3, 0x6

    add-int/2addr v2, v3

    iput v2, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lg/gqc;->at(I)V

    iget v2, v0, Lg/gqc;->ab:I

    iput v2, v8, Lg/adr;->d:I

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    invoke-virtual {v0, v3}, Lg/gqc;->at(I)V

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_4

    invoke-virtual {v0, v7}, Lg/gqc;->at(I)V

    invoke-virtual {v0}, Lg/gqc;->bc()I

    move-result v10

    invoke-virtual {v0, v10}, Lg/gqc;->at(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_7

    invoke-virtual {v0, v3}, Lg/gqc;->at(I)V

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_6

    invoke-virtual {v0, v7}, Lg/gqc;->at(I)V

    invoke-virtual {v0}, Lg/gqc;->bc()I

    move-result v10

    invoke-virtual {v0, v10}, Lg/gqc;->at(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    iget v2, v0, Lg/gqc;->ab:I

    iput v2, v8, Lg/adr;->a:I

    iput-object v8, p0, Lg/cmv;->k:Lg/adr;

    new-instance v4, Lg/gkr;

    new-instance v7, Lg/gqc;

    iget v0, v0, Lg/gqc;->ab:I

    const/4 v2, 0x6

    invoke-direct {v7, v1, v0, v2}, Lg/gqc;-><init>(Ljava/lang/Object;II)V

    const/4 v9, 0x1

    move-object v6, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lg/gkr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v4, v6, Lg/cmv;->g:Lg/gkr;

    new-instance p1, Lg/erm;

    invoke-direct {p1, p0, v4}, Lg/erm;-><init>(Lg/cmv;Lg/gkr;)V

    iput-object p1, v6, Lg/cmv;->h:Lg/erm;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/cmv;->k:Lg/adr;

    iget v0, v0, Lg/adr;->c:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lg/cmv;->j:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {v1, v0}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/bux;Lg/bux;)V
    .locals 12

    iget-object v0, p0, Lg/cmv;->k:Lg/adr;

    iget v1, v0, Lg/adr;->c:I

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lg/cmv;->j:Lg/gqc;

    iput v1, v2, Lg/gqc;->ab:I

    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v1

    iget-object v3, p0, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {v3, v1}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lg/adr;->d:I

    iput v0, v2, Lg/gqc;->ab:I

    new-instance v4, Lg/gqc;

    iget-object v2, v2, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v5, 0x6

    invoke-direct {v4, v2, v0, v5}, Lg/gqc;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/bux;->c(I)V

    iget-object v2, p0, Lg/cmv;->h:Lg/erm;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v6, Lg/gps;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, Lg/gps;->f:Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v8

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v9

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v10

    sget-object v11, Lg/erm;->b:Lg/bev;

    invoke-virtual {v2, v4, v11}, Lg/erm;->f(Lg/gqc;Ljava/util/function/Predicate;)Lg/geg;

    move-result-object v11

    iput v8, v6, Lg/gps;->b:I

    invoke-virtual {v3, v9}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lg/gps;->e:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lg/gps;->g:Ljava/lang/String;

    iput-object v11, v6, Lg/gps;->c:Lg/geg;

    invoke-virtual {p1, v6}, Lg/bux;->accept(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result p1

    invoke-virtual {p2, p1}, Lg/bux;->c(I)V

    if-eqz p1, :cond_2

    new-instance v0, Lg/efh;

    invoke-direct {v0}, Lg/dnp;-><init>()V

    iput-object v1, v0, Lg/efh;->g:Ljava/lang/String;

    new-instance v1, Lg/glr;

    invoke-direct {v1, p0, v0}, Lg/glr;-><init>(Lg/cmv;Lg/efh;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v6

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v7

    invoke-virtual {v4}, Lg/gqc;->ai()I

    move-result v8

    sget-object v9, Lg/erm;->b:Lg/bev;

    invoke-virtual {v2, v4, v9}, Lg/erm;->f(Lg/gqc;Ljava/util/function/Predicate;)Lg/geg;

    move-result-object v9

    iget-object v10, v1, Lg/glr;->f:Lg/efh;

    const/4 v11, 0x0

    iput-object v11, v10, Lg/dnp;->d:Ljava/lang/String;

    iput-object v11, v10, Lg/dnp;->e:Ljava/util/List;

    iget-object v11, p0, Lg/cmv;->i:Lg/bpt;

    invoke-virtual {v10, v11, v0, v5}, Lg/efh;->k(Lg/bpt;IZ)V

    invoke-virtual {v3, v7}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lg/efh;->h:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lg/efh;->i:Ljava/lang/String;

    iget-object v7, v10, Lg/efh;->h:Ljava/lang/String;

    const-string v8, "<init>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    :cond_1
    iput v6, v1, Lg/glr;->g:I

    iput-object v9, v1, Lg/glr;->d:Lg/geg;

    invoke-virtual {p2, v1}, Lg/bux;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lg/cmv;->k:Lg/adr;

    iget v0, v0, Lg/adr;->c:I

    iget-object v1, p0, Lg/cmv;->j:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lg/cmv;->k:Lg/adr;

    iget v0, v0, Lg/adr;->c:I

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lg/cmv;->j:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    iget-object v0, p0, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {v1, v0}, Lg/gqc;->av(Lg/gkr;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lg/cgt;
    .locals 0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cmv;->i:Lg/bpt;

    iget-object v0, v0, Lg/bpt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/cmv;->k:Lg/adr;

    iget v0, v0, Lg/adr;->a:I

    iget-object v1, p0, Lg/cmv;->j:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    iget-object v0, p0, Lg/cmv;->h:Lg/erm;

    sget-object v2, Lg/erm;->b:Lg/bev;

    invoke-virtual {v0, v1, v2}, Lg/erm;->f(Lg/gqc;Ljava/util/function/Predicate;)Lg/geg;

    move-result-object v0

    invoke-virtual {v0}, Lg/geg;->d()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Lg/cfy;->b(Lg/geg;)Lg/ks;

    move-result-object v1

    invoke-static {v1, v2}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Lg/zz;->g:Lg/zz;

    invoke-virtual {v0, v1}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v1

    check-cast v1, Lg/eue;

    invoke-static {v1, v2}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Lg/zz;->r:Lg/zz;

    invoke-virtual {v0, v1}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v1

    check-cast v1, Lg/eue;

    invoke-static {v1, v2}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Lg/zz;->j:Lg/zz;

    invoke-virtual {v0, v1}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/eue;

    invoke-static {v0, v2}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/cmv;->k:Lg/adr;

    iget v0, v0, Lg/adr;->c:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lg/cmv;->j:Lg/gqc;

    iput v0, v1, Lg/gqc;->ab:I

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v0

    iget-object v1, p0, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {v1, v0}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cmv;->i:Lg/bpt;

    iget-object v0, v0, Lg/bpt;->b:Ljava/lang/String;

    return-object v0
.end method

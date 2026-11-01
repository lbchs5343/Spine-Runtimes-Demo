.class public final Lg/ccw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:I

.field public b:[Lg/fpd;

.field public c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/text/SimpleDateFormat;

.field public final h:Lg/fzg;

.field public final i:Lg/gqc;

.field public j:Ljava/util/ArrayList;

.field public final k:Lg/mh;

.field public l:Lg/fpd;


# direct methods
.method public constructor <init>(Lg/fzg;Lg/mh;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/ex;->b:Ljava/lang/String;

    iput-object v0, p0, Lg/ccw;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg/ccw;->a:I

    iput v0, p0, Lg/ccw;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ccw;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/ccw;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/ccw;->h:Lg/fzg;

    iput-object p2, p0, Lg/ccw;->k:Lg/mh;

    iget-object p2, p2, Lg/mh;->c:Lg/gqc;

    iput-object p2, p0, Lg/ccw;->i:Lg/gqc;

    iget-char p2, p1, Lg/fzg;->l:C

    iget-object v0, p1, Lg/fzg;->k:Ljava/lang/String;

    iget v1, p1, Lg/fzg;->j:I

    const/16 v2, 0x7b

    const/16 v3, 0x1a

    if-ne p2, v2, :cond_1

    iget p2, p1, Lg/fzg;->n:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lg/fzg;->n:I

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, p1, Lg/fzg;->l:C

    const/16 p2, 0xc

    iput p2, p1, Lg/fzg;->o:I

    return-void

    :cond_1
    const/16 v2, 0x5b

    if-ne p2, v2, :cond_3

    iget p2, p1, Lg/fzg;->n:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lg/fzg;->n:I

    if-lt p2, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    iput-char v3, p1, Lg/fzg;->l:C

    const/16 p2, 0xe

    iput p2, p1, Lg/fzg;->o:I

    return-void

    :cond_3
    invoke-virtual {p1}, Lg/fzg;->az()V

    return-void
.end method


# virtual methods
.method public final aa(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 11

    sget-object v0, Lg/eyg;->e:Lg/eyg;

    iget-object v1, p0, Lg/ccw;->h:Lg/fzg;

    iget v2, v1, Lg/fzg;->o:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lg/fzg;->az()V

    :cond_1
    iget v2, v1, Lg/fzg;->o:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, p1, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lg/fzg;->bg(I)V

    move-object v5, v0

    goto :goto_0

    :cond_2
    if-ne v3, p1, :cond_3

    sget-object v5, Lg/eyg;->f:Lg/eyg;

    invoke-virtual {v1, v2}, Lg/fzg;->bg(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lg/ccw;->k:Lg/mh;

    invoke-virtual {v5, p1}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Lg/fzg;->bg(I)V

    :goto_0
    iget-object v6, p0, Lg/ccw;->l:Lg/fpd;

    iget-boolean v7, v1, Lg/fzg;->v:Z

    if-nez v7, :cond_4

    invoke-virtual {p0, v6, p2, p3}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    :cond_4
    const/4 p3, 0x0

    :goto_1
    :try_start_0
    iget v7, v1, Lg/fzg;->w:I

    sget-object v8, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v8, v8, Lg/cbj;->mask:I

    and-int/2addr v7, v8

    const/16 v8, 0x10

    if-eqz v7, :cond_5

    :goto_2
    iget v7, v1, Lg/fzg;->o:I

    if-ne v7, v8, :cond_5

    invoke-virtual {v1}, Lg/fzg;->az()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_5
    iget v7, v1, Lg/fzg;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0xf

    if-ne v7, v9, :cond_6

    iput-object v6, p0, Lg/ccw;->l:Lg/fpd;

    invoke-virtual {v1, v8}, Lg/fzg;->bg(I)V

    return-void

    :cond_6
    const/4 v9, 0x0

    if-ne v4, p1, :cond_7

    :try_start_1
    invoke-virtual {v0, p0, v9, v9}, Lg/eyg;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    if-ne v3, p1, :cond_a

    if-ne v7, v2, :cond_8

    invoke-virtual {v1}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8}, Lg/fzg;->bg(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v9}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    move-object v7, v9

    :goto_4
    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/16 v10, 0x8

    if-ne v7, v10, :cond_b

    invoke-virtual {v1}, Lg/fzg;->az()V

    goto :goto_5

    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p0, p1, v7}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    invoke-interface {p2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v7, p0, Lg/ccw;->c:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    invoke-virtual {p0, p2}, Lg/ccw;->n(Ljava/util/Collection;)V

    :cond_c
    :goto_6
    iget v7, v1, Lg/fzg;->o:I

    if-ne v7, v8, :cond_d

    invoke-virtual {v1}, Lg/fzg;->az()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :goto_7
    iput-object v6, p0, Lg/ccw;->l:Lg/fpd;

    throw p1

    :cond_e
    new-instance p1, Lg/bfj;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exepct \'[\', but "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v1, Lg/fzg;->o:I

    invoke-static {p3}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ab()V
    .locals 9

    iget-object v0, p0, Lg/ccw;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lg/ccw;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ggl;

    iget-object v4, v3, Lg/ggl;->d:Lg/bgf;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v5, v3, Lg/ggl;->a:Lg/fpd;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v5, Lg/fpd;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    iget-object v7, v3, Lg/ggl;->c:Ljava/lang/String;

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lg/ccw;->a:I

    if-ge v3, v8, :cond_5

    iget-object v8, p0, Lg/ccw;->b:[Lg/fpd;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lg/fpd;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, p0, Lg/ccw;->b:[Lg/fpd;

    aget-object v6, v6, v3

    iget-object v6, v6, Lg/fpd;->f:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, v3, Lg/ggl;->b:Lg/fpd;

    iget-object v6, v3, Lg/fpd;->f:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v4, v5, v6}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    const-string v1, "not close json text, token : "

    :try_start_0
    iget v2, v0, Lg/fzg;->w:I

    sget-object v3, Lg/cbj;->AutoCloseSource:Lg/cbj;

    iget v3, v3, Lg/cbj;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, v0, Lg/fzg;->o:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lg/bfj;

    iget v3, v0, Lg/fzg;->o:I

    invoke-static {v3}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lg/fzg;->aw()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lg/fzg;->aw()V

    throw v1
.end method

.method public final m()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/util/Collection;)V
    .locals 4

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/ccw;->t()Lg/ggl;

    move-result-object v0

    new-instance v2, Lg/cne;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v2, p0, v3, p1}, Lg/cne;-><init>(Lg/ccw;Ljava/util/List;I)V

    iput-object v2, v0, Lg/ggl;->d:Lg/bgf;

    iget-object p1, p0, Lg/ccw;->l:Lg/fpd;

    iput-object p1, v0, Lg/ggl;->a:Lg/fpd;

    iput v1, p0, Lg/ccw;->c:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/ccw;->t()Lg/ggl;

    move-result-object v0

    new-instance v2, Lg/cne;

    invoke-direct {v2, p1}, Lg/cne;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lg/ggl;->d:Lg/bgf;

    iget-object p1, p0, Lg/ccw;->l:Lg/fpd;

    iput-object p1, v0, Lg/ggl;->a:Lg/fpd;

    iput v1, p0, Lg/ccw;->c:I

    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lg/cne;

    invoke-direct {v0, p1, p2}, Lg/cne;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {p0}, Lg/ccw;->t()Lg/ggl;

    move-result-object p1

    iput-object v0, p1, Lg/ggl;->d:Lg/bgf;

    iget-object p2, p0, Lg/ccw;->l:Lg/fpd;

    iput-object p2, p1, Lg/ggl;->a:Lg/fpd;

    const/4 p1, 0x0

    iput p1, p0, Lg/ccw;->c:I

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget v1, v0, Lg/fzg;->o:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lg/fzg;->az()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-class v1, [B

    if-ne p2, v1, :cond_1

    invoke-virtual {v0}, Lg/fzg;->ao()[B

    move-result-object p1

    invoke-virtual {v0}, Lg/fzg;->az()V

    return-object p1

    :cond_1
    const-class v1, [C

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lg/fzg;->az()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lg/ccw;->k:Lg/mh;

    invoke-virtual {v0, p2}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p2, p1}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lg/bfj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lg/bfj;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public final q()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget v1, v0, Lg/fzg;->o:I

    const/4 v2, 0x4

    const/16 v3, 0x10

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v1

    iget-char v2, v0, Lg/fzg;->l:C

    const/16 v4, 0x2c

    const/16 v5, 0x1a

    if-ne v2, v4, :cond_1

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lg/fzg;->n:I

    iget v4, v0, Lg/fzg;->j:I

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_0
    iput-char v5, v0, Lg/fzg;->l:C

    iput v3, v0, Lg/fzg;->o:I

    return-object v1

    :cond_1
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_3

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lg/fzg;->n:I

    iget v3, v0, Lg/fzg;->j:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    iput-char v5, v0, Lg/fzg;->l:C

    const/16 v2, 0xf

    iput v2, v0, Lg/fzg;->o:I

    return-object v1

    :cond_3
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_5

    iget v2, v0, Lg/fzg;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lg/fzg;->n:I

    iget v3, v0, Lg/fzg;->j:I

    if-lt v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    iput-char v5, v0, Lg/fzg;->l:C

    const/16 v2, 0xd

    iput v2, v0, Lg/fzg;->o:I

    return-object v1

    :cond_5
    invoke-virtual {v0}, Lg/fzg;->az()V

    return-object v1

    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lg/fzg;->bg(I)V

    return-object v1

    :cond_7
    invoke-virtual {p0}, Lg/ccw;->m()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 12

    sget-object v0, Lg/eyg;->e:Lg/eyg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lg/ccw;->k:Lg/mh;

    invoke-virtual {v2, v1}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v3

    instance-of v4, v3, Lg/dhm;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lg/dhm;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    iget-object v4, p0, Lg/ccw;->h:Lg/fzg;

    iget v6, v4, Lg/fzg;->o:I

    const/16 v7, 0xc

    const/16 v8, 0x10

    if-eq v6, v7, :cond_2

    if-ne v6, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lg/bfj;

    iget v0, v4, Lg/fzg;->o:I

    invoke-static {v0}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v6, p0, Lg/ccw;->i:Lg/gqc;

    invoke-virtual {v4, v6}, Lg/fzg;->bl(Lg/gqc;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    if-nez v6, :cond_4

    iget v9, v4, Lg/fzg;->o:I

    if-ne v9, v7, :cond_3

    invoke-virtual {v4, v8}, Lg/fzg;->bg(I)V

    return-void

    :cond_3
    if-ne v9, v8, :cond_4

    iget v9, v4, Lg/fzg;->w:I

    sget-object v10, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v10, v10, Lg/cbj;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Lg/dhm;->f(Ljava/lang/String;)Lg/bgf;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object v9, v5

    :goto_2
    if-nez v9, :cond_7

    iget v9, v4, Lg/fzg;->w:I

    sget-object v10, Lg/cbj;->IgnoreNotMatch:Lg/cbj;

    iget v10, v10, Lg/cbj;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Lg/fzg;->bp()V

    invoke-virtual {p0, v5}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v4, Lg/fzg;->o:I

    if-ne v6, v7, :cond_2

    invoke-virtual {v4}, Lg/fzg;->az()V

    return-void

    :cond_6
    new-instance p1, Lg/bfj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setter not found, class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v6, v9, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/bnu;

    iget-object v10, v6, Lg/bnu;->b:Ljava/lang/Class;

    iget-object v6, v6, Lg/bnu;->a:Ljava/lang/reflect/Type;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_8

    invoke-virtual {v4}, Lg/fzg;->bp()V

    invoke-virtual {v0, p0, v6, v5}, Lg/eyg;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_8
    const-class v11, Ljava/lang/String;

    if-ne v10, v11, :cond_9

    invoke-virtual {v4}, Lg/fzg;->bp()V

    invoke-virtual {p0}, Lg/ccw;->q()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_a

    invoke-virtual {v4}, Lg/fzg;->bp()V

    invoke-virtual {v0, p0, v6, v5}, Lg/eyg;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v6, v10}, Lg/mh;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;

    move-result-object v10

    invoke-virtual {v4}, Lg/fzg;->bp()V

    invoke-interface {v10, p0, v6, v5}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_3
    invoke-virtual {v9, p1, v6}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v6, v4, Lg/fzg;->o:I

    if-ne v6, v8, :cond_b

    goto/16 :goto_1

    :cond_b
    if-ne v6, v7, :cond_2

    invoke-virtual {v4, v8}, Lg/fzg;->bg(I)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "parse number key error, "

    iget-object v4, v1, Lg/ccw;->k:Lg/mh;

    iget-object v5, v1, Lg/ccw;->h:Lg/fzg;

    iget v6, v5, Lg/fzg;->o:I

    iget v7, v5, Lg/fzg;->w:I

    iget v8, v5, Lg/fzg;->j:I

    iget-object v9, v5, Lg/fzg;->k:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-ne v6, v11, :cond_0

    invoke-virtual {v5}, Lg/fzg;->az()V

    return-object v10

    :cond_0
    const/16 v12, 0xc

    const/16 v13, 0x10

    if-eq v6, v12, :cond_2

    if-ne v6, v13, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syntax error, expect {, actual "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lg/fzg;->bb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    instance-of v6, v2, Lg/cof;

    if-eqz v6, :cond_3

    move-object v6, v2

    check-cast v6, Lg/cof;

    invoke-virtual {v6}, Lg/cof;->k()Ljava/util/Map;

    move-result-object v6

    move-object/from16 v17, v10

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    move-object v6, v10

    move-object/from16 v17, v6

    const/16 v16, 0x0

    :goto_1
    sget-object v10, Lg/cbj;->AllowISO8601DateFormat:Lg/cbj;

    iget v10, v10, Lg/cbj;->mask:I

    and-int/2addr v10, v7

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iget-boolean v11, v5, Lg/fzg;->v:Z

    iget-object v12, v1, Lg/ccw;->l:Lg/fpd;

    const/16 v18, 0x0

    :goto_3
    const/16 v19, 0x1

    :goto_4
    :try_start_0
    iget-char v15, v5, Lg/fzg;->l:C

    const/16 v13, 0x7d

    const/16 v14, 0x22

    if-eq v15, v14, :cond_5

    if-eq v15, v13, :cond_5

    invoke-virtual {v5}, Lg/fzg;->aj()V

    iget-char v15, v5, Lg/fzg;->l:C

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v22, v11

    goto/16 :goto_29

    :cond_5
    :goto_5
    const/16 v13, 0x2c

    if-ne v15, v13, :cond_6

    sget-object v13, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v13, v13, Lg/cbj;->mask:I

    and-int/2addr v13, v7

    if-eqz v13, :cond_6

    invoke-virtual {v5}, Lg/fzg;->ag()C

    invoke-virtual {v5}, Lg/fzg;->aj()V

    iget-char v15, v5, Lg/fzg;->l:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_6
    const-string v13, "expect \':\' at "

    iget-object v14, v1, Lg/ccw;->i:Lg/gqc;

    move/from16 v20, v7

    const-string v7, "syntax error, "

    move/from16 v21, v10

    const/16 v10, 0x22

    if-ne v15, v10, :cond_9

    :try_start_1
    invoke-virtual {v5, v14, v10}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object v15

    iget-char v10, v5, Lg/fzg;->l:C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v22, v11

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_8

    :try_start_2
    invoke-virtual {v5}, Lg/fzg;->aj()V

    iget-char v10, v5, Lg/fzg;->l:C

    if-ne v10, v11, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lg/fzg;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_29

    :cond_8
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_9
    move/from16 v22, v11

    const/16 v10, 0x7d

    if-ne v15, v10, :cond_b

    iget v0, v5, Lg/fzg;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lg/fzg;->n:I

    if-lt v0, v8, :cond_a

    const/16 v10, 0x1a

    goto :goto_7

    :cond_a
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_7
    iput-char v10, v5, Lg/fzg;->l:C

    const/4 v0, 0x0

    iput v0, v5, Lg/fzg;->x:I

    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lg/fzg;->bg(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v22, :cond_5f

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    return-object v2

    :cond_b
    const/16 v10, 0x27

    if-ne v15, v10, :cond_f

    :try_start_3
    sget-object v11, Lg/cbj;->AllowSingleQuotes:Lg/cbj;

    iget v11, v11, Lg/cbj;->mask:I

    and-int v11, v20, v11

    if-eqz v11, :cond_e

    invoke-virtual {v5, v14, v10}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object v15

    iget-char v10, v5, Lg/fzg;->l:C

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_c

    invoke-virtual {v5}, Lg/fzg;->aj()V

    :cond_c
    iget-char v10, v5, Lg/fzg;->l:C

    if-ne v10, v11, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lg/fzg;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/16 v10, 0x1a

    if-eq v15, v10, :cond_67

    const/16 v11, 0x2c

    if-eq v15, v11, :cond_66

    const/16 v11, 0x30

    if-lt v15, v11, :cond_10

    const/16 v11, 0x39

    if-le v15, v11, :cond_11

    :cond_10
    const/16 v11, 0x2d

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v11, 0x0

    goto :goto_a

    :goto_9
    if-ne v15, v11, :cond_15

    goto :goto_8

    :goto_a
    iput v11, v5, Lg/fzg;->x:I

    invoke-virtual {v5}, Lg/fzg;->bm()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v11, v5, Lg/fzg;->o:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_12

    invoke-virtual {v5}, Lg/fzg;->bf()Ljava/lang/Number;

    move-result-object v11

    goto :goto_b

    :cond_12
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lg/fzg;->bo(Z)Ljava/lang/Number;

    move-result-object v13

    move-object v11, v13

    :goto_b
    if-eqz v16, :cond_13

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_13
    move-object v15, v11

    :try_start_5
    iget-char v11, v5, Lg/fzg;->l:C

    const/16 v13, 0x3a

    if-ne v11, v13, :cond_14

    goto/16 :goto_6

    :cond_14
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v11, 0x7b

    if-eq v15, v11, :cond_19

    const/16 v11, 0x5b

    if-ne v15, v11, :cond_16

    goto :goto_c

    :cond_16
    sget-object v11, Lg/cbj;->AllowUnQuotedFieldNames:Lg/cbj;

    iget v11, v11, Lg/cbj;->mask:I

    and-int v11, v20, v11

    if-eqz v11, :cond_18

    invoke-virtual {v5, v14}, Lg/fzg;->at(Lg/gqc;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lg/fzg;->aj()V

    iget-char v11, v5, Lg/fzg;->l:C

    const/16 v10, 0x3a

    if-ne v11, v10, :cond_17

    if-eqz v16, :cond_8

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_6

    :cond_17
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lg/fzg;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_c
    invoke-virtual {v5}, Lg/fzg;->az()V

    invoke-virtual {v1}, Lg/ccw;->m()Ljava/lang/Object;

    move-result-object v15

    if-eqz v16, :cond_1a

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1a
    const/4 v10, 0x1

    :goto_d
    const/16 v11, 0xd

    if-nez v10, :cond_1f

    iget v10, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lg/fzg;->n:I

    if-lt v10, v8, :cond_1b

    const/16 v10, 0x1a

    goto :goto_e

    :cond_1b
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_e
    iput-char v10, v5, Lg/fzg;->l:C

    :goto_f
    const/16 v13, 0x20

    if-gt v10, v13, :cond_1d

    if-eq v10, v13, :cond_1c

    const/16 v13, 0xa

    if-eq v10, v13, :cond_1c

    if-eq v10, v11, :cond_1c

    const/16 v13, 0x9

    if-eq v10, v13, :cond_1c

    const/16 v13, 0xc

    if-eq v10, v13, :cond_1c

    const/16 v13, 0x8

    if-ne v10, v13, :cond_1e

    goto :goto_10

    :cond_1c
    const/16 v13, 0x8

    :goto_10
    invoke-virtual {v5}, Lg/fzg;->ag()C

    iget-char v10, v5, Lg/fzg;->l:C

    goto :goto_f

    :cond_1d
    const/16 v13, 0x8

    :cond_1e
    :goto_11
    const/4 v13, 0x0

    goto :goto_12

    :cond_1f
    const/16 v13, 0x8

    iget-char v10, v5, Lg/fzg;->l:C

    goto :goto_11

    :goto_12
    iput v13, v5, Lg/fzg;->x:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v13, "@type"

    if-ne v15, v13, :cond_2b

    :try_start_6
    sget-object v11, Lg/cbj;->DisableSpecialKeyDetect:Lg/cbj;

    invoke-virtual {v5, v11}, Lg/fzg;->an(Lg/cbj;)Z

    move-result v11

    if-nez v11, :cond_2b

    const/16 v11, 0x22

    invoke-virtual {v5, v14, v11}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lg/dtu;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    if-nez v10, :cond_20

    invoke-interface {v2, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v7, v20

    move/from16 v10, v21

    move/from16 v11, v22

    const/16 v13, 0x10

    goto/16 :goto_3

    :cond_20
    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Lg/fzg;->bg(I)V

    iget v6, v5, Lg/fzg;->o:I

    const/16 v8, 0xd

    if-ne v6, v8, :cond_26

    invoke-virtual {v5, v3}, Lg/fzg;->bg(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v4, v10}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v0

    instance-of v2, v0, Lg/dhm;

    if-eqz v2, :cond_21

    check-cast v0, Lg/dhm;

    invoke-virtual {v0, v1, v10}, Lg/dhm;->j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_15

    :cond_21
    move-object/from16 v0, v17

    :goto_13
    if-nez v0, :cond_24

    const-class v0, Ljava/lang/Cloneable;

    if-ne v10, v0, :cond_22

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_14

    :cond_22
    const-string v0, "java.util.Collections$EmptyMap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_14

    :cond_23
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_24
    :goto_14
    if-nez v22, :cond_25

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_25
    return-object v0

    :goto_15
    :try_start_8
    new-instance v2, Lg/bfj;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lg/bfj;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_26
    const/4 v13, 0x2

    iput v13, v1, Lg/ccw;->c:I

    iget-object v3, v1, Lg/ccw;->l:Lg/fpd;

    if-eqz v3, :cond_27

    instance-of v5, v0, Ljava/lang/Integer;

    if-nez v5, :cond_27

    iget-object v3, v3, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v3, Lg/fpd;

    iput-object v3, v1, Lg/ccw;->l:Lg/fpd;

    iget-object v3, v1, Lg/ccw;->b:[Lg/fpd;

    iget v5, v1, Lg/ccw;->a:I

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    aput-object v17, v3, v5

    iput v5, v1, Lg/ccw;->a:I

    :cond_27
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_29

    invoke-static {v2, v10, v4}, Lg/dtu;->j(Ljava/lang/Object;Ljava/lang/Class;Lg/mh;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/ccw;->r(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v22, :cond_28

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_28
    return-object v0

    :cond_29
    :try_start_9
    invoke-virtual {v4, v10}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v2

    invoke-interface {v2, v1, v10, v0}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v22, :cond_2a

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_2a
    return-object v0

    :cond_2b
    :try_start_a
    const-string v11, "$ref"

    const/4 v13, 0x4

    if-ne v15, v11, :cond_38

    sget-object v11, Lg/cbj;->DisableSpecialKeyDetect:Lg/cbj;

    invoke-virtual {v5, v11}, Lg/fzg;->an(Lg/cbj;)Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {v5, v13}, Lg/fzg;->bg(I)V

    iget v0, v5, Lg/fzg;->o:I

    if-ne v0, v13, :cond_37

    invoke-virtual {v5}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lg/fzg;->bg(I)V

    const-string v2, "@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v0, v1, Lg/ccw;->l:Lg/fpd;

    if-eqz v0, :cond_34

    iget-object v2, v0, Lg/fpd;->f:Ljava/lang/Object;

    instance-of v3, v2, [Ljava/lang/Object;

    if-nez v3, :cond_2e

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2c

    goto :goto_16

    :cond_2c
    iget-object v0, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    if-eqz v0, :cond_34

    iget-object v10, v0, Lg/fpd;->f:Ljava/lang/Object;

    goto :goto_19

    :cond_2d
    const-string v2, ".."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v12, Lg/fpd;->f:Ljava/lang/Object;

    if-eqz v2, :cond_2f

    :cond_2e
    :goto_16
    move-object v10, v2

    goto :goto_19

    :cond_2f
    new-instance v2, Lg/ggl;

    invoke-direct {v2, v12, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg/ccw;->z(Lg/ggl;)V

    const/4 v11, 0x1

    iput v11, v1, Lg/ccw;->c:I

    goto :goto_18

    :cond_30
    const-string v2, "$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v2, v12

    :goto_17
    iget-object v3, v2, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v3, Lg/fpd;

    if-eqz v3, :cond_31

    move-object v2, v3

    goto :goto_17

    :cond_31
    iget-object v3, v2, Lg/fpd;->f:Ljava/lang/Object;

    if-eqz v3, :cond_32

    move-object v10, v3

    goto :goto_19

    :cond_32
    new-instance v3, Lg/ggl;

    invoke-direct {v3, v2, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lg/ccw;->z(Lg/ggl;)V

    const/4 v11, 0x1

    iput v11, v1, Lg/ccw;->c:I

    goto :goto_18

    :cond_33
    new-instance v2, Lg/ggl;

    invoke-direct {v2, v12, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg/ccw;->z(Lg/ggl;)V

    const/4 v11, 0x1

    iput v11, v1, Lg/ccw;->c:I

    :cond_34
    :goto_18
    move-object/from16 v10, v17

    :goto_19
    iget v0, v5, Lg/fzg;->o:I

    const/16 v8, 0xd

    if-ne v0, v8, :cond_36

    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lg/fzg;->bg(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v22, :cond_35

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_35
    return-object v10

    :cond_36
    :try_start_b
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lg/fzg;->o:I

    invoke-static {v3}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    if-nez v22, :cond_3a

    if-nez v18, :cond_3a

    iget-object v11, v1, Lg/ccw;->l:Lg/fpd;

    invoke-virtual {v1, v11, v2, v0}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    move-result-object v11

    if-nez v12, :cond_39

    move-object v12, v11

    :cond_39
    const/16 v18, 0x1

    :cond_3a
    const/16 v11, 0x22

    if-ne v10, v11, :cond_3e

    invoke-virtual {v5}, Lg/fzg;->ae()Ljava/lang/String;

    move-result-object v10

    if-eqz v21, :cond_3c

    new-instance v11, Lg/fzg;

    invoke-direct {v11, v10}, Lg/fzg;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lg/fzg;->am(Z)Z

    move-result v14

    if-eqz v14, :cond_3b

    iget-object v10, v11, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    :cond_3b
    invoke-virtual {v11}, Lg/fzg;->aw()V

    :cond_3c
    if-eqz v6, :cond_3d

    invoke-interface {v6, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    :cond_3d
    invoke-interface {v2, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    :cond_3e
    const/16 v11, 0x30

    if-lt v10, v11, :cond_3f

    const/16 v11, 0x39

    if-le v10, v11, :cond_40

    :cond_3f
    const/16 v11, 0x2d

    if-ne v10, v11, :cond_41

    :cond_40
    invoke-virtual {v5}, Lg/fzg;->bi()Ljava/lang/Number;

    move-result-object v10

    invoke-interface {v2, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    :cond_41
    const/16 v11, 0x5b

    if-ne v10, v11, :cond_46

    const/16 v10, 0xe

    iput v10, v5, Lg/fzg;->o:I

    iget v10, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lg/fzg;->n:I

    if-lt v10, v8, :cond_42

    const/16 v10, 0x1a

    goto :goto_1a

    :cond_42
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_1a
    iput-char v10, v5, Lg/fzg;->l:C

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v10, v15}, Lg/ccw;->u(Ljava/util/Collection;Ljava/lang/Object;)V

    new-instance v11, Lg/grv;

    invoke-direct {v11, v10}, Lg/grv;-><init>(Ljava/util/ArrayList;)V

    if-eqz v6, :cond_43

    invoke-interface {v6, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_43
    invoke-interface {v2, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    iget v10, v5, Lg/fzg;->o:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_44

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Lg/fzg;->bg(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v22, :cond_5f

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    return-object v2

    :cond_44
    const/16 v11, 0x10

    if-ne v10, v11, :cond_45

    :goto_1c
    const/4 v13, 0x0

    const/16 v19, 0x1

    goto/16 :goto_28

    :cond_45
    :try_start_c
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/16 v11, 0x7b

    if-ne v10, v11, :cond_51

    iget v10, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lg/fzg;->n:I

    if-lt v10, v8, :cond_47

    const/16 v10, 0x1a

    goto :goto_1d

    :cond_47
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_1d
    iput-char v10, v5, Lg/fzg;->l:C

    const/16 v11, 0xc

    iput v11, v5, Lg/fzg;->o:I

    instance-of v10, v0, Ljava/lang/Integer;

    sget-object v13, Lg/cbj;->OrderedField:Lg/cbj;

    iget v13, v13, Lg/cbj;->mask:I

    and-int v13, v20, v13

    if-eqz v13, :cond_48

    new-instance v13, Lg/cof;

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v13, v14}, Lg/cof;-><init>(Ljava/util/Map;)V

    goto :goto_1e

    :cond_48
    new-instance v13, Lg/cof;

    invoke-direct {v13}, Lg/cof;-><init>()V

    :goto_1e
    if-nez v22, :cond_49

    if-nez v10, :cond_49

    invoke-virtual {v1, v12, v13, v15}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    move-result-object v14

    goto :goto_1f

    :cond_49
    move-object/from16 v14, v17

    :goto_1f
    invoke-virtual {v1, v15, v13}, Lg/ccw;->s(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v14, :cond_4a

    if-eq v13, v11, :cond_4a

    iput-object v2, v14, Lg/fpd;->f:Ljava/lang/Object;

    :cond_4a
    iget v13, v1, Lg/ccw;->c:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4b

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13, v2}, Lg/ccw;->o(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_4b
    if-eqz v6, :cond_4c

    invoke-interface {v6, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_4c
    invoke-interface {v2, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    if-eqz v10, :cond_4d

    invoke-virtual {v1, v12, v11, v15}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    :cond_4d
    iget v10, v5, Lg/fzg;->o:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_4f

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Lg/fzg;->bg(I)V

    if-nez v22, :cond_4e

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_4e
    if-nez v22, :cond_5f

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    return-object v2

    :cond_4f
    const/16 v11, 0x10

    if-ne v10, v11, :cond_50

    goto/16 :goto_1c

    :cond_50
    :try_start_d
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/16 v11, 0x74

    if-ne v10, v11, :cond_52

    const-string v10, "true"

    iget v11, v5, Lg/fzg;->n:I

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_53

    iget v10, v5, Lg/fzg;->n:I

    add-int/lit8 v10, v10, 0x3

    iput v10, v5, Lg/fzg;->n:I

    invoke-virtual {v5}, Lg/fzg;->ag()C

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_52
    const/16 v11, 0x66

    if-ne v10, v11, :cond_61

    const-string v10, "false"

    iget v11, v5, Lg/fzg;->n:I

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_53

    iget v10, v5, Lg/fzg;->n:I

    add-int/2addr v10, v13

    iput v10, v5, Lg/fzg;->n:I

    invoke-virtual {v5}, Lg/fzg;->ag()C

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_21
    iget-char v10, v5, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_54

    const/16 v11, 0x7d

    if-eq v10, v11, :cond_54

    invoke-virtual {v5}, Lg/fzg;->aj()V

    iget-char v10, v5, Lg/fzg;->l:C

    :cond_54
    const/16 v11, 0x2c

    if-ne v10, v11, :cond_56

    iget v7, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lg/fzg;->n:I

    if-lt v7, v8, :cond_55

    const/16 v10, 0x1a

    goto :goto_22

    :cond_55
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_22
    iput-char v10, v5, Lg/fzg;->l:C

    const/16 v11, 0x10

    goto/16 :goto_1c

    :cond_56
    const/16 v11, 0x7d

    if-ne v10, v11, :cond_60

    iget v3, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lg/fzg;->n:I

    if-lt v3, v8, :cond_57

    const/16 v3, 0x1a

    goto :goto_23

    :cond_57
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_23
    iput-char v3, v5, Lg/fzg;->l:C

    const/4 v13, 0x0

    iput v13, v5, Lg/fzg;->x:I

    const/16 v11, 0x2c

    if-ne v3, v11, :cond_59

    iget v3, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lg/fzg;->n:I

    if-lt v3, v8, :cond_58

    const/16 v10, 0x1a

    goto :goto_24

    :cond_58
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_24
    iput-char v10, v5, Lg/fzg;->l:C

    const/16 v11, 0x10

    iput v11, v5, Lg/fzg;->o:I

    goto :goto_27

    :cond_59
    const/16 v11, 0x7d

    if-ne v3, v11, :cond_5b

    iget v3, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lg/fzg;->n:I

    if-lt v3, v8, :cond_5a

    const/16 v10, 0x1a

    goto :goto_25

    :cond_5a
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_25
    iput-char v10, v5, Lg/fzg;->l:C

    const/16 v8, 0xd

    iput v8, v5, Lg/fzg;->o:I

    goto :goto_27

    :cond_5b
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_5d

    iget v3, v5, Lg/fzg;->n:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lg/fzg;->n:I

    if-lt v3, v8, :cond_5c

    const/16 v10, 0x1a

    goto :goto_26

    :cond_5c
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_26
    iput-char v10, v5, Lg/fzg;->l:C

    const/16 v3, 0xf

    iput v3, v5, Lg/fzg;->o:I

    goto :goto_27

    :cond_5d
    invoke-virtual {v5}, Lg/fzg;->az()V

    :goto_27
    if-nez v22, :cond_5e

    iget-object v3, v1, Lg/ccw;->l:Lg/fpd;

    invoke-virtual {v1, v3, v2, v0}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_5e
    if-nez v22, :cond_5f

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_5f
    return-object v2

    :cond_60
    :try_start_e
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    const/4 v13, 0x0

    const/16 v19, 0x1

    invoke-virtual {v5}, Lg/fzg;->az()V

    invoke-virtual {v1}, Lg/ccw;->m()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v14, Lg/cof;

    if-ne v11, v14, :cond_62

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_62
    invoke-interface {v2, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v5, Lg/fzg;->o:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_64

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Lg/fzg;->bg(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-nez v22, :cond_63

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_63
    return-object v2

    :cond_64
    const/16 v11, 0x10

    if-ne v10, v11, :cond_65

    :goto_28
    move/from16 v7, v20

    move/from16 v10, v21

    move/from16 v11, v22

    const/16 v13, 0x10

    goto/16 :goto_4

    :cond_65
    :try_start_f
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/bfj;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_29
    if-nez v22, :cond_68

    iput-object v12, v1, Lg/ccw;->l:Lg/fpd;

    :cond_68
    throw v0
.end method

.method public final t()Lg/ggl;
    .locals 2

    iget-object v0, p0, Lg/ccw;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggl;

    return-object v0
.end method

.method public final u(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lg/ccw;->h:Lg/fzg;

    iget v3, v2, Lg/fzg;->o:I

    iget-object v4, v2, Lg/fzg;->k:Ljava/lang/String;

    iget v5, v2, Lg/fzg;->j:I

    const/16 v6, 0x15

    if-eq v3, v6, :cond_0

    const/16 v6, 0x16

    if-ne v3, v6, :cond_1

    :cond_0
    invoke-virtual {v2}, Lg/fzg;->az()V

    iget v3, v2, Lg/fzg;->o:I

    :cond_1
    const/16 v6, 0xe

    if-ne v3, v6, :cond_28

    iget-boolean v3, v2, Lg/fzg;->v:Z

    iget-object v7, v1, Lg/ccw;->l:Lg/fpd;

    if-nez v3, :cond_2

    move-object/from16 v8, p2

    invoke-virtual {v1, v7, v0, v8}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    :cond_2
    :try_start_0
    iget-char v8, v2, Lg/fzg;->l:C

    const/16 v9, 0x7b

    const/16 v10, 0x5d

    const/4 v11, 0x4

    const/16 v12, 0xc

    const/16 v15, 0x22

    const/16 v13, 0x10

    const/4 v14, 0x1

    if-eq v8, v15, :cond_6

    if-ne v8, v10, :cond_3

    invoke-virtual {v2}, Lg/fzg;->ag()C

    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_14

    iput-object v7, v1, Lg/ccw;->l:Lg/fpd;

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_3
    if-ne v8, v9, :cond_5

    :try_start_1
    iget v8, v2, Lg/fzg;->n:I

    add-int/2addr v8, v14

    iput v8, v2, Lg/fzg;->n:I

    if-lt v8, v5, :cond_4

    const/16 v8, 0x1a

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_0
    iput-char v8, v2, Lg/fzg;->l:C

    iput v12, v2, Lg/fzg;->o:I

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v12}, Lg/fzg;->bg(I)V

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    iget v8, v2, Lg/fzg;->w:I

    sget-object v9, Lg/cbj;->AllowISO8601DateFormat:Lg/cbj;

    iget v9, v9, Lg/cbj;->mask:I

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v11}, Lg/fzg;->bg(I)V

    goto :goto_1

    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v8, :cond_10

    iget-char v6, v2, Lg/fzg;->l:C

    if-ne v6, v15, :cond_10

    invoke-virtual {v2}, Lg/fzg;->ae()Ljava/lang/String;

    move-result-object v6

    iget-char v12, v2, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v12, v11, :cond_c

    iget v11, v2, Lg/fzg;->n:I

    add-int/2addr v11, v14

    iput v11, v2, Lg/fzg;->n:I

    if-lt v11, v5, :cond_8

    const/16 v11, 0x1a

    goto :goto_4

    :cond_8
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_4
    iput-char v11, v2, Lg/fzg;->l:C

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v6, v1, Lg/ccw;->c:I

    if-ne v6, v14, :cond_9

    invoke-virtual/range {p0 .. p1}, Lg/ccw;->n(Ljava/util/Collection;)V

    :cond_9
    if-ne v11, v15, :cond_b

    const/4 v10, 0x0

    const/16 v11, 0xe

    :cond_a
    :goto_5
    const/16 v12, 0x7b

    goto/16 :goto_f

    :cond_b
    invoke-virtual {v2}, Lg/fzg;->az()V

    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    if-ne v12, v10, :cond_f

    iget v8, v2, Lg/fzg;->n:I

    add-int/2addr v8, v14

    iput v8, v2, Lg/fzg;->n:I

    if-lt v8, v5, :cond_d

    const/16 v4, 0x1a

    goto :goto_6

    :cond_d
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    iput-char v4, v2, Lg/fzg;->l:C

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v4, v1, Lg/ccw;->c:I

    if-ne v4, v14, :cond_e

    invoke-virtual/range {p0 .. p1}, Lg/ccw;->n(Ljava/util/Collection;)V

    :cond_e
    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_14

    iput-object v7, v1, Lg/ccw;->l:Lg/fpd;

    return-void

    :cond_f
    :try_start_2
    invoke-virtual {v2}, Lg/fzg;->az()V

    :cond_10
    :goto_7
    iget v6, v2, Lg/fzg;->o:I

    :goto_8
    if-ne v6, v13, :cond_11

    iget v11, v2, Lg/fzg;->w:I

    sget-object v12, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v12, v12, Lg/cbj;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_11

    invoke-virtual {v2}, Lg/fzg;->az()V

    iget v6, v2, Lg/fzg;->o:I

    goto :goto_8

    :cond_11
    const/4 v11, 0x2

    if-eq v6, v11, :cond_21

    const/4 v11, 0x3

    if-eq v6, v11, :cond_1f

    const/4 v11, 0x4

    if-eq v6, v11, :cond_1d

    const/4 v11, 0x6

    if-eq v6, v11, :cond_1c

    const/4 v11, 0x7

    if-eq v6, v11, :cond_1b

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eq v6, v11, :cond_1a

    const/16 v11, 0xc

    if-eq v6, v11, :cond_18

    const/16 v11, 0x14

    if-eq v6, v11, :cond_17

    const/16 v11, 0x17

    if-eq v6, v11, :cond_16

    const/16 v11, 0xe

    if-eq v6, v11, :cond_15

    const/16 v10, 0xf

    if-eq v6, v10, :cond_13

    invoke-virtual {v1, v12}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :cond_12
    :goto_9
    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_13
    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_14

    iput-object v7, v1, Lg/ccw;->l:Lg/fpd;

    :cond_14
    return-void

    :cond_15
    :try_start_3
    new-instance v12, Lg/grv;

    invoke-direct {v12}, Lg/grv;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v12, v6}, Lg/ccw;->u(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_9

    :cond_16
    const/4 v6, 0x4

    const/16 v11, 0xe

    invoke-virtual {v2, v6}, Lg/fzg;->bg(I)V

    goto :goto_9

    :cond_17
    new-instance v0, Lg/bfj;

    const-string v2, "unclosed jsonArray"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/16 v11, 0xe

    iget v6, v2, Lg/fzg;->w:I

    sget-object v10, Lg/cbj;->OrderedField:Lg/cbj;

    iget v10, v10, Lg/cbj;->mask:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_19

    new-instance v6, Lg/cof;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v6, v10}, Lg/cof;-><init>(Ljava/util/Map;)V

    goto :goto_a

    :cond_19
    new-instance v6, Lg/cof;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lg/cof;-><init>(Z)V

    :goto_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v6}, Lg/ccw;->s(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_9

    :cond_1a
    const/4 v6, 0x4

    const/16 v11, 0xe

    invoke-virtual {v2, v6}, Lg/fzg;->bg(I)V

    goto :goto_9

    :cond_1b
    const/4 v6, 0x4

    const/16 v11, 0xe

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V

    goto :goto_9

    :cond_1c
    const/4 v6, 0x4

    const/16 v11, 0xe

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V

    goto :goto_9

    :cond_1d
    const/4 v6, 0x4

    const/16 v11, 0xe

    invoke-virtual {v2}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V

    iget v10, v2, Lg/fzg;->w:I

    sget-object v6, Lg/cbj;->AllowISO8601DateFormat:Lg/cbj;

    iget v6, v6, Lg/cbj;->mask:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_12

    new-instance v6, Lg/fzg;

    invoke-direct {v6, v12}, Lg/fzg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Lg/fzg;->am(Z)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, v6, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    move-object v12, v10

    :cond_1e
    invoke-virtual {v6}, Lg/fzg;->aw()V

    goto/16 :goto_9

    :cond_1f
    const/16 v11, 0xe

    iget v6, v2, Lg/fzg;->w:I

    sget-object v10, Lg/cbj;->UseBigDecimal:Lg/cbj;

    iget v10, v10, Lg/cbj;->mask:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_20

    invoke-virtual {v2, v14}, Lg/fzg;->bo(Z)Ljava/lang/Number;

    move-result-object v6

    const/4 v10, 0x0

    :goto_b
    move-object v12, v6

    goto :goto_c

    :cond_20
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lg/fzg;->bo(Z)Ljava/lang/Number;

    move-result-object v6

    goto :goto_b

    :goto_c
    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V

    goto :goto_d

    :cond_21
    const/4 v10, 0x0

    const/16 v11, 0xe

    invoke-virtual {v2}, Lg/fzg;->bf()Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v2, v13}, Lg/fzg;->bg(I)V

    :goto_d
    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v6, v1, Lg/ccw;->c:I

    if-ne v6, v14, :cond_22

    invoke-virtual/range {p0 .. p1}, Lg/ccw;->n(Ljava/util/Collection;)V

    :cond_22
    iget v6, v2, Lg/fzg;->o:I

    if-ne v6, v13, :cond_a

    iget-char v6, v2, Lg/fzg;->l:C

    if-ne v6, v15, :cond_23

    iget v6, v2, Lg/fzg;->n:I

    iput v6, v2, Lg/fzg;->t:I

    invoke-virtual {v2}, Lg/fzg;->ak()V

    goto/16 :goto_5

    :cond_23
    const/16 v12, 0x30

    if-lt v6, v12, :cond_24

    const/16 v12, 0x39

    if-gt v6, v12, :cond_24

    iget v6, v2, Lg/fzg;->n:I

    iput v6, v2, Lg/fzg;->t:I

    invoke-virtual {v2}, Lg/fzg;->bm()V

    goto/16 :goto_5

    :cond_24
    const/16 v12, 0x7b

    if-ne v6, v12, :cond_26

    const/16 v6, 0xc

    iput v6, v2, Lg/fzg;->o:I

    iget v6, v2, Lg/fzg;->n:I

    add-int/2addr v6, v14

    iput v6, v2, Lg/fzg;->n:I

    if-lt v6, v5, :cond_25

    const/16 v6, 0x1a

    goto :goto_e

    :cond_25
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_e
    iput-char v6, v2, Lg/fzg;->l:C

    goto :goto_f

    :cond_26
    invoke-virtual {v2}, Lg/fzg;->az()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_f
    add-int/lit8 v9, v9, 0x1

    const/16 v6, 0xe

    const/16 v10, 0x5d

    const/4 v11, 0x4

    const/16 v12, 0xc

    goto/16 :goto_3

    :goto_10
    if-nez v3, :cond_27

    iput-object v7, v1, Lg/ccw;->l:Lg/fpd;

    :cond_27
    throw v0

    :cond_28
    new-instance v0, Lg/bfj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syntax error, expect [, actual "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pos "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lg/fzg;->t:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v(Lg/fpd;)V
    .locals 1

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget-boolean v0, v0, Lg/fzg;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg/ccw;->l:Lg/fpd;

    return-void
.end method

.method public final w(I)V
    .locals 4

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget v1, v0, Lg/fzg;->o:I

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lg/fzg;->az()V

    return-void

    :cond_0
    new-instance v1, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syntax error, expect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actual "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lg/fzg;->o:I

    invoke-static {p1}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget v1, v0, Lg/fzg;->o:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    const/16 v6, 0x10

    if-eq v1, v3, :cond_5

    const/16 v3, 0xc

    if-eq v1, v3, :cond_3

    const/16 v3, 0xe

    if-eq v1, v3, :cond_2

    const/4 v3, 0x0

    const-string v4, "syntax error, "

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance p1, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {v0}, Lg/fzg;->az()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lg/ccw;->u(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    invoke-virtual {v0}, Lg/fzg;->az()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lg/ccw;->u(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    invoke-virtual {v0}, Lg/fzg;->ad()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v3

    :cond_0
    new-instance p1, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Lg/fzg;->bg(I)V

    iget v1, v0, Lg/fzg;->o:I

    if-ne v1, p1, :cond_1

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Lg/fzg;->bg(I)V

    invoke-virtual {p0, p1}, Lg/ccw;->w(I)V

    invoke-virtual {v0}, Lg/fzg;->bf()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2}, Lg/ccw;->w(I)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lg/ccw;->w(I)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :cond_1
    new-instance p1, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    invoke-virtual {v0}, Lg/fzg;->az()V

    return-object v3

    :pswitch_5
    invoke-virtual {v0, v6}, Lg/fzg;->bg(I)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_6
    invoke-virtual {v0, v6}, Lg/fzg;->bg(I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    new-instance v0, Lg/grv;

    invoke-direct {v0}, Lg/grv;-><init>()V

    invoke-virtual {p0, v0, p1}, Lg/ccw;->u(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    iget v0, v0, Lg/fzg;->w:I

    sget-object v1, Lg/cbj;->OrderedField:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lg/cof;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lg/cof;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lg/cof;

    invoke-direct {v0, v4}, Lg/cof;-><init>(Z)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lg/ccw;->s(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6}, Lg/fzg;->bg(I)V

    iget v0, v0, Lg/fzg;->w:I

    sget-object v1, Lg/cbj;->AllowISO8601DateFormat:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    new-instance v0, Lg/fzg;

    invoke-direct {v0, p1}, Lg/fzg;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v5}, Lg/fzg;->am(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, v0, Lg/fzg;->m:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/fzg;->aw()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lg/fzg;->aw()V

    return-object p1

    :goto_1
    invoke-virtual {v0}, Lg/fzg;->aw()V

    throw p1

    :cond_7
    return-object p1

    :cond_8
    iget p1, v0, Lg/fzg;->w:I

    sget-object v1, Lg/cbj;->UseBigDecimal:Lg/cbj;

    iget v1, v1, Lg/cbj;->mask:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    :cond_9
    invoke-virtual {v0, v4}, Lg/fzg;->bo(Z)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {v0}, Lg/fzg;->az()V

    return-object p1

    :cond_a
    invoke-virtual {v0}, Lg/fzg;->bf()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {v0}, Lg/fzg;->az()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;
    .locals 6

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget-boolean v0, v0, Lg/fzg;->v:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lg/fpd;

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IB)V

    iput-object v0, p0, Lg/ccw;->l:Lg/fpd;

    iget p1, p0, Lg/ccw;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lg/ccw;->a:I

    iget-object p2, p0, Lg/ccw;->b:[Lg/fpd;

    if-nez p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [Lg/fpd;

    iput-object p2, p0, Lg/ccw;->b:[Lg/fpd;

    goto :goto_0

    :cond_1
    array-length p3, p2

    if-lt p1, p3, :cond_2

    array-length p3, p2

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x2

    new-array p3, p3, [Lg/fpd;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lg/ccw;->b:[Lg/fpd;

    :cond_2
    :goto_0
    iget-object p2, p0, Lg/ccw;->b:[Lg/fpd;

    iget-object p3, p0, Lg/ccw;->l:Lg/fpd;

    aput-object p3, p2, p1

    return-object p3
.end method

.method public final z(Lg/ggl;)V
    .locals 2

    iget-object v0, p0, Lg/ccw;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/ccw;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lg/ccw;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.class public final Lg/cig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cgt;


# instance fields
.field public final g:Lg/dsg;

.field public final h:Lg/ctw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cig;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/dsg;Lg/ctw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cig;->g:Lg/dsg;

    iput-object p2, p0, Lg/cig;->h:Lg/ctw;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v1, v0}, Lg/dsg;->j(I)V

    iget-object v0, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/bux;Lg/bux;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lg/cig;->h:Lg/ctw;

    iget-object v1, v7, Lg/ctw;->f:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lg/dsg;

    const/16 v1, 0x18

    iget-object v2, v0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v2, v1}, Lg/dsg;->j(I)V

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v3, Lg/dsg;

    iget-object v4, v2, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v4, Lg/eyc;

    invoke-direct {v3, v4, v1}, Lg/dsg;-><init>(Lg/eyc;I)V

    invoke-static {v3}, Lg/byh;->u(Lg/dsg;)I

    move-result v4

    invoke-static {v3}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    invoke-static {v3}, Lg/byh;->u(Lg/dsg;)I

    move-result v10

    invoke-static {v3}, Lg/byh;->u(Lg/dsg;)I

    move-result v11

    add-int v1, v4, v9

    move-object/from16 v5, p1

    invoke-virtual {v5, v1}, Lg/bux;->c(I)V

    add-int v1, v10, v11

    move-object/from16 v12, p2

    invoke-virtual {v12, v1}, Lg/bux;->c(I)V

    const/16 v1, 0x14

    invoke-virtual {v2, v1}, Lg/dsg;->j(I)V

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v7, v1}, Lg/ctw;->n(I)V

    iget v1, v7, Lg/ctw;->h:I

    const/16 v14, 0x10

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    move-object v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v8, v14}, Lg/dsg;->j(I)V

    iget-object v1, v8, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/util/HashMap;

    iget v6, v7, Lg/ctw;->h:I

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    iget v15, v7, Lg/ctw;->h:I

    if-ge v6, v15, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :goto_2
    new-instance v3, Lg/flq;

    invoke-direct {v3, v7}, Lg/flq;-><init>(Lg/ctw;)V

    invoke-virtual {v0}, Lg/cig;->getType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lg/flq;->g:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v6}, Lg/cig;->j(Lg/bux;Lg/dsg;Lg/flq;ILjava/util/Map;Z)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v0 .. v6}, Lg/cig;->j(Lg/bux;Lg/dsg;Lg/flq;ILjava/util/Map;Z)V

    new-instance v3, Lg/glj;

    invoke-direct {v3, v7}, Lg/glj;-><init>(Lg/ctw;)V

    new-instance v0, Lg/esi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lg/glj;->h:Lg/esi;

    iget v0, v7, Lg/ctw;->c:I

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v5, v0

    goto :goto_4

    :cond_3
    iget v0, v7, Lg/ctw;->h:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v14

    invoke-virtual {v8, v0}, Lg/dsg;->j(I)V

    iget-object v0, v8, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/HashMap;

    iget v4, v7, Lg/ctw;->c:I

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_3
    iget v5, v7, Lg/ctw;->c:I

    if-ge v4, v5, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_4
    iget v0, v7, Lg/ctw;->d:I

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v6, v0

    move v4, v10

    move-object v1, v12

    move-object/from16 v0, p0

    goto :goto_6

    :cond_5
    iget v0, v7, Lg/ctw;->h:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v14

    iget v1, v7, Lg/ctw;->c:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    invoke-virtual {v8, v1}, Lg/dsg;->j(I)V

    iget-object v0, v8, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/HashMap;

    iget v4, v7, Lg/ctw;->d:I

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v13, 0x0

    :goto_5
    iget v4, v7, Lg/ctw;->d:I

    if-ge v13, v4, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    move-object v6, v1

    move-object/from16 v0, p0

    move v4, v10

    move-object v1, v12

    :goto_6
    invoke-virtual/range {v0 .. v6}, Lg/cig;->i(Lg/bux;Lg/dsg;Lg/glj;ILjava/util/Map;Ljava/util/Map;)V

    move v4, v11

    invoke-virtual/range {v0 .. v6}, Lg/cig;->i(Lg/bux;Lg/dsg;Lg/glj;ILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final c()I
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v1, v0}, Lg/dsg;->j(I)V

    iget-object v0, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 3

    const/16 v0, 0xc

    iget-object v1, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v1, v0}, Lg/dsg;->j(I)V

    iget-object v0, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Lg/dsg;->w()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lg/cgt;
    .locals 5

    new-instance v0, Lg/cig;

    iget-object v1, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v1}, Lg/dsg;->u()Lg/dsg;

    move-result-object v1

    new-instance v2, Lg/ctw;

    iget-object v3, p0, Lg/cig;->h:Lg/ctw;

    iget-object v4, v3, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v4, Lg/dsg;

    invoke-virtual {v4}, Lg/dsg;->u()Lg/dsg;

    move-result-object v4

    iget-object v3, v3, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v3, Lg/dsg;

    invoke-virtual {v3}, Lg/dsg;->u()Lg/dsg;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lg/ctw;-><init>(Lg/dsg;Lg/dsg;)V

    invoke-direct {v0, v1, v2}, Lg/cig;-><init>(Lg/dsg;Lg/ctw;)V

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cig;->g:Lg/dsg;

    iget-object v0, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v0, Lg/eyc;

    iget-object v0, v0, Lg/eyc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x10

    iget-object v2, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v2, v1}, Lg/dsg;->j(I)V

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lg/dsg;->z(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lg/arg;

    invoke-direct {v3, v1}, Lg/arg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lg/cig;->getType()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lg/dsg;->j(I)V

    iget-object v2, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iget-object v3, p0, Lg/cig;->h:Lg/ctw;

    invoke-virtual {v3, v2}, Lg/ctw;->n(I)V

    iget v2, v3, Lg/ctw;->g:I

    if-nez v2, :cond_1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v4, Lg/dsg;

    iget-object v4, v4, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lg/ctw;->t(I)Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {v1, v0, v2}, Lg/lt;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v1, v0}, Lg/dsg;->j(I)V

    iget-object v0, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unknown class type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Lg/bux;Lg/dsg;Lg/glj;ILjava/util/Map;Ljava/util/Map;)V
    .locals 13

    move-object/from16 v0, p3

    new-instance v1, Lg/gqc;

    iget-object v2, p0, Lg/cig;->g:Lg/dsg;

    invoke-virtual {v2}, Lg/dsg;->u()Lg/dsg;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v1, v4, v3}, Lg/gqc;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    move/from16 v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-static {p2}, Lg/byh;->u(Lg/dsg;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {p2}, Lg/byh;->u(Lg/dsg;)I

    move-result v7

    invoke-static {p2}, Lg/byh;->u(Lg/dsg;)I

    move-result v8

    iget-object v9, v0, Lg/glj;->h:Lg/esi;

    const/4 v10, 0x0

    iput-object v10, v9, Lg/esi;->g:Ljava/lang/String;

    iput-object v10, v9, Lg/esi;->h:Ljava/lang/String;

    iput-object v10, v9, Lg/esi;->c:Ljava/lang/String;

    iput-object v10, v9, Lg/esi;->d:Ljava/util/List;

    iget-object v11, v2, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v11, Lg/eyc;

    iget v11, v11, Lg/eyc;->b:I

    const v12, 0xffff

    and-int/2addr v11, v12

    shl-int/lit8 v11, v11, 0x10

    and-int/2addr v12, v6

    or-int/2addr v11, v12

    iput v11, v9, Lg/esi;->e:I

    iput v6, v9, Lg/esi;->f:I

    iput-object v2, v9, Lg/esi;->i:Lg/dsg;

    iput v7, v0, Lg/glj;->i:I

    if-nez v8, :cond_0

    iput-object v10, v0, Lg/glj;->g:Lg/gqc;

    goto :goto_1

    :cond_0
    iput v6, v1, Lg/gqc;->ab:I

    iget-object v7, v1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v7, Lg/dsg;

    iput v8, v7, Lg/dsg;->d:I

    iput-object v1, v0, Lg/glj;->g:Lg/gqc;

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, p5

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    iput v7, v0, Lg/glj;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v9, p6

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    iput v7, v0, Lg/glj;->e:I

    invoke-virtual {p1, v0}, Lg/bux;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final j(Lg/bux;Lg/dsg;Lg/flq;ILjava/util/Map;Z)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lg/cig;->g:Lg/dsg;

    if-eqz p6, :cond_1

    invoke-virtual {p2}, Lg/dsg;->u()Lg/dsg;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lg/dsg;->j(I)V

    iget-object v3, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Lg/dsg;->m(I)V

    iget-object v3, p0, Lg/cig;->h:Lg/ctw;

    iget-object v3, v3, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v3, Lg/dsg;

    invoke-static {v2, v3}, Lg/fso;->j(Lg/dsg;Lg/dsg;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, p4, :cond_4

    invoke-static {p2}, Lg/byh;->u(Lg/dsg;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p2}, Lg/byh;->u(Lg/dsg;)I

    move-result v6

    invoke-virtual {v1, p3, v5}, Lg/dsg;->l(Lg/flq;I)I

    iput v6, p3, Lg/flq;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iput v6, p3, Lg/flq;->f:I

    if-eqz p6, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ghr;

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    iput-object v6, p3, Lg/flq;->i:Lg/ghr;

    invoke-virtual {p1, p3}, Lg/bux;->accept(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/cig;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

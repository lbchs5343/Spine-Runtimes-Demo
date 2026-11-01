.class public final Lg/xq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cma;


# static fields
.field public static final a:Lg/xq;

.field public static final b:Lg/xq;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/xq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/xq;-><init>(I)V

    sput-object v0, Lg/xq;->a:Lg/xq;

    new-instance v0, Lg/xq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/xq;-><init>(I)V

    sput-object v0, Lg/xq;->b:Lg/xq;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/xq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)Ljava/util/Map;
    .locals 12

    iget-object v0, p3, Lg/ccw;->h:Lg/fzg;

    iget-object v1, p3, Lg/ccw;->k:Lg/mh;

    iget-object v2, p3, Lg/ccw;->i:Lg/gqc;

    iget v3, v0, Lg/fzg;->o:I

    iget v4, v0, Lg/fzg;->w:I

    const/16 v5, 0xc

    if-ne v3, v5, :cond_11

    iget-object v3, p3, Lg/ccw;->l:Lg/fpd;

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lg/fzg;->aj()V

    iget-char v5, v0, Lg/fzg;->l:C

    sget-object v6, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v6, v6, Lg/cbj;->mask:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_1

    :goto_0
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lg/fzg;->ag()C

    invoke-virtual {v0}, Lg/fzg;->aj()V

    iget-char v5, v0, Lg/fzg;->l:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const/4 v6, 0x0

    const-string v7, "syntax error, "

    const/16 v8, 0x3a

    const/16 v9, 0x22

    const/16 v10, 0x10

    if-ne v5, v9, :cond_3

    :try_start_1
    invoke-virtual {v0, v2, v9}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lg/fzg;->aj()V

    iget-char v11, v0, Lg/fzg;->l:C

    if-ne v11, v8, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance p0, Lg/bfj;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 v11, 0x7d

    if-ne v5, v11, :cond_4

    invoke-virtual {v0}, Lg/fzg;->ag()C

    iput v6, v0, Lg/fzg;->x:I

    invoke-virtual {v0, v10}, Lg/fzg;->bg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    return-object p2

    :cond_4
    const/16 v11, 0x27

    if-ne v5, v11, :cond_7

    :try_start_2
    sget-object v5, Lg/cbj;->AllowSingleQuotes:Lg/cbj;

    iget v5, v5, Lg/cbj;->mask:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_6

    invoke-virtual {v0, v2, v11}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lg/fzg;->aj()V

    iget-char v11, v0, Lg/fzg;->l:C

    if-ne v11, v8, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lg/bfj;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lg/bfj;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object v5, Lg/cbj;->AllowUnQuotedFieldNames:Lg/cbj;

    iget v5, v5, Lg/cbj;->mask:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_10

    invoke-virtual {v0, v2}, Lg/fzg;->at(Lg/gqc;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lg/fzg;->aj()V

    iget-char v7, v0, Lg/fzg;->l:C

    if-ne v7, v8, :cond_f

    :goto_1
    invoke-virtual {v0}, Lg/fzg;->ag()C

    invoke-virtual {v0}, Lg/fzg;->aj()V

    iput v6, v0, Lg/fzg;->x:I

    const-string v6, "@type"

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/4 v11, 0x0

    if-ne v5, v6, :cond_a

    sget-object v6, Lg/cbj;->DisableSpecialKeyDetect:Lg/cbj;

    invoke-virtual {v0, v6}, Lg/fzg;->an(Lg/cbj;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v0, v2, v9}, Lg/fzg;->ax(Lg/gqc;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lg/dtu;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_8

    invoke-virtual {v0, v10}, Lg/fzg;->bg(I)V

    iget v5, v0, Lg/fzg;->o:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v0, v10}, Lg/fzg;->bg(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    return-object p2

    :cond_8
    :try_start_3
    invoke-virtual {v1, v5}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object p1

    invoke-virtual {v0, v10}, Lg/fzg;->bg(I)V

    const/4 p2, 0x2

    iput p2, p3, Lg/ccw;->c:I

    if-eqz v3, :cond_9

    instance-of p2, p0, Ljava/lang/Integer;

    if-nez p2, :cond_9

    iget-object p2, p3, Lg/ccw;->l:Lg/fpd;

    iget-object p2, p2, Lg/fpd;->c:Ljava/lang/Object;

    check-cast p2, Lg/fpd;

    iput-object p2, p3, Lg/ccw;->l:Lg/fpd;

    iget-object p2, p3, Lg/ccw;->b:[Lg/fpd;

    iget v0, p3, Lg/ccw;->a:I

    sub-int/2addr v0, v7

    aput-object v11, p2, v0

    iput v0, p3, Lg/ccw;->a:I

    :cond_9
    invoke-interface {p1, p3, v5, p0}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    return-object p0

    :cond_a
    :try_start_4
    invoke-virtual {v0}, Lg/fzg;->az()V

    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    iget v6, v0, Lg/fzg;->o:I

    const/16 v9, 0x8

    if-ne v6, v9, :cond_b

    invoke-virtual {v0}, Lg/fzg;->az()V

    goto :goto_2

    :cond_b
    invoke-virtual {p3, v5, p1}, Lg/ccw;->p(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    :goto_2
    invoke-interface {p2, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, p3, Lg/ccw;->c:I

    if-ne v6, v7, :cond_c

    invoke-virtual {p3, v5, p2}, Lg/ccw;->o(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_c
    invoke-virtual {p3, v3, v11, v5}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    iget v5, v0, Lg/fzg;->o:I

    const/16 v6, 0x14

    if-eq v5, v6, :cond_e

    const/16 v6, 0xf

    if-ne v5, v6, :cond_d

    goto :goto_3

    :cond_d
    if-ne v5, v8, :cond_0

    invoke-virtual {v0}, Lg/fzg;->az()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    return-object p2

    :cond_e
    :goto_3
    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    return-object p2

    :cond_f
    :try_start_5
    new-instance p0, Lg/bfj;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expect \':\' at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lg/fzg;->t:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Lg/bfj;

    const-string p1, "syntax error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    invoke-virtual {p3, v3}, Lg/ccw;->v(Lg/fpd;)V

    throw p0

    :cond_11
    new-instance p0, Lg/bfj;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "syntax error, expect {, actual "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lg/fzg;->o:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 4

    const-class v0, Ljava/util/Properties;

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-object p0

    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p0, v0, :cond_1

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-object p0

    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p0, v0, :cond_2

    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0

    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p0, v0, :cond_c

    const-class v0, Ljava/util/TreeMap;

    if-ne p0, v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p0, v0, :cond_b

    const-class v0, Lj$/util/concurrent/ConcurrentHashMap;

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const-class v0, Ljava/util/Map;

    if-eq p0, v0, :cond_a

    const-class v0, Ljava/util/HashMap;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p0, v0, :cond_6

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :cond_6
    const-class v0, Lg/cof;

    if-ne p0, v0, :cond_7

    new-instance p0, Lg/cof;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lg/cof;-><init>(Z)V

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lg/xq;->e(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_8
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const-string v2, "unsupport type "

    if-nez v1, :cond_9

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lg/bfj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_b
    :goto_1
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0

    :cond_c
    :goto_2
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0
.end method

.method public static f(Lg/ccw;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lg/ccw;->h:Lg/fzg;

    iget-object v5, v1, Lg/ccw;->k:Lg/mh;

    iget v6, v4, Lg/fzg;->o:I

    const/16 v7, 0xc

    const/16 v8, 0x10

    if-eq v6, v7, :cond_1

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/bfj;

    invoke-static {v6}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v5, v2}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v6

    invoke-virtual {v5, v3}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v5

    invoke-virtual {v4}, Lg/fzg;->az()V

    iget-object v7, v1, Lg/ccw;->l:Lg/fpd;

    :cond_2
    :goto_1
    :try_start_0
    iget v9, v4, Lg/fzg;->o:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_3

    invoke-virtual {v4, v8}, Lg/fzg;->bg(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v7}, Lg/ccw;->v(Lg/fpd;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    const/4 v12, 0x1

    const/4 v13, 0x4

    if-ne v9, v13, :cond_9

    :try_start_1
    iget v14, v4, Lg/fzg;->x:I

    if-ne v14, v13, :cond_9

    iget-object v14, v4, Lg/fzg;->k:Ljava/lang/String;

    const-string v15, "$ref"

    iget v11, v4, Lg/fzg;->h:I

    add-int/2addr v11, v12

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Lg/cbj;->DisableSpecialKeyDetect:Lg/cbj;

    invoke-virtual {v4, v11}, Lg/fzg;->an(Lg/cbj;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v4}, Lg/fzg;->bp()V

    iget v0, v4, Lg/fzg;->o:I

    if-ne v0, v13, :cond_8

    invoke-virtual {v4}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v7, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    iget-object v11, v0, Lg/fpd;->f:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string v2, "$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v7

    :goto_2
    iget-object v2, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v2, Lg/fpd;

    if-eqz v2, :cond_5

    move-object v0, v2

    goto :goto_2

    :cond_5
    iget-object v11, v0, Lg/fpd;->f:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance v2, Lg/ggl;

    invoke-direct {v2, v7, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg/ccw;->z(Lg/ggl;)V

    iput v12, v1, Lg/ccw;->c:I

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v4, v10}, Lg/fzg;->bg(I)V

    iget v0, v4, Lg/fzg;->o:I

    if-ne v0, v10, :cond_7

    invoke-virtual {v4, v8}, Lg/fzg;->bg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v7}, Lg/ccw;->v(Lg/fpd;)V

    return-object v11

    :cond_7
    :try_start_2
    new-instance v0, Lg/bfj;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_b

    if-ne v9, v13, :cond_b

    const-string v9, "@type"

    invoke-virtual {v4}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lg/cbj;->DisableSpecialKeyDetect:Lg/cbj;

    invoke-virtual {v4, v9}, Lg/fzg;->an(Lg/cbj;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v4}, Lg/fzg;->bp()V

    invoke-virtual {v4, v8}, Lg/fzg;->bg(I)V

    iget v9, v4, Lg/fzg;->o:I

    if-ne v9, v10, :cond_a

    invoke-virtual {v4}, Lg/fzg;->az()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v7}, Lg/ccw;->v(Lg/fpd;)V

    return-object v0

    :cond_a
    :try_start_3
    invoke-virtual {v4}, Lg/fzg;->az()V

    :cond_b
    const/4 v9, 0x0

    invoke-interface {v6, v1, v2, v9}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget v10, v4, Lg/fzg;->o:I

    const/16 v11, 0x11

    if-ne v10, v11, :cond_d

    invoke-virtual {v4}, Lg/fzg;->az()V

    invoke-interface {v5, v1, v3, v9}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iget v11, v1, Lg/ccw;->c:I

    if-ne v11, v12, :cond_c

    invoke-virtual {v1, v9, v0}, Lg/ccw;->o(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_c
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v9, v4, Lg/fzg;->o:I

    if-ne v9, v8, :cond_2

    invoke-virtual {v4}, Lg/fzg;->az()V

    goto/16 :goto_1

    :cond_d
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect :, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lg/fzg;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {v1, v7}, Lg/ccw;->v(Lg/fpd;)V

    throw v0
.end method


# virtual methods
.method public final g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg/xq;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lg/ccw;->h:Lg/fzg;

    const-class v1, Lg/cof;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    iget p2, v0, Lg/fzg;->w:I

    sget-object p3, Lg/cbj;->OrderedField:Lg/cbj;

    iget p3, p3, Lg/cbj;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p2, Lg/cof;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p2, p3}, Lg/cof;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lg/cof;

    invoke-direct {p2, v2}, Lg/cof;-><init>(Z)V

    :goto_0
    invoke-virtual {p1, v3, p2}, Lg/ccw;->s(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lg/cof;

    goto :goto_2

    :cond_1
    iget v1, v0, Lg/fzg;->o:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lg/fzg;->bg(I)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lg/xq;->e(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lg/ccw;->l:Lg/fpd;

    :try_start_0
    invoke-virtual {p1, v1, v0, p3}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_4

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v3, 0x1

    aget-object p2, p2, v3

    const-class v3, Ljava/lang/String;

    if-ne v3, v2, :cond_3

    invoke-static {p3, p2, v0, p1}, Lg/xq;->d(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1, v1}, Lg/ccw;->v(Lg/fpd;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-static {p1, v0, v2, p2}, Lg/xq;->f(Lg/ccw;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p3, v0}, Lg/ccw;->s(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v3

    :goto_3
    invoke-virtual {p1, v1}, Lg/ccw;->v(Lg/fpd;)V

    throw p2

    :pswitch_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz p3, :cond_5

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lg/ccw;->aa(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    instance-of p1, p2, Ljava/lang/Class;

    if-eqz p1, :cond_6

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-virtual {p1, p3}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

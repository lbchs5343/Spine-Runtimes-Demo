.class public final Lg/feg;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/Map;


# instance fields
.field public d:Lg/dwg;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-string v31, "java.lang.Exception"

    const-string v32, "exc"

    const-string v1, "java.lang.String"

    const-string v2, "str"

    const-string v3, "java.lang.Class"

    const-string v4, "cls"

    const-string v5, "java.lang.Throwable"

    const-string v6, "th"

    const-string v7, "java.lang.Object"

    const-string v8, "obj"

    const-string v9, "java.util.Iterator"

    const-string v10, "it"

    const-string v11, "java.util.HashMap"

    const-string v12, "map"

    const-string v13, "java.lang.Boolean"

    const-string v14, "bool"

    const-string v15, "java.lang.Short"

    const-string v16, "sh"

    const-string v17, "java.lang.Integer"

    const-string v18, "num"

    const-string v19, "java.lang.Character"

    const-string v20, "ch"

    const-string v21, "java.lang.Byte"

    const-string v22, "b"

    const-string v23, "java.lang.Float"

    const-string v24, "f"

    const-string v25, "java.lang.Long"

    const-string v26, "l"

    const-string v27, "java.lang.Double"

    const-string v28, "d"

    const-string v29, "java.lang.StringBuilder"

    const-string v30, "sb"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/evh;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1f

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lg/feg;->c:Ljava/util/Map;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "size"

    aput-object v3, v1, v2

    const-string v3, "length"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "list"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "map"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "next"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_2

    aget-object v9, v1, v8

    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lg/feg;->a:Ljava/util/Set;

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "get"

    aput-object v8, v3, v2

    const-string v8, "set"

    aput-object v8, v3, v4

    const-string v4, "to"

    aput-object v4, v3, v5

    const-string v4, "parse"

    aput-object v4, v3, v6

    const-string v4, "read"

    aput-object v4, v3, v7

    const-string v4, "format"

    aput-object v4, v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v4, v3, v2

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/feg;->b:Ljava/util/List;

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const-string v0, "Var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static g(Lg/ve;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/ve;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/feg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/foj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Var"

    invoke-static {v0, p0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "ApplyVariableNames"

    return-object v0
.end method

.method public final h(Lg/dwg;)V
    .locals 0

    iput-object p1, p0, Lg/feg;->d:Lg/dwg;

    return-void
.end method

.method public final i(Lg/cwx;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/cff;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/cwx;->f()Lg/bjt;

    move-result-object p1

    invoke-virtual {p1}, Lg/bjt;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/aoe;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lg/cwx;->e()Lg/cwx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/feg;->i(Lg/cwx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Arr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lg/btl;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/foj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/feg;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lg/feg;->d:Lg/dwg;

    invoke-static {v0, p1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object p1

    invoke-static {p1}, Lg/feg;->g(Lg/ve;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/foj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lg/hed;)V
    .locals 6

    iget-object p1, p1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/vm;

    invoke-virtual {v0}, Lg/vm;->u()Lg/ejb;

    move-result-object v0

    iget-boolean v1, v0, Lg/ejb;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "this"

    goto/16 :goto_3

    :cond_1
    iget-boolean v1, v0, Lg/ejb;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lg/ejb;->c:Ljava/lang/String;

    invoke-static {v1}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lg/ejb;->f:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->e(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lg/bev;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lg/bev;-><init>(I)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v0, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p0, v1}, Lg/feg;->i(Lg/cwx;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/vm;

    invoke-virtual {v3}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object v3, v4

    goto :goto_2

    :cond_6
    iget-object v4, v3, Lg/vm;->c:Lg/gks;

    iget-object v4, v4, Lg/gsh;->ae:Lg/eek;

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3, v4}, Lg/feg;->l(Lg/vm;Lg/eek;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    move-object v1, v3

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p0, v1}, Lg/feg;->i(Lg/cwx;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_0

    iput-object v1, v0, Lg/ejb;->c:Ljava/lang/String;

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final l(Lg/vm;Lg/eek;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lg/ccq;->a:[I

    iget-object v1, p2, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lg/feg;->c:Ljava/util/Map;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lg/cly;

    if-eqz v1, :cond_0

    check-cast v0, Lg/cly;

    iget-object v0, v0, Lg/cly;->a:Lg/eek;

    invoke-virtual {p0, p1, v0}, Lg/feg;->l(Lg/vm;Lg/eek;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :pswitch_1
    const-string p1, "length"

    return-object p1

    :pswitch_2
    check-cast p2, Lg/eew;

    iget-object p1, p0, Lg/feg;->d:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {p1, p2}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object p1

    instance-of v0, p1, Lg/hed;

    if-eqz v0, :cond_1

    check-cast p1, Lg/hed;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    sget-object v0, Lg/csv;->ANONYMOUS_CONSTRUCTOR:Lg/csv;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    iget-object p1, p2, Lg/eew;->a:Lg/ayu;

    iget-object p1, p1, Lg/ayu;->d:Lg/ve;

    iget-object p2, p1, Lg/ve;->b:Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    invoke-static {p1}, Lg/feg;->g(Lg/ve;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p2, Lg/hdc;

    iget-object p2, p2, Lg/hdc;->ad:Lg/ayu;

    iget-object v0, p2, Lg/ayu;->a:Ljava/lang/String;

    iget-object p2, p2, Lg/ayu;->d:Lg/ve;

    const-string v3, "getInstance"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p2, Lg/ve;->b:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    invoke-static {p2}, Lg/feg;->g(Lg/ve;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    sget-object v3, Lg/feg;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v2}, Lg/feg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v2, "iterator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p1, "it"

    return-object p1

    :cond_a
    const-string v2, "toString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object p1, p2, Lg/ve;->b:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    invoke-static {p2}, Lg/feg;->g(Lg/ve;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v2, "forName"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object p2, p2, Lg/ve;->d:Lg/cwx;

    sget-object v2, Lg/cwx;->ab:Lg/aog;

    invoke-virtual {p2, v2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p1, "java.lang.Class"

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_d
    sget-object p2, Lg/feg;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object p1

    iget-object p1, p1, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p0, p1}, Lg/feg;->i(Lg/cwx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {p1}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lg/foj;->l(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

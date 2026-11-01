.class public final Lg/cag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Lg/ur;

.field public final c:Lg/dwg;

.field public final d:Ljava/util/EnumMap;

.field public final e:Lg/cwm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cag;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cag;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/dwg;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cag;->c:Lg/dwg;

    iget-object v0, p1, Lg/dwg;->i:Lg/ur;

    iput-object v0, p0, Lg/cag;->b:Lg/ur;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lg/hay;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lg/hay;->CONST:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->MOVE:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->PHI:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->AGET:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->APUT:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->IF:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->ARITH:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->NEG:Lg/hay;

    new-instance v2, Lg/eyy;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->NOT:Lg/hay;

    new-instance v2, Lg/eyy;

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->CHECK_CAST:Lg/hay;

    new-instance v2, Lg/eyy;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->INVOKE:Lg/hay;

    new-instance v2, Lg/eyy;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/hay;->CONSTRUCTOR:Lg/hay;

    new-instance v2, Lg/eyy;

    invoke-direct {v2, p0, v3}, Lg/eyy;-><init>(Lg/cag;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lg/cag;->d:Ljava/util/EnumMap;

    new-instance v0, Lg/cwm;

    invoke-direct {v0, p1}, Lg/cwm;-><init>(Lg/dwg;)V

    iput-object v0, p0, Lg/cag;->e:Lg/cwm;

    return-void
.end method

.method public static f(Lg/eek;Lg/gsh;)Z
    .locals 0

    iget-object p0, p0, Lg/eek;->ai:Lg/gks;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Lg/cwx;Lg/cwx;)Z
    .locals 2

    sget-object v0, Lg/cwx;->ad:Lg/gnh;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/aoe;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p0, Lg/aoe;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/cwx;->k()Lg/cwx;

    move-result-object p0

    invoke-virtual {p1}, Lg/cwx;->k()Lg/cwx;

    move-result-object p1

    invoke-static {p0, p1}, Lg/cag;->g(Lg/cwx;Lg/cwx;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lg/bjt;->ARRAY:Lg/bjt;

    invoke-virtual {p0, v0}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lg/bjt;->OBJECT:Lg/bjt;

    invoke-virtual {p0, v0}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lg/cff;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lg/cwx;->f()Lg/bjt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/cwx;->o(Lg/bjt;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lg/cag;Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;
    .locals 8

    iget-object v0, p0, Lg/cag;->c:Lg/dwg;

    move-object v3, p2

    check-cast v3, Lg/gif;

    invoke-static {v3, p3}, Lg/cag;->f(Lg/eek;Lg/gsh;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lg/dgr;->SAME:Lg/dgr;

    return-object p0

    :cond_0
    invoke-virtual {v3}, Lg/gif;->aa()Lg/gsh;

    move-result-object p2

    if-ne p2, p3, :cond_3

    iget-object p2, v0, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {p2, v3}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p0, Lg/dgr;->SAME:Lg/dgr;

    return-object p0

    :cond_1
    iget-object p3, v0, Lg/dwg;->o:Lg/emr;

    iget-object v0, p1, Lg/gcu;->a:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lg/emr;->w(Lg/hed;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p3, p4}, Lg/emr;->y(Lg/cwx;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lg/ebp;->g()Lg/cwx;

    move-result-object v1

    invoke-interface {p2}, Lg/ebp;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v6, Lg/ckp;

    invoke-direct {v6, v1}, Lg/ckp;-><init>(Lg/cwx;)V

    new-instance v7, Lg/eug;

    const/4 p3, 0x6

    invoke-direct {v7, p3, p2}, Lg/eug;-><init>(ILjava/lang/Object;)V

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lg/cag;->k(Lg/gcu;Lg/gif;ILjava/util/Set;Ljava/util/function/Supplier;Ljava/util/function/Function;)Lg/dgr;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, p1

    new-instance v6, Lg/dck;

    invoke-direct {v6, p3, p0, v0}, Lg/dck;-><init>(Lg/emr;Lg/cwx;Ljava/util/Map;)V

    new-instance v7, Lg/oe;

    const/4 p0, 0x1

    invoke-direct {v7, p3, p4, p2, p0}, Lg/oe;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual/range {v1 .. v7}, Lg/cag;->k(Lg/gcu;Lg/gif;ILjava/util/Set;Ljava/util/function/Supplier;Ljava/util/function/Function;)Lg/dgr;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lg/dgr;->SAME:Lg/dgr;

    return-object p0
.end method

.method public static i(Ljava/util/Set;Lg/cwx;)Lg/cwx;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lg/gzg;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lg/cwx;->bn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lg/bpf;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg/bpf;-><init>(ILjava/util/Set;)V

    invoke-virtual {p1, v1}, Lg/cwx;->bh(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    :goto_0
    return-object v0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public final j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;
    .locals 6

    if-eqz p3, :cond_17

    iget-object v0, p1, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    iget-object v1, p1, Lg/gcu;->b:Ljava/lang/Object;

    check-cast v1, Lg/zf;

    invoke-static {v0, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lg/zf;->e:Ljava/util/Set;

    sget-object v1, Lg/eic;->IGNORE_SAME:Lg/eic;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    goto/16 :goto_1

    :cond_1
    instance-of v2, p3, Lg/gzg;

    if-eqz v2, :cond_2

    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v2, p3, v0}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/dho;->CONFLICT:Lg/dho;

    if-eq v2, v3, :cond_a

    sget-object v3, Lg/dho;->CONFLICT_BY_GENERIC:Lg/dho;

    if-ne v2, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lg/dho;->UNKNOWN:Lg/dho;

    if-ne v2, v3, :cond_4

    iget-object v3, v1, Lg/zf;->e:Ljava/util/Set;

    sget-object v4, Lg/eic;->IGNORE_UNKNOWN:Lg/eic;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lg/flv;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lg/cwx;->ad:Lg/gnh;

    if-eq v0, v3, :cond_6

    sget-object v0, Lg/dho;->EQUAL:Lg/dho;

    if-ne v2, v0, :cond_5

    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    goto :goto_1

    :cond_5
    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_1

    :cond_6
    sget-object v0, Lg/dho;->WIDER_BY_GENERIC:Lg/dho;

    if-ne v2, v0, :cond_7

    iget-object v0, v1, Lg/zf;->e:Ljava/util/Set;

    sget-object v3, Lg/eic;->KEEP_GENERICS:Lg/eic;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lg/dho;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lg/zf;->e:Ljava/util/Set;

    sget-object v1, Lg/eic;->ALLOW_WIDER:Lg/eic;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_1

    :cond_8
    invoke-virtual {p3}, Lg/cwx;->bn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lg/cag;->c:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->o:Lg/emr;

    iget-object v1, p1, Lg/gcu;->a:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg/emr;->w(Lg/hed;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lg/bpf;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lg/bpf;-><init>(ILjava/util/Set;)V

    invoke-virtual {p3, v1}, Lg/cwx;->bh(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    if-eqz v0, :cond_9

    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    :goto_0
    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    :goto_1
    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    instance-of v0, p2, Lg/gks;

    if-eqz v0, :cond_16

    check-cast p2, Lg/gks;

    iget-object p2, p2, Lg/gks;->a:Lg/vm;

    iget-object v0, p2, Lg/vm;->h:Lg/ffr;

    iget-object v1, p2, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lg/vm;->m()Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, p3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object p1, Lg/dgr;->REJECT:Lg/dgr;

    return-object p1

    :cond_c
    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fog;

    instance-of v3, v2, Lg/dhc;

    if-eqz v3, :cond_e

    move-object v3, v2

    check-cast v3, Lg/dhc;

    invoke-interface {v3, p1}, Lg/dhc;->e(Lg/gcu;)Lg/cwx;

    move-result-object v3

    goto :goto_2

    :cond_e
    invoke-interface {v2}, Lg/fog;->getType()Lg/cwx;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_d

    invoke-virtual {p0, p3, v2, v3}, Lg/cag;->l(Lg/cwx;Lg/fog;Lg/cwx;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object p1, Lg/dgr;->REJECT:Lg/dgr;

    return-object p1

    :cond_f
    iget-object v0, p2, Lg/vm;->c:Lg/gks;

    invoke-virtual {p0, p1, v0, p3}, Lg/cag;->m(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v0

    sget-object v2, Lg/dgr;->SAME:Lg/dgr;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_10

    const/4 v2, 0x1

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    :goto_3
    sget-object v4, Lg/dgr;->REJECT:Lg/dgr;

    if-eq v0, v4, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gks;

    invoke-virtual {p0, p1, v0, p3}, Lg/cag;->m(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v0

    sget-object v5, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v0, v5, :cond_12

    goto :goto_5

    :cond_12
    sget-object v5, Lg/dgr;->SAME:Lg/dgr;

    if-eq v0, v5, :cond_11

    const/4 v2, 0x0

    goto :goto_4

    :cond_13
    :goto_5
    sget-object p3, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v0, p3, :cond_14

    iget-object p2, p2, Lg/vm;->c:Lg/gks;

    invoke-virtual {p1, p2}, Lg/gcu;->i(Lg/gsh;)V

    new-instance p2, Lg/agx;

    const/16 v0, 0x19

    invoke-direct {p2, v0, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, p2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-object p3

    :cond_14
    if-eqz v2, :cond_15

    sget-object p1, Lg/dgr;->SAME:Lg/dgr;

    return-object p1

    :cond_15
    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lg/cag;->m(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p1

    return-object p1

    :cond_17
    new-instance p1, Lg/gck;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Null type update for arg: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lg/gcu;Lg/gif;ILjava/util/Set;Ljava/util/function/Supplier;Ljava/util/function/Function;)Lg/dgr;
    .locals 8

    iget-object v0, p2, Lg/eek;->ai:Lg/gks;

    iget-object v1, p0, Lg/cag;->e:Lg/cwm;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/gks;->i()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lg/cwx;

    invoke-static {p4, p5}, Lg/cag;->i(Ljava/util/Set;Lg/cwx;)Lg/cwx;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p0, p1, v0, p5}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v3

    sget-object v4, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lg/gks;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {v1, p5, v0}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p5

    invoke-virtual {p5}, Lg/dho;->b()Z

    move-result p5

    if-eqz p5, :cond_0

    return-object v4

    :cond_0
    sget-object p5, Lg/dgr;->CHANGED:Lg/dgr;

    if-ne v3, p5, :cond_1

    const/4 p5, 0x0

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    :goto_0
    invoke-virtual {p2}, Lg/gif;->z()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_4

    add-int v4, v0, v3

    invoke-virtual {p2, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v4

    invoke-virtual {v4}, Lg/flv;->i()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cwx;

    invoke-static {p4, v5}, Lg/cag;->i(Ljava/util/Set;Lg/cwx;)Lg/cwx;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1, v4, v5}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v6

    sget-object v7, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v6, v7, :cond_2

    invoke-virtual {v4}, Lg/flv;->j()Lg/cwx;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v4

    invoke-virtual {v4}, Lg/dho;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v7

    :cond_2
    sget-object v4, Lg/dgr;->CHANGED:Lg/dgr;

    if-ne v6, v4, :cond_3

    const/4 p5, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    sget-object p1, Lg/dgr;->SAME:Lg/dgr;

    return-object p1

    :cond_5
    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1
.end method

.method public final l(Lg/cwx;Lg/fog;Lg/cwx;)Z
    .locals 4

    iget-object v0, p0, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v0, p1, p3}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v1

    sget-object v2, Lg/cns;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p1, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Not processed type compare enum: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Lg/cag;->a:Lg/dba;

    const-string v1, "Can\'t compare types, unknown hierarchy: {} and {}"

    invoke-interface {p2, p1, v1, p3}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p3}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    return v3

    :pswitch_1
    invoke-interface {p2}, Lg/fog;->f()Lg/au;

    move-result-object p2

    sget-object v0, Lg/au;->ASSIGN:Lg/au;

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Lg/cwx;->h()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p3, p1}, Lg/cag;->g(Lg/cwx;Lg/cwx;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-interface {p2}, Lg/fog;->f()Lg/au;

    move-result-object p1

    sget-object p2, Lg/au;->USE:Lg/au;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    :pswitch_3
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    :pswitch_4
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;
    .locals 9

    iget-object v0, p1, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1

    :cond_0
    new-instance v1, Lg/gpf;

    iget v2, p1, Lg/gcu;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lg/gcu;->f:I

    invoke-direct {v1, v2, p2, p3}, Lg/gpf;-><init>(ILg/gsh;Lg/cwx;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gpf;

    if-nez v0, :cond_2f

    iget v0, p1, Lg/gcu;->f:I

    iget v1, p1, Lg/gcu;->e:I

    if-gt v0, v1, :cond_2e

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    invoke-static {}, Lg/evh;->n()V

    :cond_1
    iget-object v0, p2, Lg/gsh;->ae:Lg/eek;

    if-nez v0, :cond_2

    sget-object p3, Lg/dgr;->SAME:Lg/dgr;

    goto/16 :goto_9

    :cond_2
    iget-object v1, p0, Lg/cag;->d:Ljava/util/EnumMap;

    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eyy;

    if-nez v1, :cond_3

    sget-object p3, Lg/dgr;->CHANGED:Lg/dgr;

    goto/16 :goto_9

    :cond_3
    iget v2, v1, Lg/eyy;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, v1, Lg/eyy;->b:Lg/cag;

    packed-switch v2, :pswitch_data_0

    move-object v2, v0

    check-cast v2, Lg/adz;

    invoke-static {v0, p2}, Lg/cag;->f(Lg/eek;Lg/gsh;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    if-ne p3, v0, :cond_2c

    sget-object p3, Lg/dgr;->SAME:Lg/dgr;

    goto/16 :goto_9

    :cond_4
    iget-object v3, v2, Lg/adz;->a:Ljava/lang/Object;

    check-cast v3, Lg/cwx;

    iget-object v5, v1, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v5, p3, v3}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v5

    sget-object v6, Lg/dho;->CONFLICT:Lg/dho;

    if-ne v5, v6, :cond_a

    iget-object v6, v1, Lg/cag;->c:Lg/dwg;

    invoke-virtual {p3}, Lg/cwx;->m()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lg/cwx;->m()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    iget-object v7, v6, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v7, p3}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object v7

    iget-object v6, v6, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v6, v3}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object v3

    const/16 v6, 0x200

    if-eqz v7, :cond_6

    iget v8, v7, Lg/aht;->d:I

    invoke-static {v8, v6}, Lg/afo;->af(II)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    iget v8, v3, Lg/aht;->d:I

    invoke-static {v8, v6}, Lg/afo;->af(II)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v7, :cond_a

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    iget v3, v3, Lg/aht;->d:I

    invoke-static {v3, v6}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v7, Lg/aht;->d:I

    invoke-static {v3, v6}, Lg/afo;->af(II)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    sget-object p3, Lg/dgr;->REJECT:Lg/dgr;

    goto/16 :goto_9

    :cond_a
    :goto_1
    sget-object v3, Lg/dho;->CONFLICT_BY_GENERIC:Lg/dho;

    if-ne v5, v3, :cond_b

    sget-object v3, Lg/csv;->SOFT_CAST:Lg/csv;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p3, Lg/dgr;->REJECT:Lg/dgr;

    goto/16 :goto_9

    :cond_b
    sget-object v0, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne v5, v0, :cond_c

    invoke-virtual {p3}, Lg/cwx;->bk()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v2, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v1, p1, v0, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v2, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {p3, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    sget-object p3, Lg/dgr;->SAME:Lg/dgr;

    goto/16 :goto_9

    :cond_d
    sget-object p3, Lg/dgr;->CHANGED:Lg/dgr;

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {v1, p1, v0, p2, p3}, Lg/cag;->o(Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto/16 :goto_9

    :pswitch_1
    move-object v2, v0

    check-cast v2, Lg/ame;

    sget-object v3, Lg/cwx;->at:Lg/cff;

    if-ne p3, v3, :cond_e

    iget-object v2, v2, Lg/ame;->d:Lg/bvj;

    invoke-virtual {v2}, Lg/bvj;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1, v0, p2, p3}, Lg/cag;->n(Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v1, p1, v0, p2, p3}, Lg/cag;->o(Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    if-ne v2, p2, :cond_f

    move-object v2, v0

    :cond_f
    invoke-virtual {v1, p1, v2, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v0

    sget-object v1, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v0, v1, :cond_18

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v1

    invoke-virtual {p3}, Lg/cwx;->m()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lg/cwx;->m()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1}, Lg/cwx;->h()Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lg/bjt;->OBJECT:Lg/bjt;

    invoke-virtual {v1, v2}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    goto :goto_4

    :cond_11
    instance-of v2, p3, Lg/aoe;

    if-eqz v2, :cond_13

    instance-of v2, v1, Lg/aoe;

    if-nez v2, :cond_12

    invoke-virtual {v1}, Lg/cwx;->h()Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lg/bjt;->ARRAY:Lg/bjt;

    invoke-virtual {v1, v2}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_2

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    goto :goto_4

    :cond_13
    instance-of v2, p3, Lg/cff;

    if-eqz v2, :cond_18

    move-object v2, p3

    check-cast v2, Lg/cff;

    iget-object v2, v2, Lg/cff;->a:Lg/bjt;

    instance-of v5, v1, Lg/cff;

    if-eqz v5, :cond_14

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    check-cast v5, Lg/cff;

    iget-object v5, v5, Lg/cff;->a:Lg/bjt;

    if-eq v5, v2, :cond_16

    :cond_14
    invoke-virtual {v1}, Lg/cwx;->h()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v1, v2}, Lg/cwx;->o(Lg/bjt;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_3

    :cond_15
    const/4 v3, 0x0

    :cond_16
    :goto_3
    if-eqz v3, :cond_17

    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    goto :goto_4

    :cond_17
    invoke-virtual {v1}, Lg/cwx;->h()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p3}, Lg/cwx;->bi()I

    move-result p3

    invoke-virtual {v1}, Lg/cwx;->bi()I

    move-result v1

    if-ne p3, v1, :cond_18

    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    :cond_18
    :goto_4
    move-object p3, v0

    goto/16 :goto_9

    :pswitch_3
    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    if-ne v2, p2, :cond_1c

    invoke-virtual {p3}, Lg/cwx;->k()Lg/cwx;

    move-result-object p3

    if-nez p3, :cond_19

    sget-object p3, Lg/dgr;->REJECT:Lg/dgr;

    goto/16 :goto_9

    :cond_19
    invoke-virtual {v1, p1, v0, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v2

    sget-object v3, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v2, v3, :cond_1b

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v1, v1, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v1, p3, v0}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p3

    sget-object v0, Lg/dho;->WIDER:Lg/dho;

    if-eq p3, v0, :cond_1a

    sget-object v0, Lg/dho;->WIDER_BY_GENERIC:Lg/dho;

    if-ne p3, v0, :cond_1b

    :cond_1a
    sget-object p3, Lg/dgr;->CHANGED:Lg/dgr;

    goto/16 :goto_9

    :cond_1b
    move-object p3, v2

    goto/16 :goto_9

    :cond_1c
    if-ne v2, v0, :cond_1d

    sget-object v0, Lg/cwx;->an:Lg/cff;

    new-instance v0, Lg/aoe;

    invoke-direct {v0, p3}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-virtual {v1, p1, v2, v0}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto/16 :goto_9

    :cond_1d
    sget-object p3, Lg/dgr;->SAME:Lg/dgr;

    goto/16 :goto_9

    :pswitch_4
    iget-object v2, v1, Lg/cag;->e:Lg/cwm;

    invoke-static {v0, p2}, Lg/cag;->f(Lg/eek;Lg/gsh;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    sget-object v5, Lg/cwx;->an:Lg/cff;

    new-instance v5, Lg/aoe;

    invoke-direct {v5, p3}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-virtual {v1, p1, v3, v5}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v1

    sget-object v3, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v1, v3, :cond_21

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v3

    if-eqz v3, :cond_21

    instance-of v3, v0, Lg/aoe;

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lg/cwx;->k()Lg/cwx;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lg/cff;

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lg/cwx;->k()Lg/cwx;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p3

    sget-object v0, Lg/dho;->WIDER:Lg/dho;

    if-ne p3, v0, :cond_21

    sget-object v1, Lg/dgr;->CHANGED:Lg/dgr;

    goto :goto_5

    :cond_1e
    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    if-ne v3, p2, :cond_20

    invoke-virtual {p3}, Lg/cwx;->k()Lg/cwx;

    move-result-object p3

    if-nez p3, :cond_1f

    sget-object v1, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_5

    :cond_1f
    iget-object v3, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v1, p1, v3, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v1

    sget-object v3, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v1, v3, :cond_21

    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v0}, Lg/gks;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v3

    if-eqz v3, :cond_21

    instance-of v3, v0, Lg/cff;

    if-eqz v3, :cond_21

    invoke-virtual {v2, v0, p3}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p3

    sget-object v0, Lg/dho;->WIDER:Lg/dho;

    if-ne p3, v0, :cond_21

    sget-object v1, Lg/dgr;->CHANGED:Lg/dgr;

    goto :goto_5

    :cond_20
    sget-object v1, Lg/dgr;->SAME:Lg/dgr;

    :cond_21
    :goto_5
    move-object p3, v1

    goto/16 :goto_9

    :pswitch_5
    invoke-virtual {v1, p1, v0, p2, p3}, Lg/cag;->n(Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto/16 :goto_9

    :pswitch_6
    iget-object v2, v0, Lg/eek;->ai:Lg/gks;

    if-nez v2, :cond_22

    sget-object p3, Lg/dgr;->CHANGED:Lg/dgr;

    goto/16 :goto_9

    :cond_22
    if-ne v2, p2, :cond_23

    const/4 v5, 0x1

    goto :goto_6

    :cond_23
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_24

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    :cond_24
    iget-object v0, v1, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v6

    invoke-virtual {v0, p3, v6}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v0

    invoke-virtual {v0}, Lg/dho;->d()Z

    move-result v6

    if-nez v6, :cond_27

    if-eqz v5, :cond_25

    invoke-virtual {v0}, Lg/dho;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_7

    :cond_25
    invoke-virtual {v0}, Lg/dho;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_7

    :cond_26
    const/4 v3, 0x0

    :cond_27
    :goto_7
    invoke-virtual {v1, p1, v2, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    sget-object v0, Lg/dgr;->SAME:Lg/dgr;

    if-ne p3, v0, :cond_28

    if-nez v3, :cond_28

    sget-object p3, Lg/dgr;->REJECT:Lg/dgr;

    goto :goto_9

    :cond_28
    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    if-ne p3, v0, :cond_2c

    if-eqz v3, :cond_2c

    sget-object p3, Lg/dgr;->CHANGED:Lg/dgr;

    goto :goto_9

    :pswitch_7
    invoke-static {v1, p1, v0, p2, p3}, Lg/cag;->h(Lg/cag;Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    goto :goto_9

    :pswitch_8
    invoke-static {v0, p2}, Lg/cag;->f(Lg/eek;Lg/gsh;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    goto :goto_8

    :cond_29
    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    :goto_8
    iget-object v2, p1, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gpf;

    if-eqz v2, :cond_2a

    iget-object v2, v2, Lg/gpf;->a:Lg/cwx;

    invoke-virtual {v2, p3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_2a
    if-eqz v4, :cond_2b

    sget-object p3, Lg/dgr;->CHANGED:Lg/dgr;

    goto :goto_9

    :cond_2b
    invoke-virtual {v1, p1, v0, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p3

    :cond_2c
    :goto_9
    sget-object v0, Lg/dgr;->REJECT:Lg/dgr;

    if-ne p3, v0, :cond_2d

    invoke-virtual {p1, p2}, Lg/gcu;->i(Lg/gsh;)V

    :cond_2d
    return-object p3

    :cond_2e
    new-instance p2, Lg/blf;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Type inference error: updates count limit reached with updateSeq = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lg/gcu;->f:I

    const-string v0, ". Try increasing type updates limit count."

    invoke-static {p3, p1, v0}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2f
    new-instance p1, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type update override for arg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " types: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lg/gpf;->a:Lg/cwx;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", new="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", insn: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;
    .locals 3

    invoke-static {p2, p3}, Lg/cag;->f(Lg/eek;Lg/gsh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lg/eek;->ai:Lg/gks;

    invoke-virtual {p0, p1, p2, p4}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    if-ne v1, p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1, p4}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v1

    sget-object v2, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v1, v2, :cond_3

    return-object v1

    :cond_3
    sget-object v2, Lg/dgr;->SAME:Lg/dgr;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    sget-object p1, Lg/dgr;->SAME:Lg/dgr;

    return-object p1

    :cond_5
    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1
.end method

.method public final o(Lg/gcu;Lg/eek;Lg/gsh;Lg/cwx;)Lg/dgr;
    .locals 3

    invoke-static {p2, p3}, Lg/cag;->f(Lg/eek;Lg/gsh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lg/eek;->ai:Lg/gks;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p4}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    :cond_0
    iget-object p2, p2, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    if-eq v1, p3, :cond_1

    invoke-virtual {p0, p1, v1, p4}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v1

    sget-object v2, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lg/dgr;->SAME:Lg/dgr;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    sget-object p1, Lg/dgr;->SAME:Lg/dgr;

    return-object p1

    :cond_4
    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1
.end method

.method public final p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;
    .locals 2

    if-eqz p3, :cond_3

    :try_start_0
    invoke-virtual {p3}, Lg/cwx;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/gcu;

    iget-object v1, p0, Lg/cag;->b:Lg/ur;

    invoke-direct {v0, p1, p4, v1}, Lg/gcu;-><init>(Lg/hed;Lg/zf;Lg/ur;)V

    iget-object p4, v0, Lg/gcu;->d:Ljava/lang/Object;

    check-cast p4, Ljava/util/IdentityHashMap;

    iget-object v1, p2, Lg/vm;->c:Lg/gks;

    invoke-virtual {p0, v0, v1, p3}, Lg/cag;->j(Lg/gcu;Lg/gsh;Lg/cwx;)Lg/dgr;

    move-result-object v0

    sget-object v1, Lg/dgr;->REJECT:Lg/dgr;

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p4}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lg/dgr;->SAME:Lg/dgr;

    return-object p1

    :catch_0
    move-exception p4

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-static {p4}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p4

    invoke-interface {p4}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lg/abs;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/abs;-><init>(I)V

    invoke-interface {p4, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Lg/dgr;->CHANGED:Lg/dgr;

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lg/dgr;->REJECT:Lg/dgr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type update failed for variable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", new type: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lg/dgr;->REJECT:Lg/dgr;

    return-object p1
.end method

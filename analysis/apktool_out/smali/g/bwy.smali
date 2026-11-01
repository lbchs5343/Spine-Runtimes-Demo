.class public final Lg/bwy;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public final b:Lg/mo;

.field public c:Lg/cag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/bwy;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/mo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bwy;->b:Lg/mo;

    return-void
.end method

.method public static d(Lg/hed;)Z
    .locals 1

    iget-object p0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/vm;

    iget-object v0, v0, Lg/vm;->h:Lg/ffr;

    iget-object v0, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Lg/cwx;Lg/vm;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lg/aoe;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lg/cwx;->k()Lg/cwx;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lg/bwy;->e(Lg/cwx;Lg/vm;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    new-instance v1, Lg/aoe;

    invoke-direct {v1, v0}, Lg/aoe;-><init>(Lg/cwx;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_4

    iget-object p1, p1, Lg/vm;->h:Lg/ffr;

    iget-object p1, p1, Lg/ffr;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fog;

    invoke-interface {v0}, Lg/fog;->getType()Lg/cwx;

    move-result-object v0

    invoke-virtual {v0}, Lg/cwx;->m()Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v0, v0, Lg/aoe;

    if-eqz v0, :cond_2

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lg/cwx;->g()[Lg/bjt;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    sget-object v3, Lg/bjt;->VOID:Lg/bjt;

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lg/cwx;->bc(Lg/bjt;)Lg/bcx;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method public static g(Lg/hed;Lg/abi;Z)I
    .locals 13

    iget-object v0, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Lg/abi;->_ay(I)Lg/gks;

    move-result-object v4

    iget-object v5, p1, Lg/abi;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    invoke-static {v5}, Lg/bwy;->l(Lg/fza;)Lg/fza;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to insert an additional move for type inference into block "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v5, v4, Lg/gks;->a:Lg/vm;

    iget-object v7, v5, Lg/vm;->c:Lg/gks;

    invoke-virtual {v7}, Lg/gks;->aa()Lg/eek;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    iget-object v7, v7, Lg/eek;->ah:Lg/hay;

    sget-object v9, Lg/hay;->CONST:Lg/hay;

    if-eq v7, v9, :cond_2

    sget-object v9, Lg/hay;->MOVE:Lg/hay;

    if-ne v7, v9, :cond_1

    iget-object v5, v5, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-eqz p2, :cond_2

    iget-object v5, v4, Lg/gks;->a:Lg/vm;

    iget v7, v4, Lg/gks;->e:I

    const/4 v9, 0x0

    iget-object v10, v4, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v4, v7, v10, v9}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v9

    invoke-virtual {p0, v9}, Lg/hed;->bn(Lg/gks;)Lg/vm;

    move-result-object v10

    iget-object v11, v4, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v4, v7, v11, v5}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v5

    new-instance v11, Lg/eek;

    sget-object v12, Lg/hay;->MOVE:Lg/hay;

    invoke-direct {v11, v12, v8}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v11, v9}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v11, v5}, Lg/eek;->_an(Lg/gsh;)V

    sget-object v5, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v11, v5}, Lg/lh;->w(Lg/csv;)V

    iget-object v5, v6, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v4, v7, v5, v10}, Lg/gks;->ab(ILg/cwx;Lg/vm;)Lg/gks;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lg/abi;->f(Lg/gsh;Lg/gsh;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static i(Lg/hed;Lg/gks;Lg/cwx;)Lg/adz;
    .locals 6

    iget-object v0, p1, Lg/gsh;->ae:Lg/eek;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->PHI:Lg/hay;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lg/hay;->IF:Lg/hay;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/gsh;->as()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lg/gks;->ac(Lg/hed;)Lg/gks;

    move-result-object p0

    invoke-virtual {p1}, Lg/gks;->z()Lg/gks;

    move-result-object v2

    new-instance v4, Lg/adz;

    sget-object v5, Lg/hay;->CHECK_CAST:Lg/hay;

    invoke-direct {v4, v5, p2, v3}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    invoke-virtual {v4, p0}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {v4, v2}, Lg/eek;->_an(Lg/gsh;)V

    sget-object p0, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v4, p0}, Lg/lh;->w(Lg/csv;)V

    iget-object p0, v4, Lg/eek;->ai:Lg/gks;

    invoke-virtual {p0}, Lg/gks;->z()Lg/gks;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lg/eek;->f(Lg/gsh;Lg/gsh;)Z

    invoke-static {v1, v0}, Lg/ffb;->ab(Lg/fza;Lg/eek;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v4

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lg/fza;)Lg/fza;
    .locals 2

    sget-object v0, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/giq;->a:Ljava/util/EnumSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    invoke-static {p0}, Lg/bwy;->l(Lg/fza;)Lg/fza;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public static m(Lg/hed;Lg/vm;Z)Z
    .locals 13

    iget-object v0, p1, Lg/vm;->h:Lg/ffr;

    iget-object v0, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lg/vm;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p1, Lg/vm;->c:Lg/gks;

    iget-object v0, v0, Lg/gsh;->ae:Lg/eek;

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->IGET:Lg/hay;

    if-eq v2, v3, :cond_2

    sget-object v3, Lg/hay;->SGET:Lg/hay;

    if-eq v2, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, v0, Lg/eek;->ai:Lg/gks;

    iget-object v0, v0, Lg/flv;->h:Lg/cwx;

    const/4 v2, 0x1

    if-eqz p2, :cond_e

    iget-object p2, p1, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gks;

    iget-object v4, v4, Lg/gsh;->ae:Lg/eek;

    sget-object v5, Lg/hay;->INVOKE:Lg/hay;

    invoke-static {v4, v5}, Lg/ack;->l(Lg/eek;Lg/hay;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_5
    check-cast v4, Lg/hdc;

    invoke-virtual {v4}, Lg/hdc;->aa()Lg/gsh;

    move-result-object v5

    if-eqz v5, :cond_4

    instance-of v6, v5, Lg/gks;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lg/gks;

    iget-object v6, v6, Lg/gks;->a:Lg/vm;

    invoke-static {v6, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lg/hed;->am:Lg/cci;

    iget-object v6, v6, Lg/cci;->ab:Lg/dwg;

    iget-object v6, v6, Lg/dwg;->b:Lg/fnq;

    invoke-virtual {v6, v4}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, v4, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gsh;

    if-ne v9, v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v9, Lg/gks;

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {v6}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/cwx;

    invoke-virtual {v9}, Lg/flv;->j()Lg/cwx;

    move-result-object v11

    iget-object v12, p0, Lg/hed;->am:Lg/cci;

    iget-object v12, v12, Lg/cci;->ab:Lg/dwg;

    iget-object v12, v12, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v12, v0, v11, v10}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10, v11}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    check-cast v9, Lg/gks;

    invoke-static {p0, v9, v10}, Lg/bwy;->i(Lg/hed;Lg/gks;Lg/cwx;)Lg/adz;

    move-result-object v9

    if-eqz v9, :cond_9

    sget-object v10, Lg/csv;->EXPLICIT_CAST:Lg/csv;

    invoke-virtual {v9, v10}, Lg/lh;->w(Lg/csv;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_c
    if-lez v8, :cond_4

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_d
    return v3

    :cond_e
    invoke-virtual {p1, v0}, Lg/vm;->s(Lg/cwx;)V

    return v2

    :cond_f
    :goto_5
    return v1
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "FixTypesVisitor"

    return-object v0
.end method

.method public final h(Lg/dwg;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lg/dwg;->u:Lg/cag;

    iput-object v2, v0, Lg/bwy;->c:Lg/cag;

    iget-object v2, v0, Lg/bwy;->b:Lg/mo;

    invoke-virtual {v2, v1}, Lg/mo;->h(Lg/dwg;)V

    new-instance v1, Lg/hdd;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v3, Lg/hdd;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v5, Lg/hdd;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v7, Lg/hdd;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v9, Lg/hdd;

    const/4 v10, 0x4

    invoke-direct {v9, v0, v10}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v11, Lg/hdd;

    const/4 v12, 0x5

    invoke-direct {v11, v0, v12}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v13, Lg/hdd;

    const/4 v14, 0x6

    invoke-direct {v13, v0, v14}, Lg/hdd;-><init>(Lg/bwy;I)V

    new-instance v15, Lg/hdd;

    const/16 p1, 0x0

    const/4 v2, 0x7

    invoke-direct {v15, v0, v2}, Lg/hdd;-><init>(Lg/bwy;I)V

    const/16 v16, 0x7

    new-instance v2, Lg/fov;

    invoke-direct {v2, v0}, Lg/fov;-><init>(Lg/bwy;)V

    const/16 v17, 0x1

    new-instance v4, Lg/hdd;

    const/16 v18, 0x2

    const/16 v6, 0x8

    invoke-direct {v4, v0, v6}, Lg/hdd;-><init>(Lg/bwy;I)V

    const/16 v19, 0x8

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/util/function/Function;

    aput-object v1, v6, p1

    aput-object v3, v6, v17

    aput-object v5, v6, v18

    aput-object v7, v6, v8

    aput-object v9, v6, v10

    aput-object v11, v6, v12

    aput-object v13, v6, v14

    aput-object v15, v6, v16

    aput-object v2, v6, v19

    const/16 v1, 0x9

    aput-object v4, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lg/bwy;->a:Ljava/util/List;

    return-void
.end method

.method public final j(Lg/hed;)V
    .locals 2

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lg/bwy;->d(Lg/hed;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/bwy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lg/bwy;->d(Lg/hed;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Types fix failed"

    invoke-static {p1, v1, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Ljava/util/LinkedHashSet;)Lj$/util/Optional;
    .locals 2

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/fov;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lg/fov;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/bev;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lg/bev;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lg/bwy;->c:Lg/cag;

    iget-object v0, v0, Lg/cag;->e:Lg/cwm;

    iget-object v0, v0, Lg/cwm;->c:Lg/ens;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lg/hed;)Z
    .locals 11

    iget-object v0, p1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/vm;

    invoke-virtual {v3}, Lg/vm;->i()Z

    move-result v4

    iget-object v5, v3, Lg/vm;->h:Lg/ffr;

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_2
    iget-object v4, v5, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v4, Lg/cwx;

    invoke-virtual {v4}, Lg/cwx;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lg/bwy;->p(Lg/hed;Lg/vm;)Z

    move-result v7
    :try_end_0
    .catch Lg/blf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to calculate best type for var: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8, v7}, Lg/ebh;->bt(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_4
    invoke-static {v4, v3}, Lg/bwy;->e(Lg/cwx;Lg/vm;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    iget-object v8, p0, Lg/bwy;->c:Lg/cag;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lg/zf;->c:Lg/zf;

    invoke-virtual {v8, p1, v3, v7, v9}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    move-result-object v7

    sget-object v8, Lg/dgr;->CHANGED:Lg/dgr;

    if-ne v7, v8, :cond_7

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_8

    :goto_5
    goto :goto_3

    :cond_8
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v5, v5, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fog;

    invoke-interface {v7}, Lg/fog;->getType()Lg/cwx;

    move-result-object v7

    invoke-virtual {v7}, Lg/cwx;->h()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lg/cwx;->m()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    iget-object v5, p1, Lg/hed;->am:Lg/cci;

    iget-object v5, v5, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v5, Lg/dwg;->l:Lg/cut;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    invoke-virtual {v7}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v8

    iget-object v9, p0, Lg/bwy;->c:Lg/cag;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lg/zf;->d:Lg/zf;

    invoke-virtual {v9, p1, v3, v8, v10}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    move-result-object v8

    sget-object v9, Lg/dgr;->CHANGED:Lg/dgr;

    if-ne v8, v9, :cond_e

    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_1

    goto :goto_5

    :goto_8
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    throw p1

    :cond_f
    return v2
.end method

.method public final p(Lg/hed;Lg/vm;)Z
    .locals 3

    iget-object v0, p2, Lg/vm;->h:Lg/ffr;

    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Lg/bwy;->n(Ljava/util/LinkedHashSet;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    iget-object v1, p0, Lg/bwy;->c:Lg/cag;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/zf;->c:Lg/zf;

    invoke-virtual {v1, p1, p2, v0, v2}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    move-result-object p1

    sget-object p2, Lg/dgr;->REJECT:Lg/dgr;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lg/dgr;->CHANGED:Lg/dgr;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

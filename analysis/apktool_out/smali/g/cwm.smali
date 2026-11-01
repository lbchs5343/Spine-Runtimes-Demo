.class public final Lg/cwm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Lg/dwg;

.field public final c:Lg/ens;

.field public final d:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cwm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cwm;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/dwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cwm;->b:Lg/dwg;

    new-instance p1, Lg/ens;

    invoke-direct {p1, p0}, Lg/ens;-><init>(Lg/cwm;)V

    iput-object p1, p0, Lg/cwm;->c:Lg/ens;

    invoke-static {p1}, Lj$/util/Comparator$b;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lg/cwm;->d:Ljava/util/Comparator;

    return-void
.end method

.method public static e(Lg/cwx;Lg/cwx;)Lg/dho;
    .locals 3

    sget-object v0, Lg/cwx;->ad:Lg/gnh;

    if-ne p1, v0, :cond_0

    sget-object p0, Lg/dho;->NARROW:Lg/dho;

    return-object p0

    :cond_0
    sget-object v0, Lg/cwx;->ag:Lg/gnh;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lg/cwx;->m()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lg/aoe;

    if-eqz v0, :cond_2

    :cond_1
    sget-object p0, Lg/dho;->NARROW:Lg/dho;

    return-object p0

    :cond_2
    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {p0, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lg/aoe;

    if-eqz v0, :cond_3

    sget-object p0, Lg/dho;->WIDER:Lg/dho;

    return-object p0

    :cond_3
    instance-of v0, p0, Lg/cff;

    if-eqz v0, :cond_4

    check-cast p0, Lg/cff;

    iget-object p0, p0, Lg/cff;->a:Lg/bjt;

    goto :goto_0

    :cond_4
    instance-of p0, p0, Lg/aoe;

    if-eqz p0, :cond_5

    sget-object p0, Lg/bjt;->ARRAY:Lg/bjt;

    goto :goto_0

    :cond_5
    sget-object p0, Lg/bjt;->OBJECT:Lg/bjt;

    :goto_0
    invoke-virtual {p1}, Lg/cwx;->g()[Lg/bjt;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    if-ne v2, p0, :cond_6

    sget-object p0, Lg/dho;->NARROW:Lg/dho;

    return-object p0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    sget-object p0, Lg/dho;->CONFLICT:Lg/dho;

    return-object p0
.end method

.method public static f(Lg/cwx;)Lg/dho;
    .locals 3

    invoke-virtual {p0}, Lg/cwx;->h()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/bjt;->ARRAY:Lg/bjt;

    invoke-virtual {p0, v0}, Lg/cwx;->o(Lg/bjt;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lg/dho;->NARROW:Lg/dho;

    return-object p0

    :cond_0
    sget-object p0, Lg/dho;->CONFLICT:Lg/dho;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lg/cwx;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {p0, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lg/dho;->NARROW:Lg/dho;

    return-object p0

    :cond_2
    sget-object p0, Lg/dho;->CONFLICT:Lg/dho;

    return-object p0

    :cond_3
    instance-of v0, p0, Lg/cff;

    if-eqz v0, :cond_4

    sget-object p0, Lg/dho;->CONFLICT:Lg/dho;

    return-object p0

    :cond_4
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unprocessed type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in array compare"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Lg/bjt;)B
    .locals 3

    sget-object v0, Lg/ml;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should not be here"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final h(Lg/cwx;Lg/cwx;)Lg/dho;
    .locals 4

    if-eq p1, p2, :cond_16

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lg/cwx;->h()Z

    move-result v0

    invoke-virtual {p2}, Lg/cwx;->h()Z

    move-result v1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lg/cwm;->e(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2, p1}, Lg/cwm;->e(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    invoke-virtual {p1}, Lg/dho;->c()Lg/dho;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p1, Lg/aoe;

    instance-of v2, p2, Lg/aoe;

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_3

    invoke-static {p2}, Lg/cwm;->f(Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1}, Lg/cwm;->f(Lg/cwx;)Lg/dho;

    move-result-object p1

    invoke-virtual {p1}, Lg/dho;->c()Lg/dho;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lg/cwx;->k()Lg/cwx;

    move-result-object p1

    invoke-virtual {p2}, Lg/cwx;->k()Lg/cwx;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lg/cwx;->g()[Lg/bjt;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p2}, Lg/cwx;->g()[Lg/bjt;

    move-result-object p2

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    if-lez p1, :cond_6

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_6
    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_7
    instance-of v0, p1, Lg/cff;

    instance-of v1, p2, Lg/cff;

    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v2

    invoke-virtual {p2}, Lg/cwx;->m()Z

    move-result v3

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1, p2}, Lg/cwm;->j(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_a
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lg/cwx;->f()Lg/bjt;

    move-result-object p1

    invoke-virtual {p2}, Lg/cwx;->f()Lg/bjt;

    move-result-object p2

    sget-object v0, Lg/bjt;->BOOLEAN:Lg/bjt;

    if-eq p1, v0, :cond_13

    if-ne p2, v0, :cond_b

    goto :goto_1

    :cond_b
    sget-object v0, Lg/bjt;->VOID:Lg/bjt;

    if-eq p1, v0, :cond_11

    if-ne p2, v0, :cond_c

    goto :goto_0

    :cond_c
    sget-object v0, Lg/bjt;->BYTE:Lg/bjt;

    if-ne p1, v0, :cond_d

    sget-object v0, Lg/bjt;->CHAR:Lg/bjt;

    if-ne p2, v0, :cond_d

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_d
    sget-object v0, Lg/bjt;->SHORT:Lg/bjt;

    if-ne p1, v0, :cond_e

    sget-object v0, Lg/bjt;->CHAR:Lg/bjt;

    if-ne p2, v0, :cond_e

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_e
    invoke-static {p1}, Lg/cwm;->g(Lg/bjt;)B

    move-result p1

    invoke-static {p2}, Lg/cwm;->g(Lg/bjt;)B

    move-result p2

    if-le p1, p2, :cond_f

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_f
    if-ge p1, p2, :cond_10

    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_10
    sget-object p1, Lg/dho;->EQUAL:Lg/dho;

    return-object p1

    :cond_11
    :goto_0
    if-ne p1, p2, :cond_12

    sget-object p1, Lg/dho;->EQUAL:Lg/dho;

    return-object p1

    :cond_12
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_13
    :goto_1
    if-ne p1, p2, :cond_14

    sget-object p1, Lg/dho;->EQUAL:Lg/dho;

    return-object p1

    :cond_14
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_15
    sget-object v0, Lg/cwm;->a:Lg/dba;

    const-string v1, "Type compare function not complete, can\'t compare {} and {}"

    invoke-interface {v0, p1, v1, p2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_16
    :goto_2
    sget-object p1, Lg/dho;->EQUAL:Lg/dho;

    return-object p1
.end method

.method public final i(Lg/cwx;Lg/cwx;)Lg/dho;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lg/btl;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lg/cwx;->q()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object p1, v1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lg/cwx;->q()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object p2, v1

    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lg/dho;->EQUAL:Lg/dho;

    return-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v0, :cond_5

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_5
    if-nez v1, :cond_6

    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_6
    if-ne v0, v2, :cond_7

    if-ne v1, v2, :cond_7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/cwx;

    invoke-virtual {p0, p1, p2}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_8
    instance-of v0, p2, Lg/gzg;

    if-eqz v0, :cond_9

    sget-object p1, Lg/dho;->CONFLICT_BY_GENERIC:Lg/dho;

    return-object p1

    :cond_9
    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {p2, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lg/cwx;->q()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_a

    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_a
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_b
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    invoke-virtual {p0, v0, p2}, Lg/cwm;->j(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v0

    invoke-virtual {v0}, Lg/dho;->e()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_e
    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_f
    :goto_2
    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1
.end method

.method public final j(Lg/cwx;Lg/cwx;)Lg/dho;
    .locals 7

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    instance-of v1, p1, Lg/btl;

    instance-of v2, p2, Lg/btl;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lg/cwx;->bm()Z

    move-result v3

    invoke-virtual {p2}, Lg/cwx;->bm()Z

    move-result v4

    if-nez v1, :cond_15

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    sget-object p1, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    return-object p1

    :cond_2
    sget-object p1, Lg/dho;->WIDER_BY_GENERIC:Lg/dho;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lg/cwx;->bl()Lg/be;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lg/cwx;->bl()Lg/be;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lg/cwx;->bl()Lg/be;

    move-result-object v0

    invoke-virtual {p2}, Lg/cwx;->bl()Lg/be;

    move-result-object v1

    sget-object v2, Lg/be;->UNBOUND:Lg/be;

    if-ne v0, v2, :cond_4

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_4
    if-ne v1, v2, :cond_5

    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lg/cwx;->bo()Lg/cwx;

    move-result-object p1

    invoke-virtual {p2}, Lg/cwx;->bo()Lg/cwx;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    if-ne v0, v1, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_7
    invoke-virtual {p1}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_b

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cwx;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    invoke-virtual {p0, v5, v6}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v5

    sget-object v6, Lg/dho;->EQUAL:Lg/dho;

    if-eq v5, v6, :cond_9

    return-object v5

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v0

    invoke-virtual {p2}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v2

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {p0, v0, v2}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_b
    sget-object v0, Lg/cwx;->t:Lg/aog;

    invoke-virtual {p1, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p2, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lg/cwm;->b:Lg/dwg;

    invoke-static {v0, p1, p2}, Lg/cwx;->be(Lg/dwg;Lg/cwx;Lg/cwx;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_d
    invoke-static {v0, p2, p1}, Lg/cwx;->be(Lg/dwg;Lg/cwx;Lg/cwx;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_e
    invoke-virtual {p1}, Lg/cwx;->m()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v2, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_f
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_12

    invoke-virtual {p2}, Lg/cwx;->m()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :cond_10
    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_12
    :goto_3
    sget-object p1, Lg/dho;->UNKNOWN:Lg/dho;

    return-object p1

    :cond_13
    :goto_4
    if-eqz v2, :cond_14

    sget-object p1, Lg/dho;->WIDER:Lg/dho;

    return-object p1

    :cond_14
    sget-object p1, Lg/dho;->NARROW:Lg/dho;

    return-object p1

    :cond_15
    :goto_5
    invoke-virtual {p1}, Lg/cwx;->bo()Lg/cwx;

    move-result-object v0

    invoke-virtual {p2}, Lg/cwx;->bo()Lg/cwx;

    move-result-object v3

    if-nez v0, :cond_16

    if-eqz v3, :cond_18

    :cond_16
    if-eqz v0, :cond_17

    if-eqz v2, :cond_17

    invoke-virtual {p1}, Lg/cwx;->bl()Lg/be;

    move-result-object v0

    sget-object v2, Lg/be;->UNBOUND:Lg/be;

    if-ne v0, v2, :cond_17

    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_17
    if-eqz v1, :cond_18

    if-eqz v3, :cond_18

    invoke-virtual {p2}, Lg/cwx;->bl()Lg/be;

    move-result-object v0

    sget-object v2, Lg/be;->UNBOUND:Lg/be;

    if-ne v0, v2, :cond_18

    sget-object p1, Lg/dho;->CONFLICT:Lg/dho;

    return-object p1

    :cond_18
    if-eqz v1, :cond_19

    invoke-virtual {p0, p1, p2}, Lg/cwm;->i(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-virtual {p0, p2, p1}, Lg/cwm;->i(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    invoke-virtual {p1}, Lg/dho;->c()Lg/dho;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lg/egl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/egl;->a:I

    iput-object p2, p0, Lg/egl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/egl;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/egl;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/egl;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lg/egl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/amh;

    check-cast p1, Lg/vm;

    iget-object v0, v0, Lg/amh;->c:Lg/eie;

    invoke-virtual {v0, p1}, Lg/eie;->q(Lg/vm;)Lg/bfz;

    move-result-object p1

    iget-boolean p1, p1, Lg/bfz;->e:Z

    return p1

    :pswitch_0
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lg/fza;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    check-cast p1, Lg/fza;

    iget-object v0, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    iget-object v1, v0, Lg/hed;->aj:Lg/fza;

    invoke-virtual {p1, v1}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lg/hed;->ad:Lg/fza;

    invoke-virtual {p1, v0}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_2
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/abi;

    check-cast p1, Lg/abi;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_3
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/gks;

    check-cast p1, Lg/gks;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1

    :pswitch_4
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/amj;

    check-cast p1, Lg/gjz;

    iget-object v1, p1, Lg/gjz;->b:Lg/cih;

    if-ne v0, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    instance-of v1, v0, Lg/cfm;

    if-eqz v1, :cond_5

    iget-object p1, p1, Lg/gjz;->a:Lg/cfm;

    invoke-static {v0, p1}, Lg/gs;->ag(Lg/amj;Lg/cfm;)Z

    move-result p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_5
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/evf;

    check-cast p1, Lg/fza;

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_6
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lg/gay;

    iget-object p1, p1, Lg/gay;->c:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_7
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/afa;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/afa;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    :goto_5
    return p1

    :pswitch_8
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    check-cast p1, Lg/hcd;

    iget-object p1, p1, Lg/hcd;->e:Lg/cwx;

    invoke-virtual {p1}, Lg/cwx;->e()Lg/cwx;

    move-result-object p1

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_9
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/dsj;

    check-cast p1, Lg/eek;

    check-cast p1, Lg/adz;

    iget-object p1, p1, Lg/adz;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_a
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/fzn;

    check-cast p1, Lg/gks;

    iget-object v0, v0, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_b
    iget-object v0, p0, Lg/egl;->b:Ljava/lang/Object;

    check-cast v0, Lg/ggg;

    check-cast p1, Lg/ebh;

    sget-object v1, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Lg/ggg;->c:Z

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 p1, 0x1

    :goto_7
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

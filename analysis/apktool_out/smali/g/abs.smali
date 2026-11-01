.class public final synthetic Lg/abs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/abs;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/mo;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lg/abs;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lg/abs;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/gpf;

    iget-object v0, p1, Lg/gpf;->c:Lg/gsh;

    iget-object p1, p1, Lg/gpf;->a:Lg/cwx;

    invoke-virtual {v0, p1}, Lg/flv;->f(Lg/cwx;)V

    return-void

    :pswitch_0
    check-cast p1, Lg/vm;

    iget-object v0, p1, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/abi;

    iget-object v2, p1, Lg/vm;->h:Lg/ffr;

    iget-object v2, v2, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    iget-object v3, v1, Lg/eek;->ai:Lg/gks;

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    iget-object v3, v3, Lg/vm;->h:Lg/ffr;

    iget-object v3, v3, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gsh;

    check-cast v3, Lg/gks;

    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    iget-object v3, v3, Lg/vm;->h:Lg/ffr;

    iget-object v3, v3, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-void

    :pswitch_1
    check-cast p1, Lg/epk;

    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    check-cast p1, Lg/lh;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    return-void

    :pswitch_2
    check-cast p1, Lg/cmy;

    iget-object v0, p1, Lg/cmy;->b:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v4

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_5

    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result v6

    if-eq v6, v2, :cond_3

    if-ne v6, v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lg/gqc;->ai()I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v1

    invoke-static {v0, v1}, Lg/awt;->an(Lg/gqc;I)[Lg/cqz;

    move-result-object v0

    new-instance v2, Lg/dl;

    invoke-static {p1, v4}, Lg/bls;->d(Lg/cmy;I)I

    move-result v3

    sget-object v4, Lg/fwv;->SAME_FRAME:Lg/fwv;

    invoke-direct {v2, v3}, Lg/dl;-><init>(I)V

    iput v5, v2, Lg/dl;->a:I

    iput v1, v2, Lg/dl;->c:I

    iput-object v0, v2, Lg/dl;->d:[Lg/cqz;

    iput-object v2, p1, Lg/cmy;->a:Lg/dl;

    return-void

    :pswitch_3
    check-cast p1, Lg/cmy;

    iget-object v0, p1, Lg/cmy;->b:Lg/gqc;

    iget v4, p1, Lg/cmy;->c:I

    add-int/lit16 v4, v4, -0xfb

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result v7

    if-eq v7, v2, :cond_6

    if-ne v7, v1, :cond_7

    :cond_6
    invoke-virtual {v0}, Lg/gqc;->ai()I

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Lg/dl;

    invoke-static {p1, v5}, Lg/bls;->d(Lg/cmy;I)I

    move-result v1

    sget-object v2, Lg/fwv;->SAME_FRAME:Lg/fwv;

    invoke-direct {v0, v1}, Lg/dl;-><init>(I)V

    iput v3, v0, Lg/dl;->c:I

    iget-object v1, p1, Lg/cmy;->d:Lg/dl;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget v3, v1, Lg/dl;->a:I

    :goto_3
    sub-int/2addr v3, v4

    iput v3, v0, Lg/dl;->a:I

    iput-object v0, p1, Lg/cmy;->a:Lg/dl;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/abs;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

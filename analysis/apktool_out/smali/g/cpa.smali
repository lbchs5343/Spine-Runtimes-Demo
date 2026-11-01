.class public final synthetic Lg/cpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cci;


# direct methods
.method public synthetic constructor <init>(Lg/cci;I)V
    .locals 0

    iput p2, p0, Lg/cpa;->a:I

    iput-object p1, p0, Lg/cpa;->b:Lg/cci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/cpa;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/cpa;->a:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/cpa;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 7

    iget v0, p0, Lg/cpa;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lg/cpa;->b:Lg/cci;

    invoke-virtual {v0}, Lg/cci;->bn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lg/hcd;

    iget-object v0, p1, Lg/hcd;->h:Lg/gqc;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x1

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    aget v5, v1, v4

    iget v6, v0, Lg/gqc;->ab:I

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lg/hcd;->g:Lg/dsj;

    iget-object p1, p1, Lg/dsj;->a:Lg/cwx;

    iget-object v0, p0, Lg/cpa;->b:Lg/cci;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    invoke-virtual {p1, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return v3

    :pswitch_1
    check-cast p1, Lg/hed;

    invoke-virtual {p1}, Lg/hed;->bk()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    iget-object v0, p0, Lg/cpa;->b:Lg/cci;

    invoke-virtual {p1, v0}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/chf;

    instance-of v0, p1, Lg/hcd;

    if-eqz v0, :cond_4

    check-cast p1, Lg/hcd;

    iget-object p1, p1, Lg/hcd;->f:Lg/cci;

    iget-object v0, p0, Lg/cpa;->b:Lg/cci;

    invoke-virtual {p1, v0}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

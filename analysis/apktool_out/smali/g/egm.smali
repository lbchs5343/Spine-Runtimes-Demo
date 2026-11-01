.class public final synthetic Lg/egm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/hed;


# direct methods
.method public synthetic constructor <init>(Lg/enz;Lg/hed;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lg/egm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/egm;->b:Lg/hed;

    return-void
.end method

.method public synthetic constructor <init>(Lg/hed;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/egm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/egm;->b:Lg/hed;

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/egm;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/egm;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/egm;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lg/egm;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/gks;

    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v3, v4, :cond_2

    sget-object v3, Lg/acq;->j:Lg/acq;

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->j(Lg/fky;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lg/egm;->b:Lg/hed;

    iget-object v3, v3, Lg/hed;->am:Lg/cci;

    iget-object v3, v3, Lg/cci;->ab:Lg/dwg;

    iget-object v3, v3, Lg/dwg;->b:Lg/fnq;

    move-object v4, v1

    check-cast v4, Lg/eew;

    invoke-virtual {v3, v4}, Lg/fnq;->r(Lg/gif;)Lg/ebp;

    move-result-object v3

    instance-of v4, v3, Lg/hed;

    if-eqz v4, :cond_1

    check-cast v3, Lg/hed;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lg/acq;->ab:Lg/acq;

    iget-object v5, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->j(Lg/fky;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p1}, Lg/eek;->aq(Lg/gsh;)I

    move-result v1

    invoke-virtual {v3}, Lg/hed;->az()Ljava/util/List;

    move-result-object v3

    if-ltz v1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/gks;->j()Lg/cwx;

    move-result-object v0

    invoke-virtual {v1}, Lg/gks;->j()Lg/cwx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    :pswitch_0
    check-cast p1, Lg/fza;

    sget-object v0, Lg/csv;->REMOVE:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lg/acq;->aa:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/guv;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lg/dec;->a:Lg/dba;

    const-string v1, "Block {} not deleted, method: {}"

    iget-object v2, p0, Lg/egm;->b:Lg/hed;

    invoke-interface {v0, p1, v1, v2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const/4 p1, 0x0

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lg/eio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/guv;


# direct methods
.method public synthetic constructor <init>(Lg/guv;I)V
    .locals 0

    iput p2, p0, Lg/eio;->a:I

    iput-object p1, p0, Lg/eio;->b:Lg/guv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/eio;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/eio;->a:I

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

    iget v0, p0, Lg/eio;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lg/eio;->a:I

    check-cast p1, Lg/fza;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eio;->b:Lg/guv;

    iget-object v0, v0, Lg/guv;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    sget-object v0, Lg/acq;->al:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/coe;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/coe;->a:Ljava/util/List;

    iget-object v0, p0, Lg/eio;->b:Lg/guv;

    iget-object v0, v0, Lg/guv;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

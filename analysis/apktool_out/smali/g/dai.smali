.class public final synthetic Lg/dai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cci;


# direct methods
.method public synthetic constructor <init>(Lg/cci;I)V
    .locals 0

    iput p2, p0, Lg/dai;->a:I

    iput-object p1, p0, Lg/dai;->b:Lg/cci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/dai;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/dai;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/ghu;

    new-instance v0, Lg/hed;

    iget-object v1, p0, Lg/dai;->b:Lg/cci;

    invoke-direct {v0, v1, p1}, Lg/hed;-><init>(Lg/cci;Lg/ghu;)V

    invoke-interface {p1}, Lg/ghu;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/lh;->t(Ljava/util/List;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lg/eok;

    iget-object v0, p0, Lg/dai;->b:Lg/cci;

    iget-object v1, v0, Lg/cci;->ab:Lg/dwg;

    invoke-static {v1, p1}, Lg/dsj;->f(Lg/dwg;Lg/cba;)Lg/dsj;

    move-result-object v1

    new-instance v2, Lg/hcd;

    invoke-interface {p1}, Lg/eok;->a()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lg/hcd;-><init>(Lg/cci;Lg/dsj;I)V

    invoke-interface {p1}, Lg/eok;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/lh;->t(Ljava/util/List;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/dai;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

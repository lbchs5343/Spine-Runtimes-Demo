.class public final synthetic Lg/ecm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dxg;

.field public final synthetic c:Lg/cci;


# direct methods
.method public synthetic constructor <init>(Lg/dxg;Lg/cci;I)V
    .locals 0

    iput p3, p0, Lg/ecm;->a:I

    iput-object p1, p0, Lg/ecm;->b:Lg/dxg;

    iput-object p2, p0, Lg/ecm;->c:Lg/cci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lg/ecm;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ecm;->c:Lg/cci;

    check-cast p1, Lg/ks;

    iget-object v1, p0, Lg/ecm;->b:Lg/dxg;

    invoke-virtual {v1, v0, p1}, Lg/dxg;->l(Lg/cci;Lg/ks;)V

    return-void

    :pswitch_0
    check-cast p1, Lg/hed;

    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/ks;

    iget-object v1, p0, Lg/ecm;->b:Lg/dxg;

    iget-object v2, p0, Lg/ecm;->c:Lg/cci;

    invoke-virtual {v1, v2, v0}, Lg/dxg;->l(Lg/cci;Lg/ks;)V

    sget-object v0, Lg/ao;->i:Lg/ao;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/gca;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/gca;->a:Ljava/util/ArrayList;

    new-instance v0, Lg/ecm;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lg/ecm;-><init>(Lg/dxg;Lg/cci;I)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lg/hcd;

    sget-object v0, Lg/ao;->q:Lg/ao;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/ks;

    iget-object v0, p0, Lg/ecm;->b:Lg/dxg;

    iget-object v1, p0, Lg/ecm;->c:Lg/cci;

    invoke-virtual {v0, v1, p1}, Lg/dxg;->l(Lg/cci;Lg/ks;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/ecm;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

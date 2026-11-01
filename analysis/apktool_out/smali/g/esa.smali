.class public final synthetic Lg/esa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/esa;->a:I

    iput-object p2, p0, Lg/esa;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/esa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/esa;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lg/aea;

    check-cast p2, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lg/guv;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v1, p2, v2}, Lg/guv;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/esa;->b:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    check-cast p1, Lg/aea;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lg/aea;->g:Z

    iget-object p2, p1, Lg/aea;->c:Ljava/util/ArrayList;

    new-instance v1, Lg/esk;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {p2, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object p2, v0, Lg/hed;->aj:Lg/fza;

    iget-object p1, p1, Lg/aea;->i:Lg/fza;

    invoke-static {p2, p1}, Lg/giq;->l(Lg/fza;Lg/fza;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/esa;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    check-cast p2, Lg/chf;

    invoke-interface {p2}, Lg/chf;->c()Lg/dsj;

    move-result-object v1

    iget-object v1, v1, Lg/dsj;->a:Lg/cwx;

    sget-object v2, Lg/cwx;->an:Lg/cff;

    invoke-virtual {v1, v2}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Lg/hcd;

    if-eqz v1, :cond_1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Lg/hcd;

    iget-object v1, p2, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->be()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/gqc;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lg/esa;->a:I

    invoke-static {p0, p1}, Lj$/util/function/h;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

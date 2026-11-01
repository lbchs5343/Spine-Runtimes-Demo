.class public final synthetic Lg/ean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/sm;


# direct methods
.method public synthetic constructor <init>(Lg/sm;I)V
    .locals 0

    iput p2, p0, Lg/ean;->a:I

    iput-object p1, p0, Lg/ean;->b:Lg/sm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lg/ean;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lg/ean;->b:Lg/sm;

    iget-object v0, v0, Lg/sm;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    :pswitch_0
    sget-object v0, Lg/acq;->m:Lg/acq;

    iget-object v1, p0, Lg/ean;->b:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/frs;

    if-nez v2, :cond_0

    new-instance v2, Lg/frs;

    invoke-direct {v2, v0}, Lg/frs;-><init>(Lg/acq;)V

    new-instance v0, Lg/agx;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lg/sm;->i(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, v2, Lg/frs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/ean;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

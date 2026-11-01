.class public final synthetic Lg/fxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ejh;


# direct methods
.method public synthetic constructor <init>(Lg/ejh;I)V
    .locals 0

    iput p2, p0, Lg/fxo;->a:I

    iput-object p1, p0, Lg/fxo;->b:Lg/ejh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/fxo;->a:I

    check-cast p1, Lg/hab;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fxo;->b:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->c:Lg/hed;

    sget-object v1, Lg/acq;->af:Lg/acq;

    invoke-virtual {v0, v1, p1}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fxo;->b:Lg/ejh;

    iget-object v0, v0, Lg/ejh;->c:Lg/hed;

    sget-object v1, Lg/acq;->af:Lg/acq;

    invoke-virtual {v0, v1, p1}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/fxo;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

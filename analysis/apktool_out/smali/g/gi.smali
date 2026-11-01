.class public final synthetic Lg/gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/pj;


# direct methods
.method public synthetic constructor <init>(Lg/pj;I)V
    .locals 0

    iput p2, p0, Lg/gi;->a:I

    iput-object p1, p0, Lg/gi;->b:Lg/pj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg/gi;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gi;->b:Lg/pj;

    check-cast p1, Lg/hed;

    invoke-static {v0, p1}, Lg/cmb;->h(Lg/pj;Lg/hed;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/gi;->b:Lg/pj;

    check-cast p1, Lg/cci;

    invoke-static {v0, p1}, Lg/cmb;->w(Lg/pj;Lg/cci;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/gi;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lg/dti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/duk;


# direct methods
.method public synthetic constructor <init>(Lg/duk;I)V
    .locals 0

    iput p2, p0, Lg/dti;->a:I

    iput-object p1, p0, Lg/dti;->b:Lg/duk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/dti;->a:I

    check-cast p1, Lg/hcd;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dti;->b:Lg/duk;

    iget-object v0, v0, Lg/duk;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lg/hcd;->g:Lg/dsj;

    iget-object v1, v1, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dti;->b:Lg/duk;

    iget-object v0, v0, Lg/duk;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lg/hcd;->g:Lg/dsj;

    iget-object v1, v1, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/dti;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

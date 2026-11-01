.class public final synthetic Lg/bwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/eak;

.field public final synthetic c:Lg/hed;


# direct methods
.method public synthetic constructor <init>(Lg/eak;Lg/hed;I)V
    .locals 0

    iput p3, p0, Lg/bwe;->a:I

    iput-object p1, p0, Lg/bwe;->b:Lg/eak;

    iput-object p2, p0, Lg/bwe;->c:Lg/hed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/bwe;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bwe;->c:Lg/hed;

    check-cast p1, Lg/ghr;

    iget-object v1, p0, Lg/bwe;->b:Lg/eak;

    invoke-virtual {v1, v0, p1}, Lg/eak;->bd(Lg/hed;Lg/ghr;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bwe;->c:Lg/hed;

    check-cast p1, Lg/hcd;

    iget-object v1, p0, Lg/bwe;->b:Lg/eak;

    invoke-virtual {v1, v0, p1}, Lg/eak;->be(Lg/hed;Lg/ebh;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/bwe;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

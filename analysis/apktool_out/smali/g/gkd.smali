.class public final synthetic Lg/gkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lg/gkd;->a:I

    iput p1, p0, Lg/gkd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/gkd;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/fqt;

    iget v0, p1, Lg/fqt;->c:I

    iget v1, p0, Lg/gkd;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lg/fqt;->c:I

    return-void

    :pswitch_0
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lg/gkd;->b:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/gkd;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lg/gtj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ba;

.field public final synthetic c:Lg/ggg;


# direct methods
.method public synthetic constructor <init>(Lg/ba;Lg/ggg;I)V
    .locals 0

    iput p3, p0, Lg/gtj;->a:I

    iput-object p1, p0, Lg/gtj;->b:Lg/ba;

    iput-object p2, p0, Lg/gtj;->c:Lg/ggg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/gtj;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/gtj;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gtj;->c:Lg/ggg;

    check-cast p1, Lg/cwx;

    iget-object v1, p0, Lg/gtj;->b:Lg/ba;

    invoke-virtual {v1, v0, p1}, Lg/ba;->d(Lg/ggg;Lg/cwx;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lg/gtj;->c:Lg/ggg;

    check-cast p1, Lg/cwx;

    iget-object v1, p0, Lg/gtj;->b:Lg/ba;

    invoke-virtual {v1, v0, p1}, Lg/ba;->d(Lg/ggg;Lg/cwx;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/gtj;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

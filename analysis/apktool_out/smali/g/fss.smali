.class public final synthetic Lg/fss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/fss;->a:I

    iput-object p1, p0, Lg/fss;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/fss;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/fss;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/fss;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fss;->b:Ljava/lang/Object;

    check-cast v0, Lg/emr;

    iget-object v1, p0, Lg/fss;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    check-cast p1, Lg/cwx;

    invoke-virtual {v0, p1, v1}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lg/fss;->b:Ljava/lang/Object;

    check-cast v0, Lg/emr;

    iget-object v1, p0, Lg/fss;->c:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    check-cast p1, Lg/cwx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lg/emr;->q(Lg/hed;Lg/cwx;)V

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lg/fss;->b:Ljava/lang/Object;

    check-cast v0, Lg/hay;

    iget-object v1, p0, Lg/fss;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    check-cast p1, Lg/eek;

    iget-object v2, p1, Lg/eek;->ah:Lg/hay;

    if-ne v2, v0, :cond_1

    check-cast p1, Lg/adz;

    iget-object p1, p1, Lg/adz;->a:Ljava/lang/Object;

    check-cast p1, Lg/dsj;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/fss;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

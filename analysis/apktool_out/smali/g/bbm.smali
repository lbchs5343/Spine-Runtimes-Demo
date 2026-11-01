.class public final synthetic Lg/bbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;I)V
    .locals 0

    iput p2, p0, Lg/bbm;->a:I

    iput-object p1, p0, Lg/bbm;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/bbm;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/cwx;

    new-instance v0, Lg/gr;

    const/4 v1, 0x1

    iget-object v2, p0, Lg/bbm;->b:Ljava/util/HashSet;

    invoke-direct {v0, v2, v1}, Lg/gr;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {p1, v0}, Lg/cwx;->bh(Ljava/util/function/Function;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bbm;->b:Ljava/util/HashSet;

    check-cast p1, Lg/gks;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/bbm;->b:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    check-cast p1, Lg/gsh;

    instance-of v0, p1, Lg/ehh;

    if-eqz v0, :cond_0

    check-cast p1, Lg/ehh;

    invoke-interface {p1}, Lg/ehh;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/bbm;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/bbm;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

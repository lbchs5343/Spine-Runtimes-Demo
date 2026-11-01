.class public final synthetic Lg/oe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/oe;->b:I

    iput-object p1, p0, Lg/oe;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/oe;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/oe;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/oe;->b:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lg/oe;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/oe;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lg/oe;->d:Ljava/lang/Object;

    check-cast v1, Lg/ebh;

    iget-object v2, p0, Lg/oe;->a:Ljava/lang/Object;

    check-cast v2, Lg/cwx;

    check-cast p1, Lg/cwx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, p1, Lg/btl;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cwx;

    invoke-virtual {v4}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lg/cwx;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/cwx;->p(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type variable: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lg/oe;->c:Ljava/lang/Object;

    check-cast v0, Lg/emr;

    iget-object v1, p0, Lg/oe;->d:Ljava/lang/Object;

    check-cast v1, Lg/cwx;

    iget-object v2, p0, Lg/oe;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    invoke-virtual {v0, v1, v1, p1}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lg/oe;->c:Ljava/lang/Object;

    check-cast v0, Lg/cqv;

    iget-object v1, p0, Lg/oe;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/oe;->a:Ljava/lang/Object;

    check-cast v2, [B

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1, v2}, Lg/cqv;->g(Ljava/lang/String;I[B)Lg/eyc;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/oe;->b:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

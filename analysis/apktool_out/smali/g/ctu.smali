.class public final synthetic Lg/ctu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/ctu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/ctu;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/boj;

    check-cast p2, Lg/erz;

    const-string v0, "acc"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lg/erz;->getKey()Lg/efi;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object p1

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lg/bmr;->j:Lg/bmr;

    invoke-interface {p1, v1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v2

    check-cast v2, Lg/dic;

    if-nez v2, :cond_1

    new-instance v0, Lg/eyx;

    invoke-direct {v0, p1, p2}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, Lg/eyx;

    invoke-direct {p1, p2, v2}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lg/eyx;

    new-instance v1, Lg/eyx;

    invoke-direct {v1, p1, p2}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    invoke-direct {v0, v1, v2}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lg/erz;

    const-string v0, "acc"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

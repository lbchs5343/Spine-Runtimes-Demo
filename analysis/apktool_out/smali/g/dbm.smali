.class public final synthetic Lg/dbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/dbm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lg/dbm;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/arn;

    iget p1, p1, Lg/arn;->a:I

    return p1

    :pswitch_0
    check-cast p1, Lg/vm;

    iget p1, p1, Lg/vm;->g:I

    return p1

    :pswitch_1
    check-cast p1, Lg/vm;

    iget p1, p1, Lg/vm;->f:I

    return p1

    :pswitch_2
    check-cast p1, Lg/azy;

    iget p1, p1, Lg/azy;->d:I

    return p1

    :pswitch_3
    check-cast p1, Lg/ebh;

    iget p1, p1, Lg/ccm;->bp:I

    return p1

    :pswitch_4
    check-cast p1, Lg/cno;

    iget-object p1, p1, Lg/cno;->e:Lg/cci;

    invoke-virtual {p1}, Lg/cci;->az()I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Lg/cno;

    iget-object p1, p1, Lg/cno;->e:Lg/cci;

    invoke-virtual {p1}, Lg/cci;->az()I

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Lg/gks;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/gsh;->ae:Lg/eek;

    if-eqz p1, :cond_0

    iget p1, p1, Lg/eek;->ag:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    :pswitch_8
    check-cast p1, Lg/fha;

    invoke-virtual {p1}, Lg/fha;->d()B

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Lg/aht;

    iget-object p1, p1, Lg/aht;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, Lg/ebh;

    iget p1, p1, Lg/ccm;->bp:I

    return p1

    :pswitch_c
    check-cast p1, Lg/aea;

    iget p1, p1, Lg/aea;->h:I

    return p1

    :pswitch_d
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :pswitch_e
    check-cast p1, Lg/aea;

    iget-object p1, p1, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/dlz;
.super Lg/bgf;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lg/dlz;->a:I

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dq()Lg/cej;
    .locals 3

    iget v0, p0, Lg/dlz;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/dph;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lg/dph;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/exi;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lg/exi;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lg/dph;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lg/dph;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lg/exi;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lg/exi;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lg/exi;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lg/exi;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lg/fdn;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lg/fdn;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lg/dph;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lg/dph;-><init>(ILjava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/aqf;
.super Lg/fkb;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final c:Lg/cxc;


# direct methods
.method public synthetic constructor <init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/aqf;->b:I

    invoke-direct {p0, p1}, Lg/fkb;-><init>(Lg/cgy;)V

    iput-object p2, p0, Lg/aqf;->c:Lg/cxc;

    iput-object p3, p0, Lg/aqf;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()Lg/cro;
    .locals 3

    iget v0, p0, Lg/aqf;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/ea;

    invoke-direct {v0, p0}, Lg/ea;-><init>(Lg/aqf;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/dop;

    invoke-direct {v0, p0}, Lg/bnf;-><init>(Lg/fkb;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lg/fgi;

    iget-object v1, p0, Lg/fkb;->j:Lg/cgy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/fgi;-><init>(Lg/cgy;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lg/gvg;
    .locals 1

    iget v0, p0, Lg/aqf;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/aqf;->a:Ljava/lang/Object;

    check-cast v0, Lg/gvg;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/aqf;->a:Ljava/lang/Object;

    check-cast v0, Lg/gvg;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lg/cgy;)Lg/fkb;
    .locals 5

    iget v0, p0, Lg/aqf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aqf;->c:Lg/cxc;

    invoke-virtual {v0}, Lg/cxc;->g()Lg/cxc;

    move-result-object v0

    new-instance v1, Lg/aqf;

    iget-object v2, p0, Lg/aqf;->a:Ljava/lang/Object;

    check-cast v2, Lg/fza;

    const/4 v3, 0x2

    invoke-direct {v1, p1, v0, v2, v3}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lg/aqf;->c:Lg/cxc;

    invoke-virtual {v0}, Lg/cxc;->g()Lg/cxc;

    move-result-object v0

    iget-object v1, p0, Lg/aqf;->a:Ljava/lang/Object;

    check-cast v1, Lg/gvg;

    new-instance v2, Lg/gvg;

    iget-object v3, v1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    iget v4, v1, Lg/gvg;->e:I

    iget v1, v1, Lg/gvg;->b:I

    invoke-direct {v2, v3, v4, v1}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v1, Lg/aqf;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v0, v2, v3}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lg/aqf;->c:Lg/cxc;

    invoke-virtual {v0}, Lg/cxc;->g()Lg/cxc;

    move-result-object v0

    iget-object v1, p0, Lg/aqf;->a:Ljava/lang/Object;

    check-cast v1, Lg/gvg;

    new-instance v2, Lg/gvg;

    iget-object v3, v1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    iget v4, v1, Lg/gvg;->e:I

    iget v1, v1, Lg/gvg;->b:I

    invoke-direct {v2, v3, v4, v1}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v1, Lg/aqf;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lg/cxc;
    .locals 1

    iget v0, p0, Lg/aqf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aqf;->c:Lg/cxc;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/aqf;->c:Lg/cxc;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/aqf;->c:Lg/cxc;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lg/hco;
    .locals 1

    iget v0, p0, Lg/aqf;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lg/hco;->NOT_READY:Lg/hco;

    return-object v0

    :pswitch_0
    sget-object v0, Lg/hco;->NOT_READY:Lg/hco;

    return-object v0

    :pswitch_1
    sget-object v0, Lg/hco;->READY_TO_COMPARE:Lg/hco;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lg/aqf;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

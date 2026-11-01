.class public final Lg/vd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqx;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/vd;->b:I

    iput-object p2, p0, Lg/vd;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lg/vd;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/vd;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Lg/dqx;

    new-instance v3, Lg/aet;

    invoke-direct {v3, v2}, Lg/aet;-><init>([Lg/dqx;)V

    new-instance v4, Lg/dyz;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v4, v1, v0}, Lg/avu;-><init>(ILg/bdp;)V

    new-instance v1, Lg/ps;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lg/ps;-><init>([Lg/dqx;Lg/cvw;Lg/bnk;Lg/fjs;Lg/bdp;)V

    new-instance p1, Lg/lr;

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    invoke-static {p1, p1, v1}, Lg/dzm;->ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, p2, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0

    :pswitch_0
    move-object v5, p1

    iget-object p1, p0, Lg/vd;->c:Ljava/lang/Object;

    check-cast p1, Lg/fdf;

    new-instance v0, Lg/brx;

    invoke-direct {v0, v5}, Lg/brx;-><init>(Lg/fjs;)V

    invoke-virtual {p1, v0, p2}, Lg/fdf;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/fh;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $collector:Lg/fjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/fjs;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lg/yi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/yi;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/fjs;Lg/yi;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/fh;->$collector:Lg/fjs;

    iput-object p2, p0, Lg/fh;->this$0:Lg/yi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/fh;->label:I

    sget-object v2, Lg/dgi;->a:Lg/dgi;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/fh;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/hcc;

    iget-object v1, p0, Lg/fh;->$collector:Lg/fjs;

    iget-object v4, p0, Lg/fh;->this$0:Lg/yi;

    iget-object v5, v4, Lg/yi;->b:Lg/boj;

    iget v6, v4, Lg/yi;->c:I

    const/4 v7, -0x3

    if-ne v6, v7, :cond_2

    const/4 v6, -0x2

    :cond_2
    iget-object v7, v4, Lg/yi;->d:Lg/bqt;

    sget-object v8, Lg/dwt;->ATOMIC:Lg/dwt;

    new-instance v9, Lg/bwu;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lg/bwu;-><init>(Lg/yi;Lg/bdp;)V

    const/4 v4, 0x4

    invoke-static {v6, v7, v4}, Lg/eg;->r(ILg/bqt;I)Lg/djo;

    move-result-object v4

    invoke-static {p1, v5}, Lg/eyt;->ah(Lg/hcc;Lg/boj;)Lg/boj;

    move-result-object p1

    new-instance v5, Lg/dgs;

    invoke-direct {v5, p1, v4}, Lg/dgs;-><init>(Lg/boj;Lg/djo;)V

    invoke-virtual {v5, v8, v5, v9}, Lg/coh;->s(Lg/dwt;Lg/coh;Lg/bto;)V

    iput v3, p0, Lg/fh;->label:I

    invoke-static {v1, v5, v3, p0}, Lg/kj;->ac(Lg/fjs;Lg/bfl;ZLg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/fh;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/fh;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/fh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 3

    new-instance v0, Lg/fh;

    iget-object v1, p0, Lg/fh;->$collector:Lg/fjs;

    iget-object v2, p0, Lg/fh;->this$0:Lg/yi;

    invoke-direct {v0, v1, v2, p2}, Lg/fh;-><init>(Lg/fjs;Lg/yi;Lg/bdp;)V

    iput-object p1, v0, Lg/fh;->L$0:Ljava/lang/Object;

    return-object v0
.end method

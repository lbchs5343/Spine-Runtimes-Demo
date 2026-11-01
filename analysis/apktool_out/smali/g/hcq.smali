.class public final Lg/hcq;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lg/bjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bjx;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/bjx;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/hcq;->this$0:Lg/bjx;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/hcq;->label:I

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

    iget-object p1, p0, Lg/hcq;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/fjs;

    iget-object v1, p0, Lg/hcq;->this$0:Lg/bjx;

    iput v3, p0, Lg/hcq;->label:I

    check-cast v1, Lg/dvl;

    iget-object v1, v1, Lg/bjx;->g:Lg/fqc;

    invoke-virtual {v1, p1, p0}, Lg/fqc;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/fjs;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/hcq;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/hcq;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/hcq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance v0, Lg/hcq;

    iget-object v1, p0, Lg/hcq;->this$0:Lg/bjx;

    invoke-direct {v0, v1, p2}, Lg/hcq;-><init>(Lg/bjx;Lg/bdp;)V

    iput-object p1, v0, Lg/hcq;->L$0:Ljava/lang/Object;

    return-object v0
.end method

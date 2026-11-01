.class public final Lg/bqi;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $$this$callbackFlow:Lg/ayw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/ayw;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lg/ehm;


# direct methods
.method public constructor <init>(Lg/ehm;Lg/ayw;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/bqi;->this$0:Lg/ehm;

    iput-object p2, p0, Lg/bqi;->$$this$callbackFlow:Lg/ayw;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/bqi;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/bqi;->this$0:Lg/ehm;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p0, Lg/bqi;->label:I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, p0}, Lg/baf;->af(JLg/avu;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    sget v0, Lg/gx;->a:I

    iget-object v0, p0, Lg/bqi;->this$0:Lg/ehm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/bqi;->$$this$callbackFlow:Lg/ayw;

    new-instance v0, Lg/das;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/das;-><init>(I)V

    check-cast p1, Lg/dgs;

    invoke-virtual {p1, v0}, Lg/dgs;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/bqi;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/bqi;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/bqi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance p1, Lg/bqi;

    iget-object v0, p0, Lg/bqi;->this$0:Lg/ehm;

    iget-object v1, p0, Lg/bqi;->$$this$callbackFlow:Lg/ayw;

    invoke-direct {p1, v0, v1, p2}, Lg/bqi;-><init>(Lg/ehm;Lg/ayw;Lg/bdp;)V

    return-object p1
.end method

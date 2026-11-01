.class public final Lg/efj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final synthetic a:Lg/fjs;

.field public final synthetic c:Lg/avu;


# direct methods
.method public constructor <init>(Lg/fjs;Lg/bto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/efj;->a:Lg/fjs;

    check-cast p2, Lg/avu;

    iput-object p2, p0, Lg/efj;->c:Lg/avu;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lg/cfh;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/cfh;

    iget v1, v0, Lg/cfh;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/cfh;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/cfh;

    invoke-direct {v0, p0, p2}, Lg/cfh;-><init>(Lg/efj;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/cfh;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/cfh;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lg/cfh;->L$1:Ljava/lang/Object;

    check-cast p1, Lg/fjs;

    iget-object v2, v0, Lg/cfh;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    iput-object p1, v0, Lg/cfh;->L$0:Ljava/lang/Object;

    iget-object p2, p0, Lg/efj;->a:Lg/fjs;

    iput-object p2, v0, Lg/cfh;->L$1:Ljava/lang/Object;

    iput v4, v0, Lg/cfh;->label:I

    iget-object v2, p0, Lg/efj;->c:Lg/avu;

    invoke-interface {v2, p1, v0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p1

    move-object p1, p2

    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Lg/cfh;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lg/cfh;->L$1:Ljava/lang/Object;

    iput v3, v0, Lg/cfh;->label:I

    invoke-interface {p1, v2, v0}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.class public final Lg/brx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final synthetic a:Lg/fjs;


# direct methods
.method public constructor <init>(Lg/fjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/brx;->a:Lg/fjs;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lg/dpo;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/dpo;

    iget v1, v0, Lg/dpo;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/dpo;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/dpo;

    invoke-direct {v0, p0, p2}, Lg/dpo;-><init>(Lg/brx;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/dpo;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/dpo;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    instance-of p2, p1, Lg/das;

    if-eqz p2, :cond_3

    iput v3, v0, Lg/dpo;->label:I

    iget-object p2, p0, Lg/brx;->a:Lg/fjs;

    invoke-interface {p2, p1, v0}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

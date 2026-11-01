.class public final Lg/aos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final synthetic a:Lg/bfl;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lg/bfl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aos;->a:Lg/bfl;

    iput p2, p0, Lg/aos;->c:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lg/cwa;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/cwa;

    iget v1, v0, Lg/cwa;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/cwa;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/cwa;

    invoke-direct {v0, p0, p2}, Lg/cwa;-><init>(Lg/aos;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/cwa;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/cwa;->label:I

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    new-instance p2, Lg/eay;

    iget v2, p0, Lg/aos;->c:I

    invoke-direct {p2, v2, p1}, Lg/eay;-><init>(ILjava/lang/Object;)V

    iput v5, v0, Lg/cwa;->label:I

    iget-object p1, p0, Lg/aos;->a:Lg/bfl;

    invoke-interface {p1, p2, v0}, Lg/cvu;->d(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_6

    :cond_4
    :goto_1
    iput v4, v0, Lg/cwa;->label:I

    invoke-virtual {v0}, Lg/w;->getContext()Lg/boj;

    move-result-object p1

    invoke-static {p1}, Lg/kj;->h(Lg/boj;)V

    invoke-static {v0}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    instance-of v0, p2, Lg/sk;

    if-eqz v0, :cond_5

    check-cast p2, Lg/sk;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_6

    move-object p1, v3

    goto :goto_4

    :cond_6
    iget-object v0, p2, Lg/sk;->c:Lg/cpk;

    invoke-virtual {v0, p1}, Lg/cpk;->w(Lg/boj;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v3, p2, Lg/sk;->e:Ljava/lang/Object;

    iput v5, p2, Lg/fpm;->k:I

    invoke-virtual {v0, p1, p2}, Lg/cpk;->g(Lg/boj;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    new-instance v2, Lg/cdu;

    sget-object v4, Lg/cdu;->a:Lg/gpu;

    invoke-direct {v2, v4}, Lg/ggd;-><init>(Lg/efi;)V

    invoke-interface {p1, v2}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object p1

    iput-object v3, p2, Lg/sk;->e:Ljava/lang/Object;

    iput v5, p2, Lg/fpm;->k:I

    invoke-virtual {v0, p1, p2}, Lg/cpk;->g(Lg/boj;Ljava/lang/Runnable;)V

    :goto_3
    move-object p1, v1

    :goto_4
    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_8

    goto :goto_5

    :cond_8
    move-object p1, v3

    :goto_5
    if-ne p1, v1, :cond_9

    :goto_6
    return-object v1

    :cond_9
    return-object v3
.end method

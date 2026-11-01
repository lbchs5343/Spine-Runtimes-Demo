.class public final Lg/hdz;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $block:Lg/bto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bto;"
        }
    .end annotation
.end field

.field final synthetic $completer:Lg/eje;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eje;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lg/bto;Lg/eje;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/hdz;->$block:Lg/bto;

    iput-object p2, p0, Lg/hdz;->$completer:Lg/eje;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/hdz;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/hdz;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/hcc;

    :try_start_1
    iget-object v1, p0, Lg/hdz;->$block:Lg/bto;

    iput v2, p0, Lg/hdz;->label:I

    invoke-interface {v1, p1, p0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/hdz;->$completer:Lg/eje;

    invoke-virtual {v0, p1}, Lg/eje;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    iget-object v0, p0, Lg/hdz;->$completer:Lg/eje;

    invoke-virtual {v0, p1}, Lg/eje;->f(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    iget-object p1, p0, Lg/hdz;->$completer:Lg/eje;

    iput-boolean v2, p1, Lg/eje;->a:Z

    iget-object v0, p1, Lg/eje;->c:Lg/gbb;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v0, v2}, Lg/zi;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p1, Lg/eje;->b:Ljava/lang/Object;

    iput-object v0, p1, Lg/eje;->c:Lg/gbb;

    iput-object v0, p1, Lg/eje;->d:Lg/frr;

    :cond_3
    :goto_3
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/hdz;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/hdz;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/hdz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 3

    new-instance v0, Lg/hdz;

    iget-object v1, p0, Lg/hdz;->$block:Lg/bto;

    iget-object v2, p0, Lg/hdz;->$completer:Lg/eje;

    invoke-direct {v0, v1, v2, p2}, Lg/hdz;-><init>(Lg/bto;Lg/eje;Lg/bdp;)V

    iput-object p1, v0, Lg/hdz;->L$0:Ljava/lang/Object;

    return-object v0
.end method

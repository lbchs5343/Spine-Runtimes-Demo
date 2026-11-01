.class public final Lg/ehu;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $flows:[Lg/dqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lg/dqx;"
        }
    .end annotation
.end field

.field final synthetic $i:I

.field final synthetic $nonClosed:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $resultChannel:Lg/bfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bfl;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>([Lg/dqx;ILjava/util/concurrent/atomic/AtomicInteger;Lg/bfl;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/ehu;->$flows:[Lg/dqx;

    iput p2, p0, Lg/ehu;->$i:I

    iput-object p3, p0, Lg/ehu;->$nonClosed:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lg/ehu;->$resultChannel:Lg/bfl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/ehu;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lg/ehu;->$flows:[Lg/dqx;

    iget v1, p0, Lg/ehu;->$i:I

    aget-object p1, p1, v1

    new-instance v4, Lg/aos;

    iget-object v5, p0, Lg/ehu;->$resultChannel:Lg/bfl;

    invoke-direct {v4, v5, v1}, Lg/aos;-><init>(Lg/bfl;I)V

    iput v3, p0, Lg/ehu;->label:I

    invoke-interface {p1, v4, p0}, Lg/dqx;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lg/ehu;->$nonClosed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/ehu;->$resultChannel:Lg/bfl;

    invoke-interface {p1, v2}, Lg/cvu;->_cl(Ljava/lang/Throwable;)Z

    :cond_3
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :goto_1
    iget-object v0, p0, Lg/ehu;->$nonClosed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lg/ehu;->$resultChannel:Lg/bfl;

    invoke-interface {v0, v2}, Lg/cvu;->_cl(Ljava/lang/Throwable;)Z

    :cond_4
    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/ehu;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/ehu;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/ehu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 6

    new-instance v0, Lg/ehu;

    iget-object v1, p0, Lg/ehu;->$flows:[Lg/dqx;

    iget v2, p0, Lg/ehu;->$i:I

    iget-object v3, p0, Lg/ehu;->$nonClosed:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lg/ehu;->$resultChannel:Lg/bfl;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg/ehu;-><init>([Lg/dqx;ILjava/util/concurrent/atomic/AtomicInteger;Lg/bfl;Lg/bdp;)V

    return-object v0
.end method

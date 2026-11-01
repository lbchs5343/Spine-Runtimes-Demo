.class public final Lg/fmr;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $db:Lg/gac;

.field final synthetic $inTransaction:Z

.field final synthetic $tableNames:[Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLg/gac;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lg/bdp;)V
    .locals 0

    iput-boolean p1, p0, Lg/fmr;->$inTransaction:Z

    iput-object p2, p0, Lg/fmr;->$db:Lg/gac;

    iput-object p3, p0, Lg/fmr;->$tableNames:[Ljava/lang/String;

    iput-object p4, p0, Lg/fmr;->$callable:Ljava/util/concurrent/Callable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/fmr;->label:I

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

    iget-object p1, p0, Lg/fmr;->L$0:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lg/fjs;

    new-instance v3, Lg/ajt;

    iget-boolean v4, p0, Lg/fmr;->$inTransaction:Z

    iget-object v5, p0, Lg/fmr;->$db:Lg/gac;

    iget-object v7, p0, Lg/fmr;->$tableNames:[Ljava/lang/String;

    iget-object v8, p0, Lg/fmr;->$callable:Ljava/util/concurrent/Callable;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lg/ajt;-><init>(ZLg/gac;Lg/fjs;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lg/bdp;)V

    iput v2, p0, Lg/fmr;->label:I

    new-instance p1, Lg/azc;

    invoke-interface {p0}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    invoke-static {p1, p1, v3}, Lg/dzm;->ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/fjs;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/fmr;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/fmr;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/fmr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 6

    new-instance v0, Lg/fmr;

    iget-boolean v1, p0, Lg/fmr;->$inTransaction:Z

    iget-object v2, p0, Lg/fmr;->$db:Lg/gac;

    iget-object v3, p0, Lg/fmr;->$tableNames:[Ljava/lang/String;

    iget-object v4, p0, Lg/fmr;->$callable:Ljava/util/concurrent/Callable;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg/fmr;-><init>(ZLg/gac;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lg/bdp;)V

    iput-object p1, v0, Lg/fmr;->L$0:Ljava/lang/Object;

    return-object v0
.end method

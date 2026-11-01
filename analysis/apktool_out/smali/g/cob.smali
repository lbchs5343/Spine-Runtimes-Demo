.class public final Lg/cob;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field label:I

.field final synthetic this$0:Lg/dly;


# direct methods
.method public constructor <init>(Lg/dly;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/cob;->this$0:Lg/dly;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/cob;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Lg/gfr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lg/cob;->this$0:Lg/dly;

    iget-object v1, p1, Lg/dly;->c:Lg/fhq;

    new-instance v3, Lg/cyq;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lg/cyq;-><init>(Lg/dly;Lg/bdp;)V

    iput v2, p0, Lg/cob;->label:I

    invoke-static {v1, v3, p0}, Lg/baf;->an(Lg/erz;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lg/adb;
    :try_end_1
    .catch Lg/gfr; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    sget-object v0, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    const-string v2, "Unexpected error in WorkerWrapper"

    invoke-virtual {v1, v0, v2, p1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lg/eme;

    invoke-direct {p1}, Lg/eme;-><init>()V

    goto :goto_3

    :catch_1
    new-instance p1, Lg/eme;

    invoke-direct {p1}, Lg/eme;-><init>()V

    goto :goto_3

    :goto_2
    new-instance v0, Lg/cmt;

    invoke-virtual {p1}, Lg/gfr;->a()I

    move-result p1

    invoke-direct {v0, p1}, Lg/cmt;-><init>(I)V

    move-object p1, v0

    :goto_3
    iget-object v0, p0, Lg/cob;->this$0:Lg/dly;

    iget-object v1, v0, Lg/dly;->j:Landroidx/work/impl/WorkDatabase;

    new-instance v2, Lg/gwd;

    invoke-direct {v2, p1, v0}, Lg/gwd;-><init>(Lg/adb;Lg/dly;)V

    invoke-virtual {v1, v2}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "workDatabase.runInTransa\u2026          }\n            )"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/cob;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/cob;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/cob;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 1

    new-instance p1, Lg/cob;

    iget-object v0, p0, Lg/cob;->this$0:Lg/dly;

    invoke-direct {p1, v0, p2}, Lg/cob;-><init>(Lg/dly;Lg/bdp;)V

    return-object p1
.end method

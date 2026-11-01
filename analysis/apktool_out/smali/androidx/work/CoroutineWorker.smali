.class public abstract Landroidx/work/CoroutineWorker;
.super Lg/cg;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/work/WorkerParameters;

.field public final b:Lg/ddy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lg/cg;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/CoroutineWorker;->a:Landroidx/work/WorkerParameters;

    sget-object p1, Lg/ddy;->a:Lg/ddy;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->b:Lg/ddy;

    return-void
.end method


# virtual methods
.method public abstract c(Lg/enj;)Ljava/lang/Object;
.end method

.method public final getForegroundInfoAsync()Lg/dcy;
    .locals 5

    new-instance v0, Lg/fhq;

    invoke-direct {v0}, Lg/fhq;-><init>()V

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->b:Lg/ddy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/cgq;->a:Lg/cgq;

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lg/erz;->getKey()Lg/efi;

    move-result-object v3

    invoke-interface {v1, v3}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lg/bmr;->j:Lg/bmr;

    invoke-interface {v1, v3}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v4

    check-cast v4, Lg/dic;

    if-nez v4, :cond_2

    new-instance v2, Lg/eyx;

    invoke-direct {v2, v1, v0}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object v1

    if-ne v1, v2, :cond_3

    new-instance v1, Lg/eyx;

    invoke-direct {v1, v0, v4}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v2, Lg/eyx;

    new-instance v3, Lg/eyx;

    invoke-direct {v3, v1, v0}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    invoke-direct {v2, v3, v4}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    goto :goto_0

    :goto_1
    move-object v1, v0

    :goto_2
    new-instance v0, Lg/bgi;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lg/bgi;-><init>(Landroidx/work/CoroutineWorker;Lg/bdp;)V

    invoke-static {v1, v0}, Lg/cro;->w(Lg/boj;Lg/bto;)Lg/gbb;

    move-result-object v0

    return-object v0
.end method

.method public final startWork()Lg/dcy;
    .locals 3

    sget-object v0, Lg/ddy;->a:Lg/ddy;

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->b:Lg/ddy;

    invoke-static {v1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->a:Landroidx/work/WorkerParameters;

    iget-object v1, v0, Landroidx/work/WorkerParameters;->k:Lg/boj;

    :goto_0
    const-string v0, "if (coroutineContext != \u2026rkerContext\n            }"

    invoke-static {v1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/fhq;

    invoke-direct {v0}, Lg/fhq;-><init>()V

    invoke-interface {v1, v0}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object v0

    new-instance v1, Lg/enj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/enj;-><init>(Landroidx/work/CoroutineWorker;Lg/bdp;)V

    invoke-static {v0, v1}, Lg/cro;->w(Lg/boj;Lg/bto;)Lg/gbb;

    move-result-object v0

    return-object v0
.end method

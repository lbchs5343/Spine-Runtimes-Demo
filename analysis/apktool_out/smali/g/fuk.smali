.class public final Lg/fuk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/fvr;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lg/fdj;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/fvr;->f(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fuk;->a:Landroid/adservices/measurement/MeasurementManager;

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;Lg/bdp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lg/bdp<",
            "-",
            "Lg/dgi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {v0}, Lg/gsn;->ac()V

    iget-object p2, p0, Lg/fuk;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Lg/xh;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/xh;-><init>(I)V

    new-instance v2, Lg/azf;

    invoke-direct {v2, v0}, Lg/azf;-><init>(Lg/gsn;)V

    invoke-static {p2, p1, v1, v2}, Lg/fvr;->n(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Lg/xh;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public c(Lg/hcg;Lg/bdp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/hcg;",
            "Lg/bdp<",
            "-",
            "Lg/dgi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {p1}, Lg/gsn;->ac()V

    invoke-static {}, Lg/fvr;->w()V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Lg/ach;Lg/bdp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/ach;",
            "Lg/bdp<",
            "-",
            "Lg/dgi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {p1}, Lg/gsn;->ac()V

    invoke-static {}, Lg/fvr;->t()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Lg/ye;Lg/bdp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/ye;",
            "Lg/bdp<",
            "-",
            "Lg/dgi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {p1}, Lg/gsn;->ac()V

    invoke-static {}, Lg/fvr;->d()V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Lg/bdp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/bdp<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lg/gsn;

    invoke-static {p1}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {v0}, Lg/gsn;->ac()V

    iget-object p1, p0, Lg/fuk;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Lg/xh;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/xh;-><init>(I)V

    new-instance v2, Lg/azf;

    invoke-direct {v2, v0}, Lg/azf;-><init>(Lg/gsn;)V

    invoke-static {p1, v1, v2}, Lg/fvr;->u(Landroid/adservices/measurement/MeasurementManager;Lg/xh;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/net/Uri;Landroid/view/InputEvent;Lg/bdp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lg/bdp<",
            "-",
            "Lg/dgi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lg/gsn;

    invoke-static {p3}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {v0}, Lg/gsn;->ac()V

    iget-object p3, p0, Lg/fuk;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Lg/xh;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/xh;-><init>(I)V

    new-instance v2, Lg/azf;

    invoke-direct {v2, v0}, Lg/azf;-><init>(Lg/gsn;)V

    invoke-static {p3, p1, p2, v1, v2}, Lg/fvr;->y(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Lg/xh;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

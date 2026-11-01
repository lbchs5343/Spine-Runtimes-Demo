.class public final Lg/ehm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/pe;


# instance fields
.field public final d:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ehm;->d:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final a(Lg/bho;)Lg/dqm;
    .locals 4

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/on;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lg/on;-><init>(Lg/bho;Lg/ehm;Lg/bdp;)V

    new-instance p1, Lg/dqm;

    const/4 v1, -0x2

    sget-object v2, Lg/bqt;->SUSPEND:Lg/bqt;

    sget-object v3, Lg/cgq;->a:Lg/cgq;

    invoke-direct {p1, v0, v3, v1, v2}, Lg/dqm;-><init>(Lg/bto;Lg/boj;ILg/bqt;)V

    return-object p1
.end method

.method public final b(Lg/fkj;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/fkj;->r:Lg/bho;

    invoke-virtual {p1}, Lg/bho;->k()Landroid/net/NetworkRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lg/fkj;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lg/ehm;->b(Lg/fkj;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn\'t supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

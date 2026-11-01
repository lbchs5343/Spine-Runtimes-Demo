.class public abstract Lg/bvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/pe;


# instance fields
.field public final d:Lg/cmh;


# direct methods
.method public constructor <init>(Lg/cmh;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bvw;->d:Lg/cmh;

    return-void
.end method


# virtual methods
.method public final a(Lg/bho;)Lg/dqm;
    .locals 4

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg/acm;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lg/acm;-><init>(Lg/bvw;Lg/bdp;)V

    new-instance v0, Lg/dqm;

    const/4 v1, -0x2

    sget-object v2, Lg/bqt;->SUSPEND:Lg/bqt;

    sget-object v3, Lg/cgq;->a:Lg/cgq;

    invoke-direct {v0, p1, v3, v1, v2}, Lg/dqm;-><init>(Lg/bto;Lg/boj;ILg/bqt;)V

    return-object v0
.end method

.method public final c(Lg/fkj;)Z
    .locals 0

    invoke-interface {p0, p1}, Lg/pe;->b(Lg/fkj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bvw;->d:Lg/cmh;

    invoke-virtual {p1}, Lg/cmh;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/bvw;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract e()I
.end method

.method public abstract f(Ljava/lang/Object;)Z
.end method

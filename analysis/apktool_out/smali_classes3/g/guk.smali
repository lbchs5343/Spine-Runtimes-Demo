.class public final Lg/guk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/czh;


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lg/czh;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/czh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/guk;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/guk;->f:Lg/czh;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lg/guk;->f:Lg/czh;

    invoke-interface {v0}, Lg/czh;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Lg/daw;
    .locals 1

    iget-object v0, p0, Lg/guk;->f:Lg/czh;

    invoke-interface {v0}, Lg/czh;->b()Lg/daw;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lg/anx;
    .locals 1

    iget-object v0, p0, Lg/guk;->f:Lg/czh;

    invoke-interface {v0}, Lg/czh;->c()Lg/anx;

    move-result-object v0

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lg/guk;->f:Lg/czh;

    invoke-interface {v0}, Lg/czh;->cancel()V

    return-void
.end method

.method public final clone()Lg/czh;
    .locals 3

    new-instance v0, Lg/guk;

    iget-object v1, p0, Lg/guk;->f:Lg/czh;

    invoke-interface {v1}, Lg/czh;->clone()Lg/czh;

    move-result-object v1

    iget-object v2, p0, Lg/guk;->e:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2, v1}, Lg/guk;-><init>(Ljava/util/concurrent/Executor;Lg/czh;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/guk;->clone()Lg/czh;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lg/bmm;)V
    .locals 3

    new-instance v0, Lg/ffr;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lg/ffr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lg/guk;->f:Lg/czh;

    invoke-interface {p1, v0}, Lg/czh;->d(Lg/bmm;)V

    return-void
.end method

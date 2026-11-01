.class public final Lg/cul;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic $completer:Lg/eje;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eje;"
        }
    .end annotation
.end field

.field final synthetic $this_asListenableFuture:Lg/adm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/adm;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/eje;Lg/ghn;)V
    .locals 0

    iput-object p1, p0, Lg/cul;->$completer:Lg/eje;

    iput-object p2, p0, Lg/cul;->$this_asListenableFuture:Lg/adm;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lg/cul;->$completer:Lg/eje;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lg/eje;->a:Z

    iget-object v2, p1, Lg/eje;->c:Lg/gbb;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v2, v1}, Lg/zi;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p1, Lg/eje;->b:Ljava/lang/Object;

    iput-object v0, p1, Lg/eje;->c:Lg/gbb;

    iput-object v0, p1, Lg/eje;->d:Lg/frr;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/cul;->$completer:Lg/eje;

    invoke-virtual {v0, p1}, Lg/eje;->f(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lg/cul;->$completer:Lg/eje;

    iget-object v1, p0, Lg/cul;->$this_asListenableFuture:Lg/adm;

    check-cast v1, Lg/ghn;

    invoke-virtual {v1}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/gpe;

    if-nez v2, :cond_7

    instance-of v2, v1, Lg/wh;

    if-nez v2, :cond_6

    instance-of v2, v1, Lg/xk;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lg/xk;

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, v0, Lg/xk;->a:Lg/gpe;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_0
    invoke-virtual {p1, v1}, Lg/eje;->e(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :cond_6
    check-cast v1, Lg/wh;

    iget-object p1, v1, Lg/wh;->c:Ljava/lang/Throwable;

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This job has not completed yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

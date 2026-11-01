.class public final Lg/aqh;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic $this_awaitWithin:Lg/dcy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dcy;"
        }
    .end annotation
.end field

.field final synthetic $worker:Lg/cg;


# direct methods
.method public constructor <init>(Lg/cg;Lg/dcy;)V
    .locals 0

    iput-object p1, p0, Lg/aqh;->$worker:Lg/cg;

    iput-object p2, p0, Lg/aqh;->$this_awaitWithin:Lg/dcy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lg/gfr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/aqh;->$worker:Lg/cg;

    check-cast p1, Lg/gfr;

    invoke-virtual {p1}, Lg/gfr;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/cg;->stop(I)V

    :cond_0
    iget-object p1, p0, Lg/aqh;->$this_awaitWithin:Lg/dcy;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

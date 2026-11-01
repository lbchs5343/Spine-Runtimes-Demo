.class public final Lg/cku;
.super Lg/fe;
.source "SourceFile"


# instance fields
.field public final h:Lg/bdp;


# direct methods
.method public constructor <init>(Lg/boj;Lg/bto;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/coh;-><init>(Lg/boj;Z)V

    check-cast p2, Lg/bry;

    invoke-virtual {p2, p0, p0}, Lg/bry;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    iput-object p1, p0, Lg/cku;->h:Lg/bdp;

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 2

    iget-object v0, p0, Lg/cku;->h:Lg/bdp;

    :try_start_0
    invoke-static {v0}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v0

    sget-object v1, Lg/dgi;->a:Lg/dgi;

    invoke-static {v1, v0}, Lg/baf;->ad(Ljava/lang/Object;Lg/bdp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/coh;->_z(Ljava/lang/Object;)V

    throw v0
.end method

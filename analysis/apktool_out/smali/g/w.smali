.class public abstract Lg/w;
.super Lg/bry;
.source "SourceFile"


# instance fields
.field public transient _cn:Lg/bdp;

.field private final _context:Lg/boj;


# direct methods
.method public constructor <init>(Lg/bdp;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lg/w;-><init>(Lg/bdp;Lg/boj;)V

    return-void
.end method

.method public constructor <init>(Lg/bdp;Lg/boj;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/bry;-><init>(Lg/bdp;)V

    iput-object p2, p0, Lg/w;->_context:Lg/boj;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    iget-object v0, p0, Lg/w;->_cn:Lg/bdp;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Lg/w;->getContext()Lg/boj;

    move-result-object v1

    sget-object v2, Lg/bmr;->j:Lg/bmr;

    invoke-interface {v1, v2}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v1

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    check-cast v1, Lg/dic;

    check-cast v0, Lg/sk;

    sget-object v1, Lg/sk;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lg/baf;->s:Lg/hy;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/gsn;

    if-eqz v1, :cond_1

    check-cast v0, Lg/gsn;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/gsn;->u()V

    :cond_2
    sget-object v0, Lg/cjk;->b:Lg/cjk;

    iput-object v0, p0, Lg/w;->_cn:Lg/bdp;

    return-void
.end method

.method public getContext()Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/w;->_context:Lg/boj;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    return-object v0
.end method

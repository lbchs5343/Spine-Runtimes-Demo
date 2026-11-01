.class public final Lg/chb;
.super Lg/ccf;
.source "SourceFile"


# instance fields
.field public final n:Lg/gsn;


# direct methods
.method public constructor <init>(Lg/gsn;)V
    .locals 0

    invoke-direct {p0}, Lg/bfw;-><init>()V

    iput-object p1, p0, Lg/chb;->n:Lg/gsn;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p0}, Lg/aov;->e()Lg/fyw;

    move-result-object p1

    invoke-virtual {p1}, Lg/fyw;->ar()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lg/chb;->n:Lg/gsn;

    invoke-virtual {v0}, Lg/gsn;->w()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lg/gsn;->e:Lg/bdp;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v1, v2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lg/sk;

    sget-object v2, Lg/sk;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lg/baf;->s:Lg/hy;

    invoke-static {v3, v4}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {v2, v1, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v0, p1}, Lg/gsn;->aa(Ljava/lang/Throwable;)Z

    invoke-virtual {v0}, Lg/gsn;->w()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lg/gsn;->u()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_4

    goto :goto_0
.end method

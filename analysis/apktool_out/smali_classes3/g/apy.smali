.class public final Lg/apy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gew;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lg/ggp;


# direct methods
.method public constructor <init>(Lg/ewi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/ggp;

    invoke-direct {v0, p0}, Lg/ggp;-><init>(Lg/apy;)V

    iput-object v0, p0, Lg/apy;->b:Lg/ggp;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/apy;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lg/apy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ewi;

    iget-object v1, p0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v1, p1}, Lg/afp;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lg/ewi;->b:Ljava/lang/Object;

    iput-object p1, v0, Lg/ewi;->c:Lg/apy;

    iget-object v0, v0, Lg/ewi;->d:Lg/eou;

    invoke-virtual {v0, p1}, Lg/eou;->o(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0}, Lg/afp;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0, p1, p2, p3}, Lg/afp;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lg/apy;->b:Lg/ggp;

    iget-object v0, v0, Lg/afp;->f:Ljava/lang/Object;

    instance-of v0, v0, Lg/fiv;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0}, Lg/afp;->isDone()Z

    move-result v0

    return v0
.end method

.method public final l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0, p1, p2}, Lg/afp;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0}, Lg/afp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

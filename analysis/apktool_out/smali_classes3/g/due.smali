.class public final Lg/due;
.super Lg/axh;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field public volatile a:Lg/eye;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fne;

    invoke-direct {v0, p0, p1}, Lg/fne;-><init>(Lg/due;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lg/due;->a:Lg/eye;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/due;->a:Lg/eye;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/eye;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "task=["

    const-string v2, "]"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzgcy;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcy;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/due;->a:Lg/eye;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/eye;->i()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/due;->a:Lg/eye;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lg/due;->a:Lg/eye;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/eye;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/due;->a:Lg/eye;

    return-void
.end method

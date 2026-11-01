.class public final Lg/azs;
.super Lg/alm;
.source "SourceFile"


# instance fields
.field public final i:Lg/eeo;


# direct methods
.method public constructor <init>(Lg/eeo;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lg/alm;-><init>(I)V

    iput-object p1, p0, Lg/azs;->i:Lg/eeo;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lg/azs;->i:Lg/eeo;

    invoke-virtual {v0, p1}, Lg/eeo;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Lg/fbd;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lg/azs;->j(Lg/fbd;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lg/azs;->i:Lg/eeo;

    invoke-virtual {v0, p1}, Lg/eeo;->b(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lg/alm;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/azs;->h(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lg/alm;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/azs;->h(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final e(Lg/fbd;)Z
    .locals 1

    iget-object p1, p1, Lg/fbd;->n:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic f(Lg/clx;Z)V
    .locals 0

    return-void
.end method

.method public final g(Lg/fbd;)[Lg/cqg;
    .locals 1

    iget-object p1, p1, Lg/fbd;->n:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final h(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lg/dmw;

    invoke-direct {v0, p1}, Lg/dmw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lg/azs;->i:Lg/eeo;

    invoke-virtual {p1, v0}, Lg/eeo;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final j(Lg/fbd;)V
    .locals 1

    iget-object p1, p1, Lg/fbd;->n:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/azs;->i:Lg/eeo;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lg/eeo;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

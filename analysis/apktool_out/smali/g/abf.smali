.class public final synthetic Lg/abf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lg/tq;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/tq;ILjava/lang/String;Ljava/lang/String;Lg/dxb;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/abf;->c:Lg/tq;

    iput p2, p0, Lg/abf;->d:I

    iput-object p3, p0, Lg/abf;->e:Ljava/lang/String;

    iput-object p4, p0, Lg/abf;->a:Ljava/lang/String;

    iput-object p6, p0, Lg/abf;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/abf;->c:Lg/tq;

    iget v3, p0, Lg/abf;->d:I

    iget-object v4, p0, Lg/abf;->e:Ljava/lang/String;

    iget-object v5, p0, Lg/abf;->a:Ljava/lang/String;

    iget-object v6, p0, Lg/abf;->b:Landroid/os/Bundle;

    :try_start_0
    iget-object v1, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Lg/tq;->s:Lg/agh;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    sget-object v0, Lg/edc;->n:Lg/ejd;

    sget-object v1, Lg/hm;->zzbc:Lg/hm;

    invoke-static {v0, v1}, Lg/gbs;->h(Lg/ejd;Lg/hm;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    check-cast v1, Lg/eaw;

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lg/eaw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v1, Lg/edc;->a:Lg/ejd;

    sget-object v2, Lg/hm;->zze:Lg/hm;

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lg/gbs;->h(Lg/ejd;Lg/hm;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    sget-object v1, Lg/edc;->n:Lg/ejd;

    sget-object v2, Lg/hm;->zze:Lg/hm;

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lg/gbs;->h(Lg/ejd;Lg/hm;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v1
.end method

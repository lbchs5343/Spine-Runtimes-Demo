.class public final Lg/exn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/der;

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzbtv;


# direct methods
.method public synthetic constructor <init>(Lg/der;Lcom/google/android/gms/internal/ads/zzbtv;ZI)V
    .locals 0

    iput p4, p0, Lg/exn;->c:I

    iput-object p2, p0, Lg/exn;->d:Lcom/google/android/gms/internal/ads/zzbtv;

    iput-boolean p3, p0, Lg/exn;->a:Z

    iput-object p1, p0, Lg/exn;->b:Lg/der;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lg/exn;->c:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Internal error: "

    :try_start_0
    iget-object v1, p0, Lg/exn;->d:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Internal error: "

    :try_start_1
    iget-object v1, p0, Lg/exn;->d:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zze(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lg/exn;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/exn;->b:Lg/der;

    iget-object v1, v0, Lg/der;->q:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v2, v0, Lg/der;->ab:Ljava/util/ArrayList;

    iget-object v3, v0, Lg/der;->ag:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v5, v3, v2}, Lg/der;->ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v0, Lg/der;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_1
    iget-object v4, p0, Lg/exn;->d:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zzf(Ljava/util/List;)V

    iget-boolean v4, v0, Lg/der;->af:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lg/exn;->a:Z

    if-eqz v4, :cond_5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v4, v3, v2}, Lg/der;->ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-object v5, v0, Lg/der;->j:Ljava/lang/String;

    const-string v7, "1"

    invoke-static {v4, v5, v7}, Lg/der;->am(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzhh:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/exn;->b:Lg/der;

    iget-object v1, v0, Lg/der;->q:Lcom/google/android/gms/internal/ads/zzflr;

    check-cast p1, Ljava/util/ArrayList;

    :try_start_1
    iget-object v2, p0, Lg/exn;->d:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zzf(Ljava/util/List;)V

    iget-boolean v2, v0, Lg/der;->aj:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lg/exn;->a:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v0, Lg/der;->i:Ljava/util/ArrayList;

    iget-object v4, v0, Lg/der;->aa:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lg/der;->ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v3, v0, Lg/der;->j:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v2, v3, v5}, Lg/der;->am(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzhh:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_5
    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/baz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gon;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbqh;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbpm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbqh;Lcom/google/android/gms/internal/ads/zzbpm;I)V
    .locals 0

    iput p3, p0, Lg/baz;->b:I

    iput-object p2, p0, Lg/baz;->c:Lcom/google/android/gms/internal/ads/zzbpm;

    iput-object p1, p0, Lg/baz;->a:Lcom/google/android/gms/internal/ads/zzbqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ac(Lg/ezz;)V
    .locals 6

    iget v0, p0, Lg/baz;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Lg/ezz;->d:I

    iget-object v1, p0, Lg/baz;->c:Lcom/google/android/gms/internal/ads/zzbpm;

    :try_start_0
    iget-object v2, p0, Lg/baz;->a:Lcom/google/android/gms/internal/ads/zzbqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbqh;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lg/ezz;->e:Ljava/lang/String;

    iget-object v4, p1, Lg/ezz;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "failed to load mediation ad: ErrorCode = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". ErrorMessage = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". ErrorDomain = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/ezz;->h()Lg/abz;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbpm;->zzh(Lg/abz;)V

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbpm;->zzi(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zzg(I)V
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
    iget v0, p1, Lg/ezz;->d:I

    iget-object v1, p0, Lg/baz;->c:Lcom/google/android/gms/internal/ads/zzbpm;

    :try_start_1
    iget-object v2, p0, Lg/baz;->a:Lcom/google/android/gms/internal/ads/zzbqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbqh;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lg/ezz;->e:Ljava/lang/String;

    iget-object v4, p1, Lg/ezz;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "failed to loaded mediation ad: ErrorCode = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". ErrorMessage = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". ErrorDomain = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/ezz;->h()Lg/abz;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbpm;->zzh(Lg/abz;)V

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbpm;->zzi(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zzg(I)V
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

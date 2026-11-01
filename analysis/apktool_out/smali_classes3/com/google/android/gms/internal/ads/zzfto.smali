.class public final synthetic Lcom/google/android/gms/internal/ads/zzfto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dyt;


# instance fields
.field public final synthetic zza:Lg/duy;


# direct methods
.method public synthetic constructor <init>(Lg/duy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfto;->zza:Lg/duy;

    return-void
.end method


# virtual methods
.method public final onComplete(Lg/ci;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfto;->zza:Lg/duy;

    move-object v1, p1

    check-cast v1, Lg/chw;

    iget-boolean v1, v1, Lg/chw;->e:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->cancel(Z)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/ci;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lg/ci;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lg/ci;->b()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzd(Ljava/lang/Throwable;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

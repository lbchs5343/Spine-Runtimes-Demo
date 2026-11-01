.class public final Lg/eub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gli;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgyc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgyc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzgyc;->c:Lg/eub;

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/Object;Lg/ah;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhai;

    const/4 v0, 0x3

    iget-object v1, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzs(II)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgyc;->c:Lg/eub;

    invoke-interface {p3, p2, v0}, Lg/ah;->i(Ljava/lang/Object;Lg/gli;)V

    const/4 p2, 0x4

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzs(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzgxp;

    iget-object v1, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzp(ILcom/google/android/gms/internal/ads/zzgxp;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzo(ILcom/google/android/gms/internal/ads/zzhai;)V

    return-void
.end method

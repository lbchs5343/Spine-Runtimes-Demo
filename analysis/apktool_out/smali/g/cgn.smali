.class public final Lg/cgn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public static c(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzed;)Lg/cgn;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzs()J

    move-result-wide v0

    new-instance p1, Lg/cgn;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput p0, p1, Lg/cgn;->a:I

    iput-wide v0, p1, Lg/cgn;->b:J

    return-object p1
.end method

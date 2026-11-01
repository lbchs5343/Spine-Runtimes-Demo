.class public final Lg/gaa;
.super Lg/cbw;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbw;ILcom/google/android/gms/internal/ads/zzxp;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/cbw;-><init>(ILcom/google/android/gms/internal/ads/zzbw;I)V

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxp;->zzN:Z

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p1

    iput p1, p0, Lg/gaa;->a:I

    iget-object p1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzad;->zza()I

    move-result p1

    iput p1, p0, Lg/gaa;->b:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/gaa;

    iget v0, p0, Lg/gaa;->b:I

    iget p1, p1, Lg/gaa;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lg/gaa;->a:I

    return v0
.end method

.method public final bridge synthetic t(Lg/cbw;)Z
    .locals 0

    check-cast p1, Lg/gaa;

    const/4 p1, 0x0

    return p1
.end method

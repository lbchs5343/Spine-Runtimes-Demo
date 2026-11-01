.class public final synthetic Lcom/google/android/gms/internal/ads/zzis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# instance fields
.field public final synthetic zza:Lg/gzx;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lg/gzx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzis;->zza:Lg/gzx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzis;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbm;

    sget v0, Lg/ij;->b:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzis;->zza:Lg/gzx;

    iget-object v0, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzis;->zzb:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbm;->zzp(Lcom/google/android/gms/internal/ads/zzbv;I)V

    return-void
.end method

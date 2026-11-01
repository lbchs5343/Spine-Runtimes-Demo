.class public final synthetic Lcom/google/android/gms/internal/ads/zzgdg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/q;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lg/dcy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/q;ILg/dcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zza:Lcom/google/android/gms/internal/ads/q;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzc:Lg/dcy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zza:Lcom/google/android/gms/internal/ads/q;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzc:Lg/dcy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/q;->k(ILg/dcy;)V

    return-void
.end method

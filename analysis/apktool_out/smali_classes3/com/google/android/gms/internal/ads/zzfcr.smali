.class public final synthetic Lcom/google/android/gms/internal/ads/zzfcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fhp;

.field public final synthetic zzb:Lg/abz;


# direct methods
.method public synthetic constructor <init>(Lg/fhp;Lg/abz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zza:Lg/fhp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzb:Lg/abz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zza:Lg/fhp;

    iget-object v0, v0, Lg/fhp;->c:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->b:Lcom/google/android/gms/internal/ads/zzems;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzb:Lg/abz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzems;->zzdB(Lg/abz;)V

    return-void
.end method

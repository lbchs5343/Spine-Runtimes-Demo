.class public final synthetic Lcom/google/android/gms/internal/ads/zzezx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/gam;

.field public final synthetic zzb:Lg/abz;


# direct methods
.method public synthetic constructor <init>(Lg/gam;Lg/abz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezx;->zza:Lg/gam;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezx;->zzb:Lg/abz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezx;->zza:Lg/gam;

    iget-object v0, v0, Lg/gam;->c:Lcom/google/android/gms/internal/ads/zzfab;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfab;->b:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezx;->zzb:Lg/abz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;->zzdB(Lg/abz;)V

    return-void
.end method

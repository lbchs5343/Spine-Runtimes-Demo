.class public final synthetic Lcom/google/android/gms/internal/ads/zzfbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbb;->zza:Lcom/google/android/gms/internal/ads/zzfbf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbb;->zza:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzems;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzems;->zzdB(Lg/abz;)V

    return-void
.end method

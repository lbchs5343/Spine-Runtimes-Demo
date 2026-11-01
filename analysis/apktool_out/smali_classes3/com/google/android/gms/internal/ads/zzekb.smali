.class public final synthetic Lcom/google/android/gms/internal/ads/zzekb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/dwi;


# direct methods
.method public synthetic constructor <init>(Lg/dwi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekb;->zza:Lg/dwi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekb;->zza:Lg/dwi;

    iget-object v1, v0, Lg/dwi;->a:Lcom/google/android/gms/internal/ads/zzeke;

    iget-object v1, v0, Lg/dwi;->b:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v2, v0, Lg/dwi;->c:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v0, v0, Lg/dwi;->d:Lcom/google/android/gms/internal/ads/zzefe;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeke;->d(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzefe;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzftc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg/gpu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gpu;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/gpu;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzftc;->a:Lg/gpu;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfsz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzftc;->a:Lg/gpu;

    return-object v0
.end method

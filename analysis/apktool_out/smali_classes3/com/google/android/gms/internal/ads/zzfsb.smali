.class public final Lcom/google/android/gms/internal/ads/zzfsb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg/cfg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cfg;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsb;->a:Lg/cfg;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfsd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsb;->a:Lg/cfg;

    return-object v0
.end method

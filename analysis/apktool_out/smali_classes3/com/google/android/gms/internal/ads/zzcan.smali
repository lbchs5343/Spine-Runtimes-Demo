.class public final Lcom/google/android/gms/internal/ads/zzcan;
.super Lcom/google/android/gms/internal/ads/zzcao;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->a:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcan;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcan;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcan;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

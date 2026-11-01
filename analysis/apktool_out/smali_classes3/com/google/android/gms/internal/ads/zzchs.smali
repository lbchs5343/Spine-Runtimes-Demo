.class public final Lcom/google/android/gms/internal/ads/zzchs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzchn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->a:Lcom/google/android/gms/internal/ads/zzchn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbfg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchs;->a:Lcom/google/android/gms/internal/ads/zzchn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzchn;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchs;->a:Lcom/google/android/gms/internal/ads/zzchn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzchn;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

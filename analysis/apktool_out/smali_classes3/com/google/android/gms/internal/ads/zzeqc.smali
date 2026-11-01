.class public final Lcom/google/android/gms/internal/ads/zzeqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzffo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Lcom/google/android/gms/internal/ads/zzffo;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->a:Lcom/google/android/gms/internal/ads/zzffo;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzp:Z

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqd;-><init>(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method

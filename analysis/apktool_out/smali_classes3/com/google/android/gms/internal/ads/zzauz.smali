.class public final Lcom/google/android/gms/internal/ads/zzauz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/zzasb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzarj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarj;->zzf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauz;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarj;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauz;->a:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarj;->zzc()Lcom/google/android/gms/internal/ads/zzasb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauz;->c:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarj;->zzd()Lcom/google/android/gms/internal/ads/zzase;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauz;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzauz;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasb;->zzc()Lcom/google/android/gms/internal/ads/zzasb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauz;->c:Lcom/google/android/gms/internal/ads/zzasb;

    sget p1, Lcom/google/android/gms/internal/ads/zzase;->zza:I

    return-void
.end method

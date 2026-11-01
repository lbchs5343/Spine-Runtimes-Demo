.class public final Lcom/google/android/gms/internal/ads/zzeuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# instance fields
.field public final a:Lg/gil;

.field public final b:Lcom/google/android/gms/internal/ads/zzges;

.field public final c:Lcom/google/android/gms/internal/ads/zzffo;

.field public final d:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzffo;Landroid/content/pm/PackageInfo;Lg/gil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuc;->b:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeuc;->d:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeuc;->a:Lg/gil;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeuc;)Lcom/google/android/gms/internal/ads/zzeud;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzg:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzetz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzetz;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzeua;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeua;-><init>()V

    return-object p0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeub;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzeub;-><init>(Lcom/google/android/gms/internal/ads/zzeuc;Ljava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzety;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzety;-><init>(Lcom/google/android/gms/internal/ads/zzeuc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuc;->b:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfzo;

.field public final b:Lcom/google/android/gms/internal/ads/zzat;

.field public c:Ljava/lang/String;

.field public d:Landroid/net/Uri;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzal;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzak;->e:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzak;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzap;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzat;->zza:Lcom/google/android/gms/internal/ads/zzat;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzak;->b:Lcom/google/android/gms/internal/ads/zzat;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzak;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzak;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzak;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzaw;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzak;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzar;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzak;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzak;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzar;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfzo;)V

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzak;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzam;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaq;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzaq;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzak;->b:Lcom/google/android/gms/internal/ads/zzat;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzba;->zza:Lcom/google/android/gms/internal/ads/zzba;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzan;Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzaq;Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzat;)V

    return-object v2
.end method

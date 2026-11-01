.class public final Lcom/google/android/gms/internal/ads/zzhgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgg;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public volatile b:Lcom/google/android/gms/internal/ads/zzhgg;

.field public volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgm;->a:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhfw;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgm;->a:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhgm;->c:Ljava/lang/Object;

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzhgm;->b:Lcom/google/android/gms/internal/ads/zzhgg;

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;->c:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgm;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;->b:Lcom/google/android/gms/internal/ads/zzhgg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgm;->b:Lcom/google/android/gms/internal/ads/zzhgg;

    :cond_1
    return-object v0
.end method

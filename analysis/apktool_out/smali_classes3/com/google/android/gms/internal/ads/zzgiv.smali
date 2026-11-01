.class public final Lcom/google/android/gms/internal/ads/zzgiv;
.super Lcom/google/android/gms/internal/ads/zzggt;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgiu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgiu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzgiu;)Lcom/google/android/gms/internal/ads/zzgiv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgiv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgiv;-><init>(Lcom/google/android/gms/internal/ads/zzgiu;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgiv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgiv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgiv;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgiu;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChaCha20Poly1305 Parameters (variant: "

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgiu;->zzc:Lcom/google/android/gms/internal/ads/zzgiu;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgiu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiv;->a:Lcom/google/android/gms/internal/ads/zzgiu;

    return-object v0
.end method

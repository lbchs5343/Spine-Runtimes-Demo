.class public final Lcom/google/android/gms/internal/ads/zzgie;
.super Lcom/google/android/gms/internal/ads/zzggt;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzgic;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzgic;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggt;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgie;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgib;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgib;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgie;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgie;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgie;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgie;->a:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lcom/google/android/gms/internal/ads/zzgie;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    aput-object v1, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AesGcm Parameters (variant: "

    const-string v2, ", 12-byte IV, 16-byte tag, and "

    invoke-static {v1, v0, v2}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgie;->a:I

    const-string v2, "-byte key)"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgic;->zzc:Lcom/google/android/gms/internal/ads/zzgic;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->a:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->b:Lcom/google/android/gms/internal/ads/zzgic;

    return-object v0
.end method

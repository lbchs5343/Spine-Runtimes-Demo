.class public final Lcom/google/android/gms/internal/ads/zzgip;
.super Lcom/google/android/gms/internal/ads/zzggt;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzgin;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzgin;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggt;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgip;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgim;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgim;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgip;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgip;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgip;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->a:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgip;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    aput-object v2, v1, v0

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AesGcmSiv Parameters (variant: "

    const-string v2, ", "

    invoke-static {v1, v0, v2}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->a:I

    const-string v2, "-byte key)"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgin;->zzc:Lcom/google/android/gms/internal/ads/zzgin;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->a:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgin;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->b:Lcom/google/android/gms/internal/ads/zzgin;

    return-object v0
.end method

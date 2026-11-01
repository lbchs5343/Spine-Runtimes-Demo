.class public final Lcom/google/android/gms/internal/ads/zzgql;
.super Lcom/google/android/gms/internal/ads/zzgqo;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgqi;

.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzgqj;


# direct methods
.method public synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzgqj;Lcom/google/android/gms/internal/ads/zzgqi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqo;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgql;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgql;->c:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgql;->a:Lcom/google/android/gms/internal/ads/zzgqi;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgqh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgql;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgql;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgql;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgql;->b:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgql;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgql;->zzd()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgql;->a:Lcom/google/android/gms/internal/ads/zzgqi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->a:Lcom/google/android/gms/internal/ads/zzgqi;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgql;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    aput-object v1, v2, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->a:Lcom/google/android/gms/internal/ads/zzgqi;

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->a:Lcom/google/android/gms/internal/ads/zzgqi;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", hashType: "

    const-string v3, ", "

    const-string v4, "HMAC Parameters (variant: "

    invoke-static {v4, v0, v2, v1, v3}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->b:I

    const-string v2, "-byte key)"

    invoke-static {v0, v1, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqj;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->c:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->b:I

    return v0
.end method

.method public final zzd()I
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgql;->c:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Lcom/google/android/gms/internal/ads/zzgqj;

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzb:Lcom/google/android/gms/internal/ads/zzgqj;

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzc:Lcom/google/android/gms/internal/ads/zzgqj;

    if-ne v2, v0, :cond_3

    :goto_0
    add-int/lit8 v1, v1, 0x5

    return v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgqi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->a:Lcom/google/android/gms/internal/ads/zzgqi;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgqj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgql;->d:Lcom/google/android/gms/internal/ads/zzgqj;

    return-object v0
.end method

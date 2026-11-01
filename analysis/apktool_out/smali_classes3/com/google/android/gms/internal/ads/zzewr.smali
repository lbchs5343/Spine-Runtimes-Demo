.class public final synthetic Lcom/google/android/gms/internal/ads/zzewr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 6

    check-cast p1, Lg/ema;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzewv;

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzewv;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhci;->zzc()Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object v1

    iget-object p1, p1, Lg/ema;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bqc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcg;->zzc()Lcom/google/android/gms/internal/ads/zzhcf;

    move-result-object v3

    iget v4, v2, Lg/bqc;->c:I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhcf;->zzc(I)Lcom/google/android/gms/internal/ads/zzhcf;

    iget-wide v4, v2, Lg/bqc;->b:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhcf;->zza(J)Lcom/google/android/gms/internal/ads/zzhcf;

    iget-wide v4, v2, Lg/bqc;->a:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhcf;->zzb(J)Lcom/google/android/gms/internal/ads/zzhcf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhcg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhch;->zza(Lcom/google/android/gms/internal/ads/zzhcg;)Lcom/google/android/gms/internal/ads/zzhch;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzaV()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewv;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzewv;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

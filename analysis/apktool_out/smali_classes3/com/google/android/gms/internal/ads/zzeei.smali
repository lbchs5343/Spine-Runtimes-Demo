.class public final synthetic Lcom/google/android/gms/internal/ads/zzeei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/blv;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzees;

.field public final synthetic zzf:Landroid/webkit/WebView;

.field public final synthetic zzg:Ljava/lang/String;

.field public final synthetic zzh:Ljava/lang/String;

.field public final synthetic zzi:Lcom/google/android/gms/internal/ads/zzeet;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzees;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeei;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzb:Ljava/lang/String;

    const-string p1, "javascript"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeei;->zze:Lcom/google/android/gms/internal/ads/zzees;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzf:Landroid/webkit/WebView;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzg:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzi:Lcom/google/android/gms/internal/ads/zzeet;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeei;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeei;->zze:Lcom/google/android/gms/internal/ads/zzees;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzf:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzg:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzi:Lcom/google/android/gms/internal/ads/zzeet;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnj;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v0

    const-string v1, "javascript"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeeq;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfni;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeq;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfni;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzees;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzeeq;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/ads/zzfni;->zzc:Lcom/google/android/gms/internal/ads/zzfni;

    const/4 v10, 0x0

    if-ne v1, v9, :cond_0

    const-string v0, "Omid js session error; Unable to parse impression owner: javascript"

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v10

    :cond_0
    if-nez v8, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Omid js session error; Unable to parse creative type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v10

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnb;

    if-ne v8, v3, :cond_2

    if-ne v7, v9, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Omid js session error; Video events owner unknown for video creative: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v10

    :cond_2
    const-string v2, ""

    invoke-static {v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfmy;->zzc(Lcom/google/android/gms/internal/ads/zzfnj;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfmy;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeq;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfne;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v8, v2, v1, v7, v3}, Lcom/google/android/gms/internal/ads/zzfmx;->zza(Lcom/google/android/gms/internal/ads/zzfnb;Lcom/google/android/gms/internal/ads/zzfne;Lcom/google/android/gms/internal/ads/zzfni;Lcom/google/android/gms/internal/ads/zzfni;Z)Lcom/google/android/gms/internal/ads/zzfmx;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfmw;->zza(Lcom/google/android/gms/internal/ads/zzfmx;Lcom/google/android/gms/internal/ads/zzfmy;)Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeew;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzeew;-><init>(Lcom/google/android/gms/internal/ads/zzfmw;Lcom/google/android/gms/internal/ads/zzfmy;)V

    return-object v2
.end method

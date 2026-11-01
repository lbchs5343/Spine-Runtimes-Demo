.class public final synthetic Lcom/google/android/gms/internal/ads/zzeef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/blv;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzees;

.field public final synthetic zze:Ljava/lang/String;

.field public final synthetic zzf:Landroid/webkit/WebView;

.field public final synthetic zzg:Ljava/lang/String;

.field public final synthetic zzh:Ljava/lang/String;

.field public final synthetic zzi:Lcom/google/android/gms/internal/ads/zzeet;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzees;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Google"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/String;

    const-string p1, "javascript"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzd:Lcom/google/android/gms/internal/ads/zzees;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeef;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzf:Landroid/webkit/WebView;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzg:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzi:Lcom/google/android/gms/internal/ads/zzeet;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzd:Lcom/google/android/gms/internal/ads/zzees;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeef;->zze:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzf:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzg:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzi:Lcom/google/android/gms/internal/ads/zzeet;

    const-string v6, "Google"

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzfnj;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v0

    const-string v6, "javascript"

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzeeq;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfni;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzees;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzeeq;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfni;->zzc:Lcom/google/android/gms/internal/ads/zzfni;

    const/4 v9, 0x0

    if-ne v6, v8, :cond_0

    const-string v0, "Omid html session error; Unable to parse impression owner: javascript"

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v9

    :cond_0
    if-nez v7, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Omid html session error; Unable to parse creative type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v9

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeq;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfni;

    move-result-object v1

    sget-object v10, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnb;

    if-ne v7, v10, :cond_2

    if-ne v1, v8, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Omid html session error; Video events owner unknown for video creative: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-object v9

    :cond_2
    const-string v2, ""

    invoke-static {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzfmy;->zzb(Lcom/google/android/gms/internal/ads/zzfnj;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfmy;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeq;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfne;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v7, v2, v6, v1, v3}, Lcom/google/android/gms/internal/ads/zzfmx;->zza(Lcom/google/android/gms/internal/ads/zzfnb;Lcom/google/android/gms/internal/ads/zzfne;Lcom/google/android/gms/internal/ads/zzfni;Lcom/google/android/gms/internal/ads/zzfni;Z)Lcom/google/android/gms/internal/ads/zzfmx;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfmw;->zza(Lcom/google/android/gms/internal/ads/zzfmx;Lcom/google/android/gms/internal/ads/zzfmy;)Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeew;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzeew;-><init>(Lcom/google/android/gms/internal/ads/zzfmw;Lcom/google/android/gms/internal/ads/zzfmy;)V

    return-object v2
.end method

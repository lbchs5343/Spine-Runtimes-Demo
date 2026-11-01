.class public final synthetic Lcom/google/android/gms/internal/ads/zzdlw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmg;

.field public final synthetic zzb:Lg/eno;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfet;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfew;

.field public final synthetic zze:Ljava/lang/String;

.field public final synthetic zzf:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmg;Lg/eno;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zza:Lcom/google/android/gms/internal/ads/zzdmg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lg/eno;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzd:Lcom/google/android/gms/internal/ads/zzfew;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdlw;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlw;->zza:Lcom/google/android/gms/internal/ads/zzdmg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdlw;->zzb:Lg/eno;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlw;->zzc:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdlw;->zzd:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdlw;->zze:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdlw;->zzf:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzdmg;->n:Lcom/google/android/gms/internal/ads/zzdpn;

    invoke-virtual {v7, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdpn;->zza(Lg/eno;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcan;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcan;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdmg;->f:Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdoi;->zzb()Lcom/google/android/gms/internal/ads/zzdof;

    move-result-object v8

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v7

    new-instance v15, Lg/cui;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdmg;->h:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v15, v4, v9}, Lg/cui;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyh;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdmg;->c:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzdmg;->d:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmg;->k:Lcom/google/android/gms/internal/ads/zzdsm;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v11, v9

    move-object v9, v8

    move-object/from16 v19, v10

    move-object v10, v8

    move-object v12, v11

    move-object v11, v8

    move-object/from16 v18, v12

    move-object v12, v8

    move-object/from16 v22, v8

    move-object/from16 v20, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v4

    invoke-interface/range {v7 .. v26}, Lcom/google/android/gms/internal/ads/zzchc;->zzU(Lg/evo;Lcom/google/android/gms/internal/ads/zzbih;Lg/fim;Lcom/google/android/gms/internal/ads/zzbij;Lg/gst;ZLcom/google/android/gms/internal/ads/zzbju;Lg/cui;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzbke;Lcom/google/android/gms/internal/ads/zzbjs;Lcom/google/android/gms/internal/ads/zzcnb;)V

    const-string v4, "/getNativeAdViewSignals"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbjq;->zzs:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-interface {v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    const-string v4, "/getNativeClickMeta"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbjq;->zzt:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-interface {v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v4

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzchc;->zzE(Z)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v4

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdly;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzdly;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzchc;->zzB(Lcom/google/android/gms/internal/ads/zzcha;)V

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

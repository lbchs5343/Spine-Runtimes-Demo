.class public final synthetic Lcom/google/android/gms/internal/ads/zzdnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zza:Lcom/google/android/gms/internal/ads/zzdoc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnr;->zza:Lcom/google/android/gms/internal/ads/zzdoc;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v3, "/result"

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdoc;->a:Lcom/google/android/gms/internal/ads/zzbkh;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v5

    new-instance v13, Lg/cui;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdoc;->l:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Lg/cui;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyh;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdoc;->i:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdoc;->k:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzdoc;->c:Lcom/google/android/gms/internal/ads/zzdsm;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzdoc;->f:Lcom/google/android/gms/internal/ads/zzdnp;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-interface/range {v5 .. v24}, Lcom/google/android/gms/internal/ads/zzchc;->zzU(Lg/evo;Lcom/google/android/gms/internal/ads/zzbih;Lg/fim;Lcom/google/android/gms/internal/ads/zzbij;Lg/gst;ZLcom/google/android/gms/internal/ads/zzbju;Lg/cui;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzbke;Lcom/google/android/gms/internal/ads/zzbjs;Lcom/google/android/gms/internal/ads/zzcnb;)V

    return-object v2
.end method

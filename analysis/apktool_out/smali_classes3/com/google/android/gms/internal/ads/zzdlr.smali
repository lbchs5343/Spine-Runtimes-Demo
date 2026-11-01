.class public final Lcom/google/android/gms/internal/ads/zzdlr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzges;

.field public final b:Lcom/google/android/gms/internal/ads/zzdmg;

.field public final c:Lcom/google/android/gms/internal/ads/zzdml;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzdmg;Lcom/google/android/gms/internal/ads/zzdml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlr;->a:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlr;->b:Lcom/google/android/gms/internal/ads/zzdmg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlr;->c:Lcom/google/android/gms/internal/ads/zzdml;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Lorg/json/JSONObject;)Lg/dcy;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdlm;

    invoke-direct {v3, v1, v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzdlm;-><init>(Lcom/google/android/gms/internal/ads/zzdlr;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Lorg/json/JSONObject;)V

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzdlr;->a:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v13, v3}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdlr;->b:Lcom/google/android/gms/internal/ads/zzdmg;

    const-string v5, "images"

    invoke-virtual {v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzdmg;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    invoke-virtual {v4, v7, v5, v2, v8}, Lcom/google/android/gms/internal/ads/zzdmg;->zzg(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lg/dcy;

    move-result-object v10

    const-string v5, "secondary_image"

    invoke-virtual {v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzdmg;->zze(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;

    move-result-object v5

    const-string v8, "app_icon"

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzdmg;->zze(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;

    move-result-object v8

    const-string v9, "attribution"

    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/internal/ads/zzdmg;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;

    move-result-object v9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    invoke-virtual {v4, v7, v2, v0}, Lcom/google/android/gms/internal/ads/zzdmg;->zzh(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lg/dcy;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzmF:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v11, Lg/edt;->a:Lg/edt;

    iget-object v12, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdln;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzdln;-><init>()V

    invoke-virtual {v2, v12}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdlo;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzdlo;-><init>()V

    invoke-virtual {v2, v12}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdlp;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzdlp;-><init>()V

    invoke-virtual {v2, v12}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    new-instance v12, Lg/cxv;

    invoke-direct {v12, v2}, Lg/cxv;-><init>(Lcom/google/android/gms/internal/ads/zzcao;)V

    sget-object v14, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v12, v14}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v2

    :goto_0
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzdlr;->c:Lcom/google/android/gms/internal/ads/zzdml;

    const-string v14, "custom_assets"

    invoke-virtual {v12, v7, v14}, Lcom/google/android/gms/internal/ads/zzdml;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Lg/dcy;

    move-result-object v12

    const-string v14, "enable_omid"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_1

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v14, "omid_settings"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_2

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object/from16 p1, v15

    const-string v15, "omid_html"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v15

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlt;

    invoke-direct {v1, v4, v14}, Lcom/google/android/gms/internal/ads/zzdlt;-><init>(Lcom/google/android/gms/internal/ads/zzdmg;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v15, v1, v4}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v4

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbcn;->zzfk:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v11, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v11, v14}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgeg;

    move-result-object v14

    move-object v11, v4

    move-object v4, v8

    move-object v8, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlq;

    move-object v1, v9

    move-object v9, v2

    move-object v2, v3

    move-object v3, v6

    move-object v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzdlq;-><init>(Lcom/google/android/gms/internal/ads/zzdlr;Lg/dcy;Lg/dcy;Lg/dcy;Lg/dcy;Lg/dcy;Lorg/json/JSONObject;Lg/dcy;Lg/dcy;Lg/dcy;Lg/dcy;Lg/dcy;)V

    invoke-virtual {v14, v0, v13}, Lcom/google/android/gms/internal/ads/zzgeg;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method

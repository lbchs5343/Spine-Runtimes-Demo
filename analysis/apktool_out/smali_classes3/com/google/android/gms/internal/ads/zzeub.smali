.class public final synthetic Lcom/google/android/gms/internal/ads/zzeub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeud;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuc;

.field public final synthetic zzb:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeuc;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeub;->zza:Lcom/google/android/gms/internal/ads/zzeuc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzj(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeub;->zza:Lcom/google/android/gms/internal/ads/zzeuc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzb:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "native_version"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "native_templates"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    const-string v2, "native_custom_templates"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzh:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zza:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-le v1, v3, :cond_4

    const-string v1, "enable_native_media_orientation"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzh:I

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    const-string v1, "unknown"

    goto :goto_0

    :cond_0
    const-string v1, "square"

    goto :goto_0

    :cond_1
    const-string v1, "portrait"

    goto :goto_0

    :cond_2
    const-string v1, "landscape"

    goto :goto_0

    :cond_3
    const-string v1, "any"

    :goto_0
    const-string v5, "unknown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "native_media_orientation"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzc:I

    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    if-eq v1, v2, :cond_5

    const-string v1, "unknown"

    goto :goto_1

    :cond_5
    const-string v1, "landscape"

    goto :goto_1

    :cond_6
    const-string v1, "portrait"

    goto :goto_1

    :cond_7
    const-string v1, "any"

    :goto_1
    const-string v5, "unknown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "native_image_orientation"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    const-string v5, "native_multiple_images"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzd:Z

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    const-string v5, "use_custom_mute"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzg:Z

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzi:I

    if-eqz v5, :cond_9

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzj:Z

    const-string v5, "sccg_tap"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    const-string v5, "sccg_dir"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzi:I

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->d:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeuc;->a:Lg/gil;

    check-cast v5, Lg/cmo;

    invoke-virtual {v5}, Lg/cmo;->aj()V

    iget-object v6, v5, Lg/cmo;->k:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v5, v5, Lg/cmo;->ad:I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v5, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeuc;->a:Lg/gil;

    check-cast v5, Lg/cmo;

    invoke-virtual {v5}, Lg/cmo;->ai()V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeuc;->a:Lg/gil;

    check-cast v5, Lg/cmo;

    invoke-virtual {v5, v1}, Lg/cmo;->ae(I)V

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->a:Lg/gil;

    check-cast v1, Lg/cmo;

    invoke-virtual {v1}, Lg/cmo;->at()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "native_advanced_settings"

    invoke-virtual {p1, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzk:I

    if-le v1, v4, :cond_e

    const-string v5, "max_num_ads"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzb:Lcom/google/android/gms/internal/ads/zzbmb;

    if-eqz v1, :cond_15

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbmb;->zzc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbmb;->zza:I

    if-lt v5, v2, :cond_11

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbmb;->zzd:I

    if-eq v1, v2, :cond_10

    if-eq v1, v3, :cond_f

    const-string v1, "l"

    goto :goto_3

    :cond_f
    const-string v1, "p"

    goto :goto_3

    :cond_10
    const-string v1, "l"

    goto :goto_3

    :cond_11
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbmb;->zzb:I

    if-eq v1, v4, :cond_12

    if-eq v1, v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Instream ad video aspect ratio "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is wrong."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->d(Ljava/lang/String;)V

    :cond_12
    const-string v1, "l"

    goto :goto_3

    :cond_13
    const-string v1, "p"

    :goto_3
    const-string v2, "ia_var"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbmb;->zzc:Ljava/lang/String;

    const-string v2, "ad_tag"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v1, "instr"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffo;->zza()Lcom/google/android/gms/internal/ads/zzbhp;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v1, "has_delayed_banner_listener"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzlA:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    if-eqz v1, :cond_17

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    iget-boolean v2, v2, Lg/cpm;->zza:Z

    const-string v3, "startMuted"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    iget-boolean v2, v2, Lg/cpm;->zzc:Z

    const-string v3, "clickToExpandRequested"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    iget-boolean v2, v2, Lg/cpm;->zzb:Z

    const-string v3, "customControlsRequested"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "video"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    const-string v2, "disable_image_loading"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbfn;->zzb:Z

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeuc;->c:Lcom/google/android/gms/internal/ads/zzffo;

    const-string v1, "preferred_ad_choices_position"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbfn;->zze:I

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

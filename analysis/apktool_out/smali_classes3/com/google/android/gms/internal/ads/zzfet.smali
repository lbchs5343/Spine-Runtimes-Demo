.class public final Lcom/google/android/gms/internal/ads/zzfet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzA:Lcom/google/android/gms/internal/ads/zzbye;

.field public final zzB:Ljava/lang/String;

.field public final zzC:Lorg/json/JSONObject;

.field public final zzD:Lorg/json/JSONObject;

.field public final zzE:Ljava/lang/String;

.field public final zzF:Ljava/lang/String;

.field public final zzG:Ljava/lang/String;

.field public final zzH:Ljava/lang/String;

.field public final zzI:Ljava/lang/String;

.field public final zzJ:Z

.field public final zzK:Z

.field public final zzL:Z

.field public final zzM:Z

.field public final zzN:Z

.field public final zzO:Z

.field public final zzP:Z

.field public final zzQ:I

.field public final zzR:I

.field public final zzS:Z

.field public final zzT:Z

.field public final zzU:Ljava/lang/String;

.field public final zzV:Lcom/google/android/gms/internal/ads/zzffr;

.field public final zzW:Z

.field public final zzX:Z

.field public final zzY:I

.field public final zzZ:Ljava/lang/String;

.field public final zza:Ljava/util/List;

.field public final zzaa:I

.field public final zzab:Ljava/lang/String;

.field public final zzac:Z

.field public final zzad:Lcom/google/android/gms/internal/ads/zzbtm;

.field public final zzae:Lg/adq;

.field public final zzaf:Ljava/lang/String;

.field public final zzag:Z

.field public final zzah:Lorg/json/JSONObject;

.field public final zzai:Z

.field public final zzaj:Lorg/json/JSONObject;

.field public final zzak:Z

.field public final zzal:Ljava/lang/String;

.field public final zzam:Z

.field public final zzan:Ljava/lang/String;

.field public final zzao:Ljava/lang/String;

.field public final zzap:Ljava/lang/String;

.field public final zzaq:Z

.field public final zzar:Z

.field public final zzas:I

.field public final zzat:Ljava/lang/String;

.field public final zzau:Ljava/util/List;

.field public final zzav:Z

.field public final zzaw:Ljava/util/Map;

.field public final zzb:I

.field public final zzc:Ljava/util/List;

.field public final zzd:Ljava/util/List;

.field public final zze:I

.field public final zzf:Ljava/util/List;

.field public final zzg:Ljava/util/List;

.field public final zzh:Ljava/util/List;

.field public final zzi:Ljava/util/List;

.field public final zzj:Ljava/lang/String;

.field public final zzk:Ljava/lang/String;

.field public final zzl:Lcom/google/android/gms/internal/ads/zzbwv;

.field public final zzm:Ljava/util/List;

.field public final zzn:Ljava/util/List;

.field public final zzo:Ljava/util/List;

.field public final zzp:Ljava/util/List;

.field public final zzq:I

.field public final zzr:Ljava/util/List;

.field public final zzs:Lcom/google/android/gms/internal/ads/zzfey;

.field public final zzt:Ljava/util/List;

.field public final zzu:Ljava/util/List;

.field public final zzv:Lorg/json/JSONObject;

.field public final zzw:Ljava/lang/String;

.field public final zzx:Ljava/lang/String;

.field public final zzy:Ljava/lang/String;

.field public final zzz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 88

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v11, ""

    const/4 v12, 0x0

    move-object/from16 v25, v1

    move-object/from16 v30, v25

    move-object/from16 v32, v30

    move-object/from16 v33, v32

    move-object/from16 v24, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v35, v16

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v50, v39

    move-object/from16 v54, v50

    move-object/from16 v56, v54

    move-object/from16 v58, v56

    move-object/from16 v60, v58

    move-object/from16 v61, v60

    move-object/from16 v62, v61

    move-object/from16 v63, v62

    move-object/from16 v64, v63

    move-object/from16 v69, v64

    move-object/from16 v70, v69

    move-object/from16 v71, v70

    move-object/from16 v75, v71

    move-object v11, v12

    move-object/from16 v26, v11

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v31, v29

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v34, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, -0x1

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, -0x1

    const/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    move-object/from16 v2, v33

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v12, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v77

    if-eqz v77, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v77

    if-nez v77, :cond_0

    move-object/from16 v78, v16

    goto :goto_1

    :cond_0
    move-object/from16 v78, v77

    :goto_1
    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->hashCode()I

    move-result v77

    const/16 v79, 0x2

    const/16 v80, 0x4

    const/16 v81, 0x5

    move-object/from16 v82, v12

    const/16 v83, 0x6

    const/16 v84, 0x7

    sparse-switch v77, :sswitch_data_0

    move-object/from16 v85, v9

    goto/16 :goto_2

    :sswitch_0
    const-string v12, "render_serially"

    move-object/from16 v85, v9

    move-object/from16 v9, v78

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x4b

    goto/16 :goto_3

    :sswitch_1
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "manual_tracking_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xf

    goto/16 :goto_3

    :sswitch_2
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "rule_line_external_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x34

    goto/16 :goto_3

    :sswitch_3
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_analytics_logging_enabled"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2a

    goto/16 :goto_3

    :sswitch_4
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "renderers"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto/16 :goto_3

    :sswitch_5
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "use_third_party_container_height"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x30

    goto/16 :goto_3

    :sswitch_6
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "video_reward_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x7

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_network_class_name"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x37

    goto/16 :goto_3

    :sswitch_8
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "video_start_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x6

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "bid_response"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x28

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_source_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x3a

    goto/16 :goto_3

    :sswitch_b
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_collapsible"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x46

    goto/16 :goto_3

    :sswitch_c
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "allow_pub_owned_ad_view"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1f

    goto/16 :goto_3

    :sswitch_d
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "cache_hit_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x42

    goto/16 :goto_3

    :sswitch_e
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "adapter_response_info_key"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x38

    goto/16 :goto_3

    :sswitch_f
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "rewards"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xb

    goto/16 :goto_3

    :sswitch_10
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "transaction_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x9

    goto/16 :goto_3

    :sswitch_11
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "analytics_event_name_to_parameters_map"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x4c

    goto/16 :goto_3

    :sswitch_12
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "impression_type"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x5

    goto/16 :goto_3

    :sswitch_13
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "container_sizes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x11

    goto/16 :goto_3

    :sswitch_14
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "debug_dialog_string"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1b

    goto/16 :goto_3

    :sswitch_15
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "presentation_error_timeout_ms"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x10

    goto/16 :goto_3

    :sswitch_16
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "consent_form_action_identifier"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x48

    goto/16 :goto_3

    :sswitch_17
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_closable_area_disabled"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x24

    goto/16 :goto_3

    :sswitch_18
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_load_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto/16 :goto_3

    :sswitch_19
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "qdata"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x18

    goto/16 :goto_3

    :sswitch_1a
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "render_test_label"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x21

    goto/16 :goto_3

    :sswitch_1b
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "request_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x44

    goto/16 :goto_3

    :sswitch_1c
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "data"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x16

    goto/16 :goto_3

    :sswitch_1d
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x17

    goto/16 :goto_3

    :sswitch_1e
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x12

    goto/16 :goto_3

    :sswitch_1f
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "allow_custom_click_gesture"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto/16 :goto_3

    :sswitch_20
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_offline_ad"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x3d

    goto/16 :goto_3

    :sswitch_21
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "native_required_asset_viewability"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x3f

    goto/16 :goto_3

    :sswitch_22
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "watermark"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2e

    goto/16 :goto_3

    :sswitch_23
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "force_disable_hardware_acceleration"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x41

    goto/16 :goto_3

    :sswitch_24
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_close_button_enabled"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x32

    goto/16 :goto_3

    :sswitch_25
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "content_url"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x40

    goto/16 :goto_3

    :sswitch_26
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_close_time_ms"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2d

    goto/16 :goto_3

    :sswitch_27
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "render_timeout_ms"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x26

    goto/16 :goto_3

    :sswitch_28
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "rtb_native_required_assets"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x3e

    goto/16 :goto_3

    :sswitch_29
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "imp_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    goto/16 :goto_3

    :sswitch_2a
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "safe_browsing"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1a

    goto/16 :goto_3

    :sswitch_2b
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "late_load_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x4a

    goto/16 :goto_3

    :sswitch_2c
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "click_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x2

    goto/16 :goto_3

    :sswitch_2d
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_source_instance_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x3c

    goto/16 :goto_3

    :sswitch_2e
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "valid_from_timestamp"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xa

    goto/16 :goto_3

    :sswitch_2f
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "active_view"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x19

    goto/16 :goto_3

    :sswitch_30
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "video_complete_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x8

    goto/16 :goto_3

    :sswitch_31
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "allocation_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x15

    goto/16 :goto_3

    :sswitch_32
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "fill_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xc

    goto/16 :goto_3

    :sswitch_33
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_scroll_aware"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2b

    goto/16 :goto_3

    :sswitch_34
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_type"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto/16 :goto_3

    :sswitch_35
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "presentation_error_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xe

    goto/16 :goto_3

    :sswitch_36
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "allow_pub_rendered_attribution"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1e

    goto/16 :goto_3

    :sswitch_37
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_event_value"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x33

    goto/16 :goto_3

    :sswitch_38
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "extras"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1d

    goto/16 :goto_3

    :sswitch_39
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "test_mode_enabled"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x22

    goto/16 :goto_3

    :sswitch_3a
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "adapters"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x14

    goto/16 :goto_3

    :sswitch_3b
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_sizes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x13

    goto/16 :goto_3

    :sswitch_3c
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_cover"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x36

    goto/16 :goto_3

    :sswitch_3d
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "showable_impression_type"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2c

    goto/16 :goto_3

    :sswitch_3e
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "buffer_click_url_as_ready_to_ping"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x43

    goto/16 :goto_3

    :sswitch_3f
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "enable_omid"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x27

    goto/16 :goto_3

    :sswitch_40
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "orientation"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x25

    goto/16 :goto_3

    :sswitch_41
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_custom_close_blocked"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x23

    goto/16 :goto_3

    :sswitch_42
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "nofill_urls"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xd

    goto/16 :goto_3

    :sswitch_43
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "backend_query_id"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x2f

    goto/16 :goto_3

    :sswitch_44
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_interscroller"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x35

    goto/16 :goto_3

    :sswitch_45
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_source_name"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x39

    goto/16 :goto_3

    :sswitch_46
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "parallel_key"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x49

    goto :goto_3

    :sswitch_47
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "play_prewarm_options"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x31

    goto :goto_3

    :sswitch_48
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "is_consent"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x47

    goto :goto_3

    :sswitch_49
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "recursive_server_response_data"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x45

    goto :goto_3

    :sswitch_4a
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "omid_settings"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x29

    goto :goto_3

    :sswitch_4b
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "debug_signals"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1c

    goto :goto_3

    :sswitch_4c
    move-object/from16 v85, v9

    move-object/from16 v9, v78

    const-string v12, "ad_source_instance_name"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x3b

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v9, -0x1

    :goto_3
    packed-switch v9, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    goto/16 :goto_8

    :pswitch_0
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzaj:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbce;->zzj()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v78, v8

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v86, v11

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v86

    move-object/from16 v14, v87

    goto :goto_5

    :cond_2
    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v9, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v78

    goto :goto_4

    :cond_3
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    move-object/from16 v23, v9

    :goto_6
    move-object/from16 v12, v82

    :goto_7
    move-object/from16 v9, v85

    goto/16 :goto_0

    :cond_4
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_8

    :pswitch_1
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v76

    goto :goto_6

    :pswitch_2
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_6

    :pswitch_3
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v75

    goto :goto_6

    :pswitch_4
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v74

    goto :goto_6

    :pswitch_5
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v73

    goto :goto_6

    :pswitch_6
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v72

    goto :goto_6

    :pswitch_7
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v70

    goto :goto_6

    :pswitch_8
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v69

    goto :goto_6

    :pswitch_9
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v68

    goto :goto_6

    :pswitch_a
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    goto :goto_8

    :pswitch_b
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v67

    goto/16 :goto_6

    :pswitch_c
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6

    :pswitch_d
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v66

    goto/16 :goto_6

    :pswitch_e
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v21

    goto/16 :goto_6

    :pswitch_f
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v65

    goto/16 :goto_6

    :pswitch_10
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcn;->zzgE:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbce;->zzj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v64

    :goto_8
    move-object/from16 v8, v78

    move-object/from16 v12, v82

    move-object/from16 v9, v85

    move-object/from16 v11, v86

    move-object/from16 v14, v87

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :pswitch_11
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcn;->zzgE:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbce;->zzj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v63

    goto :goto_8

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :pswitch_12
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcn;->zzgE:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbce;->zzj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v62

    goto :goto_8

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :pswitch_13
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcn;->zzgE:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbce;->zzj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v61

    goto :goto_8

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    :pswitch_14
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v71

    goto/16 :goto_6

    :pswitch_15
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v60

    goto/16 :goto_6

    :pswitch_16
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v20

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v59

    goto/16 :goto_6

    :pswitch_18
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v58

    goto/16 :goto_6

    :pswitch_19
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lg/adq;->zza(Lorg/json/JSONObject;)Lg/adq;

    move-result-object v28

    :goto_9
    move-object/from16 v8, v78

    goto/16 :goto_6

    :pswitch_1a
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    goto/16 :goto_8

    :pswitch_1b
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbtm;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v27

    goto :goto_9

    :pswitch_1c
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v57

    goto/16 :goto_6

    :pswitch_1d
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_6

    :pswitch_1e
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_6

    :pswitch_1f
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v55

    goto/16 :goto_6

    :pswitch_20
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v53

    goto/16 :goto_6

    :pswitch_21
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v52

    goto/16 :goto_6

    :pswitch_22
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v51

    goto/16 :goto_6

    :pswitch_23
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v19

    goto/16 :goto_6

    :pswitch_24
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_6

    :pswitch_25
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v49

    goto/16 :goto_6

    :pswitch_26
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v48

    goto/16 :goto_6

    :pswitch_27
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "landscape"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v47, 0x6

    goto/16 :goto_8

    :cond_9
    const-string v9, "portrait"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v47, 0x7

    goto/16 :goto_8

    :cond_a
    const/16 v47, -0x1

    goto/16 :goto_8

    :pswitch_28
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v46

    goto/16 :goto_6

    :pswitch_29
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v45

    goto/16 :goto_6

    :pswitch_2a
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v44

    goto/16 :goto_6

    :pswitch_2b
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v43

    goto/16 :goto_6

    :pswitch_2c
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v42

    goto/16 :goto_6

    :pswitch_2d
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v41

    goto/16 :goto_6

    :pswitch_2e
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v40

    goto/16 :goto_6

    :pswitch_2f
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v18

    goto/16 :goto_6

    :pswitch_30
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v17

    goto/16 :goto_6

    :pswitch_31
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_6

    :pswitch_32
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbye;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbye;

    move-result-object v26

    goto/16 :goto_9

    :pswitch_33
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_9

    :pswitch_34
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_6

    :pswitch_35
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_6

    :pswitch_36
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->at(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v24

    goto/16 :goto_6

    :pswitch_37
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_6

    :pswitch_38
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v30

    goto/16 :goto_6

    :pswitch_39
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfeu;->a(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v25

    goto/16 :goto_6

    :pswitch_3a
    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfey;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzfey;-><init>(Landroid/util/JsonReader;)V

    move-object/from16 v31, v8

    goto/16 :goto_9

    :pswitch_3b
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfeu;->a(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v32

    goto/16 :goto_6

    :pswitch_3c
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextInt()I

    move-result v34

    goto/16 :goto_6

    :pswitch_3d
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v33

    goto/16 :goto_6

    :pswitch_3e
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_7

    :pswitch_3f
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v9, v8

    move-object/from16 v8, v78

    move-object/from16 v12, v82

    goto/16 :goto_0

    :pswitch_40
    move-object/from16 v9, p1

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v8

    goto/16 :goto_6

    :pswitch_41
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ac(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbwv;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzbwv;

    move-result-object v11

    goto/16 :goto_9

    :pswitch_42
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_6

    :pswitch_43
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_6

    :pswitch_44
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_6

    :pswitch_45
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_6

    :pswitch_46
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_6

    :pswitch_47
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_c

    const/4 v11, 0x1

    if-eq v8, v11, :cond_c

    const/4 v12, 0x3

    if-ne v8, v12, :cond_b

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_c
    :goto_a
    move v13, v8

    goto/16 :goto_8

    :pswitch_48
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_6

    :pswitch_49
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_4a
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_4b
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    const/4 v11, 0x1

    const/4 v12, 0x3

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "banner"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto/16 :goto_8

    :cond_d
    const-string v10, "interstitial"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x2

    goto/16 :goto_8

    :cond_e
    const-string v10, "native_express"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x3

    goto/16 :goto_8

    :cond_f
    const-string v10, "native"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x4

    goto/16 :goto_8

    :cond_10
    const-string v10, "rewarded"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x5

    goto/16 :goto_8

    :cond_11
    const-string v10, "app_open_ad"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x6

    goto/16 :goto_8

    :cond_12
    const-string v10, "rewarded_interstitial"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v10, 0x7

    goto/16 :goto_8

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_8

    :pswitch_4c
    move-object/from16 v9, p1

    move-object/from16 v78, v8

    move-object/from16 v86, v11

    move-object/from16 v87, v14

    invoke-static {v9}, Lg/fso;->ad(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_6

    :cond_14
    move-object/from16 v78, v8

    move-object/from16 v85, v9

    move-object/from16 v86, v11

    move-object/from16 v82, v12

    move-object/from16 v87, v14

    move-object/from16 v9, p1

    invoke-virtual {v9}, Landroid/util/JsonReader;->endObject()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zza:Ljava/util/List;

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzb:I

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzc:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzd:Ljava/util/List;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzf:Ljava/util/List;

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzfet;->zze:I

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzg:Ljava/util/List;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzh:Ljava/util/List;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzi:Ljava/util/List;

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzj:Ljava/lang/String;

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzk:Ljava/lang/String;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzl:Lcom/google/android/gms/internal/ads/zzbwv;

    move-object/from16 v1, v78

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzm:Ljava/util/List;

    move-object/from16 v1, v85

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzn:Ljava/util/List;

    move-object/from16 v1, v82

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzo:Ljava/util/List;

    move-object/from16 v1, v33

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzp:Ljava/util/List;

    move/from16 v10, v34

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzq:I

    move-object/from16 v1, v32

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzr:Ljava/util/List;

    move-object/from16 v8, v31

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    move-object/from16 v1, v30

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzt:Ljava/util/List;

    move-object/from16 v1, v25

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzu:Ljava/util/List;

    move-object/from16 v11, v35

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzw:Ljava/lang/String;

    move-object/from16 v2, v24

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzv:Lorg/json/JSONObject;

    move-object/from16 v11, v36

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzx:Ljava/lang/String;

    move-object/from16 v11, v37

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzy:Ljava/lang/String;

    move-object/from16 v11, v38

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzz:Ljava/lang/String;

    move-object/from16 v12, v26

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzA:Lcom/google/android/gms/internal/ads/zzbye;

    move-object/from16 v11, v39

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzB:Ljava/lang/String;

    move-object/from16 v3, v17

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzC:Lorg/json/JSONObject;

    move-object/from16 v4, v18

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzD:Lorg/json/JSONObject;

    move/from16 v10, v40

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzJ:Z

    move/from16 v10, v41

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzK:Z

    move/from16 v10, v42

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzL:Z

    move/from16 v10, v43

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzM:Z

    move/from16 v10, v44

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzN:Z

    move/from16 v10, v45

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzO:Z

    move/from16 v10, v46

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzP:Z

    move/from16 v13, v47

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzQ:I

    move/from16 v10, v48

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzR:I

    move/from16 v10, v49

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzT:Z

    move-object/from16 v11, v50

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzU:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffr;

    move-object/from16 v5, v19

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzffr;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzV:Lcom/google/android/gms/internal/ads/zzffr;

    move/from16 v10, v51

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzW:Z

    move/from16 v10, v52

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzX:Z

    move/from16 v10, v53

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzY:I

    move-object/from16 v11, v54

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzZ:Ljava/lang/String;

    move/from16 v13, v55

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzaa:I

    move-object/from16 v11, v56

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzab:Ljava/lang/String;

    move/from16 v10, v57

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzac:Z

    move-object/from16 v12, v27

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzad:Lcom/google/android/gms/internal/ads/zzbtm;

    move-object/from16 v12, v28

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzae:Lg/adq;

    move-object/from16 v11, v58

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzaf:Ljava/lang/String;

    move/from16 v10, v59

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzag:Z

    move-object/from16 v6, v20

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzah:Lorg/json/JSONObject;

    move-object/from16 v11, v60

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzE:Ljava/lang/String;

    move-object/from16 v11, v61

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzF:Ljava/lang/String;

    move-object/from16 v11, v62

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzG:Ljava/lang/String;

    move-object/from16 v11, v63

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzH:Ljava/lang/String;

    move-object/from16 v11, v64

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzI:Ljava/lang/String;

    move/from16 v10, v65

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    move-object/from16 v7, v21

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzaj:Lorg/json/JSONObject;

    move/from16 v10, v66

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzak:Z

    move-object/from16 v12, v29

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzal:Ljava/lang/String;

    move/from16 v10, v67

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzam:Z

    move/from16 v10, v68

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzS:Z

    move-object/from16 v11, v69

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzan:Ljava/lang/String;

    move-object/from16 v11, v70

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzao:Ljava/lang/String;

    move-object/from16 v11, v71

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzap:Ljava/lang/String;

    move/from16 v10, v72

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzaq:Z

    move/from16 v10, v73

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzar:Z

    move/from16 v10, v74

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzas:I

    move-object/from16 v8, v22

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzau:Ljava/util/List;

    move-object/from16 v11, v75

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzat:Ljava/lang/String;

    move/from16 v10, v76

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzav:Z

    move-object/from16 v9, v23

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzfet;->zzaw:Ljava/util/Map;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f724a93 -> :sswitch_4c
        -0x760d5f21 -> :sswitch_4b
        -0x752755d7 -> :sswitch_4a
        -0x6f8bb127 -> :sswitch_49
        -0x6ddc55fb -> :sswitch_48
        -0x6c01c604 -> :sswitch_47
        -0x6a655fd9 -> :sswitch_46
        -0x69ea0ded -> :sswitch_45
        -0x631f353f -> :sswitch_44
        -0x60966ac3 -> :sswitch_43
        -0x5c657e81 -> :sswitch_42
        -0x55d641b4 -> :sswitch_41
        -0x55cd0a30 -> :sswitch_40
        -0x552c574b -> :sswitch_3f
        -0x53d154ad -> :sswitch_3e
        -0x53abfab8 -> :sswitch_3d
        -0x51fb2365 -> :sswitch_3c
        -0x511c568a -> :sswitch_3b
        -0x4dd838fc -> :sswitch_3a
        -0x4daf44ce -> :sswitch_39
        -0x4cd5119d -> :sswitch_38
        -0x49ea2690 -> :sswitch_37
        -0x49901bd3 -> :sswitch_36
        -0x45a06900 -> :sswitch_35
        -0x44ada62a -> :sswitch_34
        -0x4456b89f -> :sswitch_33
        -0x428259e0 -> :sswitch_32
        -0x407d0b26 -> :sswitch_31
        -0x4041c09a -> :sswitch_30
        -0x3ea917c2 -> :sswitch_2f
        -0x3a916a9c -> :sswitch_2e
        -0x39f06783 -> :sswitch_2d
        -0x2e4deec5 -> :sswitch_2c
        -0x21fb0dbc -> :sswitch_2b
        -0x207016c7 -> :sswitch_2a
        -0x1a0cf689 -> :sswitch_29
        -0x181b2b46 -> :sswitch_28
        -0x18198873 -> :sswitch_27
        -0x17b47e0b -> :sswitch_26
        -0x172cbb57 -> :sswitch_25
        -0x160a4bb0 -> :sswitch_24
        -0xcb8faf4 -> :sswitch_23
        -0xcb8979c -> :sswitch_22
        -0xabddb62 -> :sswitch_21
        -0x93741cc -> :sswitch_20
        -0x1bfab86 -> :sswitch_1f
        0xc23 -> :sswitch_1e
        0xd1b -> :sswitch_1d
        0x2eefaa -> :sswitch_1c
        0x23640cb -> :sswitch_1b
        0x3c44b50 -> :sswitch_1a
        0x6674f9b -> :sswitch_19
        0xdba7381 -> :sswitch_18
        0x18f0294b -> :sswitch_17
        0x2052155c -> :sswitch_16
        0x20bbc660 -> :sswitch_15
        0x239cb9fc -> :sswitch_14
        0x2cfeab54 -> :sswitch_13
        0x2f2793b0 -> :sswitch_12
        0x2ffcc875 -> :sswitch_11
        0x3c3c4a1c -> :sswitch_10
        0x419a9724 -> :sswitch_f
        0x440b789c -> :sswitch_e
        0x46b1262d -> :sswitch_d
        0x4ec7dc6f -> :sswitch_c
        0x54c7ec75 -> :sswitch_b
        0x55aac6a3 -> :sswitch_a
        0x619b1543 -> :sswitch_9
        0x61b080e5 -> :sswitch_8
        0x6483313f -> :sswitch_7
        0x64a20a30 -> :sswitch_6
        0x6b3eec6e -> :sswitch_5
        0x6da6d810 -> :sswitch_4
        0x6fc8b8d3 -> :sswitch_3
        0x7b455927 -> :sswitch_2
        0x7b8dc4b3 -> :sswitch_1
        0x7bb5b70a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "REWARDED_INTERSTITIAL"

    return-object p0

    :pswitch_1
    const-string p0, "APP_OPEN_AD"

    return-object p0

    :pswitch_2
    const-string p0, "REWARDED"

    return-object p0

    :pswitch_3
    const-string p0, "NATIVE"

    return-object p0

    :pswitch_4
    const-string p0, "NATIVE_EXPRESS"

    return-object p0

    :pswitch_5
    const-string p0, "INTERSTITIAL"

    return-object p0

    :pswitch_6
    const-string p0, "BANNER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

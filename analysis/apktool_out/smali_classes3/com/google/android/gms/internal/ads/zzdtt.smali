.class public final Lcom/google/android/gms/internal/ads/zzdtt;
.super Lcom/google/android/gms/internal/ads/zzbks;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lcom/google/android/gms/internal/ads/zzdtw;

.field public final c:Lcom/google/android/gms/internal/ads/zzdtr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtw;Lcom/google/android/gms/internal/ads/zzdtr;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbks;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtt;->b:Lcom/google/android/gms/internal/ads/zzdtw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtt;->c:Lcom/google/android/gms/internal/ads/zzdtr;

    return-void
.end method

.method public static d(Ljava/util/HashMap;)Lg/aeh;
    .locals 37

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lg/ddh;->DEFAULT:Lg/ddh;

    invoke-virtual {v0}, Lg/ddh;->b()I

    move-result v33

    const-string v0, "ad_request"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v22, 0x0

    const v24, 0xea60

    const-wide/16 v34, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lg/aeh;

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, v21

    move/from16 v21, v8

    move/from16 v26, v33

    move-wide/from16 v27, v34

    invoke-direct/range {v0 .. v28}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    return-object v0

    :cond_0
    move-object/from16 v14, v21

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    const/4 v9, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "tagForChildDirectedTreatment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "maxAdContentRating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_2
    const-string v3, "keywords"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    const-string v3, "httpTimeoutMillis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_4
    const-string v3, "tagForUnderAgeOfConsent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_5
    const-string v3, "isTestDevice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_6
    const-string v3, "extras"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/bah;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v22, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    move-object v6, v2

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    move-object v4, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    move/from16 v28, v0

    move-object v11, v4

    move-object v13, v6

    move-object/from16 v29, v22

    move/from16 v31, v24

    goto :goto_6

    :catch_0
    const/4 v0, -0x1

    :catch_1
    const-string v1, "Ad Request json was malformed, parsing ended early."

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    new-instance v0, Lg/aeh;

    const/16 v27, 0x0

    const/16 v32, 0x0

    move-object/from16 v22, v15

    move v15, v8

    const/16 v8, 0x8

    const-wide/16 v9, -0x1

    const/4 v12, -0x1

    move-object/from16 v30, v23

    move-object/from16 v23, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v14

    move v14, v7

    move-object v7, v0

    invoke-direct/range {v7 .. v35}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    iget-object v0, v7, Lg/aeh;->zzm:Landroid/os/Bundle;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, v7, Lg/aeh;->zzc:Landroid/os/Bundle;

    iget-object v2, v7, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    move-object v12, v0

    iget v9, v7, Lg/aeh;->zza:I

    iget-wide v10, v7, Lg/aeh;->zzb:J

    iget v13, v7, Lg/aeh;->zzd:I

    iget-object v14, v7, Lg/aeh;->zze:Ljava/util/List;

    iget-boolean v15, v7, Lg/aeh;->zzf:Z

    iget v0, v7, Lg/aeh;->zzg:I

    iget-boolean v1, v7, Lg/aeh;->zzh:Z

    iget-object v2, v7, Lg/aeh;->zzi:Ljava/lang/String;

    iget-object v3, v7, Lg/aeh;->zzj:Lg/ela;

    iget-object v4, v7, Lg/aeh;->zzk:Landroid/location/Location;

    iget-object v5, v7, Lg/aeh;->zzl:Ljava/lang/String;

    iget-object v6, v7, Lg/aeh;->zzm:Landroid/os/Bundle;

    iget-object v8, v7, Lg/aeh;->zzn:Landroid/os/Bundle;

    move/from16 v16, v0

    iget-object v0, v7, Lg/aeh;->zzo:Ljava/util/List;

    move-object/from16 v24, v0

    iget-object v0, v7, Lg/aeh;->zzp:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v7, Lg/aeh;->zzq:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-boolean v0, v7, Lg/aeh;->zzr:Z

    move/from16 v27, v0

    iget-object v0, v7, Lg/aeh;->zzs:Lg/acl;

    move-object/from16 v28, v0

    iget v0, v7, Lg/aeh;->zzt:I

    move/from16 v29, v0

    iget-object v0, v7, Lg/aeh;->zzu:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v7, Lg/aeh;->zzv:Ljava/util/List;

    move-object/from16 v31, v0

    iget v0, v7, Lg/aeh;->zzw:I

    move/from16 v32, v0

    iget-object v0, v7, Lg/aeh;->zzx:Ljava/lang/String;

    move-object/from16 v33, v0

    iget v0, v7, Lg/aeh;->zzy:I

    move/from16 v34, v0

    move/from16 v17, v1

    iget-wide v0, v7, Lg/aeh;->zzz:J

    move-object/from16 v23, v8

    new-instance v8, Lg/aeh;

    move-wide/from16 v35, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-direct/range {v8 .. v36}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd5119d -> :sswitch_6
        -0x3203e9ae -> :sswitch_5
        -0x2bb75c13 -> :sswitch_4
        -0x5f434a1 -> :sswitch_3
        0x1f2e9faa -> :sswitch_2
        0x239f260f -> :sswitch_1
        0x54230b03 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zze()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjC:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Received H5 gmsg: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->z:Lg/esy;

    invoke-static {v1}, Lg/esy;->u(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "action"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "H5 gmsg did not contain an action"

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2283a781

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x33ebcb90

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "initialize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "dispose_all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, -0x1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdtt;->c:Lcom/google/android/gms/internal/ads/zzdtr;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdtt;->a:Ljava/util/HashMap;

    if-eqz v4, :cond_13

    if-eq v4, v8, :cond_11

    const-string v4, "obj_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "create_rewarded_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "dispose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_2
    const-string v4, "load_interstitial_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "create_interstitial_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_4
    const-string v4, "load_rewarded_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_5
    const-string v4, "show_rewarded_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_6
    const-string v4, "show_interstitial_ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x2

    :cond_5
    :goto_2
    const-string v4, " with ad unit "

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdtt;->b:Lcom/google/android/gms/internal/ads/zzdtw;

    const-string v8, "Could not create H5 ad, missing ad unit id"

    const-string v12, "ad_unit"

    const-string v13, "Could not create H5 ad, object ID already exists"

    const-string v14, "Could not create H5 ad, too many existing objects"

    const-string v15, "Could not load H5 ad, object ID does not exist"

    const-string v16, "Could not show H5 ad, object ID does not exist"

    packed-switch v6, :pswitch_data_0

    const-string v1, "H5 gmsg contained invalid action: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bwx;

    if-nez v2, :cond_6

    const-string v1, "Could not dispose H5 ad, object ID does not exist"

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-interface {v2}, Lg/bwx;->zza()V

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disposed H5 ad #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bwx;

    if-nez v1, :cond_7

    invoke-static/range {v16 .. v16}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzq(J)V

    return-void

    :cond_7
    invoke-interface {v1}, Lg/bwx;->zzc()V

    return-void

    :pswitch_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bwx;

    if-nez v2, :cond_8

    invoke-static {v15}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzq(J)V

    return-void

    :cond_8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdtt;->d(Ljava/util/HashMap;)Lg/aeh;

    move-result-object v1

    invoke-interface {v2, v1}, Lg/bwx;->zzb(Lg/aeh;)V

    return-void

    :pswitch_3
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzjD:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v3, v2, :cond_9

    invoke-static {v14}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzi(J)V

    return-void

    :cond_9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v13}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzi(J)V

    return-void

    :cond_a
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v8}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzi(J)V

    return-void

    :cond_b
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzdtw;->zzb()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v3

    invoke-interface {v3, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtn;->zzb(J)Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdtn;->zzc()Lcom/google/android/gms/internal/ads/zzdto;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdto;->zzb()Lcom/google/android/gms/internal/ads/zzduc;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzh(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created H5 rewarded #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bwx;

    if-nez v1, :cond_c

    invoke-static/range {v16 .. v16}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzf(J)V

    return-void

    :cond_c
    invoke-interface {v1}, Lg/bwx;->zzc()V

    return-void

    :pswitch_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bwx;

    if-nez v2, :cond_d

    invoke-static {v15}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzf(J)V

    return-void

    :cond_d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdtt;->d(Ljava/util/HashMap;)Lg/aeh;

    move-result-object v1

    invoke-interface {v2, v1}, Lg/bwx;->zzb(Lg/aeh;)V

    return-void

    :pswitch_6
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzjD:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v3, v2, :cond_e

    invoke-static {v14}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzi(J)V

    return-void

    :cond_e
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v13}, Lg/agd;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzi(J)V

    return-void

    :cond_f
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v8}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzi(J)V

    return-void

    :cond_10
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzdtw;->zzb()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v3

    invoke-interface {v3, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtn;->zzb(J)Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdtn;->zzc()Lcom/google/android/gms/internal/ads/zzdto;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdto;->zza()Lcom/google/android/gms/internal/ads/zzdty;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtr;->zzh(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created H5 interstitial #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5 gmsg did not contain a valid object id: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/agd;->c(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bwx;

    invoke-interface {v2}, Lg/bwx;->zza()V

    goto :goto_3

    :cond_12
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_13
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdtr;->zza()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6abfbf2c -> :sswitch_6
        -0x4b7b584e -> :sswitch_5
        -0xf5303e5 -> :sswitch_4
        0x177a28d3 -> :sswitch_3
        0x22e638bd -> :sswitch_2
        0x63a5261f -> :sswitch_1
        0x7db86731 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

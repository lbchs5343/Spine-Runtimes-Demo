.class public final Lg/sh;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:F

.field public f:Ljava/util/ArrayList;


# direct methods
.method public static g(Ljava/lang/String;Lorg/json/JSONObject;)D
    .locals 3

    invoke-static {p0}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-wide v1
.end method

.method public static h(Lg/dlv;Lorg/json/JSONObject;)Lg/sh;
    .locals 18

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lg/sh;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v0, "ordering"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lg/sh;->c:Ljava/lang/String;

    const-string v4, "loop"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "infinite"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    if-eqz v6, :cond_1

    iput v8, v3, Lg/sh;->e:F

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v3, Lg/sh;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v7, v3, Lg/sh;->e:F

    :goto_0
    const-string v6, "duration"

    const-wide/16 v9, 0x0

    invoke-virtual {v1, v6, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v3, Lg/sh;->a:J

    const-string v11, "startDelay"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v0, v12}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v12, v9

    :goto_1
    iput-wide v12, v3, Lg/sh;->b:J

    const-string v12, "loopMode"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lg/sh;->d:Ljava/lang/String;

    const-string v0, "animators"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_e

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v16, v1

    move-object v1, v4

    move-object/from16 v17, v5

    move v10, v15

    const/4 v9, 0x0

    goto/16 :goto_c

    :cond_2
    new-instance v9, Lg/cau;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move v10, v15

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v9, Lg/cau;->d:J

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    iput v8, v9, Lg/cau;->g:F

    goto :goto_3

    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v9, Lg/cau;->g:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput v7, v9, Lg/cau;->g:F

    :goto_3
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lg/cau;->i:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lg/cau;->c:Ljava/lang/String;

    invoke-virtual {v9}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ripple"

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "rippleColor"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lg/cau;->h:Ljava/lang/String;

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v14, v0

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v9}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v15, "backgroundColor"

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v15, "translateY"

    const-string v7, "translateX"

    const-string v8, "valueFrom"

    move/from16 v16, v0

    const-string v0, "valueTo"

    if-eqz v16, :cond_6

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v1

    invoke-virtual/range {p0 .. p0}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v8, -0x1000000

    invoke-static {v1, v8}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v8}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    iput v1, v9, Lg/cau;->e:F

    int-to-float v0, v0

    iput v0, v9, Lg/cau;->j:F

    move-object v1, v4

    move-object/from16 v17, v5

    goto :goto_8

    :cond_6
    move-object/from16 v16, v1

    invoke-virtual {v9}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v9}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v1, v4

    move-object/from16 v17, v5

    goto :goto_7

    :cond_8
    :goto_5
    if-eqz v14, :cond_9

    move-object v1, v4

    move-object/from16 v17, v5

    :try_start_3
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v14, v4}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v1

    :try_start_4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v14, v0}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v0

    iput v4, v9, Lg/cau;->e:F

    iput v0, v9, Lg/cau;->j:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    move-object v1, v5

    goto :goto_8

    :catch_3
    move-object v5, v1

    :catch_4
    const-string v0, "animation"

    const-string v1, "animation "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    move-object/from16 v17, v5

    move-object v1, v4

    :goto_7
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v9, Lg/cau;->e:F

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v9, Lg/cau;->j:F

    :goto_8
    const-string v0, "interpolator"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lg/cau;->f:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v0, v4}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v4, 0x0

    :goto_9
    iput-wide v4, v9, Lg/cau;->b:J

    const-string v0, "values"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    invoke-virtual {v9}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v9}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    if-eqz v14, :cond_b

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v5, v7}, Lg/sh;->g(Ljava/lang/String;Lorg/json/JSONObject;)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-static {v14, v5}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lg/dlv;->o()Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v5, v7}, Lg/sh;->g(Ljava/lang/String;Lorg/json/JSONObject;)D

    move-result-wide v7

    double-to-float v5, v7

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    iput-object v2, v9, Lg/cau;->a:[F

    :cond_d
    :goto_c
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v10, 0x1

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const-wide/16 v9, 0x0

    goto/16 :goto_2

    :cond_e
    iput-object v13, v3, Lg/sh;->f:Ljava/util/ArrayList;

    :cond_f
    return-object v3
.end method

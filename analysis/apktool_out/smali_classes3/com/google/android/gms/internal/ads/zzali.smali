.class public final Lcom/google/android/gms/internal/ads/zzali;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaki;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Lg/gvt;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final i:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->f:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->g:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->b:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->c:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->d:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->h:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lg/gvt;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v2}, Lg/gvt;-><init>(IFI)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzali;->e:Lg/gvt;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->i:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;Lg/dla;)Lg/dla;
    .locals 17

    move-object/from16 v1, p0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move-object/from16 v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_36

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "multiRowAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "backgroundColor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "rubyPosition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "textEmphasis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "fontSize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "textCombine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto :goto_2

    :sswitch_6
    const-string v7, "shear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xe

    goto :goto_2

    :sswitch_7
    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_8
    const-string v7, "ruby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_2

    :sswitch_9
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_a
    const-string v7, "fontWeight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_b
    const-string v7, "textDecoration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xc

    goto :goto_2

    :sswitch_c
    const-string v7, "textAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_d
    const-string v7, "fontFamily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_e
    const-string v7, "fontStyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v6, -0x1

    :goto_2
    const-string v7, "none"

    const v14, 0x33af38

    const-string v15, "after"

    const v10, 0x58705dc

    const/16 v16, 0x0

    const-string v8, "TtmlParser"

    packed-switch v6, :pswitch_data_0

    :goto_3
    goto :goto_6

    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzali;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v7, :cond_1

    const-string v0, "Invalid value for shear: "

    invoke-static {v5, v0, v8}, Lg/dub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    :try_start_0
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v7, -0x3d380000    # -100.0f

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    throw v16
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Failed to parse shear: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    iput v9, v6, Lg/dla;->j:F

    move-object v0, v6

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_1d

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    sget-object v6, Lg/csc;->b:Ljava/util/regex/Pattern;

    if-nez v5, :cond_3

    goto/16 :goto_10

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14

    sget-object v6, Lg/csc;->b:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfzt;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzt;

    move-result-object v5

    sget-object v6, Lg/csc;->a:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzgbq;->zzb(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzgbo;

    move-result-object v6

    const-string v8, "outside"

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzfzu;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v3, -0x41ecca5b

    if-eq v9, v3, :cond_5

    if-eq v9, v10, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_8

    :cond_5
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_8

    :cond_6
    :goto_7
    const/4 v3, -0x1

    :goto_8
    if-eqz v3, :cond_8

    if-eq v3, v13, :cond_7

    const/4 v3, 0x1

    goto :goto_9

    :cond_7
    const/4 v3, -0x2

    goto :goto_9

    :cond_8
    const/4 v3, 0x2

    :goto_9
    sget-object v6, Lg/csc;->c:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzgbq;->zzb(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzgbo;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v14, :cond_9

    goto :goto_a

    :cond_9
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_f

    :cond_a
    :goto_a
    const/4 v6, 0x0

    const/4 v10, -0x1

    goto/16 :goto_f

    :cond_b
    sget-object v6, Lg/csc;->e:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzgbq;->zzb(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzgbo;

    move-result-object v6

    sget-object v7, Lg/csc;->d:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzgbq;->zzb(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzgbo;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_a

    :cond_c
    const-string v7, "filled"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfzu;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x34264a

    if-eq v7, v8, :cond_d

    goto :goto_b

    :cond_d
    const-string v7, "open"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x2

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v6, 0x1

    :goto_c
    const-string v7, "circle"

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfzu;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x35fdaa48    # -2135406.0f

    if-eq v7, v8, :cond_10

    const v8, 0x18549

    if-eq v7, v8, :cond_f

    goto :goto_d

    :cond_f
    const-string v7, "dot"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v10, 0x0

    goto :goto_e

    :cond_10
    const-string v7, "sesame"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v10, 0x1

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v10, -0x1

    :goto_e
    if-eqz v10, :cond_13

    if-eq v10, v13, :cond_12

    const/4 v10, 0x1

    goto :goto_f

    :cond_12
    const/4 v10, 0x3

    goto :goto_f

    :cond_13
    const/4 v10, 0x2

    :goto_f
    new-instance v5, Lg/csc;

    invoke-direct {v5, v10, v6, v3}, Lg/csc;-><init>(III)V

    goto :goto_11

    :cond_14
    :goto_10
    move-object/from16 v5, v16

    :goto_11
    iput-object v5, v0, Lg/dla;->s:Lg/csc;

    goto/16 :goto_6

    :pswitch_2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_12

    :sswitch_f
    const-string v5, "linethrough"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v10, 0x0

    goto :goto_13

    :sswitch_10
    const-string v5, "nolinethrough"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v10, 0x1

    goto :goto_13

    :sswitch_11
    const-string v5, "underline"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v10, 0x2

    goto :goto_13

    :sswitch_12
    const-string v5, "nounderline"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v10, 0x3

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v10, -0x1

    :goto_13
    if-eqz v10, :cond_19

    if-eq v10, v13, :cond_18

    if-eq v10, v12, :cond_17

    if-eq v10, v11, :cond_16

    goto/16 :goto_3

    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    const/4 v3, 0x0

    iput v3, v0, Lg/dla;->r:I

    goto/16 :goto_1d

    :cond_17
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v13, v0, Lg/dla;->r:I

    goto/16 :goto_1d

    :cond_18
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v3, v0, Lg/dla;->i:I

    goto/16 :goto_1d

    :cond_19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v13, v0, Lg/dla;->i:I

    goto/16 :goto_6

    :pswitch_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5305c081

    if-eq v5, v6, :cond_1b

    if-eq v5, v10, :cond_1a

    goto :goto_14

    :cond_1a
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v10, 0x1

    goto :goto_15

    :cond_1b
    const-string v5, "before"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v10, 0x0

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v10, -0x1

    :goto_15
    if-eqz v10, :cond_1e

    if-eq v10, v13, :cond_1d

    goto/16 :goto_3

    :cond_1d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v12, v0, Lg/dla;->d:I

    goto/16 :goto_6

    :cond_1e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v13, v0, Lg/dla;->d:I

    goto/16 :goto_6

    :pswitch_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    goto :goto_16

    :sswitch_13
    const-string v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v10, 0x3

    goto :goto_17

    :sswitch_14
    const-string v5, "base"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v10, 0x1

    goto :goto_17

    :sswitch_15
    const-string v5, "textContainer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v10, 0x4

    goto :goto_17

    :sswitch_16
    const-string v5, "delimiter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v10, 0x5

    goto :goto_17

    :sswitch_17
    const-string v5, "container"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v10, 0x0

    goto :goto_17

    :sswitch_18
    const-string v5, "baseContainer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v10, 0x2

    goto :goto_17

    :cond_1f
    :goto_16
    const/4 v10, -0x1

    :goto_17
    if-eqz v10, :cond_23

    if-eq v10, v13, :cond_22

    if-eq v10, v12, :cond_22

    if-eq v10, v11, :cond_21

    if-eq v10, v9, :cond_21

    const/4 v3, 0x5

    if-eq v10, v3, :cond_20

    goto/16 :goto_3

    :cond_20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v9, v0, Lg/dla;->l:I

    goto/16 :goto_6

    :cond_21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v11, v0, Lg/dla;->l:I

    goto/16 :goto_6

    :cond_22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v12, v0, Lg/dla;->l:I

    goto/16 :goto_6

    :cond_23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v13, v0, Lg/dla;->l:I

    goto/16 :goto_6

    :pswitch_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x179a1

    if-eq v5, v6, :cond_25

    if-eq v5, v14, :cond_24

    goto :goto_18

    :cond_24
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v10, 0x0

    goto :goto_19

    :cond_25
    const-string v5, "all"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v10, 0x1

    goto :goto_19

    :cond_26
    :goto_18
    const/4 v10, -0x1

    :goto_19
    if-eqz v10, :cond_28

    if-eq v10, v13, :cond_27

    goto/16 :goto_3

    :cond_27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput v13, v0, Lg/dla;->p:I

    goto/16 :goto_6

    :cond_28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    const/4 v3, 0x0

    iput v3, v0, Lg/dla;->p:I

    goto/16 :goto_1d

    :pswitch_6
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzali;->l(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    iput-object v5, v0, Lg/dla;->k:Landroid/text/Layout$Alignment;

    goto/16 :goto_1d

    :pswitch_7
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzali;->l(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    iput-object v5, v0, Lg/dla;->c:Landroid/text/Layout$Alignment;

    goto/16 :goto_1d

    :pswitch_8
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    const-string v6, "italic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput v5, v0, Lg/dla;->m:I

    goto/16 :goto_1d

    :pswitch_9
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    const-string v6, "bold"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput v5, v0, Lg/dla;->a:I

    goto/16 :goto_1d

    :pswitch_a
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    const-string v6, "\\s+"

    sget v7, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v10, Lcom/google/android/gms/internal/ads/zzali;->b:Ljava/util/regex/Pattern;

    if-ne v9, v13, :cond_29

    :try_start_2
    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    goto :goto_1a

    :cond_29
    if-ne v9, v12, :cond_34

    aget-object v6, v6, v13

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v9, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_2 .. :try_end_2} :catch_1

    const-string v10, "\'."

    if-eqz v9, :cond_33

    :try_start_3
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_32

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v15, 0x25

    if-eq v14, v15, :cond_2c

    const/16 v15, 0xca8

    if-eq v14, v15, :cond_2b

    const/16 v15, 0xe08

    if-eq v14, v15, :cond_2a

    goto :goto_1b

    :cond_2a
    const-string v14, "px"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    const/4 v7, 0x0

    goto :goto_1b

    :cond_2b
    const-string v14, "em"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    const/4 v7, 0x1

    goto :goto_1b

    :cond_2c
    const-string v14, "%"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    const/4 v7, 0x2

    :cond_2d
    :goto_1b
    if-eqz v7, :cond_30

    if-eq v7, v13, :cond_2f

    if-ne v7, v12, :cond_2e

    :try_start_4
    iput v11, v0, Lg/dla;->o:I

    goto :goto_1c

    :cond_2e
    new-instance v6, Lcom/google/android/gms/internal/ads/zzake;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid unit for fontSize: \'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2f
    iput v12, v0, Lg/dla;->o:I

    goto :goto_1c

    :cond_30
    iput v13, v0, Lg/dla;->o:I

    :goto_1c
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_31

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Lg/dla;->b:F

    goto/16 :goto_1d

    :cond_31
    throw v16

    :cond_32
    throw v16

    :cond_33
    new-instance v6, Lcom/google/android/gms/internal/ads/zzake;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid expression for fontSize: \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_34
    new-instance v6, Lcom/google/android/gms/internal/ads/zzake;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid number of entries for fontSize: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-string v6, "Failed parsing fontSize value: "

    invoke-static {v5, v6, v8}, Lg/dub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_b
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput-object v5, v0, Lg/dla;->h:Ljava/lang/String;

    goto :goto_1d

    :pswitch_c
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    :try_start_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzde;->zzb(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lg/dla;->n:I

    iput-boolean v13, v0, Lg/dla;->q:Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1d

    :catch_2
    const-string v6, "Failed parsing color value: "

    invoke-static {v5, v6, v8}, Lg/dub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_d
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    :try_start_6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzde;->zzb(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lg/dla;->e:I

    iput-boolean v13, v0, Lg/dla;->g:Z
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1d

    :catch_3
    const-string v6, "Failed parsing background value: "

    invoke-static {v5, v6, v8}, Lg/dub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_e
    const/4 v3, 0x0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "style"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->m(Lg/dla;)Lg/dla;

    move-result-object v0

    iput-object v5, v0, Lg/dla;->f:Ljava/lang/String;

    :cond_35
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_36
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_12
        -0x3d363934 -> :sswitch_11
        0x36723ff0 -> :sswitch_10
        0x641ec051 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_18
        -0x187eb37f -> :sswitch_17
        -0xeee99f9 -> :sswitch_16
        -0x81c562c -> :sswitch_15
        0x2e06d1 -> :sswitch_14
        0x36452d -> :sswitch_13
    .end sparse-switch
.end method

.method public static k(Ljava/lang/String;Lg/gvt;)J
    .locals 13

    sget-object v0, Lcom/google/android/gms/internal/ads/zzali;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long v8, v8, v10

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v7, v8

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v9, v9, v11

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v9, v9

    add-double/2addr v7, v9

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v5

    :goto_0
    add-double/2addr v7, v9

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lg/gvt;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v5

    :goto_1
    add-double/2addr v7, v11

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lg/gvt;->b:I

    int-to-double v4, p0

    iget p0, p1, Lg/gvt;->a:F

    float-to-double p0, p0

    div-double/2addr v0, v4

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v7, v9

    add-double/2addr v7, v5

    mul-double v7, v7, v2

    double-to-long p0, v7

    return-wide p0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzali;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_9

    const/16 v1, 0x68

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_7

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x5

    goto :goto_3

    :cond_5
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x3

    goto :goto_3

    :cond_7
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x4

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    :cond_b
    iget p0, p1, Lg/gvt;->c:I

    int-to-double p0, p0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_c
    iget p0, p1, Lg/gvt;->a:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    goto :goto_4

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    :goto_5
    mul-double v9, v9, p0

    goto :goto_6

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    goto :goto_5

    :goto_6
    mul-double v9, v9, v2

    double-to-long p0, v9

    return-wide p0

    :cond_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzake;

    const-string v0, "Malformed time expression: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public static m(Lg/dla;)Lg/dla;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lg/dla;

    invoke-direct {p0}, Lg/dla;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzali;->zzb([BII)Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzakd;Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V

    return-void
.end method

.method public final zzb([BII)Lcom/google/android/gms/internal/ads/zzakd;
    .locals 46

    const-string v1, ""

    const-string v2, "http://www.w3.org/ns/ttml#parameter"

    move-object/from16 v3, p0

    :try_start_0
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzali;->i:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lg/asr;

    const-string v9, ""

    const v10, -0x800001

    const/high16 v12, -0x80000000

    move v11, v10

    move v13, v12

    move v14, v10

    move v15, v10

    move/from16 v16, v12

    move/from16 v17, v10

    move/from16 v18, v12

    invoke-direct/range {v8 .. v18}, Lg/asr;-><init>(Ljava/lang/String;FFIIFFIFI)V

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct {v0, v8, v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v8, 0x0

    invoke-interface {v4, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayDeque;

    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v10, Lcom/google/android/gms/internal/ads/zzali;->e:Lg/gvt;

    move-object v13, v8

    move-object/from16 v16, v13

    move-object v15, v10

    const/4 v14, 0x0

    const/16 v17, 0xf

    :goto_0
    const/4 v11, 0x1

    if-eq v0, v11, :cond_5a

    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p2, v8

    move-object/from16 v8, v18

    check-cast v8, Lg/aem;

    const/16 p3, 0x0

    const/4 v12, 0x2

    if-nez v14, :cond_57

    const/16 v19, 0x1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v1

    const-string v1, "tt"

    if-ne v0, v12, :cond_50

    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    sget-object v12, Lcom/google/android/gms/internal/ads/zzali;->h:Ljava/util/regex/Pattern;

    const-string v3, "extent"

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v24, v13

    const-string v13, "TtmlParser"

    if-eqz v0, :cond_f

    :try_start_3
    const-string v0, "frameRate"

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_34

    :catch_1
    move-exception v0

    goto/16 :goto_35

    :cond_0
    const/16 v0, 0x1e

    :goto_1
    const-string v15, "frameRateMultiplier"

    invoke-interface {v4, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v25, v14

    const-string v14, " "

    if-eqz v15, :cond_2

    :try_start_4
    sget v16, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    move-object/from16 v26, v9

    const/4 v9, -0x1

    invoke-virtual {v15, v14, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    array-length v9, v15

    move-object/from16 v16, v15

    const/4 v15, 0x2

    if-ne v9, v15, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    const-string v15, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-static {v9, v15}, Lcom/google/android/gms/internal/ads/zzdb;->zze(ZLjava/lang/Object;)V

    aget-object v9, v16, p3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    aget-object v15, v16, v19

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v9, v15

    goto :goto_3

    :cond_2
    move-object/from16 v26, v9

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_3
    iget v15, v10, Lg/gvt;->b:I

    move/from16 v16, v9

    const-string v9, "subFrameRate"

    invoke-interface {v4, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :cond_3
    iget v9, v10, Lg/gvt;->c:I

    move/from16 v17, v9

    const-string v9, "tickRate"

    invoke-interface {v4, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_4
    move-object/from16 v27, v10

    goto :goto_5

    :cond_4
    move/from16 v9, v17

    goto :goto_4

    :goto_5
    new-instance v10, Lg/gvt;

    int-to-float v0, v0

    mul-float v0, v0, v16

    invoke-direct {v10, v15, v0, v9}, Lg/gvt;-><init>(IFI)V

    const-string v0, "cellResolution"

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move-object/from16 v28, v2

    :goto_6
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v16, v10

    :goto_7
    const/16 v17, 0xf

    goto/16 :goto_a

    :cond_5
    sget-object v9, Lcom/google/android/gms/internal/ads/zzali;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v28, v2

    const-string v2, "Ignoring malformed cell resolution: "

    if-nez v15, :cond_6

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :cond_6
    const/4 v15, 0x1

    :try_start_6
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v16, v10

    const/4 v10, 0x2

    :try_start_7
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v15, :cond_8

    if-eqz v9, :cond_7

    move-object/from16 v29, v8

    move v10, v9

    const/4 v9, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v29, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v29, v8

    move v10, v9

    const/4 v9, 0x0

    :goto_8
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v30, v6

    :try_start_9
    const-string v6, "Invalid cell resolution "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/ads/zzdb;->zze(ZLjava/lang/Object;)V

    move/from16 v17, v10

    goto :goto_a

    :catch_2
    move-object/from16 v30, v6

    goto :goto_9

    :catch_3
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    goto :goto_9

    :cond_9
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    throw p2

    :catch_4
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v16, v10

    goto :goto_9

    :cond_a
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v16, v10

    throw p2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_5
    :goto_9
    :try_start_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :goto_a
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_b
    move-object/from16 v8, p2

    goto :goto_c

    :cond_b
    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_c

    const-string v2, "Ignoring non-pixel tts extent: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_b

    :cond_c
    const/4 v15, 0x1

    :try_start_b
    invoke-virtual {v2, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v8, Lg/aot;

    const/4 v9, 0x5

    invoke-direct {v8, v6, v2, v9}, Lg/aot;-><init>(III)V

    goto :goto_c

    :cond_d
    throw p2

    :cond_e
    throw p2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_6
    :try_start_c
    const-string v2, "Ignoring malformed tts extent: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    move-object/from16 v15, v16

    :goto_d
    move/from16 v2, v17

    goto :goto_e

    :cond_f
    move-object/from16 v28, v2

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v25, v14

    move-object/from16 v8, v16

    goto :goto_d

    :goto_e
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "image"

    const-string v6, "metadata"

    const-string v9, "region"

    const-string v10, "head"

    const-string v14, "style"

    if-nez v0, :cond_11

    :try_start_d
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "body"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "div"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "p"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "span"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "br"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "styling"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "layout"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "data"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "information"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_f

    :cond_10
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unsupported tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v2

    move-object v1, v5

    move-object/from16 v16, v8

    move-object/from16 v13, v24

    move-object/from16 v6, v26

    move-object/from16 v5, v30

    const/4 v14, 0x1

    const/16 v19, 0x0

    goto/16 :goto_33

    :cond_11
    :goto_f
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    const-string v11, "\\s+"

    if-eqz v0, :cond_3a

    :goto_10
    :try_start_e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v15

    new-instance v15, Lg/dla;

    invoke-direct {v15}, Lg/dla;-><init>()V

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzali;->j(Lorg/xmlpull/v1/XmlPullParser;Lg/dla;)Lg/dla;

    move-result-object v15

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v17, v14

    const/4 v14, 0x0

    new-array v0, v14, [Ljava/lang/String;

    goto :goto_11

    :cond_12
    move-object/from16 v17, v14

    sget v14, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 v14, -0x1

    invoke-virtual {v0, v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    :goto_11
    array-length v14, v0

    move-object/from16 v31, v11

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v14, :cond_14

    move/from16 v18, v11

    aget-object v11, v0, v18

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/dla;

    invoke-virtual {v15, v11}, Lg/dla;->u(Lg/dla;)V

    add-int/lit8 v11, v18, 0x1

    goto :goto_12

    :cond_13
    move-object/from16 v31, v11

    move-object/from16 v17, v14

    :cond_14
    invoke-virtual {v15}, Lg/dla;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v5, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_13
    move-object/from16 v43, v1

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    :cond_16
    move-object/from16 v5, v30

    goto/16 :goto_20

    :cond_17
    move-object/from16 v31, v11

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    const-string v11, "id"

    if-nez v0, :cond_1a

    :try_start_f
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_18
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzeo;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_13

    :cond_1a
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_1b

    move-object/from16 v0, p2

    move-object/from16 v43, v1

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    goto/16 :goto_1f

    :cond_1b
    const-string v0, "origin"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v11, Lcom/google/android/gms/internal/ads/zzali;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    move-object/from16 v43, v1

    const-string v1, "Ignoring region with missing tts:extent: "

    move-object/from16 v44, v6

    const-string v6, "Ignoring region with malformed origin: "

    const/high16 v21, 0x42c80000    # 100.0f

    if-eqz v18, :cond_1e

    move-object/from16 v45, v5

    const/4 v5, 0x1

    :try_start_10
    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1d

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    div-float v5, v5, v21

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    div-float v6, v6, v21

    :goto_14
    move/from16 v34, v5

    goto :goto_16

    :cond_1c
    throw p2

    :cond_1d
    throw p2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_7
    :try_start_11
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    move-object/from16 v0, p2

    goto/16 :goto_1f

    :cond_1e
    move-object/from16 v45, v5

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_37

    if-nez v8, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_15

    :cond_1f
    const/4 v5, 0x1

    :try_start_12
    invoke-virtual {v15, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_36

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v14, 0x2

    invoke-virtual {v15, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_35

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-float v5, v5

    iget v15, v8, Lg/aot;->b:I

    int-to-float v15, v15

    div-float/2addr v5, v15

    int-to-float v14, v14

    iget v6, v8, Lg/aot;->c:I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    int-to-float v6, v6

    div-float v6, v14, v6

    goto :goto_14

    :goto_16
    :try_start_13
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-virtual {v11, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v12, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    const-string v15, "Ignoring region with malformed extent: "

    if-eqz v14, :cond_22

    const/4 v14, 0x1

    :try_start_14
    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float v1, v1, v21

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float v0, v0, v21

    :goto_17
    move/from16 v39, v0

    move/from16 v38, v1

    goto :goto_18

    :cond_20
    throw p2

    :cond_21
    throw p2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    :catch_8
    :try_start_15
    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_22
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_33

    if-nez v8, :cond_23

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_15

    :cond_23
    const/4 v14, 0x1

    :try_start_16
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_31

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v1, v1

    iget v11, v8, Lg/aot;->b:I

    int-to-float v11, v11

    div-float/2addr v1, v11

    int-to-float v5, v5

    iget v0, v8, Lg/aot;->c:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    int-to-float v0, v0

    div-float v0, v5, v0

    goto :goto_17

    :goto_18
    :try_start_17
    const-string v0, "displayAlign"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    const v5, -0x514d33ab

    if-eq v1, v5, :cond_25

    const v5, 0x58705dc

    if-eq v1, v5, :cond_24

    goto :goto_19

    :cond_24
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_1a

    :cond_25
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_1a

    :cond_26
    :goto_19
    const/4 v0, -0x1

    :goto_1a
    if-eqz v0, :cond_29

    const/4 v14, 0x1

    if-eq v0, v14, :cond_28

    :cond_27
    move/from16 v35, v6

    const/16 v37, 0x0

    goto :goto_1b

    :cond_28
    add-float v6, v6, v39

    move/from16 v35, v6

    const/16 v37, 0x2

    goto :goto_1b

    :cond_29
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v39, v0

    add-float/2addr v6, v0

    move/from16 v35, v6

    const/16 v37, 0x1

    :goto_1b
    int-to-float v0, v2

    div-float v41, v23, v0

    :try_start_18
    const-string v0, "writingMode"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzeo;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    const/16 v6, 0xe6e

    if-eq v5, v6, :cond_2c

    const v6, 0x363874

    if-eq v5, v6, :cond_2b

    const v6, 0x363928

    if-eq v5, v6, :cond_2a

    goto :goto_1c

    :cond_2a
    const-string v5, "tbrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    goto :goto_1d

    :cond_2b
    const-string v5, "tblr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_1d

    :cond_2c
    const-string v5, "tb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_1d

    :cond_2d
    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    if-eqz v0, :cond_30

    const/4 v14, 0x1

    if-eq v0, v14, :cond_30

    const/4 v14, 0x2

    if-eq v0, v14, :cond_2f

    :cond_2e
    const/high16 v42, -0x80000000

    goto :goto_1e

    :cond_2f
    const/16 v42, 0x1

    goto :goto_1e

    :cond_30
    const/16 v42, 0x2

    :goto_1e
    :try_start_19
    new-instance v32, Lg/asr;

    const/16 v36, 0x0

    const/16 v40, 0x1

    invoke-direct/range {v32 .. v42}, Lg/asr;-><init>(Ljava/lang/String;FFIIFFIFI)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    move-object/from16 v0, v32

    goto :goto_1f

    :cond_31
    :try_start_1a
    throw p2

    :cond_32
    throw p2
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    :catch_9
    :try_start_1b
    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_33
    const-string v1, "Ignoring region with unsupported extent: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_34
    const-string v0, "Ignoring region without an extent"

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_15

    :cond_35
    :try_start_1c
    throw p2

    :cond_36
    throw p2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    :catch_a
    :try_start_1d
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_37
    const-string v1, "Ignoring region with unsupported origin: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_38
    move-object/from16 v43, v1

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    const-string v0, "Ignoring region without an origin"

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :goto_1f
    if-eqz v0, :cond_16

    iget-object v1, v0, Lg/asr;->d:Ljava/lang/String;

    move-object/from16 v5, v30

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    invoke-static {v4, v10}, Lcom/google/android/gms/internal/ads/zzeo;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    if-eqz v0, :cond_39

    move-object/from16 v1, v16

    move-object/from16 v6, v26

    const/16 v19, 0x0

    goto/16 :goto_2d

    :cond_39
    move-object/from16 v30, v5

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v11, v31

    move-object/from16 v1, v43

    move-object/from16 v6, v44

    move-object/from16 v5, v45

    const/16 p3, 0x0

    goto/16 :goto_10

    :cond_3a
    move-object/from16 v45, v5

    move-object/from16 v31, v11

    move-object/from16 v17, v14

    move-object/from16 v16, v15

    move-object/from16 v5, v30

    :try_start_1e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    move-object/from16 v1, p2

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzali;->j(Lorg/xmlpull/v1/XmlPullParser;Lg/dla;)Lg/dla;

    move-result-object v37
    :try_end_1e
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0

    move-object/from16 v39, v20

    const/4 v14, 0x0

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v38, 0x0

    const/16 v40, 0x0

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    :goto_21
    if-ge v14, v0, :cond_46

    :try_start_1f
    invoke-interface {v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1f
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    sparse-switch v6, :sswitch_data_0

    :cond_3b
    move-object/from16 v6, v17

    goto :goto_22

    :sswitch_0
    const-string v6, "backgroundImage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object/from16 v6, v17

    const/4 v1, 0x5

    goto :goto_23

    :sswitch_1
    move-object/from16 v6, v17

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x3

    goto :goto_23

    :sswitch_2
    move-object/from16 v6, v17

    const-string v12, "begin"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    goto :goto_23

    :sswitch_3
    move-object/from16 v6, v17

    const-string v12, "end"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_23

    :sswitch_4
    move-object/from16 v6, v17

    const-string v12, "dur"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x2

    goto :goto_23

    :sswitch_5
    move-object/from16 v6, v17

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x4

    goto :goto_23

    :cond_3c
    :goto_22
    const/4 v1, -0x1

    :goto_23
    if-eqz v1, :cond_45

    const/4 v15, 0x1

    if-eq v1, v15, :cond_44

    const/4 v12, 0x2

    if-eq v1, v12, :cond_43

    const/4 v12, 0x3

    if-eq v1, v12, :cond_40

    const/4 v12, 0x4

    if-eq v1, v12, :cond_3f

    const/4 v12, 0x5

    if-eq v1, v12, :cond_3e

    :cond_3d
    move-object/from16 v10, v31

    const/4 v11, -0x1

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_27

    :cond_3e
    :try_start_20
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v40, v1

    :goto_24
    move-object/from16 v1, v16

    move-object/from16 v10, v31

    const/4 v11, -0x1

    const/16 v19, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_29

    :catch_b
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v6, v26

    :goto_25
    const/16 v19, 0x0

    goto/16 :goto_2e

    :cond_3f
    const/4 v12, 0x5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move-object/from16 v39, v3

    goto :goto_24

    :cond_40
    const/4 v12, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    move-object/from16 v10, v31

    const/4 v11, -0x1

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_26

    :cond_41
    const/4 v3, 0x0

    sget v17, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    move-object/from16 v10, v31

    const/4 v11, -0x1

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    :goto_26
    array-length v3, v1
    :try_end_20
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_20 .. :try_end_20} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0

    if-lez v3, :cond_42

    move-object/from16 v38, v1

    :cond_42
    :goto_27
    move-object/from16 v1, v16

    const/16 v19, 0x0

    goto :goto_29

    :cond_43
    move-object/from16 v1, v16

    move-object/from16 v10, v31

    const/4 v11, -0x1

    const/4 v12, 0x5

    const/16 v19, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_21
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzali;->k(Ljava/lang/String;Lg/gvt;)J

    move-result-wide v41

    goto :goto_29

    :catch_c
    move-exception v0

    :goto_28
    move-object/from16 v6, v26

    goto/16 :goto_2e

    :cond_44
    move-object/from16 v1, v16

    move-object/from16 v10, v31

    const/4 v11, -0x1

    const/4 v12, 0x5

    const/16 v19, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzali;->k(Ljava/lang/String;Lg/gvt;)J

    move-result-wide v32

    goto :goto_29

    :cond_45
    move-object/from16 v1, v16

    move-object/from16 v10, v31

    const/4 v11, -0x1

    const/4 v12, 0x5

    const/4 v15, 0x1

    const/16 v19, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzali;->k(Ljava/lang/String;Lg/gvt;)J

    move-result-wide v34

    :goto_29
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v31, v10

    goto/16 :goto_21

    :catch_d
    move-exception v0

    move-object/from16 v1, v16

    const/4 v15, 0x1

    const/16 v19, 0x0

    goto :goto_28

    :cond_46
    move-object/from16 v1, v16

    const/4 v15, 0x1

    const/16 v19, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v29, :cond_4a

    move-object/from16 v3, v29

    iget-wide v9, v3, Lg/aem;->c:J

    cmp-long v0, v9, v22

    if-eqz v0, :cond_48

    cmp-long v0, v34, v22

    if-eqz v0, :cond_47

    add-long v34, v34, v9

    goto :goto_2a

    :cond_47
    move-wide/from16 v34, v22

    :goto_2a
    cmp-long v0, v32, v22

    if-eqz v0, :cond_49

    add-long v32, v32, v9

    :cond_48
    move-object v0, v3

    goto :goto_2b

    :cond_49
    move-object v0, v3

    move-wide/from16 v32, v22

    goto :goto_2b

    :cond_4a
    move-object/from16 v3, v29

    const/4 v0, 0x0

    :goto_2b
    cmp-long v6, v32, v22

    if-nez v6, :cond_4d

    cmp-long v6, v41, v22

    if-eqz v6, :cond_4b

    add-long v10, v34, v41

    goto :goto_2c

    :cond_4b
    if-eqz v0, :cond_4c

    iget-wide v9, v0, Lg/aem;->e:J

    cmp-long v6, v9, v22

    if-eqz v6, :cond_4c

    move-wide v10, v9

    goto :goto_2c

    :cond_4c
    move-wide/from16 v10, v22

    goto :goto_2c

    :cond_4d
    move-wide/from16 v10, v32

    :goto_2c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v41, v0

    move-wide/from16 v33, v34

    move-wide/from16 v35, v10

    invoke-static/range {v32 .. v41}, Lg/aem;->o(Ljava/lang/String;JJLg/dla;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/aem;)Lg/aem;

    move-result-object v0
    :try_end_21
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_21 .. :try_end_21} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0

    move-object/from16 v6, v26

    :try_start_22
    invoke-virtual {v6, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v3, :cond_4f

    iget-object v9, v3, Lg/aem;->h:Ljava/util/ArrayList;

    if-nez v9, :cond_4e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v3, Lg/aem;->h:Ljava/util/ArrayList;

    :cond_4e
    iget-object v3, v3, Lg/aem;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzake; {:try_start_22 .. :try_end_22} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0

    :cond_4f
    :goto_2d
    move-object v15, v1

    move/from16 v17, v2

    move-object/from16 v16, v8

    move-object/from16 v13, v24

    move/from16 v14, v25

    move-object/from16 v1, v45

    goto/16 :goto_33

    :catch_e
    move-exception v0

    goto :goto_2e

    :catch_f
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v6, v26

    const/4 v15, 0x1

    goto/16 :goto_25

    :goto_2e
    :try_start_23
    const-string v3, "Suppressing parser error"

    invoke-static {v13, v3, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v15, v1

    move/from16 v17, v2

    move-object/from16 v16, v8

    move-object/from16 v13, v24

    move-object/from16 v1, v45

    const/4 v14, 0x1

    goto/16 :goto_33

    :cond_50
    move-object/from16 v28, v2

    move-object/from16 v45, v5

    move-object v5, v6

    move-object v3, v8

    move-object v6, v9

    move-object/from16 v27, v10

    move-object/from16 v24, v13

    move/from16 v25, v14

    const/4 v12, 0x4

    const/16 v19, 0x0

    if-ne v0, v12, :cond_54

    if-eqz v3, :cond_53

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/aem;->p(Ljava/lang/String;)Lg/aem;

    move-result-object v0

    iget-object v1, v3, Lg/aem;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_51

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lg/aem;->h:Ljava/util/ArrayList;

    :cond_51
    iget-object v1, v3, Lg/aem;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    move-object/from16 v1, v45

    goto :goto_32

    :cond_53
    const/4 v1, 0x0

    throw v1

    :cond_54
    const/4 v12, 0x3

    if-ne v0, v12, :cond_52

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v13, Lg/fzn;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aem;

    if-eqz v0, :cond_55

    move-object/from16 v1, v45

    invoke-direct {v13, v0, v1, v5, v7}, Lg/fzn;-><init>(Lg/aem;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2f

    :cond_55
    const/4 v1, 0x0

    throw v1

    :cond_56
    move-object/from16 v1, v45

    move-object/from16 v13, v24

    :goto_2f
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :goto_30
    move/from16 v14, v25

    goto :goto_33

    :cond_57
    move-object/from16 v20, v1

    move-object/from16 v28, v2

    move-object v1, v5

    move-object v5, v6

    move-object v6, v9

    move-object/from16 v27, v10

    move-object/from16 v24, v13

    move/from16 v25, v14

    const/4 v14, 0x2

    const/16 v19, 0x0

    if-ne v0, v14, :cond_58

    add-int/lit8 v14, v25, 0x1

    :goto_31
    move-object/from16 v13, v24

    goto :goto_33

    :cond_58
    const/4 v12, 0x3

    if-ne v0, v12, :cond_59

    add-int/lit8 v14, v25, -0x1

    goto :goto_31

    :cond_59
    :goto_32
    move-object/from16 v13, v24

    goto :goto_30

    :goto_33
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object/from16 v3, p0

    move-object v9, v6

    move-object/from16 v10, v27

    move-object/from16 v2, v28

    const/4 v8, 0x0

    move-object v6, v5

    move-object v5, v1

    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_5a
    move-object/from16 v24, v13

    if-eqz v24, :cond_5b

    return-object v24

    :cond_5b
    const/4 v1, 0x0

    throw v1
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0

    :goto_34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_35
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

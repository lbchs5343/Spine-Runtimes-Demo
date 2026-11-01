.class public final Lcom/google/android/gms/internal/ads/zzfpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfoc;


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Lg/foq;

.field public static c:Landroid/os/Handler;

.field public static final d:Lg/foq;

.field public static final e:Lcom/google/android/gms/internal/ads/zzfpb;


# instance fields
.field public final f:Lcom/google/android/gms/internal/ads/zzfou;

.field public final g:Lcom/google/android/gms/internal/ads/zzfov;

.field public final h:Ljava/util/ArrayList;

.field public i:J

.field public final j:Ljava/util/ArrayList;

.field public final k:Lcom/google/android/gms/internal/ads/zzfoe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->e:Lcom/google/android/gms/internal/ads/zzfpb;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    new-instance v0, Lg/foq;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/foq;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->d:Lg/foq;

    new-instance v0, Lg/foq;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg/foq;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->b:Lg/foq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->j:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfou;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->f:Lcom/google/android/gms/internal/ads/zzfou;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfoe;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->k:Lcom/google/android/gms/internal/ads/zzfoe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfov;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfpe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfov;-><init>(Lcom/google/android/gms/internal/ads/zzfpe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->g:Lcom/google/android/gms/internal/ads/zzfov;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfpb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->e:Lcom/google/android/gms/internal/ads/zzfpb;

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfod;Lorg/json/JSONObject;Z)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfos;->zza(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpb;->f:Lcom/google/android/gms/internal/ads/zzfou;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfou;->zzl(Landroid/view/View;)I

    move-result v2

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfou;->zzd(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {v5, p3}, Lcom/google/android/gms/internal/ads/zzfon;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfou;->zzk(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :try_start_0
    const-string p2, "hasWindowFocus"

    invoke-virtual {v5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "Error with setting has window focus"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfou;->zzj(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "isPipActive"

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    const-string p2, "Error with setting is picture-in-picture active"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfou;->zzh()V

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfou;->zzb(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfot;->zza()Lcom/google/android/gms/internal/ads/zzfnu;

    move-result-object v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfot;->zzb()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    const-string p3, "isFriendlyObstructionFor"

    invoke-virtual {v5, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionClass"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnu;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionPurpose"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnu;->zza()Lcom/google/android/gms/internal/ads/zzfnd;

    move-result-object v4

    invoke-virtual {v5, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionReason"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnu;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    const/4 p3, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p3, v0

    const-string v0, "Error with setting friendly obstruction"

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_4
    if-nez p4, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-ne v2, v3, :cond_7

    const/4 v7, 0x1

    :goto_6
    move-object v6, p0

    move-object v4, p1

    move-object v3, p2

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    :goto_7
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfod;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfoc;ZZ)V

    :cond_8
    :goto_8
    return-void
.end method

.method public final zzh()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->b:Lg/foq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public final zzi()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->d:Lg/foq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->b:Lg/foq;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->b:Lg/foq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpb;->c:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lg/aku;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpb;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

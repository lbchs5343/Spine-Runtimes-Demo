.class public final synthetic Lcom/google/android/gms/internal/ads/zzbvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbvt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbvt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvs;->zza:Lcom/google/android/gms/internal/ads/zzbvt;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvs;->zza:Lcom/google/android/gms/internal/ads/zzbvt;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zza:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->c:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbvt;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v1, v1, Lg/edt;->b:Lcom/google/android/gms/internal/ads/zzbcf;

    sget v3, Lcom/google/android/gms/internal/ads/zzbed;->zza:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zze(Landroid/content/SharedPreferences$Editor;ILorg/json/JSONObject;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbvt;->e:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "js_last_update"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

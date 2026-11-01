.class public final Lcom/google/android/gms/internal/ads/zzbcf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcf;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "gad:dynamite_module:experiment_id"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbdx;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzd:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzu:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzf:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzm:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzn:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzo:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzp:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzq:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzr:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzs:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzt:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzg:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzh:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzj:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzk:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbek;->zzl:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbey;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->a(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbdx;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbce;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbce;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze(Landroid/content/SharedPreferences$Editor;ILorg/json/JSONObject;)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcf;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbce;->zze()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbce;->e(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbce;->zzd(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "flag_configuration"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_2
    const-string p1, "Flag Json is null."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void
.end method

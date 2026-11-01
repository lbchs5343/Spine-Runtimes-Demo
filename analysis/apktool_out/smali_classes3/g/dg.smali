.class public final Lg/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaym;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzdit;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dg;->a:Ljava/lang/String;

    iput-object p1, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    return-void
.end method


# virtual methods
.method public final zzdp(Lcom/google/android/gms/internal/ads/zzayl;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzayl;->zzj:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdit;->ad:Ljava/util/HashMap;

    iget-object v0, p0, Lg/dg;->a:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdku;->zzf()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdku;->zzl()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdku;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdit;->zzB(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzayl;->zzj:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v0, p0, Lg/dg;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdit;->ad:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdku;->zzf()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdku;->zzl()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lg/dg;->b:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdku;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdit;->zzB(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_3
    return-void
.end method

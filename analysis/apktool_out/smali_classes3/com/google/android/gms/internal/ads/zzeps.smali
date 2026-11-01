.class public final Lcom/google/android/gms/internal/ads/zzeps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public final b:Lg/gil;

.field public final c:J

.field public final d:Lcom/google/android/gms/internal/ads/zzctk;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/zzfgw;

.field public final g:Lcom/google/android/gms/internal/ads/zzdsh;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/android/gms/internal/ads/zzctx;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/google/android/gms/internal/ads/zzffo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeps;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzctk;Lcom/google/android/gms/internal/ads/zzfgw;Lcom/google/android/gms/internal/ads/zzffo;Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/internal/ads/zzctx;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeps;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeps;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeps;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeps;->d:Lcom/google/android/gms/internal/ads/zzctk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeps;->f:Lcom/google/android/gms/internal/ads/zzfgw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeps;->k:Lcom/google/android/gms/internal/ads/zzffo;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeps;->b:Lg/gil;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeps;->g:Lcom/google/android/gms/internal/ads/zzdsh;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeps;->i:Lcom/google/android/gms/internal/ads/zzctx;

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzeps;->c:J

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeps;->g:Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsh;->zzb()Ljava/util/Map;

    move-result-object v2

    const-string v3, "seq_num"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeps;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzci:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzeps;->c:J

    sub-long/2addr v4, v6

    const-string v2, "tsacc"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdsh;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeps;->e:Landroid/content/Context;

    invoke-static {v2}, Lg/esy;->v(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-eq v4, v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v4, "foreground"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdsh;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfA:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeps;->k:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeps;->d:Lcom/google/android/gms/internal/ads/zzctk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzctk;->zzk(Lg/aeh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeps;->f:Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgw;->zzb()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzepr;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzepr;-><init>(Lcom/google/android/gms/internal/ads/zzeps;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method

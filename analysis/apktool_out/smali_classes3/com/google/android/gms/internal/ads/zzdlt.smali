.class public final synthetic Lcom/google/android/gms/internal/ads/zzdlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmg;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlt;->zza:Lcom/google/android/gms/internal/ads/zzdmg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlt;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlt;->zza:Lcom/google/android/gms/internal/ads/zzdmg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdlt;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->h:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdmg;->h:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzche;->zza()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v5

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzdmg;->p:Lcom/google/android/gms/internal/ads/zzavc;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzdmg;->g:Lg/gfo;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdmg;->j:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzdmg;->e:Lg/akx;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzdmg;->i:Lcom/google/android/gms/internal/ads/zzbbl;

    const/16 v17, 0x0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmg;->o:Lcom/google/android/gms/internal/ads/zzffs;

    const-string v6, "native-omid"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v1

    move-object/from16 v18, v3

    invoke-static/range {v4 .. v19}, Lcom/google/android/gms/internal/ads/zzcfx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzche;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzbdu;Lg/akx;Lcom/google/android/gms/internal/ads/zzbdc;Lg/fjn;Lg/gfo;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzffs;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcan;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcan;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdma;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzdma;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzchc;->zzB(Lcom/google/android/gms/internal/ads/zzcha;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzfh:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "text/html"

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v4, "base64"

    invoke-interface {v1, v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzcfk;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const-string v4, "UTF-8"

    invoke-interface {v1, v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzcfk;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

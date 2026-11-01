.class public final Lcom/google/android/gms/internal/ads/zzfnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfns;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzfnp;


# instance fields
.field public b:Z

.field public c:Ljava/util/Date;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzfnt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfnt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfnt;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnp;-><init>(Lcom/google/android/gms/internal/ads/zzfnt;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnp;->a:Lcom/google/android/gms/internal/ads/zzfnp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnp;->e:Lcom/google/android/gms/internal/ads/zzfnt;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfnp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnp;->a:Lcom/google/android/gms/internal/ads/zzfnp;

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnp;->c:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfnp;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnp;->c:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnp;->c:Ljava/util/Date;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfnp;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfna;->zzg()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnp;->zzb()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfnp;->b:Z

    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfnp;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnp;->e:Lcom/google/android/gms/internal/ads/zzfnt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnt;->zzd(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnt;->zze(Lcom/google/android/gms/internal/ads/zzfns;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnt;->zzf()V

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzfnt;->d:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfnp;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfnp;->d:Z

    :cond_0
    return-void
.end method

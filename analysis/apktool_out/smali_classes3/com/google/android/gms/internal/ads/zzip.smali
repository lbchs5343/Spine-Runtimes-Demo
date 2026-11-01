.class public final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzin;

.field public final b:Lcom/google/android/gms/internal/ads/zzg;

.field public final c:J

.field public final d:Lcom/google/android/gms/internal/ads/zzls;

.field public final e:Lcom/google/android/gms/internal/ads/zzij;

.field public final f:I

.field public g:Lcom/google/android/gms/internal/ads/zzfxg;

.field public final h:Landroid/content/Context;

.field public i:Lcom/google/android/gms/internal/ads/zzfxg;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Z

.field public final m:Landroid/os/Looper;

.field public final n:Lcom/google/android/gms/internal/ads/zzdc;

.field public final o:I

.field public final p:Z

.field public final q:Lcom/google/android/gms/internal/ads/zzia;

.field public final r:Lcom/google/android/gms/internal/ads/zzii;

.field public final s:Lcom/google/android/gms/internal/ads/zzim;

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcep;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzii;-><init>(Lcom/google/android/gms/internal/ads/zzcep;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzij;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzik;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzil;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzim;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzin;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->h:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzip;->r:Lcom/google/android/gms/internal/ads/zzii;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzip;->e:Lcom/google/android/gms/internal/ads/zzij;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzip;->g:Lcom/google/android/gms/internal/ads/zzfxg;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzip;->i:Lcom/google/android/gms/internal/ads/zzfxg;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzip;->s:Lcom/google/android/gms/internal/ads/zzim;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzip;->a:Lcom/google/android/gms/internal/ads/zzin;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzen;->zzz()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->m:Landroid/os/Looper;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->b:Lcom/google/android/gms/internal/ads/zzg;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->f:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzip;->l:Z

    sget-object p2, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzls;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzip;->d:Lcom/google/android/gms/internal/ads/zzls;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzia;

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v4

    invoke-direct {p2, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzia;-><init>(JJ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzip;->q:Lcom/google/android/gms/internal/ads/zzia;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzip;->n:Lcom/google/android/gms/internal/ads/zzdc;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->c:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->k:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzip;->p:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->j:Ljava/lang/String;

    const/16 p1, -0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->o:I

    return-void
.end method

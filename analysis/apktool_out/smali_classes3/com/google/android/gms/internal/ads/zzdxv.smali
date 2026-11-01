.class public final Lcom/google/android/gms/internal/ads/zzdxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyv;


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lcom/google/android/gms/internal/ads/zzecl;

.field public final d:Lcom/google/android/gms/internal/ads/zzdwv;

.field public final e:Lcom/google/android/gms/internal/ads/zzfkl;

.field public final f:Lcom/google/android/gms/internal/ads/zzges;

.field public final g:Lcom/google/android/gms/internal/ads/zzffo;

.field public final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxv;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzffo;Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzges;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfkl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxv;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxv;->g:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxv;->d:Lcom/google/android/gms/internal/ads/zzdwv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxv;->f:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdxv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdxv;->c:Lcom/google/android/gms/internal/ads/zzecl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdxv;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxv;->d:Lcom/google/android/gms/internal/ads/zzdwv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdwv;->zzc(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;

    move-result-object p1

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxv;->h:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zzd(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfka;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxs;-><init>(Lcom/google/android/gms/internal/ads/zzdxv;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxv;->f:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfw:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfx:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdxt;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    const-class v3, Ljava/util/concurrent/TimeoutException;

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxv;->e:Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzfka;)V

    new-instance v0, Lg/ccp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/ccp;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

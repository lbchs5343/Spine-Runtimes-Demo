.class public final Lcom/google/android/gms/internal/ads/zzdnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzflr;

.field public final b:Lcom/google/android/gms/internal/ads/zzedp;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lg/gfo;

.field public final e:Lcom/google/android/gms/internal/ads/zzavc;

.field public final f:Lcom/google/android/gms/internal/ads/zzeea;

.field public final g:Landroid/content/Context;

.field public final h:Lcom/google/android/gms/internal/ads/zzffs;

.field public final i:Lcom/google/android/gms/internal/ads/zzdsm;

.field public final j:Lg/akx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzavc;Lg/akx;Lg/gfo;Lcom/google/android/gms/internal/ads/zzcfx;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzffs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnz;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnz;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnz;->e:Lcom/google/android/gms/internal/ads/zzavc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnz;->j:Lg/akx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdnz;->d:Lg/gfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdnz;->b:Lcom/google/android/gms/internal/ads/zzedp;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdnz;->a:Lcom/google/android/gms/internal/ads/zzflr;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdnz;->i:Lcom/google/android/gms/internal/ads/zzdsm;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdnz;->f:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdnz;->h:Lcom/google/android/gms/internal/ads/zzffs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdoc;-><init>(Lcom/google/android/gms/internal/ads/zzdnz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzk()V

    return-object v0
.end method

.class public final Lg/vv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfhx;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/google/android/gms/internal/ads/zzfcj;

.field public final d:Lg/gby;

.field public final e:Lcom/google/android/gms/internal/ads/zzfcl;

.field public final f:Lg/aeh;

.field public final g:Lcom/google/android/gms/internal/ads/zzfhm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcl;Lg/aeh;Ljava/lang/String;Ljava/util/concurrent/Executor;Lg/gby;Lcom/google/android/gms/internal/ads/zzfhm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vv;->c:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p2, p0, Lg/vv;->e:Lcom/google/android/gms/internal/ads/zzfcl;

    iput-object p3, p0, Lg/vv;->f:Lg/aeh;

    iput-object p4, p0, Lg/vv;->a:Ljava/lang/String;

    iput-object p5, p0, Lg/vv;->b:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lg/vv;->d:Lg/gby;

    iput-object p7, p0, Lg/vv;->g:Lcom/google/android/gms/internal/ads/zzfhm;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfhm;
    .locals 1

    iget-object v0, p0, Lg/vv;->g:Lcom/google/android/gms/internal/ads/zzfhm;

    return-object v0
.end method

.method public final zzb()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lg/vv;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzfqi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/chw;

.field public b:Lg/chw;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lcom/google/android/gms/internal/ads/zzfpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpr;Lg/fnw;Lg/op;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqi;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqi;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfqi;->e:Lcom/google/android/gms/internal/ads/zzfpp;

    return-void
.end method

.method public static zze(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpr;)Lcom/google/android/gms/internal/ads/zzfqi;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqi;

    new-instance v5, Lg/fnw;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lg/op;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfqi;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpr;Lg/fnw;Lg/op;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfpr;->zzh()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfqc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfqc;-><init>(Lcom/google/android/gms/internal/ads/zzfqi;)V

    invoke-static {p0, v2}, Lg/byh;->bd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/chw;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfqe;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqe;-><init>(Lcom/google/android/gms/internal/ads/zzfqi;)V

    new-instance p2, Lg/err;

    invoke-direct {p2, v2, p1}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/fbr;)V

    iget-object p1, p0, Lg/chw;->i:Lg/ja;

    invoke-virtual {p1, p2}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {p0}, Lg/chw;->n()V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzfqi;->a:Lg/chw;

    goto :goto_0

    :cond_0
    sget-object p0, Lg/fnw;->a:Lcom/google/android/gms/internal/ads/zzata;

    invoke-static {p0}, Lg/byh;->w(Ljava/lang/Object;)Lg/chw;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzfqi;->a:Lg/chw;

    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfqd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>(Lcom/google/android/gms/internal/ads/zzfqi;)V

    invoke-static {p0, v2}, Lg/byh;->bd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/chw;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfqe;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqe;-><init>(Lcom/google/android/gms/internal/ads/zzfqi;)V

    new-instance p2, Lg/err;

    invoke-direct {p2, v2, p1}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/fbr;)V

    iget-object p1, p0, Lg/chw;->i:Lg/ja;

    invoke-virtual {p1, p2}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {p0}, Lg/chw;->n()V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzfqi;->b:Lg/chw;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzata;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqi;->a:Lg/chw;

    sget-object v1, Lg/fnw;->a:Lcom/google/android/gms/internal/ads/zzata;

    invoke-virtual {v0}, Lg/chw;->a()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lg/chw;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzata;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzata;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqi;->b:Lg/chw;

    sget-object v1, Lg/op;->a:Lcom/google/android/gms/internal/ads/zzata;

    invoke-virtual {v0}, Lg/chw;->a()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lg/chw;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzata;

    return-object v0
.end method

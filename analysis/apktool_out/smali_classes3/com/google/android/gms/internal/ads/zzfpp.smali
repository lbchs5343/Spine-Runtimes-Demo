.class public final Lcom/google/android/gms/internal/ads/zzfpp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I = 0x1

.field public static final synthetic zza:I


# instance fields
.field public final b:Z

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lg/ci;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg/ci;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpp;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpp;->e:Lg/ci;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfpp;->b:Z

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfpp;
    .locals 2

    new-instance v0, Lg/eeo;

    invoke-direct {v0}, Lg/eeo;-><init>()V

    if-eqz p2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfpn;-><init>(Landroid/content/Context;Lg/eeo;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfpo;-><init>(Lg/eeo;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpp;

    iget-object v0, v0, Lg/eeo;->a:Lg/chw;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfpp;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg/ci;Z)V

    return-object v1
.end method


# virtual methods
.method public final f(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg/chw;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->b:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->e:Lg/ci;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpp;->d:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfpl;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzfpl;-><init>()V

    check-cast p1, Lg/chw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lg/chw;

    invoke-direct {p4}, Lg/chw;-><init>()V

    new-instance p5, Lg/err;

    const/4 p6, 0x0

    invoke-direct {p5, p2, p3, p4, p6}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/bea;Lg/chw;I)V

    iget-object p2, p1, Lg/chw;->i:Lg/ja;

    invoke-virtual {p2, p5}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {p1}, Lg/chw;->n()V

    return-object p4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarp;->zza()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzarl;->zze(J)Lcom/google/android/gms/internal/ads/zzarl;

    sget p2, Lcom/google/android/gms/internal/ads/zzfpp;->a:I

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzarl;->zzg(I)Lcom/google/android/gms/internal/ads/zzarl;

    if-eqz p4, :cond_1

    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzarl;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarl;

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {v1, p6}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarl;

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/ads/zzarl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarl;

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpp;->e:Lg/ci;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpp;->d:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzfpm;

    invoke-direct {p4, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpm;-><init>(Lcom/google/android/gms/internal/ads/zzarl;I)V

    check-cast p2, Lg/chw;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg/chw;

    invoke-direct {p1}, Lg/chw;-><init>()V

    new-instance p5, Lg/err;

    const/4 p6, 0x0

    invoke-direct {p5, p3, p4, p1, p6}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/bea;Lg/chw;I)V

    iget-object p3, p2, Lg/chw;->i:Lg/ja;

    invoke-virtual {p3, p5}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {p2}, Lg/chw;->n()V

    return-object p1
.end method

.method public final zzb(ILjava/lang/String;)Lg/ci;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfpp;->f(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg/chw;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(IJLjava/lang/Exception;)Lg/ci;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfpp;->f(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg/chw;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(IJ)Lg/ci;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfpp;->f(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg/chw;

    move-result-object p1

    return-object p1
.end method

.method public final zze(IJLjava/lang/String;)Lg/ci;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfpp;->f(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg/chw;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(IJLjava/lang/String;Ljava/util/Map;)Lg/ci;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfpp;->f(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg/chw;

    move-result-object p1

    return-object p1
.end method

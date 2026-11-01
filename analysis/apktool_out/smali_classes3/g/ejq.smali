.class public final Lg/ejq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvb;
.implements Lcom/google/android/gms/internal/ads/zzrl;


# instance fields
.field public final a:Lg/iw;

.field public final synthetic b:Lg/feh;


# direct methods
.method public constructor <init>(Lg/feh;Lg/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ejq;->b:Lg/feh;

    iput-object p2, p0, Lg/ejq;->a:Lg/iw;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzur;)Landroid/util/Pair;
    .locals 8

    iget-object v0, p0, Lg/ejq;->a:Lg/iw;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lg/iw;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lg/iw;->d:Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzur;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    move-object v1, p1

    :cond_3
    iget p1, v0, Lg/iw;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final zzaf(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    invoke-virtual {p0, p2}, Lg/ejq;->c(Lcom/google/android/gms/internal/ads/zzur;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lg/ejq;->b:Lg/feh;

    iget-object p2, p2, Lg/feh;->h:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkz;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzkz;-><init>(Lg/ejq;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzun;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzag(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    invoke-virtual {p0, p2}, Lg/ejq;->c(Lcom/google/android/gms/internal/ads/zzur;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lg/ejq;->b:Lg/feh;

    iget-object p2, p2, Lg/feh;->h:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkx;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzkx;-><init>(Lg/ejq;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzah(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    invoke-virtual {p0, p2}, Lg/ejq;->c(Lcom/google/android/gms/internal/ads/zzur;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lg/ejq;->b:Lg/feh;

    iget-object p2, p2, Lg/feh;->h:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzla;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzla;-><init>(Lg/ejq;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzai(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;Ljava/io/IOException;Z)V
    .locals 7

    invoke-virtual {p0, p2}, Lg/ejq;->c(Lcom/google/android/gms/internal/ads/zzur;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lg/ejq;->b:Lg/feh;

    iget-object p1, p1, Lg/feh;->h:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkw;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Lg/ejq;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;Ljava/io/IOException;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzaj(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    invoke-virtual {p0, p2}, Lg/ejq;->c(Lcom/google/android/gms/internal/ads/zzur;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lg/ejq;->b:Lg/feh;

    iget-object p2, p2, Lg/feh;->h:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzky;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzky;-><init>(Lg/ejq;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzdjj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzdjj;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbhj;

.field public final b:Lcom/google/android/gms/internal/ads/zzbmk;

.field public final c:Lcom/google/android/gms/internal/ads/zzbgz;

.field public final d:Lg/bcp;

.field public final e:Lcom/google/android/gms/internal/ads/zzbgw;

.field public final f:Lcom/google/android/gms/internal/ads/zzbhm;

.field public final g:Lg/bcp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdjh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdjj;-><init>(Lcom/google/android/gms/internal/ads/zzdjh;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdjj;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdjh;->c:Lcom/google/android/gms/internal/ads/zzbgz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->c:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdjh;->e:Lcom/google/android/gms/internal/ads/zzbgw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->e:Lcom/google/android/gms/internal/ads/zzbgw;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdjh;->f:Lcom/google/android/gms/internal/ads/zzbhm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->f:Lcom/google/android/gms/internal/ads/zzbhm;

    new-instance v0, Lg/bcp;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdjh;->d:Lg/bcp;

    invoke-direct {v0, v1}, Lg/bcp;-><init>(Lg/bcp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->d:Lg/bcp;

    new-instance v0, Lg/bcp;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdjh;->g:Lg/bcp;

    invoke-direct {v0, v1}, Lg/bcp;-><init>(Lg/bcp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->g:Lg/bcp;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdjh;->a:Lcom/google/android/gms/internal/ads/zzbhj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->a:Lcom/google/android/gms/internal/ads/zzbhj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdjh;->b:Lcom/google/android/gms/internal/ads/zzbmk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->b:Lcom/google/android/gms/internal/ads/zzbmk;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbgw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->e:Lcom/google/android/gms/internal/ads/zzbgw;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbgz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->c:Lcom/google/android/gms/internal/ads/zzbgz;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->g:Lg/bcp;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhc;

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbhf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->d:Lg/bcp;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhf;

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbhj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->a:Lcom/google/android/gms/internal/ads/zzbhj;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbhm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->f:Lcom/google/android/gms/internal/ads/zzbhm;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzbmk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjj;->b:Lcom/google/android/gms/internal/ads/zzbmk;

    return-object v0
.end method

.method public final zzh()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->d:Lg/bcp;

    iget v2, v1, Lg/bcp;->g:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lg/bcp;->g:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lg/bcp;->n(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzi()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->f:Lcom/google/android/gms/internal/ads/zzbhm;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->c:Lcom/google/android/gms/internal/ads/zzbgz;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->e:Lcom/google/android/gms/internal/ads/zzbgw;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->d:Lg/bcp;

    invoke-virtual {v1}, Lg/bcp;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjj;->b:Lcom/google/android/gms/internal/ads/zzbmk;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

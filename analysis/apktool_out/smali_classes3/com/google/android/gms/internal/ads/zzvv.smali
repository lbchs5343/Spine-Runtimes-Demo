.class public final Lcom/google/android/gms/internal/ads/zzvv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzyw;

.field public final b:Lcom/google/android/gms/internal/ads/zzgc;

.field public c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzvu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzvu;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyw;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzyw;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->b:Lcom/google/android/gms/internal/ads/zzgc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Lcom/google/android/gms/internal/ads/zzvu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Lcom/google/android/gms/internal/ads/zzyw;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzvv;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:I

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaw;)Lcom/google/android/gms/internal/ads/zzvx;
    .locals 8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaw;->zzb:Lcom/google/android/gms/internal/ads/zzar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvx;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzrp;->zza:Lcom/google/android/gms/internal/ads/zzrp;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvv;->b:Lcom/google/android/gms/internal/ads/zzgc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Lcom/google/android/gms/internal/ads/zzvu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Lcom/google/android/gms/internal/ads/zzyw;

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzaw;Lcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzvu;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzyw;I)V

    return-object v1
.end method

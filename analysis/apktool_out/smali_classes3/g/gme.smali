.class public final Lg/gme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ghx;
.implements Lg/xl;


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg/gme;->d:I

    iput p3, p0, Lg/gme;->e:I

    iput p4, p0, Lg/gme;->a:I

    iput p5, p0, Lg/gme;->b:I

    iput-object p6, p0, Lg/gme;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg/gme;->d:I

    iput-object p1, p0, Lg/gme;->c:Ljava/lang/Object;

    iput p3, p0, Lg/gme;->e:I

    iput p4, p0, Lg/gme;->a:I

    iput p5, p0, Lg/gme;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    iput-object p1, p0, Lg/gme;->c:Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lg/gme;->e:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result p1

    iput p1, p0, Lg/gme;->d:I

    return-void
.end method


# virtual methods
.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 4

    iget-object p1, p0, Lg/gme;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x207

    iget-object v1, p2, Lg/anp;->b:Lg/dif;

    invoke-virtual {v1, v0}, Lg/dif;->i(I)Lg/oi;

    move-result-object v0

    iget v1, p0, Lg/gme;->d:I

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, Lg/oi;->d:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v1, p0, Lg/gme;->e:I

    iget v2, v0, Lg/oi;->c:I

    add-int/2addr v1, v2

    iget v2, p0, Lg/gme;->a:I

    iget v3, v0, Lg/oi;->d:I

    add-int/2addr v2, v3

    iget v3, p0, Lg/gme;->b:I

    iget v0, v0, Lg/oi;->e:I

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public zza()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public zzb()I
    .locals 1

    iget v0, p0, Lg/gme;->d:I

    return v0
.end method

.method public zzc()I
    .locals 3

    iget-object v0, p0, Lg/gme;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v1, 0x8

    iget v2, p0, Lg/gme;->e:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v0

    return v0

    :cond_1
    iget v1, p0, Lg/gme;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/gme;->a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    iput v0, p0, Lg/gme;->b:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    iget v0, p0, Lg/gme;->b:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

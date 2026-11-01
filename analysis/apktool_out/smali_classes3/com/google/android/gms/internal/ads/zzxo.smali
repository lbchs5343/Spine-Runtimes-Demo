.class public final Lcom/google/android/gms/internal/ads/zzxo;
.super Lcom/google/android/gms/internal/ads/zzca;
.source "SourceFile"


# instance fields
.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Landroid/util/SparseArray;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Landroid/util/SparseBooleanArray;

.field public final t:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->o:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->s:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->r:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzca;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzca;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzca;->zzf(IIZ)Lcom/google/android/gms/internal/ads/zzca;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxo;->o:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxo;->s:Landroid/util/SparseBooleanArray;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->n:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->q:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->m:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->l:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->p:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->r:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->t:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxp;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzca;-><init>(Lcom/google/android/gms/internal/ads/zzxp;)V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzC:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->n:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->q:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->m:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->l:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->p:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzN:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->r:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->t:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzxp;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxo;->o:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzxp;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxo;->s:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final zzp(IZ)Lcom/google/android/gms/internal/ads/zzxo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxo;->s:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object p0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-object p0
.end method

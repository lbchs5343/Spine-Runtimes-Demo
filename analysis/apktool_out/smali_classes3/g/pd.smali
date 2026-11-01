.class public final Lg/pd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public final d:Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzajf;

    iput-object p1, p0, Lg/pd;->d:Ljava/lang/Cloneable;

    const/4 p1, 0x0

    iput p1, p0, Lg/pd;->c:I

    return-void
.end method

.method public constructor <init>(Lg/zq;Lg/dzh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lg/pd;->d:Ljava/lang/Cloneable;

    iput-object p1, p0, Lg/pd;->a:Ljava/lang/Object;

    iget-object p1, p2, Lg/dzh;->f:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/TypedArray;

    const/16 p2, 0x1c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lg/pd;->b:I

    const/16 p2, 0x35

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lg/pd;->c:I

    return-void
.end method

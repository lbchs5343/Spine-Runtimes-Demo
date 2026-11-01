.class public final Lg/az;
.super Lcom/google/android/gms/internal/ads/zzfzo;
.source "SourceFile"


# instance fields
.field public final transient a:[Ljava/lang/Object;

.field public final transient b:I

.field public final transient c:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p3, p0, Lg/az;->a:[Ljava/lang/Object;

    iput p1, p0, Lg/az;->b:I

    iput p2, p0, Lg/az;->c:I

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/az;->c:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zza(IILjava/lang/String;)I

    add-int/2addr p1, p1

    iget v0, p0, Lg/az;->b:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lg/az;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/az;->c:I

    return v0
.end method

.class public final Lg/dyj;
.super Lcom/google/android/gms/internal/ads/zzfzo;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lg/nm;


# direct methods
.method public constructor <init>(Lg/nm;)V
    .locals 0

    iput-object p1, p0, Lg/dyj;->zza:Lg/nm;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/dyj;->zza:Lg/nm;

    iget v0, v0, Lg/nm;->c:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lg/dyj;->zza:Lg/nm;

    iget-object v0, v0, Lg/nm;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/dyj;->zza:Lg/nm;

    iget-object v1, v1, Lg/nm;->b:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/dyj;->zza:Lg/nm;

    iget v0, v0, Lg/nm;->c:I

    return v0
.end method

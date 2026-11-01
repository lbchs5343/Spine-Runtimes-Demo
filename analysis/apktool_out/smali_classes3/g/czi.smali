.class public final Lg/czi;
.super Lg/bpu;
.source "SourceFile"


# instance fields
.field public final synthetic h:Lg/dnb;


# direct methods
.method public constructor <init>(Lg/dnb;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lg/czi;->h:Lg/dnb;

    invoke-direct {p0, p2}, Lg/bpu;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lg/bpu;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwq;->zzb(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lg/czi;->h:Lg/dnb;

    iget-object v3, v3, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfwf;->zzb(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

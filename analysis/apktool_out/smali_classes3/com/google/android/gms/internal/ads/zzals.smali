.class public final synthetic Lcom/google/android/gms/internal/ads/zzals;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/fvu;

    check-cast p2, Lg/fvu;

    iget-object p1, p1, Lg/fvu;->b:Lg/tk;

    iget p1, p1, Lg/tk;->c:I

    iget-object p2, p2, Lg/fvu;->b:Lg/tk;

    iget p2, p2, Lg/tk;->c:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

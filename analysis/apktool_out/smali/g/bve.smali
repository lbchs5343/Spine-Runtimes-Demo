.class public Lg/bve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public d:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Iterable;)V
    .locals 0

    iput p1, p0, Lg/bve;->c:I

    iput-object p2, p0, Lg/bve;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lg/bve;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bve;->c:I

    iput-object p2, p0, Lg/bve;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/gsi;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/bve;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/gsi;->a:Lg/gkt;

    invoke-interface {v0}, Lg/gkt;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    iget p1, p1, Lg/gsi;->b:I

    iput p1, p0, Lg/bve;->d:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/bve;->c:I

    const-string v0, "array"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bve;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lg/bve;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhfo;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhfo;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhfo;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, Lg/gwa;

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_1
    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_2
    iget-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    :goto_4
    iget v1, p0, Lg/bve;->d:I

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/bve;->d:I

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :pswitch_3
    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    return v0

    :pswitch_4
    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, Lg/dfj;

    invoke-virtual {v1}, Lg/dfj;->a()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/bve;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhfo;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhfo;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lg/bve;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/bve;->d:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhfo;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhfo;->b:Ljava/util/List;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhfo;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lg/bve;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget v0, p0, Lg/bve;->d:I

    iget-object v1, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v1, Lg/gwa;

    invoke-virtual {v1}, Lg/gwa;->s()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lg/bve;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/bve;->d:I

    invoke-virtual {v1, v0}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lg/bve;->d:I

    const-string v2, "Out of bounds index: "

    invoke-static {v1, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/bve;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    :goto_1
    iget v1, p0, Lg/bve;->d:I

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/bve;->d:I

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/bve;->d:I

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/bve;->d:I

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    invoke-virtual {p0}, Lg/bve;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v0, Lg/dfj;

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/bve;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lg/bve;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/bve;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lg/bve;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/bve;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

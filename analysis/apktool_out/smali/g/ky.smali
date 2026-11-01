.class public final Lg/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lg/ky;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/t;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/t;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t;->e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/t;

    iget-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t;->e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ah;

    iput-object p1, p0, Lg/ky;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ah;

    iput-object p1, p0, Lg/ky;->c:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lg/bve;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/ky;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    iput-object p1, p0, Lg/ky;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/ky;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ky;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/ky;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/android/gms/internal/ads/ah;
    .locals 4

    iget-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/ah;

    if-eqz v1, :cond_4

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/t;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/t;->c(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/t;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/google/android/gms/internal/ads/t;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/t;->e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    goto :goto_0

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/ads/ah;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    :goto_1
    iput-object v2, p0, Lg/ky;->c:Ljava/lang/Object;

    return-object v1

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lg/ky;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/ah;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg/ky;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/ky;->d()Lcom/google/android/gms/internal/ads/ah;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lg/bsa;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lg/bsa;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg/ky;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_3

    new-instance v4, Lg/bve;

    const/4 v3, 0x3

    invoke-direct {v4, v3, v2}, Lg/bve;-><init>(ILjava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lg/bve;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, p0, Lg/ky;->c:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v2, p0, Lg/ky;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lg/gsv;->bg(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    iput-object v2, p0, Lg/ky;->c:Ljava/lang/Object;

    invoke-static {v1}, Lg/eko;->b(Ljava/util/ArrayList;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lg/ky;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

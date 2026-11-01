.class public final Lg/gae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Lg/esx;

.field public final synthetic c:I

.field public d:I

.field public e:I

.field public final synthetic f:Lg/esx;


# direct methods
.method public constructor <init>(Lg/esx;I)V
    .locals 0

    iput p2, p0, Lg/gae;->c:I

    iput-object p1, p0, Lg/gae;->f:Lg/esx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gae;->b:Lg/esx;

    iget p2, p1, Lg/esx;->f:I

    iput p2, p0, Lg/gae;->d:I

    invoke-virtual {p1}, Lg/esx;->isEmpty()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lg/gae;->e:I

    iput p2, p0, Lg/gae;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lg/gae;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/gae;->b:Lg/esx;

    iget v1, v0, Lg/esx;->f:I

    iget v2, p0, Lg/gae;->d:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lg/gae;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lg/gae;->e:I

    iput v1, p0, Lg/gae;->a:I

    iget v2, p0, Lg/gae;->c:I

    iget-object v3, p0, Lg/gae;->f:Lg/esx;

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lg/esx;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Lg/esx;->s()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_0
    new-instance v2, Lg/eyw;

    invoke-direct {v2, v3, v1}, Lg/eyw;-><init>(Lg/esx;I)V

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    sget-object v2, Lg/esx;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Lg/esx;->q()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    iget v2, p0, Lg/gae;->e:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lg/esx;->j:I

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lg/gae;->e:I

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lg/gae;->b:Lg/esx;

    iget v1, v0, Lg/esx;->f:I

    iget v2, p0, Lg/gae;->d:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lg/gae;->a:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfwq;->zzl(ZLjava/lang/Object;)V

    iget v1, p0, Lg/gae;->d:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lg/gae;->d:I

    iget v1, p0, Lg/gae;->a:I

    invoke-virtual {v0}, Lg/esx;->q()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lg/esx;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lg/gae;->e:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lg/gae;->e:I

    iput v1, p0, Lg/gae;->a:I

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

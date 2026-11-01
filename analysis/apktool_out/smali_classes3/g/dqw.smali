.class public Lg/dqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final e:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lg/dfb;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dqw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dqw;->e:Ljava/util/Iterator;

    iput-object p1, p0, Lg/dqw;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/dtv;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dqw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dqw;->c:Ljava/lang/Object;

    iget-object p1, p1, Lg/dtv;->e:Ljava/util/Collection;

    iput-object p1, p0, Lg/dqw;->b:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg/dqw;->e:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lg/dtv;Ljava/util/ListIterator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dqw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dqw;->c:Ljava/lang/Object;

    iget-object p1, p1, Lg/dtv;->e:Ljava/util/Collection;

    iput-object p1, p0, Lg/dqw;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/dqw;->e:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lg/geh;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/dqw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dqw;->c:Ljava/lang/Object;

    iget-object p1, p1, Lg/geh;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lg/dqw;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lg/dqw;->c:Ljava/lang/Object;

    check-cast v0, Lg/dtv;

    invoke-virtual {v0}, Lg/dtv;->zzb()V

    iget-object v0, v0, Lg/dtv;->e:Ljava/util/Collection;

    iget-object v1, p0, Lg/dqw;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lg/dqw;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/dqw;->f()V

    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

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
    .locals 2

    iget v0, p0, Lg/dqw;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/dqw;->f()V

    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lg/dqw;->b:Ljava/lang/Object;

    iget-object v1, p0, Lg/dqw;->c:Ljava/lang/Object;

    check-cast v1, Lg/geh;

    invoke-virtual {v1, v0}, Lg/geh;->j(Ljava/util/Map$Entry;)Lg/ffy;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lg/dqw;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lg/dqw;->c:Ljava/lang/Object;

    check-cast v0, Lg/dtv;

    iget-object v1, v0, Lg/dtv;->c:Lg/gpx;

    iget v2, v1, Lg/gpx;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lg/gpx;->e:I

    invoke-virtual {v0}, Lg/dtv;->h()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzl(ZLjava/lang/Object;)V

    iget-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lg/dqw;->c:Ljava/lang/Object;

    check-cast v1, Lg/dfb;

    iget-object v1, v1, Lg/dfb;->d:Lg/gpx;

    iget v2, v1, Lg/gpx;->e:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lg/gpx;->e:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzl(ZLjava/lang/Object;)V

    iget-object v0, p0, Lg/dqw;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lg/dqw;->c:Ljava/lang/Object;

    check-cast v0, Lg/geh;

    iget-object v0, v0, Lg/geh;->g:Lg/gpx;

    iget v1, v0, Lg/gpx;->e:I

    iget-object v2, p0, Lg/dqw;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lg/gpx;->e:I

    iget-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dqw;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/amg;
.super Lcom/google/android/gms/internal/ads/zzblv;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/amg;->a:I

    iput-object p2, p0, Lg/amg;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzblv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/List;)V
    .locals 4

    iget v0, p0, Lg/amg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/amg;->b:Ljava/lang/Object;

    check-cast v0, Lg/bza;

    iget-object v0, v0, Lg/bza;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/amg;->b:Ljava/lang/Object;

    check-cast v1, Lg/bza;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/bza;->e:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lg/bza;->g:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lg/amg;->b:Ljava/lang/Object;

    check-cast v3, Lg/bza;

    iget-object v3, v3, Lg/bza;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lg/amg;->b:Ljava/lang/Object;

    check-cast v3, Lg/bza;

    iget-object v3, v3, Lg/bza;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lg/bza;->n(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbly;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {v2, v1}, Lg/tn;->w(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/amg;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdvf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvf;->f(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

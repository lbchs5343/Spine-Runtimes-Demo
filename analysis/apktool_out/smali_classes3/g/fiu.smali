.class public final Lg/fiu;
.super Lcom/google/android/gms/internal/ads/zzfxp;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/util/Iterator;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/gho;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/fiu;->d:I

    iput-object p1, p0, Lg/fiu;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxp;-><init>()V

    iget-object p1, p1, Lg/gho;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lg/fiu;->e:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/google/android/gms/internal/ads/zzfwr;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/fiu;->d:I

    iput-object p1, p0, Lg/fiu;->e:Ljava/util/Iterator;

    iput-object p2, p0, Lg/fiu;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/fiu;->d:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lg/fiu;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/fiu;->f:Ljava/lang/Object;

    check-cast v1, Lg/gho;

    iget-object v1, v1, Lg/gho;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfxp;->b:I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :pswitch_0
    iget-object v0, p0, Lg/fiu;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg/fiu;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfxp;->b:I

    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

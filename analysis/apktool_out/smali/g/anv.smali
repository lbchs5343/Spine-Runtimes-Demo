.class public final Lg/anv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/anv;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/anv;->e:I

    iput-object p2, p0, Lg/anv;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/anv;->b:Ljava/io/Serializable;

    iput-object p4, p0, Lg/anv;->c:Ljava/lang/Object;

    iput-object p5, p0, Lg/anv;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg/awn;ILg/fle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/anv;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/anv;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/anv;->b:Ljava/io/Serializable;

    iput-object p3, p0, Lg/anv;->c:Ljava/lang/Object;

    iput p4, p0, Lg/anv;->e:I

    iput-object p5, p0, Lg/anv;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lg/anv;->d:I

    iget-object v1, p0, Lg/anv;->f:Ljava/lang/Object;

    iget-object v2, p0, Lg/anv;->c:Ljava/lang/Object;

    iget-object v3, p0, Lg/anv;->b:Ljava/io/Serializable;

    iget-object v4, p0, Lg/anv;->a:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v4

    check-cast v6, Landroid/content/Context;

    iget v9, p0, Lg/anv;->e:I

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    check-cast v2, Lg/awn;

    move-object v10, v1

    check-cast v10, Lg/fle;

    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzban;

    iget-object v8, v2, Lg/awn;->a:Lg/qo;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/qo;ILg/fle;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzban;->zza()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    const-string v2, "AppOpenAd.load"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lg/anv;->e:I

    if-ge v0, v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v6, v3

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v5, v6}, Lg/cd;->d(Landroid/view/View;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lg/cd;->d(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

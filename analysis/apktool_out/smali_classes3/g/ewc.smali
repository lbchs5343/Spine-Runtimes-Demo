.class public final synthetic Lg/ewc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzges;

.field public final synthetic b:I

.field public final synthetic c:Lg/gfk;


# direct methods
.method public synthetic constructor <init>(Lg/gfk;Lcom/google/android/gms/internal/ads/zzges;I)V
    .locals 0

    iput p3, p0, Lg/ewc;->b:I

    iput-object p1, p0, Lg/ewc;->c:Lg/gfk;

    iput-object p2, p0, Lg/ewc;->a:Lcom/google/android/gms/internal/ads/zzges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/ewc;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v1, v0, Lg/ti;->g:Lg/bkm;

    iget-object v2, p0, Lg/ewc;->c:Lg/gfk;

    iget-object v3, v2, Lg/gfk;->f:Landroid/content/Context;

    iget-object v4, v2, Lg/gfk;->c:Ljava/lang/String;

    iget-object v5, v2, Lg/gfk;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lg/bkm;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lg/ti;->g:Lg/bkm;

    iget-object v1, v2, Lg/gfk;->c:Ljava/lang/String;

    iget-object v2, v2, Lg/gfk;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lg/bkm;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lg/fyu;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lg/fyu;-><init>(Lg/gfk;I)V

    iget-object v1, p0, Lg/ewc;->a:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v1, v0, Lg/ti;->g:Lg/bkm;

    iget-object v2, p0, Lg/ewc;->c:Lg/gfk;

    iget-object v3, v2, Lg/gfk;->f:Landroid/content/Context;

    iget-object v4, v2, Lg/gfk;->c:Ljava/lang/String;

    iget-object v5, v2, Lg/gfk;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lg/bkm;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lg/ti;->g:Lg/bkm;

    iget-object v1, v2, Lg/gfk;->c:Ljava/lang/String;

    iget-object v2, v2, Lg/gfk;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lg/bkm;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lg/fyu;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lg/fyu;-><init>(Lg/gfk;I)V

    iget-object v1, p0, Lg/ewc;->a:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

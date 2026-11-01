.class public final synthetic Lg/euq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/gnl;

.field public final synthetic b:I

.field public final synthetic c:Lg/ark;


# direct methods
.method public synthetic constructor <init>(Lg/ark;Lg/gnl;I)V
    .locals 0

    iput p3, p0, Lg/euq;->b:I

    iput-object p1, p0, Lg/euq;->c:Lg/ark;

    iput-object p2, p0, Lg/euq;->a:Lg/gnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/euq;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/euq;->c:Lg/ark;

    iget-object v3, p0, Lg/euq;->a:Lg/gnl;

    invoke-virtual {v0}, Lg/ark;->r()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "not_running"

    invoke-virtual {v3, v0, v2}, Lg/gnl;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "permission_required"

    invoke-virtual {v3, v0, v2}, Lg/gnl;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lg/ark;->n:Lg/anf;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lg/ark;->n:Lg/anf;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lg/ark;->n:Lg/anf;

    invoke-virtual {v0, v3, v1}, Lg/ark;->v(Lg/gnl;Lg/anf;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lg/ark;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lg/ark;->c:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, v0, Lg/ark;->c:Z

    invoke-virtual {v0}, Lg/ark;->s()V

    :try_start_0
    invoke-virtual {v0}, Lg/ark;->u()Lg/ajy;

    move-result-object v1

    iput-object v1, v0, Lg/ark;->g:Lg/ajy;

    iget-object v2, v0, Lg/ark;->d:Lg/aco;

    sget-object v3, Lg/gwn;->f:Landroid/os/IBinder;

    sget-object v3, Lg/doo;->a:Ljava/util/Map;

    iget-object v3, v1, Lg/ajy;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v1, Lg/ajy;->c:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    sget-object v4, Lg/doo;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fsr;

    if-nez v5, :cond_5

    new-instance v5, Lg/fsr;

    invoke-direct {v5, v1}, Lg/fsr;-><init>(Lg/ajy;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, v5, Lg/fsr;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :try_start_1
    invoke-static {}, Lg/gwn;->w()Lg/gyu;

    move-result-object v2

    invoke-static {v1}, Lg/ajy;->f(Lg/ajy;)Landroid/os/Bundle;

    move-result-object v1

    check-cast v2, Lg/bvh;

    invoke-virtual {v2, v5, v1}, Lg/bvh;->f(Lg/fsr;Landroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, v0, Lg/ark;->m:Landroid/os/Handler;

    iget-object v2, v0, Lg/ark;->e:Lg/hdk;

    const-wide/16 v3, 0x2ee0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lg/ark;->c:Z

    const-string v2, "connection_failed"

    invoke-virtual {v0, v2, v1}, Lg/ark;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lg/ark;->s()V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/euq;->c:Lg/ark;

    iget-object v3, p0, Lg/euq;->a:Lg/gnl;

    iget-object v4, v0, Lg/ark;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v4, "operation_timeout"

    invoke-virtual {v3, v4, v2}, Lg/gnl;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lg/ark;->m:Landroid/os/Handler;

    new-instance v3, Lg/hdk;

    invoke-direct {v3, v0, v1}, Lg/hdk;-><init>(Lg/ark;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

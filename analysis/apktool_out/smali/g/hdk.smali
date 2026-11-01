.class public final synthetic Lg/hdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ark;


# direct methods
.method public synthetic constructor <init>(Lg/ark;I)V
    .locals 0

    iput p2, p0, Lg/hdk;->a:I

    iput-object p1, p0, Lg/hdk;->b:Lg/ark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/hdk;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/hdk;->b:Lg/ark;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/ark;->n:Lg/anf;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lg/ark;->c:Z

    iget-object v3, v0, Lg/ark;->m:Landroid/os/Handler;

    iget-object v4, v0, Lg/ark;->e:Lg/hdk;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v3, "not_running"

    invoke-virtual {v0, v3, v1}, Lg/ark;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Lg/ark;->t(Z)V

    invoke-virtual {v0}, Lg/ark;->s()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/hdk;->b:Lg/ark;

    invoke-virtual {v0}, Lg/ark;->s()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/hdk;->b:Lg/ark;

    iget-object v1, v0, Lg/ark;->m:Landroid/os/Handler;

    iget-object v2, v0, Lg/ark;->e:Lg/hdk;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "disconnected"

    invoke-virtual {v0, v1, v2, v3}, Lg/ark;->aa(ZLjava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lg/ark;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-object v2, v0, Lg/ark;->n:Lg/anf;

    iput-boolean v1, v0, Lg/ark;->c:Z

    iget-object v1, v0, Lg/ark;->g:Lg/ajy;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/ark;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lg/ark;->g:Lg/ajy;

    invoke-static {v1}, Lg/gwn;->u(Lg/ajy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lg/ark;->s()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/hdk;->b:Lg/ark;

    iget-boolean v1, v0, Lg/ark;->c:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/ark;->c:Z

    const-string v1, "connection_timeout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/ark;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, v0, Lg/ark;->g:Lg/ajy;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/ark;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, v0, Lg/ark;->g:Lg/ajy;

    invoke-static {v1}, Lg/gwn;->u(Lg/ajy;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    invoke-virtual {v0}, Lg/ark;->s()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

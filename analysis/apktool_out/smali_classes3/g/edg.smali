.class public final Lg/edg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/dbb;

.field public final synthetic c:Lg/exk;

.field public final synthetic d:I

.field public final synthetic e:Lg/afh;


# direct methods
.method public synthetic constructor <init>(Lg/dbb;Lg/afh;ZLg/exk;I)V
    .locals 0

    iput p5, p0, Lg/edg;->d:I

    iput-object p1, p0, Lg/edg;->b:Lg/dbb;

    iput-object p2, p0, Lg/edg;->e:Lg/afh;

    iput-boolean p3, p0, Lg/edg;->a:Z

    iput-object p4, p0, Lg/edg;->c:Lg/exk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/edg;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/edg;->b:Lg/dbb;

    iget-object v1, v0, Lg/dbb;->l:Lg/ake;

    if-nez v1, :cond_0

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lg/edg;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg/edg;->c:Lg/exk;

    check-cast v2, Lg/bou;

    :goto_0
    iget-object v3, p0, Lg/edg;->e:Lg/afh;

    invoke-virtual {v0, v1, v2, v3}, Lg/dbb;->al(Lg/ake;Lg/exk;Lg/afh;)V

    invoke-virtual {v0}, Lg/dbb;->x()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/edg;->b:Lg/dbb;

    iget-object v1, v0, Lg/dbb;->l:Lg/ake;

    if-nez v1, :cond_2

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-boolean v2, p0, Lg/edg;->a:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lg/edg;->c:Lg/exk;

    check-cast v2, Lg/ctf;

    :goto_2
    iget-object v3, p0, Lg/edg;->e:Lg/afh;

    invoke-virtual {v0, v1, v2, v3}, Lg/dbb;->al(Lg/ake;Lg/exk;Lg/afh;)V

    invoke-virtual {v0}, Lg/dbb;->x()V

    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/edg;->b:Lg/dbb;

    iget-object v1, v0, Lg/dbb;->l:Lg/ake;

    if-nez v1, :cond_4

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Discarding data. Failed to set user property"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-boolean v2, p0, Lg/edg;->a:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lg/edg;->c:Lg/exk;

    check-cast v2, Lg/cmd;

    :goto_4
    iget-object v3, p0, Lg/edg;->e:Lg/afh;

    invoke-virtual {v0, v1, v2, v3}, Lg/dbb;->al(Lg/ake;Lg/exk;Lg/afh;)V

    invoke-virtual {v0}, Lg/dbb;->x()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

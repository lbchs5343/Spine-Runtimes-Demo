.class public final Lg/cvk;
.super Lg/emo;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dbb;


# direct methods
.method public synthetic constructor <init>(Lg/dbb;Lg/cyg;I)V
    .locals 0

    iput p3, p0, Lg/cvk;->a:I

    iput-object p1, p0, Lg/cvk;->b:Lg/dbb;

    invoke-direct {p0, p2}, Lg/emo;-><init>(Lg/gan;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lg/cvk;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cvk;->b:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cvk;->b:Lg/dbb;

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/dbb;->v()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Inactivity, disconnecting from the service"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/dbb;->am()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

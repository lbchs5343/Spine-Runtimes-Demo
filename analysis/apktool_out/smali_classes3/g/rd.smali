.class public final Lg/rd;
.super Lg/emo;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lg/gan;I)V
    .locals 0

    iput p3, p0, Lg/rd;->a:I

    iput-object p1, p0, Lg/rd;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lg/emo;-><init>(Lg/gan;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget v0, p0, Lg/rd;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/rd;->b:Ljava/lang/Object;

    check-cast v0, Lg/uk;

    invoke-virtual {v0}, Lg/uk;->zza()V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Starting upload from DelayedRunnable"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v0, v0, Lg/af;->a:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->bf()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/rd;->b:Ljava/lang/Object;

    check-cast v0, Lg/fcw;

    iget-object v1, v0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v1, Lg/cjv;

    invoke-virtual {v1}, Lg/acn;->_e()V

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lg/fcw;->f(JZZ)Z

    invoke-virtual {v1}, Lg/cyg;->am()Lg/fqm;

    move-result-object v0

    iget-object v1, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg/fqm;->l(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

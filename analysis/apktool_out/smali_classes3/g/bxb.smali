.class public final Lg/bxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/csp;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lg/csp;JI)V
    .locals 0

    iput p4, p0, Lg/bxb;->b:I

    iput-object p1, p0, Lg/bxb;->a:Lg/csp;

    iput-wide p2, p0, Lg/bxb;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/bxb;->b:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lg/bxb;->c:J

    const/4 v2, 0x1

    iget-object v3, p0, Lg/bxb;->a:Lg/csp;

    invoke-virtual {v3, v0, v1, v2}, Lg/csp;->x(JZ)V

    iget-object v0, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lg/dbb;->r(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bxb;->a:Lg/csp;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->b:Lg/gmr;

    invoke-static {v1}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v1, v1, Lg/gmr;->o:Lg/fou;

    iget-wide v2, p0, Lg/bxb;->c:J

    invoke-virtual {v1, v2, v3}, Lg/fou;->g(J)V

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->o:Lg/dvb;

    const-string v1, "Session timeout duration set"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

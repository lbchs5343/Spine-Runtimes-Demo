.class public final Lg/did;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lg/csp;Landroid/os/Bundle;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/did;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/did;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/did;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lg/did;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    iput p5, p0, Lg/did;->c:I

    iput-object p2, p0, Lg/did;->a:Ljava/lang/Object;

    iput-wide p3, p0, Lg/did;->d:J

    iput-object p1, p0, Lg/did;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/did;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/did;->b:Ljava/lang/Object;

    check-cast v0, Lg/bcm;

    iget-object v1, p0, Lg/did;->a:Ljava/lang/Object;

    check-cast v1, Lg/ein;

    iget-wide v2, p0, Lg/did;->d:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lg/bcm;->t(Lg/ein;ZJ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lg/bcm;->q:Lg/ein;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Lg/cyg;->ao()Lg/dbb;

    move-result-object v0

    invoke-virtual {v0}, Lg/acn;->_e()V

    invoke-virtual {v0}, Lg/os;->zza()V

    new-instance v2, Lg/fuy;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v0, v1, v4}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/did;->a:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v1, p0, Lg/did;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget-wide v3, p0, Lg/did;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lg/csp;->ap(Landroid/os/Bundle;IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->h:Lg/dvb;

    const-string v1, "Using developer consent only; google app id found"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/did;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapp;->i:Lg/gqm;

    iget-object v2, p0, Lg/did;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-wide v3, p0, Lg/did;->d:J

    invoke-virtual {v1, v3, v4, v2}, Lg/gqm;->d(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapp;->i:Lg/gqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/gqm;->e(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

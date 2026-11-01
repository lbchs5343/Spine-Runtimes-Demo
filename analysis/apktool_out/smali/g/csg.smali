.class public final Lg/csg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/deg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/csg;->a:I

    iput-object p2, p0, Lg/csg;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lg/csg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/csg;->b:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lg/ark;->aa(ZLjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/csg;->b:Ljava/lang/Object;

    check-cast p1, Lg/bus;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/bus;->q:Z

    if-eqz p2, :cond_0

    invoke-static {p2}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean p2, p1, Lg/bus;->o:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lg/bus;->n:Landroid/content/Context;

    const v0, 0x7f120413

    invoke-static {p2, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput-object p2, p1, Lg/bus;->m:Lg/bro;

    invoke-virtual {p1}, Lg/bus;->w()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lg/csg;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lg/csg;->b:Ljava/lang/Object;

    check-cast p1, Lg/ark;

    iget-object v0, p1, Lg/ark;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    new-instance v2, Lg/ayt;

    invoke-direct {v2, p0, v0, v1}, Lg/ayt;-><init>(Lg/csg;J)V

    iput-object v2, p1, Lg/ark;->l:Lg/ayt;

    invoke-virtual {v2}, Lg/ayt;->run()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lg/csg;->b:Ljava/lang/Object;

    check-cast p1, Lg/bus;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/bus;->q:Z

    iget-boolean v0, p1, Lg/bus;->o:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/bus;->e:Z

    invoke-virtual {p1}, Lg/bus;->x()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/fhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fcd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fhf;->a:I

    iput-object p2, p0, Lg/fhf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)V
    .locals 4

    iget p1, p0, Lg/fhf;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fhf;->b:Ljava/lang/Object;

    check-cast p1, Lg/fzn;

    iget-object v0, p1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/DownloadManager$Request;

    iget-object v2, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast p1, Lg/cxc;

    invoke-static {v0, v1, v2, v3, p1}, Lg/aky;->x(Landroid/app/Activity;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Lg/cxc;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fhf;->b:Ljava/lang/Object;

    check-cast p1, Lb/c/d;

    invoke-virtual {p1}, Lb/c/d;->ah()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/fhf;->b:Ljava/lang/Object;

    check-cast p1, Lb/c/d;

    invoke-virtual {p1}, Lb/c/d;->ak()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDenied(Ljava/lang/String;)V
    .locals 2

    iget p1, p0, Lg/fhf;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fhf;->b:Ljava/lang/Object;

    check-cast p1, Lg/fzn;

    iget-object p1, p1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast p1, Lg/cxc;

    const-wide/16 v0, -0x2

    invoke-virtual {p1, v0, v1}, Lg/cxc;->h(J)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fhf;->b:Ljava/lang/Object;

    check-cast p1, Lb/c/d;

    iget-object p1, p1, Lb/c/d;->u:Lb/c/d;

    invoke-static {p1}, Lg/fyt;->f(Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/fhf;->b:Ljava/lang/Object;

    check-cast p1, Lb/c/d;

    iget-object p1, p1, Lb/c/d;->u:Lb/c/d;

    invoke-static {p1}, Lg/fyt;->f(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

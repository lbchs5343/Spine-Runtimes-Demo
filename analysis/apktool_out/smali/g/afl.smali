.class public final synthetic Lg/afl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/e/b;


# direct methods
.method public synthetic constructor <init>(Lc/e/b;I)V
    .locals 0

    iput p2, p0, Lg/afl;->a:I

    iput-object p1, p0, Lg/afl;->b:Lc/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget v0, p0, Lg/afl;->a:I

    const-string v1, "c.t.d.o.p.u.t"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lg/afl;->b:Lc/e/b;

    packed-switch v0, :pswitch_data_0

    sget v0, Lc/e/b;->d:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x4

    filled-new-array {v4, v3, v2, p1}, [I

    move-result-object p1

    iget-object v0, v5, Lc/e/b;->i:Lc/e/b;

    const-string v2, "op_update_freq"

    aget p1, p1, p2

    invoke-static {v0, p1, v2}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, v5, Lc/e/b;->i:Lc/e/b;

    invoke-static {p1, v1}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lc/e/b;->o()V

    return-void

    :pswitch_0
    sget v0, Lc/e/b;->d:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    filled-new-array {v4, v3, v2}, [I

    move-result-object p1

    iget-object v0, v5, Lc/e/b;->i:Lc/e/b;

    const-string v2, "op_update_noti_period"

    aget p1, p1, p2

    invoke-static {v0, p1, v2}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, v5, Lc/e/b;->i:Lc/e/b;

    invoke-static {p1, v1}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lc/e/b;->n()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

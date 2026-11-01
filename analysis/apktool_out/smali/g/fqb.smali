.class public final synthetic Lg/fqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lc/e/b;


# direct methods
.method public synthetic constructor <init>(Lc/e/b;[Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/fqb;->b:I

    iput-object p1, p0, Lg/fqb;->c:Lc/e/b;

    iput-object p2, p0, Lg/fqb;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, Lg/fqb;->b:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    iget-object v2, p0, Lg/fqb;->a:[Ljava/lang/String;

    iget-object v3, p0, Lg/fqb;->c:Lc/e/b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    sget p1, Lc/e/b;->d:I

    iget-object p1, v3, Lc/e/b;->i:Lc/e/b;

    const-string v6, "op_update_noti_period"

    invoke-static {p1, v5, v6}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    invoke-static {p1, v7, v6}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object p1

    const v0, 0x7f12039e

    invoke-virtual {p1, v0}, Lg/gmn;->p(I)V

    new-instance v0, Lg/afl;

    invoke-direct {v0, v3, v4}, Lg/afl;-><init>(Lc/e/b;I)V

    iget-object v3, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/die;

    iput-object v2, v3, Lg/die;->o:[Ljava/lang/CharSequence;

    iput-object v0, v3, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    iput v1, v3, Lg/die;->w:I

    iput-boolean v5, v3, Lg/die;->l:Z

    invoke-virtual {p1}, Lg/gqc;->ak()Lg/fpl;

    return-void

    :pswitch_0
    sget p1, Lc/e/b;->d:I

    iget-object p1, v3, Lc/e/b;->i:Lc/e/b;

    const-string v6, "op_update_freq"

    invoke-static {p1, v1, v6}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    invoke-static {p1, v7, v6}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-static {v3}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object p1

    const v1, 0x7f120394

    invoke-virtual {p1, v1}, Lg/gmn;->p(I)V

    new-instance v1, Lg/afl;

    invoke-direct {v1, v3, v5}, Lg/afl;-><init>(Lc/e/b;I)V

    iget-object v3, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/die;

    iput-object v2, v3, Lg/die;->o:[Ljava/lang/CharSequence;

    iput-object v1, v3, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    iput v0, v3, Lg/die;->w:I

    iput-boolean v5, v3, Lg/die;->l:Z

    invoke-virtual {p1}, Lg/gqc;->ak()Lg/fpl;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

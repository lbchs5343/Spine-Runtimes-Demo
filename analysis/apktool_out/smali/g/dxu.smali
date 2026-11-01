.class public final Lg/dxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;I)V
    .locals 0

    iput p3, p0, Lg/dxu;->b:I

    iput-object p1, p0, Lg/dxu;->c:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lg/dxu;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lg/dxu;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dxu;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/dxu;->a:Landroid/app/Activity;

    invoke-static {p1}, Lg/ern;->g(Landroid/content/Context;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dxu;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lg/dxu;->a:Landroid/app/Activity;

    const p2, 0x7f120146

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

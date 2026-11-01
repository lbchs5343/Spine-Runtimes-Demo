.class public final Lg/dwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/fzn;


# direct methods
.method public synthetic constructor <init>(Lg/fzn;I)V
    .locals 0

    iput p2, p0, Lg/dwl;->a:I

    iput-object p1, p0, Lg/dwl;->b:Lg/fzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lg/dwl;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/dwl;->b:Lg/fzn;

    invoke-virtual {p1}, Lg/fzn;->ai()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/dwl;->b:Lg/fzn;

    invoke-virtual {p1}, Lg/fzn;->t()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

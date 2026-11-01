.class public final Lg/csx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dds;


# direct methods
.method public synthetic constructor <init>(Lg/dds;I)V
    .locals 0

    iput p2, p0, Lg/csx;->a:I

    iput-object p1, p0, Lg/csx;->b:Lg/dds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lg/csx;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/csx;->b:Lg/dds;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/dds;->ai()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/csx;->b:Lg/dds;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg/dds;->t()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

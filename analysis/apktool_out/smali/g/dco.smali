.class public final synthetic Lg/dco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fet;


# instance fields
.field public final synthetic a:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/dco;->a:I

    iput-object p2, p0, Lg/dco;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 1

    iget v0, p0, Lg/dco;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dco;->c:Ljava/lang/Object;

    check-cast v0, Lg/gzf;

    invoke-static {v0}, Lg/gzf;->g(Lg/gzf;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dco;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->bv()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/dco;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->b(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

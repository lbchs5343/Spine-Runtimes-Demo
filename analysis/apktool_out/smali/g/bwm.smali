.class public final synthetic Lg/bwm;
.super Lg/fgb;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p7, p0, Lg/bwm;->a:I

    invoke-direct/range {p0 .. p6}, Lg/gvf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/bwm;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cwy;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->h()V

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/cwy;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->h()V

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

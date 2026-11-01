.class public final synthetic Lg/fvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La/v/ColorPickerView;


# direct methods
.method public synthetic constructor <init>(La/v/ColorPickerView;I)V
    .locals 0

    iput p2, p0, Lg/fvx;->a:I

    iput-object p1, p0, Lg/fvx;->b:La/v/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lg/fvx;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fvx;->b:La/v/ColorPickerView;

    invoke-static {v0, p1}, La/v/ColorPickerView;->e(La/v/ColorPickerView;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fvx;->b:La/v/ColorPickerView;

    invoke-static {v0, p1}, La/v/ColorPickerView;->o(La/v/ColorPickerView;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/fvx;->b:La/v/ColorPickerView;

    invoke-static {v0, p1}, La/v/ColorPickerView;->g(La/v/ColorPickerView;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/fvx;->b:La/v/ColorPickerView;

    invoke-static {v0, p1}, La/v/ColorPickerView;->i(La/v/ColorPickerView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

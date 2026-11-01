.class public final synthetic Lg/fxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lg/fxf;->a:I

    iput-object p1, p0, Lg/fxf;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    iget v0, p0, Lg/fxf;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fxf;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, La/v/ColorPickerView;

    invoke-static {v0, p1, p2, p3}, La/v/ColorPickerView;->m(La/v/ColorPickerView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lg/fxf;->b:Landroid/view/KeyEvent$Callback;

    check-cast p1, Lg/efx;

    iget-object v0, p1, Lg/efx;->aq:Lg/fvi;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    iget-object p2, p1, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lg/fvi;->run()V

    iget-object p2, p1, Lg/efx;->be:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_1

    iget-object p3, p1, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-object p1, p1, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v2, 0x1

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

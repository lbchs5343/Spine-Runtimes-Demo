.class La/v/ColorPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/v/ColorPickerView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La/v/ColorPickerView;


# direct methods
.method public constructor <init>(La/v/ColorPickerView;)V
    .locals 0

    iput-object p1, p0, La/v/ColorPickerView$1;->this$0:La/v/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, La/v/ColorPickerView$1;->this$0:La/v/ColorPickerView;

    invoke-static {v0, p1}, La/v/ColorPickerView;->c(La/v/ColorPickerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La/v/ColorPickerView$1;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->a(La/v/ColorPickerView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, La/v/ColorPickerView$1;->this$0:La/v/ColorPickerView;

    invoke-static {v0}, La/v/ColorPickerView;->a(La/v/ColorPickerView;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f04011d

    invoke-static {v1, v0}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

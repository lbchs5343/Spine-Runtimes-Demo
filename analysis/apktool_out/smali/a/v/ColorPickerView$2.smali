.class La/v/ColorPickerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->b(La/v/ColorPickerView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->b(La/v/ColorPickerView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_2

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->l(La/v/ColorPickerView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    int-to-float p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p2}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, La/v/ColorPickerView;->k(La/v/ColorPickerView;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p2}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p2, p1}, La/v/ColorPickerView;->f(La/v/ColorPickerView;Ljava/lang/String;)V

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, La/v/ColorPickerView;->j(La/v/ColorPickerView;Ljava/lang/String;)V

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->a(La/v/ColorPickerView;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, La/v/ColorPickerView;->d(La/v/ColorPickerView;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->a(La/v/ColorPickerView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p2}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->a(La/v/ColorPickerView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p2}, La/v/ColorPickerView;->a(La/v/ColorPickerView;)Landroid/widget/EditText;

    move-result-object p2

    const p3, 0x7f04011d

    invoke-static {p3, p2}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->n(La/v/ColorPickerView;)La/v/ColorPickerView$OnColorSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p1}, La/v/ColorPickerView;->n(La/v/ColorPickerView;)La/v/ColorPickerView$OnColorSelectedListener;

    move-result-object p1

    iget-object p2, p0, La/v/ColorPickerView$2;->this$0:La/v/ColorPickerView;

    invoke-static {p2}, La/v/ColorPickerView;->p(La/v/ColorPickerView;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, La/v/ColorPickerView$OnColorSelectedListener;->onColorSelected(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

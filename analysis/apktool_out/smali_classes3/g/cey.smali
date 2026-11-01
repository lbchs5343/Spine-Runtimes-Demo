.class public final synthetic Lg/cey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lg/cey;->a:I

    iput-object p1, p0, Lg/cey;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget v0, p0, Lg/cey;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cey;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/cey;->b:Landroid/view/KeyEvent$Callback;

    check-cast p1, Lg/awy;

    iget-object p1, p1, Lg/awy;->p:Lg/awy;

    const-string v0, "compact_mode"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

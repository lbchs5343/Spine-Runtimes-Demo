.class public final synthetic Lg/ard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/e/c;


# direct methods
.method public synthetic constructor <init>(Lc/e/c;I)V
    .locals 0

    iput p2, p0, Lg/ard;->a:I

    iput-object p1, p0, Lg/ard;->b:Lc/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget p1, p0, Lg/ard;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/ard;->b:Lc/e/c;

    iget-object p1, p1, Lc/e/c;->d:Lc/e/c;

    const-string v0, "wv_show_icon"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/ard;->b:Lc/e/c;

    iget-object p1, p1, Lc/e/c;->d:Lc/e/c;

    const-string v0, "wv_show_title"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/ard;->b:Lc/e/c;

    iget-object p1, p1, Lc/e/c;->d:Lc/e/c;

    const-string v0, "wv_show_name"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/ard;->b:Lc/e/c;

    iget-object p1, p1, Lc/e/c;->d:Lc/e/c;

    const-string v0, "wv_small_window_default"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/ard;->b:Lc/e/c;

    iget-object p1, p1, Lc/e/c;->d:Lc/e/c;

    const-string v0, "wv_show_time"

    invoke-static {p1, v0, p2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lg/ctr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic b:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic c:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic d:I

.field public final synthetic e:Lc/e/b;


# direct methods
.method public synthetic constructor <init>(Lc/e/b;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;I)V
    .locals 0

    iput p5, p0, Lg/ctr;->d:I

    iput-object p1, p0, Lg/ctr;->e:Lc/e/b;

    iput-object p2, p0, Lg/ctr;->a:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lg/ctr;->b:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p4, p0, Lg/ctr;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    iget p1, p0, Lg/ctr;->d:I

    packed-switch p1, :pswitch_data_0

    sget p1, Lc/e/b;->d:I

    const-string v1, "desk"

    iget-object v0, p0, Lg/ctr;->e:Lc/e/b;

    iget-object v3, p0, Lg/ctr;->a:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v4, p0, Lg/ctr;->b:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lg/ctr;->c:Landroidx/appcompat/widget/SwitchCompat;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lc/e/b;->m(Ljava/lang/String;ZLandroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    return-void

    :pswitch_0
    move v8, p2

    sget p1, Lc/e/b;->d:I

    const-string v7, "inapp"

    iget-object v6, p0, Lg/ctr;->e:Lc/e/b;

    iget-object v9, p0, Lg/ctr;->a:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v10, p0, Lg/ctr;->b:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v11, p0, Lg/ctr;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual/range {v6 .. v11}, Lc/e/b;->m(Ljava/lang/String;ZLandroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    return-void

    :pswitch_1
    move v8, p2

    sget p1, Lc/e/b;->d:I

    const-string v7, "bar"

    iget-object v6, p0, Lg/ctr;->e:Lc/e/b;

    iget-object v9, p0, Lg/ctr;->a:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v10, p0, Lg/ctr;->b:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v11, p0, Lg/ctr;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual/range {v6 .. v11}, Lc/e/b;->m(Ljava/lang/String;ZLandroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

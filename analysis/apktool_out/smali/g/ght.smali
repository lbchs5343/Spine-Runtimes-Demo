.class public final synthetic Lg/ght;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;I)V
    .locals 0

    iput p2, p0, Lg/ght;->a:I

    iput-object p1, p0, Lg/ght;->b:Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lg/ght;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ght;->b:Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;

    invoke-static {v0, p1}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->d(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ght;->b:Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;

    invoke-static {v0, p1}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->h(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/gyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# instance fields
.field public final synthetic a:Lg/gqf;


# direct methods
.method public constructor <init>(Lg/gqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gyd;->a:Lg/gqf;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lg/gyd;->a:Lg/gqf;

    iget-object p2, p1, Lg/gqf;->a:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lg/gqf;->b:Lg/eku;

    iget-object p1, p1, Lg/eku;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onShow()V
    .locals 0

    return-void
.end method

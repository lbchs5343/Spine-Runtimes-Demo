.class public Lcom/bytedance/sdk/component/utils/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/no$d;,
        Lcom/bytedance/sdk/component/utils/no$dq;
    }
.end annotation


# static fields
.field private static final dq:Lcom/bytedance/sdk/component/utils/no$dq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/utils/no$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/no$d;-><init>(Lcom/bytedance/sdk/component/utils/no$1;)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/no;->dq:Lcom/bytedance/sdk/component/utils/no$dq;

    return-void
.end method

.method public static dq(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/utils/no;->dq:Lcom/bytedance/sdk/component/utils/no$dq;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/no$dq;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/mp/dq;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/no;->dq:Lcom/bytedance/sdk/component/utils/no$dq;

    invoke-interface {p0}, Lcom/bytedance/sdk/component/mp/dq;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/no$dq;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;
    }
.end annotation


# static fields
.field private static final f:Lcom/bytedance/sdk/openadsdk/q/mn$dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/c;

.field private dq:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private final ia:Ljava/lang/String;

.field private ig:Z

.field private iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

.field private final jy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/o/d/ox;",
            ">;"
        }
    .end annotation
.end field

.field private kk:Z

.field private final mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final mp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private no:I

.field private o:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

.field private ox:Lcom/bytedance/sdk/openadsdk/q/ia;

.field private p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

.field private q:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

.field private final s:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->f:Lcom/bytedance/sdk/openadsdk/q/mn$dq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->kk:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->no:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->jy:Ljava/util/Map;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ia:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->no()V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig:Z

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->no:I

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;->dq(I)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Lcom/bytedance/sdk/openadsdk/core/playable/s$d;)Lcom/bytedance/sdk/openadsdk/core/playable/s$d;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->kk:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    return-object p0
.end method

.method private ig()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->ig()Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/p;)Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->q()V

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->no:I

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->jy:Ljava/util/Map;

    return-object p0
.end method

.method private mp()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->d(Z)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/r;->dq(Lcom/bytedance/sdk/component/mp/dq;IZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    return-void
.end method

.method private no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->mn(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$d;->d:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    return-void
.end method

.method private o()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/mp/dq;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Z)Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mp()V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    iput-object v2, v3, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->q:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;

    iget-object v2, v3, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-direct {v1, p0, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->kk:Z

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ia:Ljava/lang/String;

    return-object p0
.end method

.method private q()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->f:Lcom/bytedance/sdk/openadsdk/q/mn$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/mn;->dq(Lcom/bytedance/sdk/openadsdk/q/mn$dq;)V

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cd/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/cd/ox;-><init>()V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/cd/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/cd/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "cid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "log_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v0, "subscribe_app_ad"

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "adInfo"

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "webview_time_track"

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "download_app_ad"

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    sget-object v7, Lcom/bytedance/sdk/openadsdk/q/ia$dq;->dq:Lcom/bytedance/sdk/openadsdk/q/ia$dq;

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/q/ox;Lcom/bytedance/sdk/openadsdk/q/dq;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/q/ia$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const-string v2, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(J)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/l;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(J)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->p(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->o()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->iw()Lcom/bytedance/sdk/component/dq/fw;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$7;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->no:I

    return v0
.end method

.method public d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->jy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->op()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->iw(Z)Lcom/bytedance/sdk/openadsdk/core/c;

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ox()V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox(Z)V

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->q:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d(Z)V

    :cond_7
    return-void
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/playable/s$d;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->kk:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$d;->p:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    return-object v0
.end method

.method public dq(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "remove_loading_page_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "playable_url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "embeded_ad"

    const-string v2, "remove_loading_page"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public dq(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "downloadStatus"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "downloadProcessRate"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string p2, "showDownloadStatus"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVisibility(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;->ox()Lcom/bytedance/sdk/openadsdk/core/d/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/d/s;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/playable/s$d;->p:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_1
    return-void
.end method

.method public ia()V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->lk()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(Lcom/bytedance/sdk/component/mp/dq;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "embeded_ad"

    const-string v4, "playable_show_status"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public iw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/mp/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->u()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->u()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->jy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->s()V

    :cond_5
    return-void
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/core/c;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    return-object v0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig:Z

    return v0
.end method

.method public ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/d/s;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/p;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->p(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;->p()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw()V

    return-void
.end method

.method public ox(Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->q:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d(Z)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox()V

    :cond_5
    :goto_1
    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->ir()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->iw(Z)Lcom/bytedance/sdk/openadsdk/core/c;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->jy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->q:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox()V

    :cond_3
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->p()V

    :cond_0
    return-void
.end method

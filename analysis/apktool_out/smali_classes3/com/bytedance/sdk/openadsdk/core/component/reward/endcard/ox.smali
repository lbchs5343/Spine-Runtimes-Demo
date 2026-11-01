.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;
.implements Lcom/bytedance/sdk/openadsdk/core/ig/p$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;
    }
.end annotation


# static fields
.field private static final uh:Lcom/bytedance/sdk/openadsdk/q/mn$dq;


# instance fields
.field bl:J

.field private by:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;

.field private c:Lcom/bytedance/sdk/openadsdk/q/ia;

.field private final ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

.field private ds:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field protected final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private er:Z

.field private final gx:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;

.field protected final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ha:Lcom/bytedance/sdk/openadsdk/core/fw/p;

.field private ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

.field private final j:Landroid/widget/LinearLayout;

.field final ji:Lcom/bytedance/sdk/component/utils/e;

.field protected final kx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout;

.field private ob:Z

.field private op:Landroid/widget/FrameLayout;

.field private t:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

.field private u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

.field private v:Landroid/webkit/DownloadListener;

.field private vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

.field private vw:Ljava/lang/String;

.field private wn:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

.field private final xz:Lcom/bytedance/sdk/openadsdk/core/fw/s;

.field private yy:Lcom/bytedance/sdk/openadsdk/core/fw/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$4;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$4;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->uh:Lcom/bytedance/sdk/openadsdk/q/mn$dq;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZLcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V
    .locals 7

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZ)V

    move-object v2, p1

    move-object p1, p0

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->kx:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ob:Z

    const-wide/16 p4, 0x0

    iput-wide p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->bl:J

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$1;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->gx:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->xz:Lcom/bytedance/sdk/openadsdk/core/fw/s;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$6;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->yy:Lcom/bytedance/sdk/openadsdk/core/fw/d;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ha:Lcom/bytedance/sdk/openadsdk/core/fw/p;

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;->getPlayableWebView()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p4

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const p5, 0x7e06ffd4

    invoke-virtual {p4, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->op:Landroid/widget/FrameLayout;

    iget-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const p5, 0x7e06fede

    invoke-virtual {p4, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout;

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout;

    iget-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const p5, 0x7e06ff75

    invoke-virtual {p4, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    iget-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const p5, 0x7e06ff0d

    invoke-virtual {p4, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->j:Landroid/widget/LinearLayout;

    iget-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const p5, 0x7e06ffd7

    invoke-virtual {p4, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-direct {p5, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;-><init>(Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object p5, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    iget-object p4, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p3, 0x2

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v5

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;->getVideoArea()Landroid/widget/FrameLayout;

    move-result-object v6

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/widget/FrameLayout;)V

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq()V

    return-void
.end method

.method private d(I)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->by:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;

    return-object p0
.end method

.method private d(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->v:Landroid/webkit/DownloadListener;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ds:Lcom/bytedance/sdk/openadsdk/core/d/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    iput-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->no:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$10;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-direct {v1, p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object p1, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    return-void
.end method

.method private d(ZLjava/util/Map;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/mp/dq;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Z)Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/p$d;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz p1, :cond_1

    const-string v2, "reward_endcard"

    goto :goto_0

    :cond_1
    const-string v2, "fullscreen_endcard"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    :goto_1
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->k:Lcom/bytedance/sdk/openadsdk/core/fw/dq;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/fw/kk;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/kk;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->xz:Lcom/bytedance/sdk/openadsdk/core/fw/s;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/s;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->ia(Z)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->yy:Lcom/bytedance/sdk/openadsdk/core/fw/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/d;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ha:Lcom/bytedance/sdk/openadsdk/core/fw/p;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/p;)Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->j()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->nh()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ob:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;I)Landroid/os/Message;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ia(Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;ZLjava/util/Map;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(ZLjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;->setDownLoadClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private dq(Ljava/util/Map;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->op:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->op:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->t:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->er:Z

    return p0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Landroid/webkit/DownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->v:Landroid/webkit/DownloadListener;

    return-object p0
.end method

.method private ia(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->p(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->q(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->gx:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->wn()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/view/PlayableEndcardFrameLayout$dq;)V

    :cond_3
    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ds:Lcom/bytedance/sdk/openadsdk/core/d/d;

    return-object p0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->fw()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->q()Z

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v3

    instance-of v3, v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->mn()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq(JZ)V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->op:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/playable/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    return-object p0
.end method

.method private nh()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->gh:I

    const/4 v2, 0x1

    const-string v3, "?"

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    const-string v4, "&orientation=portrait"

    invoke-static {v1, v2, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    const-string v4, "?orientation=portrait"

    invoke-static {v1, v2, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&aspect_ratio="

    const-string v3, "&width="

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    return-object p0
.end method

.method private ob()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->by:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ox(I)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/fw/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ha:Lcom/bytedance/sdk/openadsdk/core/fw/p;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->wn:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ob()V

    return-void
.end method

.method private vf()V
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->lk()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(Lcom/bytedance/sdk/component/mp/dq;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, "playable_show_status"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    :cond_5
    :goto_0
    return-void
.end method

.method private wn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->f:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->mp(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->wn:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;->dq()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bl()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->no:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d(Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->uh:Lcom/bytedance/sdk/openadsdk/q/mn$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/mn;->dq(Lcom/bytedance/sdk/openadsdk/q/mn$dq;)V

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cd/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/cd/ox;-><init>()V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->xz:Lcom/bytedance/sdk/openadsdk/core/fw/s;

    invoke-direct {v5, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/fw/s;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/cd/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/cd/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "cid"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "log_extra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v2, "subscribe_app_ad"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "adInfo"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "webview_time_track"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "download_app_ad"

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    sget-object v7, Lcom/bytedance/sdk/openadsdk/q/ia$dq;->dq:Lcom/bytedance/sdk/openadsdk/q/ia$dq;

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/cd/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/q/ox;Lcom/bytedance/sdk/openadsdk/q/dq;Ljava/util/Set;Lcom/bytedance/sdk/openadsdk/q/ia$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const-string v1, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(J)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(J)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->p(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->o()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->iw()Lcom/bytedance/sdk/component/dq/fw;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$2;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public ce()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->iw()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vw()V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->s(Z)V

    return-void
.end method

.method public d(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "skip_remain_time"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->p:Z

    if-eqz p1, :cond_1

    const-string p1, "reward_remain_time"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string p2, "reward_button_status"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq(Z)V

    return-void
.end method

.method public dq(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->bl()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->s(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l()V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->wn:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;->ox()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d()V

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->by:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;->dq()V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->bl()V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ob()V

    return-void
.end method

.method public dq(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->v:Landroid/webkit/DownloadListener;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ds:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->wn:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->by:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->t:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vw:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vw:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vw:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->o(I)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->o()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->vf()V

    return-void
.end method

.method public dq(ZLjava/util/Map;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->op:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Ljava/util/Map;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(ZLjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox()V

    :cond_0
    return-void
.end method

.method public er()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce:Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public ig()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->ox()V

    :cond_2
    return-void
.end method

.method public ir()Lcom/bytedance/sdk/openadsdk/core/c;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    return-object v0
.end method

.method public iw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->wn:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;->ox()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Z)V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->s(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(ZZ)V

    return-void
.end method

.method public iw(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->mn(Z)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isReward"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "isVerifyReward"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public ji()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->mn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public jy()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->u()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/p$d;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;->p()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->p()V

    :cond_3
    return-void
.end method

.method public mn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->er:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->no(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public mp()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mp()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->c:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ox(Z)Lcom/bytedance/sdk/openadsdk/q/ia;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d()V

    :cond_1
    return-void
.end method

.method public n()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->bl:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public op()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->mp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public p(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->p(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->l:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/ox;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d()V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->q()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(I)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->j:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ob:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$11;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/d/iw;Z)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ia(Z)V

    return-void

    :cond_2
    const/16 p1, 0x8

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ia(Z)V

    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wp()Ljava/lang/String;
    .locals 1

    const-string v0, "playable"

    return-object v0
.end method

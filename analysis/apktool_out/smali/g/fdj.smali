.class public abstract synthetic Lg/fdj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroidx/fragment/app/u;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic aa()Landroid/media/PlaybackParams;
    .locals 1

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic ab(Landroidx/fragment/app/u;Landroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic ac(Ljava/lang/Object;)Landroid/view/Display$Mode;
    .locals 0

    check-cast p0, Landroid/view/Display$Mode;

    return-object p0
.end method

.method public static bridge synthetic ad(Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;[Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/media/PlaybackParams;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    return-void
.end method

.method public static bridge synthetic d(Landroidx/fragment/app/u;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public static bridge synthetic e(Landroidx/fragment/app/u;Landroid/view/SearchEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public static bridge synthetic g(Landroid/net/ConnectivityManager;)Landroid/net/Network;
    .locals 0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroidx/fragment/app/u;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/media/PlaybackParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    return-void
.end method

.method public static bridge synthetic j(Landroidx/fragment/app/u;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/Display$Mode;)F
    .locals 0

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroidx/fragment/app/u;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Landroid/media/PlaybackParams;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    return-void
.end method

.method public static bridge synthetic o(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Landroidx/fragment/app/u;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Landroidx/fragment/app/u;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Landroidx/fragment/app/u;Landroid/app/assist/AssistContent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/webkit/WebView;Landroid/view/View$OnScrollChangeListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic v(Landroidx/fragment/app/u;)Landroid/app/VoiceInteractor;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Landroid/media/MediaPlayer;Landroid/media/PlaybackParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/bytedance/pangle/activity/GenerateProxyActivity;[Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/view/Display;)[Landroid/view/Display$Mode;
    .locals 0

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.class public Lcom/bytedance/sdk/openadsdk/h/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Landroid/media/AudioFocusRequest;

.field private dq:Landroid/media/AudioAttributes;

.field private ox:Landroid/media/AudioManager;

.field private p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->s:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->s:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->ox:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->ox:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->d:Landroid/media/AudioFocusRequest;

    invoke-static {v0, v1}, Lg/ahq;->z(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->ox:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public dq()I
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->dq:Landroid/media/AudioAttributes;

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {}, Lg/ahq;->b()Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lg/cnh;->v(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lg/cnh;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1}, Lg/cnh;->g(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->dq:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Lg/cnh;->aa(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lg/ahq;->u(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->d:Landroid/media/AudioFocusRequest;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->ox:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lg/ahq;->v(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->ox:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/dq;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

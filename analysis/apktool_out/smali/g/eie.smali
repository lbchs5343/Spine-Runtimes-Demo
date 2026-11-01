.class public Lg/eie;
.super Ljava/lang/Object;

# interfaces
.implements Lg/ebz;
.implements Lg/bwb;
.implements Lg/bmm;
.implements Lg/gtx;
.implements Lg/bol;
.implements Lg/alj;
.implements Lg/btp;
.implements Lg/bsh;
.implements Lg/dbp;
.implements Lg/bdg;
.implements Lg/bjb;
.implements Lcom/google/android/gms/internal/ads/zzcas;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lcom/google/android/gms/internal/ads/zzbfm;


# instance fields
.field public final synthetic e:I

.field public final g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/eie;->e:I

    iput-object p2, p0, Lg/eie;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/fnq;Lg/bli;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lg/eie;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/hed;)V
    .locals 3

    const/16 v0, 0x13

    iput v0, p0, Lg/eie;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lg/hed;->at:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/vm;

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    new-instance v2, Lg/bfz;

    invoke-direct {v2, v0}, Lg/bfz;-><init>(Lg/vm;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method

.method private final z()V
    .locals 0

    return-void
.end method


# virtual methods
.method public ab()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ad(Lg/czh;Lg/anx;)V
    .locals 1

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/aux;

    iget-object v0, p2, Lg/anx;->a:Lg/enb;

    invoke-virtual {v0}, Lg/enb;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lg/anx;->b:Ljava/lang/Object;

    invoke-static {p1, p2}, Lg/o;->r(Lg/aux;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lg/hbk;

    invoke-direct {v0, p2}, Lg/hbk;-><init>(Lg/anx;)V

    invoke-static {p1, v0}, Lg/o;->l(Lg/aux;Lg/hbk;)V

    return-void
.end method

.method public ao()Ljava/lang/Object;
    .locals 6

    const-string v0, "\' with no args"

    const-string v1, "Failed to invoke constructor \'"

    iget-object v2, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lg/cpe;->a:Lg/eyt;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected IllegalAccessException occurred (Gson 2.11.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lg/cpe;->f(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lg/cpe;->f(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lg/eie;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-boolean v0, v0, Lg/fri;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/fri;

    iget-object v2, v1, Lg/fri;->j:Lg/fri;

    iget v1, v1, Lg/fri;->h:I

    int-to-float v1, v1

    invoke-static {v2, v1}, Lg/fso;->ao(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/fri;

    iget-object v2, v1, Lg/fri;->l:Landroid/view/WindowManager;

    iget-object v1, v1, Lg/fri;->i:Landroid/view/View;

    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-boolean v0, v0, Lg/ka;->g:Z

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->u:Lg/dbv;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v2, Lg/ka;

    iget-object v2, v2, Lg/ka;->p:Lg/ka;

    invoke-static {v2}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v2

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_4

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    :goto_1
    mul-float v1, v1, v2

    goto :goto_2

    :cond_4
    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1

    :goto_2
    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/ka;

    iget-object v2, v1, Lg/ka;->i:Landroid/view/WindowManager;

    iget-object v1, v1, Lg/ka;->n:Landroid/view/View;

    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 3

    iget v0, p0, Lg/eie;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-boolean v0, v0, Lg/fri;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fri;

    iget-object v0, v0, Lg/fri;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/fri;

    iget-object v1, v1, Lg/fri;->j:Lg/fri;

    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {v1, v2}, Lg/fso;->ao(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/fri;

    iget-object v2, v1, Lg/fri;->l:Landroid/view/WindowManager;

    iget-object v1, v1, Lg/fri;->i:Landroid/view/View;

    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-boolean v0, v0, Lg/ka;->g:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->k:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v0, v0, Lg/ka;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/ka;

    iget-object v1, v1, Lg/ka;->p:Lg/ka;

    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {v1, v2}, Lg/fso;->ao(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v1, Lg/ka;

    iget-object v2, v1, Lg/ka;->i:Landroid/view/WindowManager;

    iget-object v1, v1, Lg/ka;->n:Landroid/view/View;

    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 1

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-object p1
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/ajr;

    iput-object p1, v0, Lg/ajr;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fde;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lg/fde;->dq(Lg/fde;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lg/fde;->d(Lg/fde;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, p1, v2}, Lg/dxo;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lg/efr;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v1, v0, Lg/fde;->ox:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Lg/fde;->p(Lg/fde;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    :cond_2
    invoke-static {v0}, Lg/fde;->s(Lg/fde;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lg/fde;->p(Lg/fde;)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    invoke-static {v0}, Lg/fde;->p(Lg/fde;)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    :goto_0
    invoke-static {v1, p1, v2}, Lg/dxo;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lg/fde;->iw(Lg/fde;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, Lg/efr;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0, v1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p1}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/eie;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 2

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const-class v1, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    invoke-static {v1, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    return-object v0
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i(Lg/x;)V
    .locals 1

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/emr;

    iget-object p1, p1, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lg/aco;

    iget-object p1, p1, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/dmr;->k(Lg/dmr;Z)V

    return-void
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    iget v1, v0, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public k(Ljava/io/File;)Lg/eqm;
    .locals 4

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    :try_start_0
    new-instance v1, Lg/fwt;

    invoke-direct {v1, p1, v0}, Lg/fwt;-><init>(Ljava/io/File;Lg/fdy;)V

    invoke-virtual {p0, p1, v1}, Lg/eie;->x(Ljava/io/File;Lg/fwt;)Lg/blx;

    move-result-object v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v1}, Lg/fwt;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Lg/blx;->a()Lg/eqm;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    iget-object v2, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lg/evu;->DONT_USE_FALLBACK:Lg/evu;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lg/fzz;

    invoke-direct {v1, p1, v0}, Lg/fzz;-><init>(Ljava/io/File;Lg/fdy;)V

    invoke-virtual {v1}, Lg/fzz;->a()Lg/eqm;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open zip: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public n(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "clickEvent"

    new-instance v1, Lg/fzc;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lg/fzc;->c:I

    iget-object v3, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v3, Lg/akg;

    iput-object v3, v1, Lg/fzc;->b:Lg/dlv;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v1, p2}, Lg/akg;->g(Lg/fzc;Lorg/json/JSONArray;)V

    :cond_0
    iget-object p2, v3, Lg/dlv;->tl:Lg/cyx;

    if-eqz p2, :cond_3

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "lottieEvent"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "uttieUrl"

    iget-object v4, v3, Lg/fzx;->af:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "CSJCLOSE"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "type"

    if-eqz v2, :cond_1

    :try_start_1
    const-string p1, "close"

    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    iput-object p2, v1, Lg/fzc;->d:Lorg/json/JSONObject;

    iget-object p1, v3, Lg/dlv;->tl:Lg/cyx;

    invoke-interface {p1, v1, v3, v3}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public o(I)V
    .locals 4

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/emr;

    iget-object v0, v0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/aco;

    iget-object v1, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v1, Lg/dmr;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lg/dmr;->l(IZ)V

    iget-object v1, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v1, Lg/dmr;

    iget-object v1, v1, Lg/dmr;->d:Lg/elf;

    sget v3, Lg/cdy;->a:I

    const/16 v3, 0x4b1

    if-eq p1, v3, :cond_0

    const/16 v3, 0x4b2

    if-eq p1, v3, :cond_0

    const/16 v3, 0x7c7

    if-ne p1, v3, :cond_1

    :cond_0
    sget-object v3, Lg/efc;->a:Ljava/util/HashSet;

    const-string v3, "TrineaAndroidCommon"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pa"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v0, Lg/dmr;

    iget-object v0, v0, Lg/dmr;->e:Lg/elf;

    new-instance v1, Lg/get;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lg/hdo;

    const/4 v3, 0x6

    invoke-direct {v2, v0, p1, v1, v3}, Lg/hdo;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget p1, p0, Lg/eie;->e:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbat;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbat;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbat;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbat;->a:Lcom/google/android/gms/internal/ads/zzbaw;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaw;->zzq()Lcom/google/android/gms/internal/ads/zzbaz;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbat;->d:Lcom/google/android/gms/internal/ads/zzbaz;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbat;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->g(Lcom/google/android/gms/internal/ads/zzbat;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbat;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbat;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/fwr;

    invoke-interface {p1}, Lg/fwr;->j()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget v0, p0, Lg/eie;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbat;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbat;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbat;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzbat;->d:Lcom/google/android/gms/internal/ads/zzbaz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbat;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fwr;

    invoke-interface {v0, p1}, Lg/fwr;->onConnectionSuspended(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    iget v0, p0, Lg/eie;->e:I

    return-void
.end method

.method public p(Lg/gsh;)Lg/cwx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/gks;

    if-eqz v0, :cond_0

    check-cast p1, Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p0, p1}, Lg/eie;->q(Lg/vm;)Lg/bfz;

    move-result-object p1

    iget-object p1, p1, Lg/bfz;->f:Lg/cwx;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lg/flv;->j()Lg/cwx;

    move-result-object p1

    return-object p1
.end method

.method public q(Lg/vm;)Lg/bfz;
    .locals 3

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bfz;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TypeSearchVarInfo not found in map for var: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(ILjava/lang/Object;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "ProfileInstaller"

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public s(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lg/caa;
    .locals 3

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    if-nez p4, :cond_0

    const-string p4, "application/json"

    :cond_0
    const-string v1, "application/zip"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "application/x-zip"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "application/x-zip-compressed"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    const-string p4, "\\?"

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    aget-object p4, p4, v1

    const-string v1, ".lottie"

    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lg/hbp;->a:Lg/ckf;

    sget-object p1, Lg/cgh;->dq:Lg/cgh;

    if-eqz p5, :cond_2

    invoke-virtual {v0, p2, p3, p1}, Lg/fnq;->k(Ljava/lang/String;Ljava/io/InputStream;Lg/cgh;)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p2}, Lg/ahz;->i(Ljava/io/InputStream;Ljava/lang/String;)Lg/caa;

    move-result-object p3

    goto :goto_3

    :cond_2
    invoke-static {p3, v2}, Lg/ahz;->i(Ljava/io/InputStream;Ljava/lang/String;)Lg/caa;

    move-result-object p3

    goto :goto_3

    :cond_3
    :goto_0
    sget-object p4, Lg/hbp;->a:Lg/ckf;

    sget-object p4, Lg/cgh;->d:Lg/cgh;

    if-eqz p5, :cond_4

    invoke-virtual {v0, p2, p3, p4}, Lg/fnq;->k(Ljava/lang/String;Ljava/io/InputStream;Lg/cgh;)Ljava/io/File;

    move-result-object p3

    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p1, v1, p2}, Lg/ahz;->h(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lg/caa;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p3, Lg/ebx;->c:Lg/cqw;

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    move-object p3, p1

    goto :goto_2

    :catch_1
    move-exception p1

    throw p1

    :catchall_0
    move-exception p1

    sget-object p2, Lg/ebx;->c:Lg/cqw;

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    throw p1

    :catch_3
    move-exception p1

    throw p1

    :cond_4
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_3
    invoke-static {p1, v1, v2}, Lg/ahz;->h(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lg/caa;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p3, Lg/ebx;->c:Lg/cqw;

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_2
    move-object p1, p4

    :goto_3
    if-eqz p5, :cond_5

    iget-object p4, p3, Lg/caa;->a:Ljava/lang/Object;

    if-eqz p4, :cond_5

    const/4 p4, 0x1

    invoke-static {p2, p1, p4}, Lg/fnq;->j(Ljava/lang/String;Lg/cgh;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Lg/fnq;->n()Ljava/io/File;

    move-result-object p4

    invoke-direct {p2, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p4, ".temp"

    const-string p5, ""

    invoke-virtual {p1, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "Unable to rename cache file "

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/hbp;->b(Ljava/lang/String;)V

    :cond_5
    return-object p3

    :catch_4
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    sget-object p2, Lg/ebx;->c:Lg/cqw;

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    throw p1

    :catch_6
    move-exception p1

    throw p1
.end method

.method public t(Lg/ejd;)V
    .locals 1

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/btp;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lg/btp;->i(Lg/x;)V

    :cond_0
    return-void
.end method

.method public u(JJLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lb/b/b;

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    const-wide/16 v1, 0x64

    mul-long p1, p1, v1

    div-long v1, p1, p3

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const p1, 0x7f1201ad

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p5}, Lb/b/b;->o(Lb/b/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const p3, 0x7f1201b9

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const p3, 0x7f1201b4

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "\n"

    invoke-static {p1, p3, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, v0, Lg/doq;->ah:Lg/eqi;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/btp;

    if-eqz v0, :cond_0

    const/16 v1, 0x7c7

    invoke-interface {v0, v1}, Lg/btp;->o(I)V

    :cond_0
    return-void
.end method

.method public w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/aux;

    invoke-static {p1, p2}, Lg/o;->z(Lg/aux;Ljava/lang/Throwable;)V

    return-void
.end method

.method public x(Ljava/io/File;Lg/fwt;)Lg/blx;
    .locals 4

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    iget-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lg/evu;->DONT_USE_FALLBACK:Lg/evu;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lg/fwt;->p()V

    invoke-virtual {p2}, Lg/fwt;->v()I

    move-result v2

    iget-object v3, p2, Lg/fwt;->k:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0xffff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lg/evu;->FALLBACK_AS_DEFAULT:Lg/evu;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, Lg/fzz;

    invoke-direct {p2, p1, v0}, Lg/fzz;-><init>(Ljava/io/File;Lg/fdy;)V

    return-object p2

    :catch_0
    move-exception v1

    sget-object v2, Lg/fwt;->b:Lg/dba;

    const-string v3, "Jadx parser can\'t open zip file: {}"

    iget-object p2, p2, Lg/fwt;->j:Ljava/io/File;

    invoke-interface {v2, p2, v3, v1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance p2, Lg/fzz;

    invoke-direct {p2, p1, v0}, Lg/fzz;-><init>(Ljava/io/File;Lg/fdy;)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method public y(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/cle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/cle;->ak(I)V

    return-void
.end method

.method public zza()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmp;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmp;->zzj()Lcom/google/android/gms/internal/ads/zzbnw;

    move-result-object p1

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbno;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcav;->zzi(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcsy;->h:Lcom/google/android/gms/internal/ads/zzdbt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdbt;->zzl(Z)V

    return-void
.end method

.method public zzb()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcsy;->h:Lcom/google/android/gms/internal/ads/zzdbt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdbt;->zzl(Z)V

    return-void
.end method

.method public zzc()V
    .locals 2

    iget-object v0, p0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdnk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnk;->b:Lcom/google/android/gms/internal/ads/zzdit;

    if-eqz v0, :cond_0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdit;->zzF(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzd(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

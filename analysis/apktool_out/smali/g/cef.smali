.class public final Lg/cef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public d:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lg/cef;->c:I

    iput-object p2, p0, Lg/cef;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/cef;->a:Ljava/lang/Object;

    iput-boolean p4, p0, Lg/cef;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;Landroidx/fragment/app/a;ZLg/tl;)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Lg/cef;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cef;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/cef;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/cef;->d:Z

    return-void
.end method

.method public constructor <init>(Lg/ajs;Lg/dtn;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/cef;->c:I

    const-string v0, "registry"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cef;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/cef;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/elf;IZLg/zd;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lg/cef;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cef;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/cef;->d:Z

    iput-object p4, p0, Lg/cef;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lg/cef;->c:I

    iget-object v1, p0, Lg/cef;->b:Ljava/lang/Object;

    iget-object v2, p0, Lg/cef;->a:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    check-cast v1, Lcom/tencent/bugly/proguard/r;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)V

    const-string v0, "[UserInfo] Record user info."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lg/cef;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    check-cast v2, Landroid/view/View;

    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->q:Lg/dfv;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/dfv;->ae()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    iget-boolean v0, p0, Lg/cef;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Lg/eie;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lg/eie;->y(Landroid/view/View;)V

    :cond_4
    :goto_3
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lg/cef;->d:Z

    if-nez v0, :cond_5

    check-cast v2, Lg/ajs;

    check-cast v1, Lg/dtn;

    invoke-virtual {v2, v1}, Lg/ajs;->k(Lg/dtn;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cef;->d:Z

    :cond_5
    return-void

    :pswitch_2
    check-cast v1, Lg/elf;

    iget-boolean v0, p0, Lg/cef;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lg/elf;->af()V

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lg/elf;->aa:Lg/elf;

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v3, v0, Lg/fxe$a;->isShowFAQ:Z

    if-eqz v3, :cond_7

    iget-object v0, v0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f09030f

    invoke-virtual {v1, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v2

    check-cast v7, Lg/zd;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120384

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v5, -0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lg/afo;->az(Landroid/view/View;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)Lg/sd;

    :cond_7
    :goto_4
    return-void

    :pswitch_3
    check-cast v2, Landroidx/fragment/app/a;

    iget-object v0, v2, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v1, v1, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lg/cef;->d:Z

    sget-object v3, Lg/hbv;->a:Lg/aqe;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lg/bca;

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lg/bca;

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

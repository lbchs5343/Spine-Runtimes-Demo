.class public final Lg/xg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p7, p0, Lg/xg;->e:I

    iput-object p1, p0, Lg/xg;->f:Landroid/app/Activity;

    iput-object p2, p0, Lg/xg;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/xg;->c:Ljava/lang/String;

    iput-object p4, p0, Lg/xg;->d:Ljava/lang/String;

    iput-object p5, p0, Lg/xg;->g:Ljava/lang/String;

    iput-object p6, p0, Lg/xg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget p1, p0, Lg/xg;->e:I

    const/4 p2, 0x0

    iget-object v0, p0, Lg/xg;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/xg;->g:Ljava/lang/String;

    iget-object v2, p0, Lg/xg;->d:Ljava/lang/String;

    iget-object v3, p0, Lg/xg;->c:Ljava/lang/String;

    iget-object v4, p0, Lg/xg;->b:Ljava/lang/String;

    iget-object v5, p0, Lg/xg;->f:Landroid/app/Activity;

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Disable accessibility fail."

    const-string v7, "accessibility"

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "setState"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v6

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v9, v11, v6

    invoke-virtual {v8, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {v4, v3, v2, v1, v0}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v5, p2, v0, v10}, Lg/dov;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_1
    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_2
    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-void

    :pswitch_0
    invoke-static {v4, v3, v2, v1, v0}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v5, p2, p1, v6}, Lg/dov;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

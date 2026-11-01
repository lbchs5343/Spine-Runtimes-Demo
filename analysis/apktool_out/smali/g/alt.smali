.class public final Lg/alt;
.super Lg/cfi;
.source "SourceFile"

# interfaces
.implements Lg/apv;


# static fields
.field public static final b:Ljava/lang/reflect/Method;


# instance fields
.field public c:Lg/aoy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lg/alt;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final g(Landroid/content/Context;Z)Lg/bgv;
    .locals 1

    new-instance v0, Lg/els;

    invoke-direct {v0, p1, p2}, Lg/els;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lg/els;->setHoverListener(Lg/apv;)V

    return-object v0
.end method

.method public final j(Lg/ftn;Lg/far;)V
    .locals 1

    iget-object v0, p0, Lg/alt;->c:Lg/aoy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/aoy;->j(Lg/ftn;Lg/far;)V

    :cond_0
    return-void
.end method

.method public final l(Lg/ftn;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lg/alt;->c:Lg/aoy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/aoy;->l(Lg/ftn;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

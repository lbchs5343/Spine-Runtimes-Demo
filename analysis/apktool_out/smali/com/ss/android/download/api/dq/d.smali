.class public Lcom/ss/android/download/api/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/kk;


# instance fields
.field private dq:Lcom/ss/android/download/api/config/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    array-length p1, p4

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/download/api/dq/d;->dq:Lcom/ss/android/download/api/config/r;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    aget p4, p4, p2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    aget-object p2, p3, p2

    invoke-interface {p1, p2}, Lcom/ss/android/download/api/config/r;->dq(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    invoke-interface {p1}, Lcom/ss/android/download/api/config/r;->dq()V

    :cond_1
    return-void
.end method

.method public dq(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/download/api/config/r;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iput-object p3, p0, Lcom/ss/android/download/api/dq/d;->dq:Lcom/ss/android/download/api/config/r;

    invoke-static {p1, p2}, Lg/gdl;->s(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/ss/android/download/api/config/r;->dq()V

    :cond_1
    return-void
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

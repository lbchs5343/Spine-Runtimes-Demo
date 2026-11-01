.class public final Lg/auj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cng;


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/util/LinkedHashMap;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/LinkedHashMap;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lg/auj;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg/auj;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object p1

    iget-object p2, p0, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/haz;->ac(Ljava/lang/String;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Lg/auj;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

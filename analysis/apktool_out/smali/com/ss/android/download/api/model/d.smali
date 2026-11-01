.class public Lcom/ss/android/download/api/model/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/d$d;,
        Lcom/ss/android/download/api/model/d$dq;
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public dq:Landroid/content/Context;

.field public ia:Lcom/ss/android/download/api/model/d$d;

.field public iw:Z

.field public kk:Landroid/view/View;

.field public mn:Landroid/graphics/drawable/Drawable;

.field public o:I

.field public ox:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ss/android/download/api/model/d$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/d;->iw:Z

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->dq(Lcom/ss/android/download/api/model/d$dq;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->d(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->ox(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->ox:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->p(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->s(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->iw(Lcom/ss/android/download/api/model/d$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/d;->iw:Z

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->mn(Lcom/ss/android/download/api/model/d$dq;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->mn:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/ss/android/download/api/model/d$dq;->ia(Lcom/ss/android/download/api/model/d$dq;)Lcom/ss/android/download/api/model/d$d;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->ia:Lcom/ss/android/download/api/model/d$d;

    iget-object v0, p1, Lcom/ss/android/download/api/model/d$dq;->dq:Landroid/view/View;

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->kk:Landroid/view/View;

    iget p1, p1, Lcom/ss/android/download/api/model/d$dq;->d:I

    iput p1, p0, Lcom/ss/android/download/api/model/d;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/download/api/model/d$dq;Lcom/ss/android/download/api/model/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/download/api/model/d;-><init>(Lcom/ss/android/download/api/model/d$dq;)V

    return-void
.end method

.class public final Lcom/ss/android/download/api/model/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/download/api/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field public d:I

.field public dq:Landroid/view/View;

.field private ia:Z

.field private iw:Ljava/lang/String;

.field private kk:Landroid/graphics/drawable/Drawable;

.field private mn:Ljava/lang/String;

.field private o:Lcom/ss/android/download/api/model/d$d;

.field private ox:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->ox:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/download/api/model/d$dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->ox:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic ia(Lcom/ss/android/download/api/model/d$dq;)Lcom/ss/android/download/api/model/d$d;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->o:Lcom/ss/android/download/api/model/d$d;

    return-object p0
.end method

.method public static synthetic iw(Lcom/ss/android/download/api/model/d$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/download/api/model/d$dq;->ia:Z

    return p0
.end method

.method public static synthetic mn(Lcom/ss/android/download/api/model/d$dq;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->kk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic ox(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lcom/ss/android/download/api/model/d$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/d$dq;->mn:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->s:Ljava/lang/String;

    return-object p0
.end method

.method public dq(I)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput p1, p0, Lcom/ss/android/download/api/model/d$dq;->d:I

    return-object p0
.end method

.method public dq(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->kk:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public dq(Lcom/ss/android/download/api/model/d$d;)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->o:Lcom/ss/android/download/api/model/d$d;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/download/api/model/d$dq;->ia:Z

    return-object p0
.end method

.method public dq()Lcom/ss/android/download/api/model/d;
    .locals 2

    new-instance v0, Lcom/ss/android/download/api/model/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/download/api/model/d;-><init>(Lcom/ss/android/download/api/model/d$dq;Lcom/ss/android/download/api/model/d$1;)V

    return-object v0
.end method

.method public ox(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/d$dq;->mn:Ljava/lang/String;

    return-object p0
.end method

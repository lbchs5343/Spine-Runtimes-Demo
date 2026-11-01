.class public Lcom/ss/android/socialbase/appdownloader/mn$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private iw:I

.field private mn:Z

.field private ox:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->ox(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->p(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq(I)V

    invoke-virtual {p0, p7}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq(Z)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->mn:Z

    return v0
.end method

.method public dq()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->ox:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->iw:I

    return-void
.end method

.method public dq(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->ox:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->mn:Z

    return-void
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->iw:I

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->s:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->p:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->s:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/mn$dq;->p:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\n  pkg name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  app icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->dq()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  app name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  app path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  app v name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  app v code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->iw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  is system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/mn$dq;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
